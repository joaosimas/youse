# youse

Para configurar o ChromeDriver.

Install Unzip

sudo apt-get install unzip

wget -N http://chromedriver.storage.googleapis.com/2.10/chromedriver_linux64.zip -P ~/Downloads

unzip ~/Downloads/chromedriver_linux64.zip -d ~/Downloads

chmod +x ~/Downloads/chromedriver

sudo mv -f ~/Downloads/chromedriver /usr/local/share/chromedriver

sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver

sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver

bundle exec chromedriver-update

-------

Para o Firefox

Baixar o geckdriver na versão do seu sistema operacional
https://github.com/mozilla/geckodriver/releases

Mover o GeckDriver desconpactado para /usr/bin

Atualizar o driver
sudo gem update selenium-webdriver


-------
Para rodar o projeto inteiro, entrar no diretório youse e rodar o comando 

cucumber

Caso queira rodar apenas o arquivo de login:

cucumber --require features features/specifications/login.feature

Caso queira rodar apenas o arquivo de cadastro:

cucumber --require features features/specifications/cadastro.feature