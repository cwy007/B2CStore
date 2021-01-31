# rails5 使用 ruby 3.0.0 报错

```bash
➜  rmall git:(master) ✗ rails s
=> Booting Puma
=> Rails 5.1.7 application starting in development
=> Run `rails server -h` for more startup options
Exiting
/Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/static.rb:109:in `initialize': wrong number of arguments (given 3, expected 2) (ArgumentError)
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/stack.rb:35:in `new'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/stack.rb:35:in `build'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/stack.rb:99:in `block in build'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/stack.rb:99:in `each'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/stack.rb:99:in `inject'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/stack.rb:99:in `build'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/engine.rb:508:in `block in app'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/engine.rb:504:in `synchronize'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/engine.rb:504:in `app'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/application/finisher.rb:45:in `block in <module:Finisher>'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/initializable.rb:30:in `instance_exec'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/initializable.rb:30:in `run'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/initializable.rb:59:in `block in run_initializers'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/tsort.rb:228:in `block in tsort_each'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/tsort.rb:350:in `block (2 levels) in each_strongly_connected_component'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/tsort.rb:431:in `each_strongly_connected_component_from'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/tsort.rb:349:in `block in each_strongly_connected_component'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/tsort.rb:347:in `each'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/tsort.rb:347:in `call'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/tsort.rb:347:in `each_strongly_connected_component'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/tsort.rb:226:in `tsort_each'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/tsort.rb:205:in `tsort_each'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/initializable.rb:58:in `run_initializers'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/application.rb:353:in `initialize!'
	from /Users/chanweiyan/beijing/rmall/config/environment.rb:5:in `<top (required)>'
	from config.ru:3:in `require_relative'
	from config.ru:3:in `block in <main>'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/rack-2.2.3/lib/rack/builder.rb:116:in `eval'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/rack-2.2.3/lib/rack/builder.rb:116:in `new_from_string'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/rack-2.2.3/lib/rack/builder.rb:105:in `load_file'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/rack-2.2.3/lib/rack/builder.rb:66:in `parse_file'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/rack-2.2.3/lib/rack/server.rb:349:in `build_app_and_options_from_config'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/rack-2.2.3/lib/rack/server.rb:249:in `app'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/commands/server/server_command.rb:24:in `app'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/rack-2.2.3/lib/rack/server.rb:422:in `wrapped_app'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/commands/server/server_command.rb:80:in `log_to_stdout'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/commands/server/server_command.rb:42:in `start'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/commands/server/server_command.rb:135:in `block in perform'
	from <internal:kernel>:90:in `tap'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/commands/server/server_command.rb:130:in `perform'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/thor-1.1.0/lib/thor/command.rb:27:in `run'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/thor-1.1.0/lib/thor/invocation.rb:127:in `invoke_command'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/thor-1.1.0/lib/thor.rb:392:in `dispatch'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/command/base.rb:63:in `perform'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/command.rb:44:in `invoke'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/railties-5.1.7/lib/rails/commands.rb:16:in `<top (required)>'
	from /Users/chanweiyan/beijing/rmall/bin/rails:9:in `require'
	from /Users/chanweiyan/beijing/rmall/bin/rails:9:in `<top (required)>'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/spring-2.1.1/lib/spring/client/rails.rb:28:in `load'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/spring-2.1.1/lib/spring/client/rails.rb:28:in `call'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/spring-2.1.1/lib/spring/client/command.rb:7:in `call'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/spring-2.1.1/lib/spring/client.rb:30:in `run'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/spring-2.1.1/bin/spring:49:in `<top (required)>'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/spring-2.1.1/lib/spring/binstub.rb:11:in `load'
	from /Users/chanweiyan/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/spring-2.1.1/lib/spring/binstub.rb:11:in `<top (required)>'
	from /Users/chanweiyan/beijing/rmall/bin/spring:15:in `require'
	from /Users/chanweiyan/beijing/rmall/bin/spring:15:in `<top (required)>'
	from bin/rails:3:in `load'
	from bin/rails:3:in `<main>'
```

Rails5只支持Ruby2.6和更早版本。您应该升级到rails6，或者将Ruby降级到2.6。

<https://www.5axxw.com/questions/content/o58mve>
