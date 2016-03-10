DocServer
=========

This is a Rails engine for serving documentation views. Why not put them in
the parent application? Because there are thousands of them. Tens of megabytes
of documentation that we don't want developers to have to worry about, so
we'll hide inside this mountable engine.

Add your content, package this project up as a gem, and host on S3, or
wherever.

## Usage

Add the docs

```sh
# er?
```

Cut the gem

```sh
# er?
```

Do the gem hosting stuff

```sh
# er???
```

Add it to your host project's Gemfile

```ruby
gem "doc_server", source: "http://where.you/put/it"
```

And lastly, mount it in your host application.

```ruby
# config/routes.rb
Rails.application.routes.draw do

  mount DocServer::Engine => "/docs"

  # your routes here...
end
```


## Development

```sh
# Run test host Rails app
cd test/dummy
bundle exec rails server

# Run the tests
bundle exec rake
```
