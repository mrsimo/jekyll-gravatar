# Jekyll::Gravatar

Basic gravatar plugin for jekyll

## Installation


Add this line to your site's Gemfile:

```ruby
gem 'jekyll-gravatar'
```

And then add this line to your site's _config.yml:


```yml
gems:
  - jekyll-gravatar
```


## Usage

```
{{ email@domain.com | to_gravatar }}
```

This will generate the basic url. Just append any options to the url at the end. For example:

```
<img class="gravatar" src="{{ post.author.email | to_gravatar }}?s=68" />
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

