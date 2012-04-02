Plugins
===============================================================================

Plugins Introduction
-------------------------------------------------------------------------------
Plugin在vim中是插件的意思。vim除了是一个功能强大的编辑器之外，她还是一个很好的编辑器开发框架。而vim的强大的特性有90%是由各种插件支撑起来的，插件将成为进阶vim使用的必经之路。很多高级vim用户都有自己钟爱的插件，也有非常多的适合自己的自定义配置。

*lazyvim* 项目仅仅提供一些基础的、普世的、杰出的vim插件。随着你对vim了解的深入，这些插件肯定不能完全满足你的需要。但是我们开放源码和各种配置文件，所以没有什么阻碍你去修改她们，让她们完全适合你的需要。

学习插件的秘诀就是很多vim插件都提供了完善的文档，阅读他们，然后按照你的需要修改她们。

Q&A
-------------------------------------------------------------------------------

* 去哪里找vim插件？
..

    http://www.vim.org/scripts   

* 如何安装下载的插件？
..

    *lazyvim* 使用了pathogen插件来加载其他插件。这样做的好处就是你只要把下载的插件解压缩，然后把的到的目录放入~/.vim/bundle/目录下就可以了，其他的事情pathogen会帮你处理好。（如果插件有安装说明请仔细阅读，因为有些插件不是自动启用的）

* 插件怎么使用？
..

    刚刚提到一般插件都有非常完善的文档，文档一般都会随着插件一起下载，也就是说文档在下载的压缩包里。解压后进入插件目录，一般会有一个doc目录。没错！这里就是文档的所在地了，为了方便Windows用户，一般是txt扩展名的文件。
    
    当然，vim本身是可以查看插件文档的，请在vim下运行:h helptags获得插件文档加入vim索引的帮助，然后就可以使用:h plugin-name来查看插件帮助文档了（plugin-name请自行替换成想查看的插件名称）

Plugins List
-------------------------------------------------------------------------------

* solarized

  * link: https://github.com/altercation/vim-colors-solarized

..

    一个vim配色方案。

* neocomplcache

  * link: https://github.com/Shougo/neocomplcache

..

    可以在输入的时候自动记录当前文件输入过的词组，当第二次输入时自动匹配，让用户选择需要的词组。支持中英文，有效避免程序员拼写错误。唯一缺陷就是只能同时分析一个文件，如果是一个项目就没法自动补全了。

* snipmate

  * link: https://github.com/msanders/snipmate.vim

..

    MAC下有个非常好用的编辑器TextMate，其中一项杀手级功能就是文本片段生成。当然，对于强大的vim来说，安装一下snipmate就实现这个功能了。将你常用的文本片段写入snippets文件，然后给他们起个短小的名字。等你在相同类型的文件中输入这个短小的名字后，按下<Tab>键。见证奇迹的时刻啊！那大段的文字就出现了！

    例如，你新建一个c语言的源代码文件

    $ vim test.c

    最常用的就是main函数了，在文件中写下main，然后按下<Tab>键

    main<Tab>

    这些名字都在snippets目录中，文件名代表一种文件格式。例如c.snippets就是所有可以用来编写c语言源代码*.c文件时可以使用的简写名字。如果有需要，你可以任意添加、删除、修改这写片段，方法可以看帮助文档。

* netrw

  * link: http://www.vim.org/scripts/script.php?script_id=1075

..

    netrw是一个文件管理器， *lazyvim* 使用,fe打开文件管理器窗口。配合实时搜索使用，查找打开文件效率极高，这两个选项在 *lazyvim* 中都默认打开了。

* minibufexpl

  * old version link (version < 6.3.2): http://www.vim.org/scripts/script.php?script_id=159
  * new version link (version > 6.3.7): https://github.com/fholgado/minibufexpl.vim

..

    minibufexpl用来管理打开的buffer，vim可以同时打开多个文件，每个文件占用一个buffer。 *lazyvim* 使用,be来打开buffer管理器。出于稳定性的考虑，使用了6.3.2版本，等新版本稳定了再做升级。

