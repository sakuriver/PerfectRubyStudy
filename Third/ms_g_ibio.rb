# frozen_string_literal: true

def weapon_slot_message(pilot_name, option_weapon_name = '')
  puts "pilot_name #{pilot_name} "
  puts 'default weapon sword'
  puts 'beam none world '
  puts "option weapon #{option_weapon_name}"
  puts ''
end

pilot_name = 'Mikazuki　Augus'
option_weapon_name = 'Lance'
weapon_slot_message(pilot_name)
weapon_slot_message(pilot_name, option_weapon_name)
