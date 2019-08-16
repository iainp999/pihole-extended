FROM pihole/pihole:latest

WORKDIR /var/www/html

# Pulled from the interactive install script at https://raw.githubusercontent.com/lkd70/PiHole-Dark/master/install.sh
RUN git clone https://github.com/lkd70/PiHole-Dark.git temp
RUN rm -f admin/style/vendor/AdminLTE.min.css
RUN cp temp/admin/style/vendor/AdminLTE.min.css admin/style/vendor/AdminLTE.min.css
RUN cp temp/admin/style/vendor/AdminLTE.css admin/style/vendor/AdminLTE.css
