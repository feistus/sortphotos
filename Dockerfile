FROM python:3

ENV days=365

ADD setup.py /app/
ADD src /app/src
WORKDIR /app
# RUN apt-get update && apt-get install perl
RUN python setup.py install
RUN mkdir /source && mkdir /destination
# RUN ls /
#CMD [ "python", "src/sortphotos.py", "-r", "--older-than", "365", "/source", "/destination"]
CMD python src/sortphotos.py -r --older-than $days /source /destination