#ifndef SERVER_H
#define SERVER_H

#include <QtCore>
#include <QTcpSocket>

class server : public QThread
{
    Q_OBJECT
public:
    server();
    void run();
    bool ping;

    const char* identity1 =  "sip:dingdong@user:5061";
    const char* password1 = "12345678";

    const char* identity2=  "sip:dingdong@user:5061";
    const char* password2= "12345678";

    const char* identity=  "sip:dingdong@user:5061";
    const char* password= "12345678";
};

#endif // SERVER_H
