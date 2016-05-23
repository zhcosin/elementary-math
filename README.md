# 简介
这份工程是《初等数学个人笔记》一书的LaTeX源代码。此书是我作为一名数学业余爱好者的初等数学笔记。它的pdf文件在百度云上提供免费下载：[http://pan.baidu.com/s/1kVjLeir](http://pan.baidu.com/s/1kVjLeir)，只需要pdf的同学可以去百度云下载就可以了。

# 编译
1. LaTeX环境。首先请确保已经安装LaTeX系统，比如texlive。其次本书源代码使用了CTeX文档类，因此请确保CTeX宏包已经正确安装。
2. 下载源代码到本地。
3. 编译
    > cd elementary-math-book
    > xelatex book.tex
    > xelatex book.tex

你没看错，需要编译两次，这能使LaTeX生成正确的引用与目录。编译之后目录下会生成book.pdf电子书，此即《初等数学个人笔记》一书。
