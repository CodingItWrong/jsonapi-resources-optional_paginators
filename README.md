# JSONAPI::Resources::OptionalPaginators

JSONAPI::Resources paginators that allow returning records unpaginated.

JSONAPI::Resources allows you to configure resources to either have no pagination, or to have a paginator of a certain type. This often works fine. 

But sometimes you may want the option to either paginate or not paginate a resource, depending on the request. For example, in a todo list app, your completed todo list will get longer over time, so you might want to paginate it. But your uncompleted todo list should stay short, so you might want to retrieve all incomplete todos unpaginated.

This gem allows you to make JR paginators optional, so that if you don't pass any `page[]` parameters, all records are returned. This is accomplished with an `OptionalPaginator` class that wraps any other paginator. For convenience, a wrapped version of the built-in `PagedPaginator` is provided as `OptionalPagedPaginator`.

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

To use the `OptionalPagedPaginator`, configure it as the paginator for a resource or the default paginator for the app:

    JSONAPI.configure do |config|
      config.default_paginator = :optional_paged
    end
    
To make another paginator class optional, call the `OptionalPaginator.for` method, passing the paginator class to wrap. It returns a new class, so assign it to a constant:

    OptionalOffsetPaginator =
          JSONAPI::Resources::OptionalPaginators::OptionalPaginator.for(OffsetPaginator)
    
Note that the class should not be nested inside a module, so that JR can find the class name based on the symbol passed to the config:

    JSONAPI.configure do |config|
      config.default_paginator = :optional_offset
    end

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/codingitwrong/jsonapi-resources-optional_paginators.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
