#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.setFixedSize(380,300);
    w.setWindowTitle("RaspberryPi data_logger");
    w.show();

    return a.exec();
}
