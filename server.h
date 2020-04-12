#ifndef SERVER_H
#define SERVER_H

#include <QtCore>
#include <QTcpServer>

class server :  public QThread
{
    Q_OBJECT
public:
    server();
    void run();
};

#endif // SERVER_H
