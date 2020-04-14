#ifndef TCPSOCKET_H
#define TCPSOCKET_H

#include <QObject>
#include <QTcpSocket>

class tcpsocket : public QObject
{
    Q_OBJECT
public:
    explicit tcpsocket(QObject *parent = nullptr);

public slots:
    void onReadyRead();
signals:

private:
    QTcpSocket socket;
};

#endif // TCPSOCKET_H
