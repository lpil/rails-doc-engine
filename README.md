DocServer
=========

This is a Rails engine for serving documentation views. Why not put them in
the parent application? Because there are thousands of them. Tens of megabytes
of documentation that we don't want developers to have to worry about, so
we'll hide inside this mountable engine.

Add your content, package this project up as a gem, and host on S3, or
wherever.

## Usage

Add the doc views. They go in `app/views/doc_server/docs/`.

Bump the version in `lib/doc_server/version.rb`

Build the gem.

```sh
gem build doc_server.gemspec
```

Upload the newly cut gem to S3.
Or some other file store accessible from the interwebs.

```sh
aws s3 cp doc_server-0.0.0.gem s3://my-bucket/
```

Add the gem to your host application, specifying your online file storage as
the gem source.

```ruby
gem "doc_server", source: "http://path.to/s3/bucket"
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
