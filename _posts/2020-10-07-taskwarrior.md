---
layout: post
title: taskwarrior
categories: [默写旧时光]
tags: [旧时光]
---

[taskwarrior](https://taskwarrior.org) 是一款免费开源的任务管理工具, 它的功能非常强大。

编辑 `~/.taskrc` 文件, 在 *Color theme* 下面有很多自带的颜色主题, 选择一个你喜欢的, 去掉前面的 `#` 字符:

```
# Files
data.location=~/.task

# Color theme (uncomment one to use)
include /usr/local/Cellar/task/2.5.1/share/doc/task/rc/light-256.theme
```

如果你对颜色不满意, 可以直接修改 `.theme` 文件里面的 `key=value` 键值对儿, 或者在 `~/.taskrc` 里面添加上 `.theme` 文件中可用的 `key=value` 设置以覆盖主题中的颜色配置。比如我可以修改偶数行任务的颜色:

```
#color.alternate=on gray22
color.alternate=white on magenta
```

使用如下命令查看任务, 发现偶数行的颜色已发生变化:

```
task list
task completed
```

![img](https://s3-img.meituan.net/v1/mss_3d027b52ec5a4d589e68050845611e68/ff/n0/0k/ww/35_146418.jpg@596w_1l.jpg)

还可以参考[官方文档](https://taskwarrior.org/docs/taskserver/taskwarrior.html)配置同步功能:

```
taskd.certificate=~/.task/private.cert
taskd.key=~/.task/private.key
taskd.ca=~/.task/ca.cert.pem
taskd.server=taskwarrior.inthe.am:53589
taskd.credentials=xxxxxx
taskd.trust=ignore hostname
```