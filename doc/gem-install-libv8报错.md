# gem-install-libv8报错

## 报错信息

```bash
Compiling v8 for x64
Using python 2.7.16
Using compiler: c++ (clang version 12.0.0)
Unable to find a compiler officially supported by v8.
It is recommended to use GCC v4.4 or higher
Beginning compilation. This will take some time.
Building v8 with env CXX=c++ LINK=c++  /usr/bin/make x64.release ARFLAGS.target=crs werror=no
GYP_GENERATORS=make \
	build/gyp/gyp --generator-output="out" build/all.gyp \
	              -Ibuild/standalone.gypi --depth=. \
	              -Dv8_target_arch=x64 \
	              -S.x64  -Dv8_enable_backtrace=1 -Dv8_can_use_vfp2_instructions=true -Darm_fpu=vfpv2 -Dv8_can_use_vfp3_instructions=true -Darm_fpu=vfpv3 -Dwerror=''
  CXX(target) /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/libv8-3.16.14.19/vendor/v8/out/x64.release/obj.target/preparser_lib/src/allocation.o
clang: warning: include path for libstdc++ headers not found; pass '-stdlib=libc++' on the command line to use the libc++ standard library instead [-Wstdlibcxx-not-found]
In file included from ../src/allocation.cc:33:
../src/utils.h:33:10: fatal error: 'climits' file not found
#include <climits>
         ^~~~~~~~~
1 error generated.
make[1]: *** [/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/libv8-3.16.14.19/vendor/v8/out/x64.release/obj.target/preparser_lib/src/allocation.o] Error 1
make: *** [x64.release] Error 2
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/libv8-3.16.14.19/ext/libv8/location.rb:36:in `block in verify_installation!': libv8 did not install properly,
expected binary v8 archive '/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/libv8-3.16.14.19/vendor/v8/out/x64.release/obj.target/tools/gyp/libv8_base.a'to
exist, but it was not found (Libv8::Location::Vendor::ArchiveNotFound)
	from /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/libv8-3.16.14.19/ext/libv8/location.rb:35:in `each'
	from /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/libv8-3.16.14.19/ext/libv8/location.rb:35:in `verify_installation!'
	from /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/libv8-3.16.14.19/ext/libv8/location.rb:26:in `install!'
	from extconf.rb:7:in `<main>'

extconf failed, exit code 1

Gem files will remain installed in /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/libv8-3.16.14.19 for inspection.
Results logged to /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/extensions/x86_64-darwin-20/2.6.0/libv8-3.16.14.19/gem_make.out

An error occurred while installing libv8 (3.16.14.19), and Bundler cannot continue.
Make sure that `gem install libv8 -v '3.16.14.19' --source 'https://gems.ruby-china.com/'` succeeds before bundling.

In Gemfile:
  therubyracer was resolved to 0.12.3, which depends on
    libv8
```

## 解决方法

```bash
brew tap homebrew/versions
brew install v8-315

gem install libv8 -v '3.16.14.19' -- --with-system-v8
gem install therubyracer -- --with-v8-dir=/usr/local/opt/v8@3.15

bundle install
```

## 参考链接

* [fix-libv8-mac.txt](https://gist.github.com/fernandoaleman/868b64cd60ab2d51ab24e7bf384da1ca)
