# frozen_string_literal: true

require '../Utility/game_message'

class EarthHumanBase
end

kririn = EarthHumanBase.new
yamcha = EarthHumanBase.new

Display::GameMessage.output(:white, 'yamcha "Christ, Krillin."')
sleep(2)
Display::GameMessage.output(:white, 'kririn "Oh, Yamcha."')

Display::GameMessage.output(:white, 'yamcha "What are we doing here?"')
sleep(2)
Display::GameMessage.output(:white, 'kririn "kienzan training now"')
sleep(3)
Display::GameMessage.output(:white, 'yamcha "Oh, kienzan"')
sleep(2)
Display::GameMessage.output(:white, 'yamcha "did it work?"')
sleep(2)
Display::GameMessage.output(:white, 'kririn "yes"')
sleep(2)

def kririn.kienzan
  Display::GameMessage.output(:white, 'kririn "aaaaa hhhhhh"')
  sleep(2)
  Display::GameMessage.output(:white, 'kririn "pyu---"')
  sleep(4)
  Display::GameMessage.output(:white, 'kririn "zubabababa"')
end

kririn.kienzan
sleep(2)
Display::GameMessage.output(:white, 'yamcha "Okay, I ll give it a try."')
yamcha.kienzan
