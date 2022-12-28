# Используем дистрибутив Linux - alpine оптимизированный для контейнеризации
FROM alpine

# Устанавливаем python
RUN apk add python3

# Копируем файл в корневую директорию внутри образа
COPY application.py / 

# Запуск приложения во время старта контейнера
CMD ["python3", "application.py"]