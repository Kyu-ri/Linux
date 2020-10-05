#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QFile>
#include <QTextStream>
#include <QString>
#include <QMessageBox>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pushButton_clicked()
{
    QFile file("/home/pi/Desktop/data_logger_x/data/data_corpus.dat");
    if(!file.open(QIODevice::ReadOnly))
        QMessageBox::information(0,"info",file.errorString());
    QTextStream in(&file);

    ui->textBrowser->setText(in.readAll());
}

void MainWindow::on_pushButton_2_clicked()
{
    QFile file("/home/pi/Desktop/data_logger_x/data/data_corpus.dat");
    QTextStream in(&file);
    QStringList list;

    if(!file.open(QIODevice::ReadOnly)){
        QMessageBox::information(0,"info",file.errorString());
    }
    else
    { while(file.atEnd()){
        list.append(file.readLine());

        }

    }
    ui->textBrowser->setText(file.readLine());
}
