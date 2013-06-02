## The Namba Ruby gem

[![Gem Version](https://badge.fury.io/rb/namba.png)](http://badge.fury.io/rb/namba)
[![Build Status](https://secure.travis-ci.org/ZeroOneStudio/namba.png)](http://travis-ci.org/ZeroOneStudio/namba)
[![Code Climate](https://codeclimate.com/github/ZeroOneStudio/namba.png)](https://codeclimate.com/github/ZeroOneStudio/namba)

A Ruby wrapper for the Namba API. The full API description is available [here][].

[here]: http://dev.namba.kg/api_description.php

## Installation

    gem install namba

Or put to your `Gemfile`

    gem "namba"

## Usage

    require 'namba'
    
    Namba.configure do |config|
      config.username = "your_username"
      config.password = "secret"
      config.locale = :kg
    end

    n = Namba.new()

Use `:net` locale if you want to access [namba.net][] API. Default value is `:kg`

[namba.net]: http://www.namba.net

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

## Namba gem's Rails helpers

If you are using `namba` gem in your Rails app you can use some helpers in your *.erb template:

### namba_comments

    <%= namba_comments(component_name, component_id) %>

Eg.:

    <%= namba_comments("tamasha", 4850) %>

### namba_share

    <%= namba_share(component_name, component_id) %>

Eg.:

    <%= namba_share("kyrnet", 1) %>    

About `component_name` and `component_id` read more at [Namba Comments docs][]

[Namba Comments docs]: http://dev.namba.kg/api_comments.php

## Licence

MIT License Copyright (c) 2012 [ZERO.ONE][]

[ZERO.ONE]: http://www.zeroone.st

