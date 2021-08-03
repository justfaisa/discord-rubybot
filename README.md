<center><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Devicon-ruby-plain-wordmark.svg/1024px-Devicon-ruby-plain-wordmark.svg.png"/></center>

a simple bot made with <a href="https://github.com/shardlab/discordrb">`discordrb`</a> library
## Configuration
`1.` Fork this repos

`2.` Run `gem install bundler` and `gem install rake` in your terminal

`3.` Fill the `config-sample.yml` at `data` file and rename to `config.yml`

`4.` Run the bot using `rake`

## Adding a Commands and Events
Create new file `command/events_name.rb` in `src/modules/(events/commands)`

## Example for commands :
```rb
module Bot::DiscordCommands
  module MyCommand # Replace with your command name
    extend Discordrb::Commands::CommandContainer
    command :my_command do |event| # Replace my_command with your commands name
      # Your code here!
    end
  end
end
```
## For events :
```rb
module Bot::DiscordEvents
  module MyEvent # Replace with your events name
    extend Discordrb::EventContainer
    member_join do |event| # Replace member_join with your events name
      # Your code here!
    end
  end
end
```
`NOTE:` **Before adding a commands or events you better learn <a href="https://www.ruby-lang.org/">Ruby</a> ​​first!**
