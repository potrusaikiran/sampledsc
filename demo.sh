initial() {
    output "Update all packages"
    # update package and upgrade Ubuntu
    yum -y update && yum -y upgrade
}

install_nginx_spdy() {
    # install dependence library
    yum -y install pcre-devel openssl-devel libxslt-devel gd-devel perl-ExtUtils-Embed GeoIP-devel
    # install nginx 1.4.x up version with spdy module
    [ -f /tmp/nginx-1.4.7.tar.gz ] || wget http://nginx.org/download/nginx-1.4.7.tar.gz -O /tmp/nginx-1.4.7.tar.gz
    # download openssl library
    [ -f /tmp/openssl-1.0.1g.tar.gz ] || wget http://www.openssl.org/source/openssl-1.0.1g.tar.gz -O /tmp/openssl-1.0.1g.tar.gz
    [ -d /tmp/nginx-1.4.7 ] && cd /tmp/nginx-1.4.7 && make clean
    [ -d /tmp/openssl-1.0.1g ] && rm -rf /tmp/openssl-1.0.1g
    [ -d /tmp/nginx-1.4.7 ] || tar -zxvf /tmp/nginx-1.4.7.tar.gz -C /tmp
    [ -d /tmp/openssl-1.0.1g ] || tar -zxvf /tmp/openssl-1.0.1g.tar.gz -C /tmp
    # generate makefile
    cd /tmp/nginx-1.4.7 && ./configure \
        --prefix=/usr/share/nginx \
        --sbin-path=/usr/sbin/nginx \
        --conf-path=/etc/nginx/nginx.conf \
        --error-log-path=/var/log/nginx/error.log \
        --http-log-path=/var/log/nginx/access.log \
        --pid-path=/var/run/nginx.pid \
        --user=nginx \
        --group=nginx \
        --with-http_realip_module \
        --with-http_addition_module \
        --with-http_xslt_module \
        --with-http_image_filter_module \
        --with-http_geoip_module \
        --with-http_sub_module \
        --with-http_dav_module \
        --with-http_flv_module \
        --with-http_mp4_module \
        --with-http_gzip_static_module \
        --with-http_random_index_module \
        --with-http_secure_link_module \
        --with-http_degradation_module \
        --with-http_stub_status_module \
        --with-http_perl_module \
        --with-mail \
        --with-mail_ssl_module \
        --with-http_ssl_module \
        --with-http_spdy_module \
        --with-openssl=/tmp/openssl-1.0.1g
    cd /tmp/nginx-1.4.7 && make && make install
}
initial
install_nginx_spdy
