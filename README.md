# devise_keen gem

Track user signin and signouts automatically to your Keen IO project.

## Requirements

The devise_keen gem requires the [keen gem](https://rubygems.org/gems/keen) and a [Keen IO account](https://keen.io) (free to sign up).

## Configuration

There are three configuration paramters:

*  `keen_project_id`  
    *Required*. The project id to write to.
*  `keen_write_key`  
    *Required*. The Keen IO write key.
*  `keen_collection`  
    The optional collection name to store events in. If not set, will default to `devise-keen`

Define these variables in `config/initializers/devise.rb`.

Example config:

```ruby
# Keen IO Config
config.keen_project_id = "ASDF12345"  
config.keen_write_key = "REALLYLONGWRITEKEYHERE1234567890"  
config.keen_collection = "user-events"
```

## Contributing to devise_keen
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014 Alex Kleissner. See LICENSE.txt for
further details.

