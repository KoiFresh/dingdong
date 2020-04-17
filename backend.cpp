#include "backend.h"
#include "phone.h"
#include "config.h"

#include <QSound>
#include <QThread>
#include <iostream>

#include "tcpsocket.h"

phone linPhone; //= new phone();
config config;
tcpsocket tcpSocket;

backend::backend(QObject *parent) : QObject(parent)
{  
    std::cout << "Backend Initialzed" << std::endl;
    connect(&linPhone,&phone::finished,this,&backend::linPhone_finished);

    config.initializeUser();
    config.initializeSign();

    connect(&tcpSocket,SIGNAL(unlock()),this,SLOT(door_unlock()));

    qDebug() << "Config:";
    qDebug() << "identity: " << config.identity;
    qDebug() << "password: " << config.password;
    qDebug() << "passcode: " << config.passcode;
    qDebug() << "public_account: " << config.public_account;
    qDebug() << "public_door: " << config.public_door;
    qDebug() << "door_host: " << config.door_host;

    refreshDoorconnection();

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

    refreshDoorconnection();

    if(!m_active)
    {

        m_socket.connectToHost("sip.mayer-schoch.de",80);

        if(m_socket.waitForConnected(3000) && (config.public_account == "yes" || config.public_door == "yes" ))
        {
            qDebug() << "Call public";
            identity = config.identity.toLocal8Bit();
            linPhone.identity = identity.data();

            password = config.password.toLocal8Bit();
            linPhone.password = password.data();


        }else
        {
            qDebug() << "Call private";
            linPhone.identity = private_account;
            linPhone.password = "12345678";
            qDebug() << sip_addresse;
        }

        m_socket.close();

        setActive(true);
        linPhone.sip_adress = sip_addresse;
        linPhone.start();

    }
}

void backend::refreshDoorconnection()
{
    if(!tcpSocket.isRunning())
    {
        m_socket.connectToHost("key.mayer-schoch.de",3344);

        if(m_socket.waitForConnected(3000) && config.public_account == "yes")
        {
            qDebug() << "Connect door to public...";
            tcpSocket.name = public_name;
        }else
        {
            qDebug() << "Connect door to priavte...";
            tcpSocket.name = private_name;
        }
        m_socket.close();
        tcpSocket.start();
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
        door_unlock();
        return true;
    }else
    {
        return false;
    }

}

void backend::door_unlock()
{
    qDebug() << "door open -> unlock";
    m_socket.connectToHost(config.door_host,3345);
    if(m_socket.waitForConnected(3000))
    {
        m_socket.write("doormaster:open");
        qDebug("Open send to doormaster");
    }else
    {
        qDebug("doormaster not available");
    }
    m_socket.close();
}

void backend::close_application()
{
    QCoreApplication::quit();
}


