#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QSerialPort>
#include <QSerialPortInfo>

namespace Ui {
class seriport;
}

class seriport : public QMainWindow
{
    Q_OBJECT

public:
    explicit seriport(QWidget *parent = 0);
    ~seriport();

private slots:
    void serialPort_readyRead();

    void on_searchButton_clicked();

    void on_openButton_clicked();

    void on_sendButton_clicked();

    void on_clearButton_clicked();

private:
    Ui::seriport *ui;
    QSerialPort serial;
};

#endif // MAINWINDOW_H
