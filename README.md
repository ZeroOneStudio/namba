## The Namba Ruby gem

A Ruby wrapper for the Namba API. The full API description is available [here][]

[here]: http://dev.namba.kg/api_description.php

## Usage

    require 'namba'
    
    Namba.configure do |config|
      config.username = "your_username"
      config.password = "secret"
      config.locale = :kg
    end

    n = Namba.new()

Use `:kz` locale if you want to access [nambakz][] API. Default value is `:kg`

## Methods spread on all Namba API

    n.get_user_info(name) # returns specific user information
    n.get_user_video(name) # returns specific user's video list
    n.get_user_photo(name) # returns specific user's photo list
    n.get_friends_list(name) # returns specific user's friends list

Eg.:
    
    n.get_user_info("puzanov")

Leave `name` parameter blank to get information about configured user. Eg.:

    n.get_user_info()

## Methods dealing with personal stuff only

    n.set_status(text) # sets user status with `text`
    n.get_events # returns user's friends' events
    n.get_new_mail_count # returns count of unread messages
    n.get_last_mail # returns list of inbox messages ordered by creation date. 20 messages is maximum

[nambakz]: http://www.namba.kz
## Licence

MIT License Copyright (c) 2012 ZERO.ONE

