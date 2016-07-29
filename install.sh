#/usr/bin/bash
echo 'Install droid-hunter'
echo ' -> set command'
MYPWD=`pwd`
echo '#/usr/bin/ruby\nruby '$MYPWD'raven.rb' >> /usr/bin/raven
echo 'Finish. run a raven'
