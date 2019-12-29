FROM bash:5.0.11

COPY install-plugins.sh /
COPY resources /resources

COPY white-list.txt /white-list.txt

CMD ["bash", "/install-plugins.sh"]