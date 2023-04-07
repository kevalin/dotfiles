# Rime

在[雾凇拼音](https://github.com/iDvel/rime-ice)基础上做了一些简单的自定义设置，感谢 @[iDvel](https://github.com/iDvel)

## Install

### Windows

首先安装小狼毫，操作如下：

![图片](https://user-images.githubusercontent.com/3123807/230324627-33df4d23-3a84-409b-b1fa-c7bfdbe81d8b.png)

![图片](https://user-images.githubusercontent.com/3123807/230324716-20b52350-252d-4502-8982-b6f8015a3e02.png)

![图片](https://user-images.githubusercontent.com/3123807/230324797-b7b6a670-7394-41bd-bf37-d1e06b724c5f.png)

弹出一个终端，输入 `iDvel/rime-ice:others/recipes/full` 回车，安装完整版[雾凇拼音](https://github.com/iDvel/rime-ice)

小狼毫似乎不支持 Control+Shift 开头的快捷键，可在 default.yaml 中修改，我这里修改为 `Control+grave`，`grave` 为 Tab 键上的 `~ 按键

```yaml
# 方案选单相关
switcher:
  caption: 「方案选单」
  hotkeys:
    # - F4
    - Control+grave
    # - Alt+grave
    # - Control+Shift+grave
  save_options:  # 开关记忆，从方案选单（而非快捷键）切换时会记住的选项，需要记忆的开关不能设定 reset
    - ascii_punct
    - traditionalization
    - emoji
  fold_options: true            # 呼出时是否折叠，多方案时建议折叠 true ，一个方案建议展开 false
  abbreviate_options: true      # 折叠时是否缩写选项
  option_list_separator: ' / '  # 折叠时的选项分隔符
```
安装好之后，重新加载小狼毫，`Control+grave` 切换输入法 😊# Rime

在[雾凇拼音](https://github.com/iDvel/rime-ice)基础上做了一些简单的自定义设置，感谢 @[iDvel](https://github.com/iDvel)

## Install

### Windows

首先安装小狼毫，操作如下：

![图片](https://user-images.githubusercontent.com/3123807/230324627-33df4d23-3a84-409b-b1fa-c7bfdbe81d8b.png)

![图片](https://user-images.githubusercontent.com/3123807/230324716-20b52350-252d-4502-8982-b6f8015a3e02.png)

![图片](https://user-images.githubusercontent.com/3123807/230324797-b7b6a670-7394-41bd-bf37-d1e06b724c5f.png)

弹出一个终端，输入 `iDvel/rime-ice:others/recipes/full` 回车，安装完整版[雾凇拼音](https://github.com/iDvel/rime-ice)

小狼毫似乎不支持 Control+Shift 开头的快捷键，可在 default.yaml 中修改，我这里修改为 `Control+grave`，`grave` 为 Tab 键上的 `~ 按键

```yaml
# 方案选单相关
switcher:
  caption: 「方案选单」
  hotkeys:
    # - F4
    - Control+grave
    # - Alt+grave
    # - Control+Shift+grave
  save_options:  # 开关记忆，从方案选单（而非快捷键）切换时会记住的选项，需要记忆的开关不能设定 reset
    - ascii_punct
    - traditionalization
    - emoji
  fold_options: true            # 呼出时是否折叠，多方案时建议折叠 true ，一个方案建议展开 false
  abbreviate_options: true      # 折叠时是否缩写选项
  option_list_separator: ' / '  # 折叠时的选项分隔符
```
安装好之后，重新加载小狼毫，`Control+grave` 切换输入法 😊

