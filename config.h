#ifndef CONFIG_H
#define CONFIG_H

#include <QString>
#include <QtCore>

class config : public QObject
{
    Q_OBJECT
public:
    config();
    void initializeUser();
    void initializeSign();

    QString identity;
    QString password;
    QString passcode;
    QString public_account;
    QString public_door;
    QString door_host;

    QList<QString> height;
    QList<QString> name;
    QList<QString> sip;
    QList<QString> strasse;

private:
    void setOption(QStringList option);


};

#endif // CONFIG_H
