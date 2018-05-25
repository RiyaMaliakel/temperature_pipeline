FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8889
COPY . .

CMD [ "python", "./Predict_the_cause_API.py" ]