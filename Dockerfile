FROM ubuntu
ADD ./test-app.sh /opt/test-app.sh
RUN apt update && apt install jq curl -y && chmod +x /opt/test-app.sh
CMD ["/opt/test-app.sh"]