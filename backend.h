#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QTcpSocket>

class backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool active READ active WRITE setActive NOTIFY activeChanged);

    Q_PROPERTY(QList<QString> name READ name)
    Q_PROPERTY(QList<QString> height READ height)
    Q_PROPERTY(QList<QString> sip READ sip)

public:
    explicit backend(QObject *parent = nullptr);
    Q_INVOKABLE void call_end();
    Q_INVOKABLE void call_start(QString sip_addresse);
    Q_INVOKABLE void bell_sound();
    Q_INVOKABLE void close_application();

    bool active();
    void setActive(bool state);

    QList<QString> name();
    QList<QString> height();
    QList<QString> sip();

signals:
    void activeChanged();

public slots:
   void linPhone_finished();

private:
   bool m_active = false;
   QTcpSocket m_socket;

};

#endif // BACKEND_H
