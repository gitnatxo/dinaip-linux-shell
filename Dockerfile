FROM quay.io/fedora/fedora-minimal

RUN /usr/bin/microdnf install -y perl-libwww-perl
COPY source /opt/dinaip
RUN ln -s /opt/dinaip/dinaip.pl /usr/sbin/dinaip

CMD eval /usr/sbin/dinaip -f -u $USERNAME -p $PASSWORD -a $ZONE
