#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QTcpSocket>

class backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool active READ active WRITE setActive NOTIFY activeChanged);

public:
    explicit backend(QObject *parent = nullptr);
    Q_INVOKABLE void call_end();
    Q_INVOKABLE void call_start(QString sip_addresse);
    Q_INVOKABLE void bell_sound();
    Q_INVOKABLE void close_application();

    bool active();
    void setActive(bool state);

signals:
    void activeChanged();

public slots:
   void linPhone_finished();

private:
   bool m_active;
   QTcpSocket* socket;

};

#endif // BACKEND_H
