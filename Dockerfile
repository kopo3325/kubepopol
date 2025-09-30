# Dockerfile

# 1. 베이스 이미지 선택: Java 17을 포함한 가벼운 Alpine Linux 사용
FROM openjdk:17-jdk-alpine

# 2. 빌드된 JAR 파일의 경로를 변수로 지정
# Gradle은 build/libs/, Maven은 target/ 아래에 jar 파일이 생성됩니다.
# '* .jar'는 파일 이름이 바뀌어도 인식하도록 와일드카드를 사용한 것입니다.
ARG JAR_FILE=build/libs/*.jar

# 3. JAR 파일을 컨테이너 내부로 복사
# 컨테이너 안의 'app.jar'라는 이름으로 복사합니다.
COPY ${JAR_FILE} app.jar

# 4. 컨테이너가 시작될 때 실행할 명령어
# "java -jar /app.jar" 명령을 실행하여 스프링 부트 애플리케이션을 시작합니다.
ENTRYPOINT ["java", "-jar", "/app.jar"]