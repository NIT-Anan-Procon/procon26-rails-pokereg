#!/bin/bash
echo "Deploy Pokereg"
date
whoami
cd /var/share/rails_pokereg
pwd

which ruby
which bundle 
which rake 
echo "----------"

/usr/local/rvm/gems/ruby-2.1.3@global/bin/bundle install
/usr/local/rvm/gems/ruby-2.1.3@pokereg/bin/rake db:migrate:reset
/usr/local/rvm/gems/ruby-2.1.3@pokereg/bin/rake db:seed

