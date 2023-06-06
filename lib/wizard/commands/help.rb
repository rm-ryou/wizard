module Wizard
  module Commands
    class Help < Wizard::Commands::Command

      HELP_MSG =<<EOM.freeze
This is a text adventure game!
There are three areas here, the living-room, the attic, and the garden, where you can come and go as you please.

Commands
  walk:       walk around.
  look:       Describe everything.
  pickup:     Pick up object.
  inventory:  Find out what to bring.
  help:       print this message.
  quit:       Exit from the game.
EOM

      def initialize(option)
        @option = option
      end

      def exec
        return "No option are included in this command." if !!@option
        HELP_MSG
      end
    end
  end
end
