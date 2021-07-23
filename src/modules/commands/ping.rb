module Bot::DiscordCommands
  module Ping
    extend Discordrb::Commands::CommandContainer
    command :ping do |_event|
      'Pong!'
    end
  end
end
