lazyvim
===============================================================================
Make me! Change me! Destroy me!

Introduction
-------------------------------------------------------------------------------
A vim configuration file & plugins package for lazy guys.

Install *lazyvim*, you will get a basic configuration file of vim. As you like, you will have a bunch of powerful vim plugins.

**WARNING FOR GEEK**: *lazyvim* builds for vim newbie and layz guys. So, if you are a **Geek** of vim. You can walk around other website for more funny or just sleeping. Or, help us to make *lazyvim* better!

Configuration files
-------------------------------------------------------------------------------

Top level configuration file
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The path of top level configuration file is:

.. code:: bash

    ~/.vimrc

You can just modify it. If you want add some new configuration feature, there is a suggestion that is adding it to a sub configuration file.

Sub configuration files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
All sub configuration files' path is:

.. code:: bash

    ~/.vim/vimrc.d/

There are a whole bunch of configuration files. You can enable or disable anyone.

**Sub configuration file name**

* *Enabled file name*: xxxxxx.vimrc
* *Disabled file name*: xxxxxx.disable

**Enable sub configuration file**

.. code:: bash

    $ cd ~/.vim/bin/

    $ ./rc_manager.sh enable name_of_sub_configuration_file.disable

**Disable sub configuration file**

.. code:: bash
    
    $ cd ~/.vim/bin/

    $ ./rc_manager.sh disable name_of_sub_configuration_file.vimrc

**Export to PATH**

.. code:: bash

    $ export PATH=$PATH:path/to/lazyvim/bin


Contributor
-------------------------------------------------------------------------------
Powered By Tianjin Linux User Group

* Offical Blog:   http://www.tjlug.net
* Mail List:      mailto://tjlug@googlegroups.com
* Git Repo:       https://github.com/TJLUG

Contributor List
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

