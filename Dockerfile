FROM public.ecr.aws/lambda/python:3.12

# Copy function code
COPY ./src/app.py ${LAMBDA_TASK_ROOT}

# lambda layerを使う場合、/opt/pythonにライブラリを展開する
# RUN mkdir /opt/python

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "app.lambda_handler" ]