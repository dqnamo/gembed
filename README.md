<img src="https://user-images.githubusercontent.com/25507937/80151380-dc4d9900-85b1-11ea-94c8-1195d823ef67.png" height=50>

# Embed Media By URL
Use gembed to embed media from various sources into your application.

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

Voila! Thats it. For a full list of sources, options and supported url types click [here](https://github.com/iJohnPaul/gembed/wiki/Supported-Sources).
  
## Supported Sources
Here is the full list of sources supported on gembed:
| Source                                | Options          | Supported URL Schemes |
| :------------------------------------ |:---------------- | --------------:|
| [Loom](www.loom.com/)                 | -                | `https://useloom.com/share/*` `https://loom.com/share/*` `http://loom.com/share/*` `http://useloom.com/share/*`|
| YouTube | - |`https://youtu.be/*` `https://youtube.com/*` `http://youtube.com/*` `http://youtu.be/*`|

## Contributing
Looking to add to the list of supported sources? We would love to have you contribute.
1. Fork the repo
2. Run the tests `rake test`
3. Write tests in `test_gembed.rb`
4. Add the accepted urls to the sources hash in `lib/gembed.rb`
5. Create a new file for the source you want to add in `lib/gembed` with a class method called `embed`
