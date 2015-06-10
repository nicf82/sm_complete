Service Manager Bash Completion
===============================

Prerequsites
------------

jq, e.g:

    brew install jq #On OSX
    sudo apt-get install jq #On debian/ubuntu

Install
-------

Download the script to your home directory (for example). Execute sm_complete.sh in your ~/.bash_profile

    cd ~
    wget https://raw.githubusercontent.com/nicf82/sm_complete/master/sm_complete.sh
    echo ". ~/sm_complete.sh" >> .bash_profile
    . .bash_profile
