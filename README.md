a simple bot made with <a href="https://github.com/shardlab/discordrb">`discordrb`</a> library
## Configuration
1. Run `gem install bundler` and `gem install rake` in your terminal
2. Fill the `config-sample.yml` and rename to `config.yml`

Run with `rake`

## Adding a Commands and Events
Create new file `command/events_name.rb` in `src/modules/(events/commands)`

Example for commands :
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
For events :
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
