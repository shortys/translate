# Translate
Gem for fast work with http://itranslate4.eu service

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'itranslate4'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install translate
```

```
$ rails generate translate
```
## API methods:
Get languages:
```
Itranslate4.languages
```
Trnaslate:
```
Itranslate4.translate('en','ru','hello word','optional translate method from get_routes') 
```
The GetRoutes function:
```
Itranslate4.get_routes('en','ru')
```
The GetProviders function:
```
Itranslate4.get_providers
```


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
