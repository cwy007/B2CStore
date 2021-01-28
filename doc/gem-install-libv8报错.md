# gem-install-libv8报错

## 报错信息

```bash

```

## 解决方法

```bash
brew tap homebrew/versions
brew install v8-315

gem install libv8 -v '3.16.14.13' -- --with-system-v8
gem install therubyracer -- --with-v8-dir=/usr/local/opt/v8-315

bundle install
```

## 参考链接

* [fix-libv8-mac.txt](https://gist.github.com/fernandoaleman/868b64cd60ab2d51ab24e7bf384da1ca)
