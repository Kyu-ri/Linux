*QT프로젝트를 실행하기 전 주의할 점*
1. QT Creator를 설치한다.
2. QT_file_20155445 폴더를 project open한다.
3. mainWindow.cpp에서 MainWindow::on_push_button_clicked()와 
MainWindow::on_push_button_2_clicked() 함수 내의 파일 경로를 확인한다.
이 두 개의 함수 내에 QFile file("/home/pi/data_logger_x/data/data_corpus.dat")로 
경로가 설정되어 있는데, 프로젝트를 실행할 때, data_corpus.dat의 경로를 맞추고 실행한다.
4. run하여 실행한다.