## The Namba Ruby gem

A Ruby wrapper for the Namba API. The full API description is available [here][]

[here]: http://dev.namba.kg/api_description.php

## Usage

    require 'namba'
    
    Namba.configure do |config|
      config.username = "your_username"
      config.password = "secret"
      config.locale = :kg # or `:kz` if you want access [nambakz][] API. Default value is `:kg`
    end

    n = Namba.new()

## Available methods

    n.get_user_info(name) # returns user information
    n.get_user_video(name) # returns specific user's video list
    n.get_user_photo(name) # returns specific user's photo list
    n.get_friends_list(name) # returns specific user's friends list

Leave `name` parameter blank to get information about configured user.

    n.set_status(text) # sets user status with `text`
    n.get_events # returns user's friends' events
    n.get_new_mail_count # returns count of unread messages
    n.get_last_mail # returns list of inbox messages ordered by creation date. Maximum: 20 letters

[nambakz]: http://www.namba.kz
## Licence

MIT License Copyright (c) 2012 ZERO.ONE

