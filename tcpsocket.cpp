#include "tcpsocket.h"

#include <QThread>
#include <QHostInfo>

tcpsocket::tcpsocket()
{

}

void tcpsocket::run()
{
    socket = new QTcpSocket();

    socket->connectToHost("dingdong",3344);

    if(socket->waitForConnected(3000))
    {

        socket->write(name);
        socket->flush();

        qDebug() << "door sucessfully connected";
        while (socket->state() == QAbstractSocket::ConnectedState) {

            socket->waitForReadyRead();
            QString cmd = socket->readAll();

            if(cmd == "open")
            {
                qDebug("key_server send signal to open the door");
                emit unlock();
            }
        }


    }else
    {
        qDebug() << "server not available";
    }
    socket->close();
    qDebug() << "tcp socket thread enden";
}
