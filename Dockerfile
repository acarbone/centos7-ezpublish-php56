FROM centos:7

RUN yum update -y && yum install epel-release -y && rpm -Uvh --replacepkgs http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && yum install gcc -y && yum install vim -y && yum install wget -y

RUN yum install ImageMagick ImageMagick-devel ImageMagick-perl -y

RUN yum-config-manager --enable remi,remi-php56

RUN yum install -y git php php-pecl-apcu php-cli php-fpm php-common php-devel php-gd php-mbstring php-pdo php-pecl-apc php-xml php-curl php-opcache php-imagick php-intl php-memcache php-mcrypt php-mhash php-mysqlnd php-xsl php-pear php-zip php-openssl php-ssh2 php-soap php-opcache php-bcmath

RUN yum install -y nodejs npm
RUN npm install uglify-js -g && npm install uglifycss -g

RUN yum install -y jpegoptim

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
