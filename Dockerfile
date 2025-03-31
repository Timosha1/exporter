# Официальный образ Prometheus Blackbox Exporter
FROM prom/blackbox-exporter:latest

# Копируем конфигурационный файл в образ
COPY blackbox.yml /etc/blackbox_exporter/
# По умолчанию Blackbox Exporter ищет файл /etc/blackbox.yml но на всякий случай
# CMD ["--config.file=/etc/blackbox.yml"]

# Expose порт, на котором работает Blackbox Exporter (по умолчанию 9115)
EXPOSE 9115

# Команда для запуска Blackbox Exporter (по умолчанию уже определена в базовом образе)
# ENTRYPOINT ["/bin/blackbox_exporter"]