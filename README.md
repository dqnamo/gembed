<img src="https://user-images.githubusercontent.com/25507937/80151380-dc4d9900-85b1-11ea-94c8-1195d823ef67.png" height=50>

# Embed Media By URL
Use gembed to embed media from various sources into your rails web application. View all [supported sources](https://github.com/iJohnPaul/gembed/wiki/Supported-Sources). 

## Install
Add this to your Gemfile:
```ruby
gem 'gembed'
```
Then run `bundle install` and you're ready to go! 🎉

## Usage
#### Basic
In your view pass in the media url.
```ruby
Gembed.insert("https://www.youtube.com/watch?v=jNQXAC9IVRw")
```

#### With Options
```ruby
Gembed.insert("https://www.youtube.com/watch?v=jNQXAC9IVRw", 200)
```

Voila! Thats it. For a full list of sources, options and supported url types click [here](https://github.com/iJohnPaul/gembed/wiki/Supported-Sources).
  
## Contributing
Looking to add to the list of supported sources? We would love to have you contribute.
1. Fork the repo
2. Run the tests `rake test`
3. Write tests in `test_gembed.rb`
4. Add the accepted urls to the sources hash in `lib/gembed.rb`
5. Create a new file for the source you want to add in `lib/gembed` with a class method called `embed`
