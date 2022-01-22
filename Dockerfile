FROM python:3.9.1
WORKDIR /app
ADD ./requirements.txt /app/requirements.txt
RUN pip3 install wheel
RUN pip install -r /app/requirements.txt
COPY . /app
RUN mkdir /src
CMD ["python", "-u", "./main.py"]

# FROM public.ecr.aws/lambda/python:3.9
# # RUN useradd -ms /bin/bash app_user
# # USER app_user
# # WORKDIR /home/app_user
# COPY requirements.txt ./
# RUN yum install gcc -y
# RUN pip3 install wheel
# RUN pip install --no-cache-dir -r requirements.txt
# # USER app_user
# COPY . .
# CMD ["python main.py"]
