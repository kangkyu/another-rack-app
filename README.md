# README

Following rubylearning.com Tutorial
http://rubylearning.com/blog/2013/04/02/whats-rack/

author of Rack **Christian Neukirchen**:
http://chneukirchen.org/talks/#introducingrack

+ HTTP request
+ HTTP response

**handlers** connect Rack to web servers supporting Ruby (like WEBrick, Mongrel etc.)

**adapters** connect Rack to Ruby web frameworks (like Rails, Sinatra etc.)

**middleware** comes between the server and the framework

```
$ gem install rack
```
Documentation
http://www.rubydoc.info/gems/rack/Rack/Handler

```
$ irb --simple-prompt
>> require 'rack'
>> Rack::Handler::WEBrick.run lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]] }
```
or,

```rb
# config.ru
run lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]] }
```

```
$ rackup config.ru
```
or,

```rb
# config.ru
require './my_app'
run MyApp.new
```

```rb
# my_app.rb
class MyApp
  def call(env)
    [ 200,
      {"Content-Type" => "text/html"},
      ["Hello. The time is #{Time.now}"]
    ]
  end
end
```

```
$ gem install bundler
$ bundle init
```

```rb
# Gemfile
source "https://rubygems.org"
gem 'rack'
```

```
$ bundle check
$ bundle install

$ rackup
```
