# Официальный образ Prometheus Blackbox Exporter
FROM prom/blackbox-exporter:latest

# Копируем конфигурационный файл в образ
COPY blackbox.yml /etc/blackbox.yml

# Указываем, какой конфигурационный файл использовать (если отличается от стандартного)
# По умолчанию Blackbox Exporter ищет файл /etc/blackbox.yml, поэтому эта строка может быть необязательной
# CMD ["--config.file=/etc/blackbox.yml"]

# Expose порт, на котором работает Blackbox Exporter (по умолчанию 9115)
EXPOSE 9115

# Команда для запуска Blackbox Exporter (по умолчанию уже определена в базовом образе)
# ENTRYPOINT ["/bin/blackbox_exporter"]