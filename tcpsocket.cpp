#include "tcpsocket.h"

#include <QThread>

tcpsocket::tcpsocket(QObject *parent) : QObject(parent)
{
    connect(&socket, SIGNAL(readyRead()), this, SLOT(onReadyRead()));

    socket.connectToHost("192.168.2.115",9999);

    if(socket.waitForConnected(3000))
    {
        qDebug() << "connected";
        socket.write("Hallo");
        socket.flush();
        socket.waitForBytesWritten(3000);
        //socket.waitForReadyRead();
        //qDebug() << socket.readAll();
    }else
    {
        qDebug() << "server not available";
    }
}

void tcpsocket::onReadyRead()
{
    qDebug() << "reading..";
    //qDebug() << socket.readAll();
}
