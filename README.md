# B2C商城开发

Demo地址: https://b2cstore.herokuapp.com/

an admin count
```
email: admin@example.com
password: 123456

https://b2cstore.herokuapp.com/admin
```

```
gitclone git@github.com:cwy007/B2CStore.git
cd B2CStore
bundle
rake db:migrate
rake db:seed
rails s
http://localhost:3000
```

# 项目介绍
该项目基于Rails 5，实现的功能就是传统的B2C电商平台中常用的功能，包括:

- 用户注册登录（支持手机验证码或者邮箱）
- 购物车
- 收货地址
- 订单
- 支付（集成了支付宝支付功能）
- 后台管理功能（涵盖商品管理，商品图片，一二级分类）
- 前台其他相关功能（比如商品搜索，分类页面，单品页，用户中心）
- RSpec单元测试

项目使用技术:

- ruby 2.4.2
- rails 5.1.5
- mysql  

前台框架:

- bootstrap
- font-awesome  

涉及到的主要Gem:

- sorcery
- ancestry
- paperclip
- rest-client
- rspec

适用对象：

- ruby和rails的初学者
- 想从产品或者技术角度学习电商平台核心设计功能的同学

# 外部链接

项目具体讲解请参考这里 **[Rails实战之B2C商城开发](http://eggman.tv/c/s-master-rails-by-actions)**
