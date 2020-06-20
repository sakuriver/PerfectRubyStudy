# frozen_string_literal: true

require '../Utility/game_message'

DISPLAY_NAME = 'NONE'

class SevenSpace
  class DisplayNameBase
    DISPLAY_NAME = 'BASE'
    def self.display_name
      DISPLAY_NAME
    end
  end
  class SuperSaiyansGod < DisplayNameBase
    DISPLAY_NAME = 'RED EYE'
    def self.display_name
      DISPLAY_NAME
    end
  end
  class DestructionGod < DisplayNameBase
    DISPLAY_NAME = 'BEERUS'
    def self.display_name
      DISPLAY_NAME
    end
  end
  class EarthHuman < DisplayNameBase
  end
end

Display::GameMessage.output(:white, DISPLAY_NAME)
sleep(2)
Display::GameMessage.output(:white, SevenSpace::SuperSaiyansGod.display_name)
sleep(2)
Display::GameMessage.output(:white, SevenSpace::DestructionGod.display_name)
sleep(2)
Display::GameMessage.output(:white, SevenSpace::EarthHuman.display_name)
