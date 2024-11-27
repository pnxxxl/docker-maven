# Используем официальный образ Maven
FROM maven:3.8.8-eclipse-temurin-17

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем файлы проекта
COPY . .

# Скачиваем зависимости и собираем проект
RUN mvn clean install

# Команда запуска приложения
CMD ["java", "-cp", "target/docker_maven-1.0-SNAPSHOT.jar", "App"]
