INSTALL MANUAL
===============================================================================

Requirements
-------------------------------------------------------------------------------
vim 

Install
-------------------------------------------------------------------------------

Get lazyvim
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# download lazyvim source code or clone Git Repo
..

    $ git clone git://github.com/TJLUG/lazyvim.git

# download submodule of vim plugins.
..

    $ cd path/to/lazyvim
    $ git submodule init
    $ git submodule update

Install lazyvim
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
..

    $ cd path/to/lazyvim

    $ chmod a+x install.sh

    $ ./install.sh

Uninstall lazyvim
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
..

    $ ./install.sh rollback

    $ rm -rf path/to/lazyvim

Backup
-------------------------------------------------------------------------------
Script named install.sh will backup your older user configration file ($HOME/.vimrc) to $HOME/.vimrc.old automatically.
