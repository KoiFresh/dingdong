#include "backend.h"
#include "phone.h"
#include "config.h"

#include <QSound>
#include <QThread>
#include <iostream>

phone* linPhone = new phone();
config config;

backend::backend(QObject *parent) : QObject(parent)
{  
    std::cout << "Backend Initialzed" << std::endl;
    connect(linPhone,&phone::finished,this,&backend::linPhone_finished);

    config.initializeUser();
    config.initializeSign();

   // qDebug() << "name " << config.name.value(1);
   // qDebug() << "höhe " << config.height.value(1);
   // qDebug() << "sip " << config.sip.value(1);

}

bool backend::active() // der Wert active wird abgefrag -> active Anruf läuft
{
    return m_active;
}
void backend::setActive(bool state)
{
    m_active = state;
    emit activeChanged();
}

QList<QString> backend::name()
{
    return config.name;
}
QList<QString> backend::strasse()
{
    return config.strasse;
}
QList<QString> backend::height()
{
    return config.height;
}
QList<QString> backend::sip()
{
    return config.sip;
}


void backend::call_start(QString sip_addresse)
{
    if(!m_active)
    {
        m_socket.connectToHost("sip.mayer-schoch.de",80);

        if(m_socket.waitForConnected(3000))
        {
            qDebug() << "Server available";
            linPhone->identity = "sip:dingdong@dingdong:5061";
            linPhone->password = "12345678";
        }else
        {
            qDebug() << "Server not available";
            linPhone->identity = "sip:dingdong@dingdong:5061";
            linPhone->password = "12345678";
        }

        m_socket.close();

        setActive(true);
        linPhone->sip_adress = sip_addresse;
        linPhone->start();
    }
}

void backend::call_end()
{
    linPhone->running = false;
}

void backend::linPhone_finished()
{
    setActive(false);
    std::cout << "Phone ended" << std::endl;
}

void backend::bell_sound()
{
    QSound::play("ding-dong.wav");
    std::cout << "Sound" << std::endl;
}

void backend::close_application()
{
    QCoreApplication::quit();
}
