#/usr/bin/bash
echo 'Install Raven'
echo 'Install GEM'
gem install colorize
echo ' -> set command'
MYPWD=`pwd`
echo '#/usr/bin/ruby
ruby '$MYPWD'/raven.rb $*' >> /usr/bin/raven
echo 'Finish. run a raven'
