# ArTruncator

Now you can do <table_name>.truncate. This was not incorporated into AR
as a patch because SQLite does not support truncate statements. See this 
pull request for more detail:

https://github.com/rails/rails/issues/5510

I'm releasing this as a gem, so I don't have to add it to my
config/initializers.

This has so far only been tested for mysql2 adapater/MySQL DB.

## Installation

Add this line to your application's Gemfile:

    gem 'ar_truncator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ar_truncator

## Usage

If you have a model called Dummy, to truncate it do:

Dummy.truncate

This will execute the following sql:

"Truncate tabel Dummies".



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
