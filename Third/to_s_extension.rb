# frozen_string_literal: true

class GundamThird
  def to_s
    'Encounter Universe'
  end
end

class ZGundamSecond
  def to_s
    'Lovers.'
  end
end

class WGundam
  def to_s
    'EPISODE ZERO'
  end
end

first_select_title = GundamThird.new
z_gundam_second = ZGundamSecond.new
w_gundam = WGundam.new

puts first_select_title
puts z_gundam_second
puts w_gundam
