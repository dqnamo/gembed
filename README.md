<img src="https://user-images.githubusercontent.com/25507937/80111718-231e9d00-8578-11ea-9f02-6847fbc25118.png" height=150>

# Embed by URL
Use gembed to embed media from various sources into your rails web application. View all [supported sources](https://github.com/iJohnPaul/gembed/wiki/Supported-Sources). 

## Install
Add this to your Gemfile:
```ruby
gem 'gembed'
```
Then run `bundle install` and you're ready to go!

## Usage
In your view pass in the media url.
```ruby
Gembed.insert("https://www.youtube.com/watch?v=jNQXAC9IVRw")
```
Voila! Thats it. For a full list of sources, options and supported url types click [here](https://github.com/iJohnPaul/gembed/wiki/Supported-Sources).
