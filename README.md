# devise_keen gem

Track user signin and signouts to your Keen IO project automatically.

## Requirements

As this is a devise extension, you'll need the devise gem, along with some Keen IO related gems.

The devise_keen gem requires the [keen gem](https://rubygems.org/gems/keen) and a [Keen IO account](https://keen.io) (free to sign up).

## Installation

The only thing you need to do is install the keen_devise gem,

`gem install keen_devise`

or add the `keen_devise` gem to your Gemfile:

`gem 'keen_devise'`

## Configuration

There are three configuration paramters:

*  `keen_project_id`  
    *Required*. The project id to write to.
*  `keen_write_key`  
    *Required*. The Keen IO write key.
*  `keen_collection_prefix`  
    This gems stores the signin and signout events in two different collections. If you do not specify a prefix, it will default to `devise-keen`. The collection names will look like {keen_collection_prefix}-signin and {keen_collection_prefix}-signout.

Define these variables in `config/initializers/devise.rb`.

Example config:

```ruby
# Keen IO Config
config.keen_project_id = "ASDF12345"  
config.keen_write_key = "REALLYLONGWRITEKEYHERE1234567890"  
config.keen_collection_prefix = "user-events"
```

## Example Data Model

```JSON
{
    "keen": {
        "timestamp": "2014-09-16T21:41:36.490Z",
        "created_at": "2014-09-16T21:41:36.490Z",
        "id": "5418ae90c9e1630692c014ad"
    },
    "user": {
        "email": "alex@keen.io",
        "id": 1
    },
    "sign_in_time": "2014-09-16T14:41:36-07:00"
}
```

## Contributing to devise_keen
 
* Make sure you're on the latest version of the gem to make sure the feature hasn't already been implemented.
* If it hasn't, check to see if someone has created an issue for it.
* If you want to be an awesome contributor, fork it, branch it, push it!

## Copyright

Copyright (c) 2014 Keen IO. See LICENSE.txt for further details.

