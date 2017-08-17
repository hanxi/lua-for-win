# 使用 [NMAKE][NMAKE] 编译 Lua

不需要下载 [Virtual Studio IDE][VS]，只需要下载 [Visual Studio 2017 BuildTools][VSB]。

Lua 源码我下载的是 [lua53][lua53]，确保解压的路径结构是这有的：

```shell
.
├── lua-5.3.4
│   ├── doc
│   ├── Makefile
│   ├── README
│   └── src
├── lua-5.3.4.tar.gz
├── make.bat
├── Makefile
└── README.md
```

执行 `make` 前需要配置 `vcvars64.bat` 的路径。比如我的是：
`"C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\vc\Auxiliary\Build\vcvars64.bat"`

修改 `make.bat` 里面 `vcvars64.bat` 的路径为自己的路径之后：

- 编译：`make`
- 安装：以管理员身份运行 `install.bat`
- 卸载: 以管理员身份运行 `uninstall.bat`


[NMAKE]: https://msdn.microsoft.com/zh-cn/library/dd9y37ha.aspx
[VS]: https://www.visualstudio.com/zh-hans/downloads/
[VSB]: https://www.visualstudio.com/zh-hans/thank-you-downloading-visual-studio/?sku=BuildTools&rel=15
[lua53]: http://www.lua.org/ftp/lua-5.3.4.tar.gz
