FROM httpd:2.4

ADD httpd.conf /usr/local/apache2/conf/httpd.conf
ADD httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
ADD server.crt /usr/local/apache2/conf/server.crt
ADD server.key /usr/local/apache2/conf/server.key

# これは単にコピーしているだけなので、パスワードを変えた場合で
# それを配布したい場合はcatして結果をホスト側で貼り付けるなどする必要あり
ADD .htdigest /usr/local/apache2/.htdigest
