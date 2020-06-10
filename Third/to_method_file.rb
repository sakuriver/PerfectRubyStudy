# frozen_string_literal: true

class GundamHuman
  @number
  @is_newtype
  def initialize(number, is_newtype)
    @number = number
    @is_newtype = is_newtype
  end

  def display
    p @number.to_s
    p @is_newtype.to_s
  end
end

amuro = GundamHuman.new(1, true)
amuro.display
