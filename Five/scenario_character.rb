class Buu 
    OKASHI_ID = 1
    @display_name
    def initialize(display_name)
      @display_name = display_name
    end
    def display_name
      @display_name
    end
    def magic(skill_id, base_cake)
        if skill_id == 1
          return base_cake.ceil
        end
        base_cake
    end    
end

class TalkDefault
  @display_name
  def initialize(display_name)
    @display_name = display_name
  end
  def display_name
    @display_name
  end    
end

class Hercule < TalkDefault
end

class Yati < TalkDefault
end

class Kuriri < TalkDefault
end

class WorldTriggerMachine < TalkDefault
end

class BuuDog
    BINARY_VALUE = 2
    SIXTEEN_VALUE = 16

    @display_name
    def initialize(display_name)
        @display_name = display_name
    end
    def display_name
        @display_name
    end
    def convert_value_binary(number_value)
        number_value.to_s(BuuDog::BINARY_VALUE)
    end
    def convert_value_sixteen(number_value)
        number_value.to_s(BuuDog::SIXTEEN_VALUE)
    end
    def convert_value_dobulecalc(number_value, calc_value)
        number_value ** calc_value
    end
    def convert_value_rational(number_value_first, number_value_second)
        r = Rational(number_value_first, number_value_second)
        r.to_f
    end
end