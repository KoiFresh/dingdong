#include "config.h"

#include <QFile>
#include <QDebug>

config::config()
{

}

void config::initializeUser()
{
    QString letter;
    QString message;
    QStringList option;
    QFile inputFile("./user.conf");
    inputFile.open(QIODevice::ReadOnly);

    while (!inputFile.atEnd())
    {
        letter = inputFile.read(1);

        if(letter == "["  )
        {
            message = "";
        }else
        if( letter == "]")
        {
            option = message.split(":");
            setOption(option);
        }
        else
        {
            message += letter;
        }

    }
    inputFile.close();
}

void config::setOption(QStringList option)
{
    if(option.value(0) == "identity")
    {
        identity = "";

        for(int i = 1;i < option.length(); i++)
        {
            if(i > 1)
            {
                identity = identity + ":";
            }
            identity = identity + option.value(i);
        }
    }else
    if(option.value(0) == "password")
    {
        password = "";

        for(int i = 1;i < option.length(); i++)
        {
            if(i > 1)
            {
                password = password + ":";
            }
            password = password + option.value(i);
        }
    }else
    if(option.value(0) == "passcode")
    {
        passcode = "";

        for(int i = 1;i < option.length(); i++)
        {
            if(i > 1)
            {
                passcode = passcode + ":";
            }
            passcode = passcode + option.value(i);
        }
    }
}


void config::initializeSign()
{
    QString letter;
    QString message;
    QList<QString> option;
    QFile inputFile("./sign.conf");
    inputFile.open(QIODevice::ReadOnly);

    int i = 0;

    while (!inputFile.atEnd())
    {
        letter = inputFile.read(1);

        if(letter == "["  )
        {
            message = "";
        }else
        if( letter == "]")
        {

            option = message.split(":");

            name.append(option.value(0));
            strasse.append(option.value(1));
            height.append(option.value(2));
            sip.append(option.value(3));
            i++;
        }
        else
        {
            message += letter;
        }

    }
    inputFile.close();
}

