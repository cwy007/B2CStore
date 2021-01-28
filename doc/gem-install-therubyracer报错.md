# gem install therubyracer 报错

## 报错信息

```bash
Installing therubyracer 0.12.3 with native extensions
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

    current directory: /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/therubyracer-0.12.3/ext/v8
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/bin/ruby -I /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/site_ruby/2.6.0 -r ./siteconf20210129-3917-18jxzct.rb extconf.rb
checking for -lpthread... yes
checking for -lobjc... yes
checking for v8.h... no
*** extconf.rb failed ***
Could not create Makefile due to some reason, probably lack of necessary
libraries and/or headers.  Check the mkmf.log file for more details.  You may
need configuration options.

Provided configuration options:
	--with-opt-dir
	--with-opt-include
	--without-opt-include=${opt-dir}/include
	--with-opt-lib
	--without-opt-lib=${opt-dir}/lib
	--with-make-prog
	--without-make-prog
	--srcdir=.
	--curdir
	--ruby=/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/bin/$(RUBY_BASE_NAME)
	--with-pthreadlib
	--without-pthreadlib
	--with-objclib
	--without-objclib
	--enable-debug
	--disable-debug
	--with-v8-dir
	--without-v8-dir
	--with-v8-include
	--without-v8-include=${v8-dir}/include
	--with-v8-lib
	--without-v8-lib=${v8-dir}/lib
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/libv8-3.16.14.19/ext/libv8/location.rb:50:in `configure': By using --with-system-v8, you have chosen to use the
version  (Libv8::Location::System::NotFoundError)
of V8 found on your system and *not* the one that is bundled with
the libv8 rubygem.

However, your system version of v8 could not be located.

Please make sure your system version of v8 that is compatible
with 3.16.14.19 installed. You may need to use the
--with-v8-dir option if it is installed in a non-standard location
	from /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/libv8-3.16.14.19/lib/libv8.rb:7:in `configure_makefile'
	from extconf.rb:32:in `<main>'

To see why this extension failed to compile, please check the mkmf.log which can be found here:

  /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/extensions/x86_64-darwin-19/2.6.0/therubyracer-0.12.3/mkmf.log

extconf failed, exit code 1

Gem files will remain installed in /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/therubyracer-0.12.3 for inspection.
Results logged to /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/extensions/x86_64-darwin-19/2.6.0/therubyracer-0.12.3/gem_make.out

An error occurred while installing therubyracer (0.12.3), and Bundler cannot continue.
Make sure that `gem install therubyracer -v '0.12.3' --source 'https://gems.ruby-china.com/'` succeeds before bundling.
```

## 解决方法

```bash
sudo gem install therubyracer -v '0.12.3' --source 'https://gems.ruby-china.com/' -- --with-v8-dir=/usr/local/opt/v8@3.15
```

## 参考链接

* [Installing therubyracer on Mac OS and Ruby 2.3.0](https://github.com/shakacode/react-webpack-rails-tutorial/issues/266)
* <https://dev.to/billykong/what-is-libv8-and-why-its-installation-fails-1k6n>

```bash
brew tap homebrew/versions
brew install v8-315

gem install libv8 -v '3.16.14.13' -- --with-system-v8
gem install therubyracer -- --with-v8-dir=/usr/local/opt/v8-315

bundle install
```
