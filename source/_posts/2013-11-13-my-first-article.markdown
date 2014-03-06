---
layout: post
title: "如何使用Makdown"
date: 2014-03-6 15:23
comments: true
categories: 
---

**Markdown** 
记录思想和分享知识的工具。

您可以使用Makrdown：

> * 整理知识，学习笔记
> * 发布日记，杂文，所见所想
> * 撰写发布技术文稿（代码支持）
> * 撰写发布学术论文（LaTeX 公式支持）

## 什么是 Markdown

Markdown 是一种方便记忆、书写的纯文本标记语言，用户可以使用这些标记符号以最小的输入代价生成极富表现力的文档：譬如您正在阅读的这份文档。它使用简单的符号标记不同的标题，分割不同的段落，**粗体** 或者 *斜体* 某些文字，更棒的是，它还可以

* 书写一个质能守恒公式：

$$E=mc^2$$

* 或者高亮一段代码：

```python
@requires_authorization
class SomeClass:
    pass
if __name__ == '__main__':
    # A comment
    print 'hello world'
```

## 下面介绍下[Markdown 语法简明手册][1]

### 1. 使用 * 和 ** 表示斜体和粗体

示例：

这是 *斜体*，这是 **粗体**。

### 2. 使用 === 表示一级标题，使用 --- 表示二级标题

示例：

这是一个一级标题
============================

这是一个二级标题
--------------------------------------------------

### 这是一个三级标题

你也可以选择在行首加井号表示不同级别的标题，例如：# H1, ## H2, ### H3。

### 3. 使用 \[描述](链接地址) 为文字增加外链接

示例：

这是去往 [一个markdown的博客](http://ghosertblog.github.com) 的链接。

### 4. 在行末加两个空格表示换行

示例：

第一行(此行最右有两个看不见的空格)  
第二行

### 5. 使用 *，+，- 表示无序列表

示例：

- 无序列表项 一
- 无序列表项 二
- 无序列表项 三

### 6. 使用数字和点表示有序列表

示例：

1. 有序列表项 一
2. 有序列表项 二
3. 有序列表项 三

### 7. 使用 > 表示文字引用

示例：

> 野火烧不尽，春风吹又生

### 8. 使用 \`代码` 表示行内代码块

示例：

让我们聊聊 `html`

### 9.  使用 四个缩进空格 表示代码块

示例：

    这是一个代码块，此行左侧有四个不可见的空格

### 10.  使用 \!\[描述](图片链接地址) 插入图像

示例：

![我的头像](https://www.zybuluo.com/static/img/my_head.jpg)

# Cmd 高阶语法手册

### 1. LaTeX 公式，表达式支持

$ 表示行内公式： 

质能守恒方程可以用一个很简洁的方程式 $E=mc^2$ 来表达

$$ 表示整行公式：

$$\sum_{i=1}^n a_i=0$$

$$f(x_1,x_x,\ldots,x_n) = x_1^2 + x_2^2 + \cdots + x_n^2 $$

$$\sum^{j-1}_{k=0}{\widehat{\gamma}_{kj} z_k}$$

### 2. 加强的代码块，支持四十一种编程语言的语法高亮的显示，行号显示

非代码示例：

```
$ sudo apt-get install vim-gnome
```

Python 示例：

```python
@requires_authorization
def somefunc(param1='', param2=0):
    '''A docstring'''
    if param1 > param2: # interesting
        print 'Greater'
    return (param2 - param1 + 1) or None

class SomeClass:
    pass

>>> message = '''interpreter
... prompt'''
```

JavaScript 示例：

``` javascript
/**
* nth element in the fibonacci series.
* @param n >= 0
* @return the nth element, >= 0.
*/
function fib(n) {
  var a = 1, b = 1;
  var tmp;
  while (--n >= 0) {
    tmp = a;
    a += b;
    b = tmp;
  }
  return a;
}

document.write(fib(10));
```

### 3. 表格支持

示例：

| 项目        | 价格   |  数量  |
| --------   | -----:  | :----:  |
| 计算机     | $1600 |   5     |
| 手机        |   $12   |   12   |
| 管线        |    $1    |  234  |


### 4. 定义型列表

名词 1
:   定义 1（左侧有一个可见的冒号和四个不可见的空格）

代码块 2
:   这是代码块的定义（左侧有一个可见的冒号和四个不可见的空格）

        代码块（左侧有八个不可见的空格）

------

[1]: https://www.zybuluo.com/mdeditor?url=https://www.zybuluo.com/static/editor/md-help.markdown
[2]: http://weibo.com/ghosert



![](http://www.animeng.net/images/rss.png)