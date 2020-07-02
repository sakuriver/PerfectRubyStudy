# frozen_string_literal: true

require '../Utility/game_message'

class ShenronBase
  SUMMON_COST = 7
  @summoned
    @cool_time_day
    attr_accessor :display_name
  def initialize
    @summoned = false
    @cool_time_day = 0
  end

  def summon!
    @summoned = true
  end

  def summoned?
    @summoned
  end
end
message_body = "shenron summon cost is #{ShenronBase::SUMMON_COST}"
Display::GameMessage.output(:white, message_body)
sleep(2)
Display::GameMessage.output(:white, 'shenron summon start')
sleep(2)

[1, 2, 3, 4, 5, 6, 7].each do |ball|
  Display::GameMessage.output(:white, 'dragonball search')
  sleep(ball)
  Display::GameMessage.output(:white, "number #{ball} get")
end

shenron = ShenronBase.new

Display::GameMessage.output(:white, "shenron summoned #{shenron.summoned?}")
shenron.summon!
sleep(5)
Display::GameMessage.output(:white, "shenron summoned #{shenron.summoned?}")

Display::GameMessage.output(:white, '')
Display::GameMessage.output(:white, '')

shenron.display_name = '神龍'
Display::GameMessage.output(:white, "shenron name is #{shenron.display_name}")
shenron.display_name = "ポルンガ"
Display::GameMessage.output(:white, "shenron name is #{shenron.display_name}")
