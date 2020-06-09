# frozen_string_literal: true

class Room
  EARTHACE = 'Amuro'
  ZEONACE = 'Char'
  DISUCUSSIONNUMBER = 43
  @earth_name
  @zeon_name
  @scenario_number
  def initialize(earth_name, zeon_name, scenario_number)
    @earth_name = earth_name
    @zeon_name = zeon_name
    @scenario_number = scenario_number
  end

  def discussion
    if @earth_name.include?(EARTHACE) && @zeon_name.include?(ZEONACE)
      raise 'アムロとシャアが実際に議論できるのは１回だけです' unless @scenario_number == DISUCUSSIONNUMBER
    end
    puts "#{@earth_name}、 #{@zeon_name} 激突！"
  end
end

earth_name = 'Amuro'
zeon_name = 'Char'
scenario_number = 43
room = Room.new(earth_name, zeon_name, scenario_number)
room.discussion
