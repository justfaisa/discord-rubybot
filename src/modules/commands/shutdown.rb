module Bot::DiscordCommands
  module Shutdown
    extend Discordrb::Commands::CommandContainer
    command(:exit, help_available: false) do |event|
      break unless event.user.id == Bot::CONFIG.owner
      'Bot is shutting down'
    end
  end
end
