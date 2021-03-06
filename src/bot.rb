require 'discordrb'
require 'ostruct'
require 'yaml'

module Bot
  Dir['src/modules/*.rb'].each { |mod| load mod }

  CONFIG = OpenStruct.new YAML.load_file 'data/config.yaml'

  BOT = Discordrb::Commands::CommandBot.new(client_id: CONFIG.client_id,
                                            token: CONFIG.token,
                                            prefix: CONFIG.prefix)

  def self.load_modules(klass, path)
    new_module = Module.new
    const_set(klass.to_sym, new_module)
    Dir["src/modules/#{path}/*.rb"].each { |file| load file }
    new_module.constants.each do |mod|
      BOT.include! new_module.const_get(mod)
    end
  end

  load_modules(:DiscordEvents, 'events')
  load_modules(:DiscordCommands, 'commands')

  BOT.run
end
