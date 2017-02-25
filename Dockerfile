FROM jekyll/jekyll
RUN mkdir /deps
RUN mkdir /mnjagadeesh.github.io
COPY  Gemfile /deps
VOLUME /mnjagadeesh.github.io
RUN cd /deps && bundle install
WORKDIR /mnjagadeesh.github.io
EXPOSE 4000
RUN jekyll build 
ENTRYPOINT ["jekyll serve"]

