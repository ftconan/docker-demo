#/bin/bash

# demo if then if then fi fi

if [ $USER = magician ] ; then
    echo "please run"
    if [ -x /Users/magician/Project/docker-demo/shell_demo/hello.sh ] ; then
        sh /Users/magician/Project/docker-demo/shell_demo/hello.sh
    fi
else
    echo "switch user root"
fi
