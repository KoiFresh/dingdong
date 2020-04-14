#ifndef TCPSOCKET_H
#define TCPSOCKET_H

#include <QObject>
#include <QTcpSocket>
#include <QThread>

class tcpsocket : public QThread
{
    Q_OBJECT
public:
    tcpsocket();
    void run();
    const char* name = "dingdong:0000";

public slots:

signals:
    void unlock();

private:
    QTcpSocket *socket;
};

#endif // TCPSOCKET_H
