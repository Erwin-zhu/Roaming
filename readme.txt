                                readme
                                ======

Author: 
Date: 2014-11-14 17:52:40 中国标准时间


Table of Contents
=================
1 怎么安装emacs到我的电脑（windows）
        1.1 1.需要下载的文件
        1.2 2.怎么安装
2 emacs FAQ
    2.1 M-w无响应的原因
    2.2 emacs添加右键到菜单
    2.3 查看用eclipse编辑的代码，缩进问题


1 怎么安装emacs到我的电脑（windows） 
=====================================

1.1 1.需要下载的文件 
~~~~~~~~~~~~~~~~~~~~~
   我把安装emacs所需要的所有文件都存放在 [Roaming/.emacs.d/DownloadedFile] 下，emacs24 由于文件过大，可自行到[gnu-emacs官网下载]。

   [Roaming/.emacs.d/DownloadedFile]: https://github.com/Erwin-zhu/Roaming
   [gnu-emacs官网下载]: http://gnu.mirrors.pair.com/gnu/emacs/

1.2 2.怎么安装 
~~~~~~~~~~~~~~~
   用git或者是别的其他的方法，将下载下来的Roaming目录拷贝进C:\Users\***in\AppData(这个对应你自己相应目录)([windows系统中Emacs的HOME目录及配置文件的正确路径])，覆盖掉Roaming这个文件夹即安装成功。

   [windows系统中Emacs的HOME目录及配置文件的正确路径]: http://www.cnblogs.com/ini_always/archive/2012/04/27/2472857.html

2 emacs FAQ 
============

2.1 M-w无响应的原因 
--------------------
   修改聊天软件QQ中的热键，这个与emacs中的冲突了。 [Emacs中复制问题和图片显示问题]

   [Emacs中复制问题和图片显示问题]: http://www.cnblogs.com/qlwy/archive/2012/06/15/2551485.html

2.2 emacs添加右键到菜单 
------------------------
   呼出 regedit，在 HKEY_CLASSES_ROOT\* 下建立一个名为“Shell”的项，然后在 HKEY_CLASSES_ROOT\*\Shell 中建立一个名为“Emacs 编辑(&M)”的项，再在这个新建的项中建立一个名为“Command”的项，将其中的“(默认)”条目的值改为D:\lispbox-0.7\emacs-23.2\bin\runemacs.exe "%1"。
(ps:[emacs 添加到右键菜单方法出处])

[emacs 添加到右键菜单方法出处]: http://www.douban.com/note/251180196/

2.3 查看用eclipse编辑的代码，缩进问题 
--------------------------------------
   添加下面一句话到.emacs中去


  (setq-default tab-width 4)





ORG-BLOCKQUOTE-START
(setq-default tab-width 
ORG-BLOCKQUOTE-END


  (setq-default tab-width 4)

,参考资料：[emacs 设置tab大小为4个空格 ].


[emacs 设置tab大小为4个空格 ]: http://blog.sina.com.cn/s/blog_725e679a0100pz3j.html

