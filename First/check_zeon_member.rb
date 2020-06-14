# frozen_string_literal: true

class Pilot
  @name
  def initialize(name)
    @name = name
  end

  def zeon?
    @name == 'Char' || @name == 'Haman'
  end

  def open_zeon_gate
    sleep(2)
    puts "check pilot name #{@name} zeon member #{zeon?}"
  end
end

leader = Pilot.new('Char')
spy = Pilot.new('Bright')
sub_leader = Pilot.new('Haman')

leader.open_zeon_gate()
spy.open_zeon_gate()
sub_leader.open_zeon_gate()
