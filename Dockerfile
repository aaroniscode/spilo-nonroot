FROM registry.opensource.zalan.do/acid/spilo-11:1.5-p6

RUN chown -R postgres:postgres /bin && \
    chown -R postgres:postgres /etc && \
    chown -R postgres:postgres /lib && \
    chown -R postgres:postgres /run && \
    chown -R postgres:postgres /sbin && \
    chown -R postgres:postgres /usr && \
    chown -R postgres:postgres /var && \
    chown postgres:postgres /launch.sh && \
    sed -i '10 a rm /etc/supervisor/conf.d/cron.conf' /launch.sh

USER postgres