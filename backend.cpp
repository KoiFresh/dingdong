#include "backend.h"
#include "phone.h"
#include "server.h"

#include <QSound>

#include <iostream>

phone* linPhone = new phone();
server* serverCheck = new server();

backend::backend(QObject *parent) : QObject(parent)
{  
    std::cout << "Backend Initialzed" << std::endl;
    connect(linPhone,&phone::finished,this,&backend::linPhone_finished);
    serverCheck->start();
}

bool backend::active() // der Wert active wird abgefrag -> active Anruf läuft
{
    return m_active;
}
void backend::setActive(bool state)
{
    m_active = state;
    serverCheck->ping = state;
    emit activeChanged();
}


void backend::call_start(QString sip_addresse)
{
    socket = new QTcpSocket();

    socket->connectToHost("sip.mayer-schoch.de",80);

    if(socket->waitForConnected(3000))
    {
        std::cout << "Server available" << std::endl;
        linPhone->identity = "sip:dingdong@dingdong:5061";
        linPhone->password = "12345678";
    }else
    {
        std::cout << "Server not available" << std::endl;
        linPhone->identity = "sip:dingdong@dingdong:5061";
        linPhone->password = "12345678";
    }


    if(!m_active)
    {
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
