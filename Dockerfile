FROM octohost/ruby-2.0

RUN mkdir /srv/www
ADD . /srv/www
RUN cd /srv/www; bundle install --deployment

WORKDIR /srv/www

EXPOSE 3000

CMD foreman start
