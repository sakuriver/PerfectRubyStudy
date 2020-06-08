

module Display
	class GameMessage
	  @color_maps = {:red =>  "31m", :green => "32m", :blue => "34m", :black => "30m"}
	  def self.output(color_code, body)
      print "\e[#{@color_maps[color_code]}"
      puts body
      print "\e[0m"
	  end
  end
end

module Field
	class WarZone
		@players
		@enemies
		def initialize(players, enemies)
      @players = players
      @enemies = enemies
		end
		def simulator
			Display::GameMessage.output(:black, "シミュレーションを開始しました")
			Display::GameMessage.output(:black, "ジオン軍 戦力")
			sleep(1)
			@players.each do |player|
			  Display::GameMessage.output(:green, player.say)
				sleep(1)
				if player.class == GameCharacter::NewType
					Display::GameMessage.output(:red, "ニュータイプがいるのなら、もう充分だろう")
					break
        end
			end
			Display::GameMessage.output(:black, "地球連坊軍 戦力")
		  @enemies.each do |enemy|
				Display::GameMessage.output(:blue, enemy.say)
				sleep(1)
				if enemy.class == GameCharacter::NewType
					Display::GameMessage.output(:red, "ニュータイプがいるのなら、もう充分だろう")
					break
        end
			end
			

      Display::GameMessage.output(:black, "戦闘を開始しました")
			sleep(2)

			Display::GameMessage.output(:red, "ターゲット確認…排除開始…")

			sleep(2)

      Display::GameMessage.output(:blue, "アムロいっきまーす")

			sleep(3)
			
			battle_result = Random.new(2)
			if battle_result == 0
				Display::GameMessage.output(:green, "ジオン軍の勝利です")
			else
				Display::GameMessage.output(:blue, "地球連坊軍の勝利です")
			end

			Display::GameMessage.output(:black, "シミュレーションを終了しました")
		end
  end
end

module GameCharacter
	class HumanBase
		@name
		def initialize(name)
      @name = name
    end
		def walk(number)
			"#{number}歩いた。"
		end
		def say
		end
	end

	class OldType < HumanBase
		@name
		def initialize(name)
      @name = name
    end
		def say
			"僕は一般人だ"
		end
	end

	class NewType < HumanBase
		@name
		def initialize(name)
      @name = name
    end
		def say
			"ジオン亡き後は、ニュータイプの時代なのだ"
    end
  end
end

players = [GameCharacter::OldType.new("ジオン軍　一般兵"), GameCharacter::OldType.new("ジオン軍　一般兵"), GameCharacter::NewType.new("赤い彗星シャア")]

enemies = [GameCharacter::OldType.new("地球蓮坊 一般兵"), GameCharacter::OldType.new("地球蓮坊 一般兵"), GameCharacter::OldType.new("地球蓮坊 一般兵"), GameCharacter::NewType.new("地球蓮坊 アムロ"), GameCharacter::OldType.new("地球蓮坊 一般兵")]

earth = Field::WarZone.new(players, enemies)

earth.simulator
