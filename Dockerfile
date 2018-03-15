FROM alpine:3.7

RUN apk --no-cache add python3 python3-dev musl-dev gcc g++ make libffi libffi-dev libstdc++ \ 
 && pip3 install --upgrade pip \
 && pip3 install gunicorn httpbin \
 && echo '#!/bin/sh' > run.sh \
 && echo 'exec gunicorn --bind=0.0.0.0:8000 httpbin:app' >> run.sh \
 && chmod +x run.sh \
 && apk del gcc g++ make musl-dev libffi-dev python3-dev
  
EXPOSE 8000
  
CMD ["./run.sh"]

