FROM python
WORKDIR /myapp
COPY . .
RUN pip3 install -r requirements.txt
RUN pip3 install mysql-connector-python
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]