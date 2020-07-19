# JSONAPI::Resources::OptionalPaginators

JSONAPI::Resources paginators that allow returning records unpaginated.

JSONAPI::Resources allows you to configure resources to either have no pagination, or to have a paginator of a certain type. This often works fine. But sometimes you may want the option to either paginate or not paginate a resource, depending on the request.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jsonapi-resources-optional_paginators'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install jsonapi-resources-optional_paginators

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/codingitwrong/jsonapi-resources-optional_paginators.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
