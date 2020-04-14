#include "phone.h"

#include <linphone/linphonecore.h>
#include <ortp/rtpsession.h>
#include <iostream>
#include <QtCore>
#include <QDebug>

phone::phone()
{
    std::cout << "Phone wurde erfolgreich Inizialisiert!" << std::endl;
}

void phone::run()
{
    running = true;
    QByteArray sip_addresse_as_byte_array = sip_adress.toLocal8Bit();
    sip_addresse = sip_addresse_as_byte_array.data();

    vtable.call_state_changed = call_state_changed;

    lc = linphone_core_new(&vtable,NULL,NULL,NULL);


    cp = linphone_core_create_default_call_parameters(lc);
    linphone_call_params_enable_early_media_sending(cp,true);


    proxy_cfg = linphone_proxy_config_new();
    from = linphone_address_new(identity);
    info = linphone_auth_info_new(linphone_address_get_username(from),NULL,password,NULL,NULL);
    linphone_core_add_auth_info(lc,info);

    linphone_proxy_config_set_identity(proxy_cfg,identity); /*set identity with user name and domain*/
    server_addr = linphone_address_get_domain(from); /*extract domain address from identity*/
    linphone_proxy_config_set_server_addr(proxy_cfg,server_addr); /* we assume domain = proxy server address*/
    linphone_proxy_config_enable_register(proxy_cfg,TRUE); /*activate registration for this proxy config*/

    linphone_core_add_proxy_config(lc,proxy_cfg); /*add proxy config to linphone core*/
    linphone_core_set_default_proxy(lc,proxy_cfg); /*set to default proxy*/

    linphone_proxy_config_enable_publish(proxy_cfg,true);

    std::cout << linphone_core_get_sip_port(lc) << std::endl;


    //call = linphone_core_invite(lc,this->sip_addresse);

    call = linphone_core_invite_with_params(lc,this->sip_addresse,cp);

    linphone_call_ref(call);

    linphone_core_set_use_info_for_dtmf(lc,true);

    qDebug() << linphone_core_get_use_rfc2833_for_dtmf(lc);
    qDebug() << linphone_core_get_use_info_for_dtmf(lc);
    //qDebug() << "early media" << linphone_call_params_early_media_sending_enabled(cp);

    while(running){
            linphone_core_iterate(lc);

            ms_usleep(50000);

            //qDebug() << linphone_core_payload_type_enabled(lc,);

            if(linphone_call_get_state(call) == LinphoneCallError || linphone_call_get_state(call) == LinphoneCallEnd || linphone_call_get_state(call) == LinphoneCallIdle)
            {
                running = false;
            }
        }

    if (call && (linphone_call_get_state(call)!=LinphoneCallEnd)){
            /* terminate the call */
            printf("Terminating the call...\n");
            fflush(stdout);
            linphone_core_terminate_call(lc,call);

            /*at this stage we don't need the call object */
            linphone_call_unref(call);
        }
        linphone_core_destroy(lc);
}

void phone::stop_call()
{
    qDebug() << "stop from lin";
}

void phone::call_state_changed(LinphoneCore *lc, LinphoneCall *call, LinphoneCallState cstate, const char *msg){
    switch(cstate){
        case LinphoneCallOutgoingRinging:
            printf("It is now ringing remotely !\n");
        break;
        case LinphoneCallOutgoingEarlyMedia:
            printf("Receiving some early media\n");
        break;
        case LinphoneCallConnected:
            printf("We are connected !\n");
        break;
        case LinphoneCallStreamsRunning:
            printf("Media streams established !\n");
        break;
        case LinphoneCallEnd:
            printf("Call is terminated.\n");
        break;
        case LinphoneCallError:
            printf("Call failure !");
        break;
        default:
            printf("Unhandled notification %i\n",cstate);
    }
    fflush(stdout);
}
