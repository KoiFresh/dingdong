#ifndef PHONE_H
#define PHONE_H

#include <QtCore>
#include <linphone/linphonecore.h>

class phone : public QThread
{
    Q_OBJECT
public:
    phone();
    //void start_call(const char* sip_addresse);
    void run();
    QString sip_adress;
    bool running;

    const char* identity=  "sip:dingdong@user:5061";
    const char* password= "12345678";
    const char* server_addr = "user";

public slots:
    void stop_call();

private:
    LinphoneCoreVTable vtable={};
    LinphoneCore *lc;
    LinphoneCall *call=NULL;

    LinphoneProxyConfig* proxy_cfg;
    LinphoneAddress *from;
    LinphoneAuthInfo *info;

    const char* sip_addresse;
    static void call_state_changed(LinphoneCore *lc, LinphoneCall *call, LinphoneCallState cstate, const char *msg);
    static void registration_state_changed(struct _LinphoneCore *lc, LinphoneProxyConfig *cfg, LinphoneRegistrationState cstate, const char *message);


};

#endif // PHONE_H
