#include "connectionsettings.h"
#include <QSettings>
#include <QCoreApplication>
#include <QDebug>

ConnectionSettings::ConnectionSettings(QObject *parent) :
    QObject(parent)
{
    QCoreApplication::setOrganizationName("marknotgeorge");
    QCoreApplication::setApplicationName("QMLIrc");
}

QString ConnectionSettings::host()
{
    QSettings settings;
    return settings.value("host", "irc.server.com").toString();
}

int ConnectionSettings::port()
{
    QSettings settings;
    return settings.value("port", "6667").toInt();
}

QString ConnectionSettings::nickname()
{
    QSettings settings;
    return settings.value("nickname", "nickname").toString();
}

QString ConnectionSettings::password()
{
    QSettings settings;
    return settings.value("password").toString();
}

QString ConnectionSettings::username()
{
    QSettings settings;
    return settings.value("username","username").toString();
}

QString ConnectionSettings::realname()
{
    QSettings settings;
    return settings.value("realname", "Dante Hicks").toString();
}

void ConnectionSettings::setHost(QString newHost)
{
    QSettings settings;
    settings.setValue("host", newHost);
    emit hostChanged(newHost);
}

void ConnectionSettings::setPort(int newPort)
{
    QSettings settings;
    settings.setValue("port", newPort);
    emit portChanged(QString::number(newPort));
}

void ConnectionSettings::setPort(QString newPortString)
{
    QSettings settings;
    settings.setValue("port", newPortString);
    emit portChanged(newPortString);
}

void ConnectionSettings::setNickname(QString newNickname)
{
    QSettings settings;
    settings.setValue("nickname", newNickname);
    emit nicknameChanged(newNickname);
}

void ConnectionSettings::setPassword(QString newPassword)
{
    QSettings settings;
    settings.setValue("password", newPassword);
    emit passwordChanged(newPassword);
}

void ConnectionSettings::setUsername(QString newUsername)
{
    QSettings settings;
    settings.setValue("username", newUsername);
    emit usernameChanged(newUsername);
}

void ConnectionSettings::setRealname(QString newRealname)
{
    QSettings settings;
    qDebug() << "Setting value to " << newRealname;
    settings.setValue("realname", newRealname);
    emit realnameChanged(newRealname);
}

