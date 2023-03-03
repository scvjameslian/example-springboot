FROM public.ecr.aws/compose-x/amazoncorretto:17
# use aws ecr to avoid pulling limits from docker hub
# https://aws.amazon.com/premiumsupport/knowledge-center/ecs-pull-container-error-rate-limit/
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]