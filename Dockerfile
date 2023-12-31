#FROM node:16.15.0-bullseye
FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y curl zip rsync
RUN curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
#filebrowser -r /path/to/your/files


#RUN mkdir /database
# RUN filebrowser config init
# #RUN echo "20220503-1528 "
# RUN mkdir -p /data
# RUN filebrowser config set --root /data
#RUN filebrowser users update admin --password t343434
# RUN echo "20220503-1528 "
# RUN echo $FB_USERNAME
# RUN echo $FB_PASSWORD
#RUN /filebrowser users add user password
# RUN echo "{}"

RUN mkdir /config
RUN mkdir -p /data

#RUN filebrowser users add user2 $2y$10$kK216YyEwh4MnFTo.iu.VuB9YKujPJa6vKTA2Vkw78i1sApCAmA1m
# RUN filebrowser config init
# RUN cp /filebrowser.db /filebrowser.db.clone
COPY filebrowser.db /filebrowser.db

# CMD ["bash"]
# ENTRYPOINT ["/usr/local/bin/filebrowser", "--root=/data", "--address=0.0.0.0", "--database=/config/filebrowser.db"]
COPY startup.sh /startup.sh
ENTRYPOINT [ "/startup.sh" ]