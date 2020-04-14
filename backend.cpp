#include "backend.h"
#include "phone.h"
#include "config.h"

#include <QSound>
#include <QThread>
#include <iostream>

#include "tcpsocket.h"

phone linPhone; //= new phone();
config config;

QThread mythread;

backend::backend(QObject *parent) : QObject(parent)
{  
    std::cout << "Backend Initialzed" << std::endl;
    connect(&linPhone,&phone::finished,this,&backend::linPhone_finished);

    config.initializeUser();
    config.initializeSign();

   // tcpsocket socket;

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

QByteArray identity;
QByteArray password;

void backend::call_start(QString sip_addresse)
{
    if(!m_active)
    {

        m_socket.connectToHost("sip.mayer-schoch.de",80);

        if(m_socket.waitForConnected(3000))
        {
            qDebug() << "Server available";
            identity = config.identity.toLocal8Bit();
            linPhone.identity = identity.data();

            password = config.password.toLocal8Bit();
            linPhone.password = password.data();

        }else
        {
            qDebug() << "Server not available";
            linPhone.identity = "sip:dingdong@dingdong:5061";
            linPhone.password = "12345678";
        }

        m_socket.close();

        setActive(true);
        linPhone.sip_adress = sip_addresse;
        linPhone.start();

    }
}

void backend::call_end()
{
    linPhone.running = false;
    qDebug() << "end the call";
}

void backend::stop_call()
{
    linPhone.running = false;
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

bool backend::unlock(QString passcode)
{
    if(passcode == config.passcode)
    {
        qDebug("unlocked");
        m_socket.connectToHost("mayer-schoch.de",80);
        if(m_socket.waitForConnected(3000))
        {
            m_socket.write("unlock");
        }

        return true;
    }else
    {
        return false;
    }
}

void backend::close_application()
{
    QCoreApplication::quit();
}
