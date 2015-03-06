# HashWithKeyAccessMethod

Hash key access method.

## Installation

Add this line to your application's Gemfile:

    gem 'hash_with_key_access_method'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hash_with_key_access_method

## Usage

```ruby
# Using refinements
using HashWithKeyAccessMethod

hash = { name: :homu, "name2" => :mami}

hash.name # to hash[:name]
# => :homu

# Failed String key access
# hash.name2

# Assign new value
hash.name = :mami # to hash[:name] = :mami
hash.name
# => :mami

# Assign new key value
hash.age = 13 # to hash[:age] = 13
hash.age
# => 13
hash[:age]
# => 13
```

## Contributing

1. Fork it ( https://github.com/osyo-manga/gem-hash_with_key_access_method/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
