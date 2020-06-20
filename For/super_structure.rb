require '../Utility/game_message'


module Space
	class Six
		DISPLAY_NAME = "第6宇宙"
  end
  class Seven
		DISPLAY_NAME = "第7宇宙"
	end
end
module Scene
	class Title
		def start
			Display::GameMessage.output(:white, "ドラゴンボール超　第7宇宙 VS 第6宇宙")
			Display::GameMessage.output(:white, "")
			Display::GameMessage.output(:white, "")
			Display::GameMessage.output(:white, "")
			Display::GameMessage.output(:white, "パーフェクトRuby 総括")
			Display::GameMessage.output(:white, "press push key")
			Display::GameMessage.output(:white, "----------------------------------")
			Display::GameMessage.output(:white, "- sakuriver develop center       -")
			Display::GameMessage.output(:white, "-                                -")
			Display::GameMessage.output(:white, "----------------------------------")

			title_wait = gets.chomp
			sleep(1)
			Display::GameMessage.message_clear
		end
	end

	class Opening
		def start
			Display::GameMessage.output(:white, "ここは、とあるプログラマの一室")
			sleep(2)
			Display::GameMessage.output(:white, "日夜派遣PGとして開発を続けている")
			sleep(2)
			Display::GameMessage.output(:white, "彼が、今回も卒業間近なプロジェクトがある")
			Display::GameMessage.output(:white, "そのプロジェクトではRubyを使っていた")
			sleep(2)
			Display::GameMessage.output(:white, "彼が、案件終了時にやっているのが")
			sleep(2)
			Display::GameMessage.output(:white, "記念旅行としての勝手に同人開発")
			sleep(2)
			Display::GameMessage.output(:white, "")
			sleep(2)
			Display::GameMessage.output(:white, "")
			sleep(2)
			Display::GameMessage.output(:white, "この作品は、そんなお遊びである。　ぜひ楽しんでいってくれ")
			sleep(2)
			Display::GameMessage.output(:white, "P.S このコードが煩わしいと思った君、パーフェクトRubyにある'ファイル関連'がヒントだ")

			sleep(5)
			Display::GameMessage.message_clear

		end
	end
	class PartySelect
		def start
			Display::GameMessage.output(:white, "ドラゴンボール超　第7宇宙 のパーティを選択してください")
			Display::GameMessage.output(:white, "パーティの番号を入力してくれ")
			Display::GameMessage.output(:white, "0: モナカ×４")
			Display::GameMessage.output(:white, "1: ベジータ、ピッコロ、孫悟飯")
			Display::GameMessage.output(:white, "2: 孫悟空、ピッコロ、ベジータ、モナカ")
			Display::GameMessage.output(:white, "結果は自動再生となる")
			Display::GameMessage.output(:white, "press any key")

			party_num = gets.chomp
			sleep(1)
			Display::GameMessage.message_clear
			party_num.to_i
		end
	end

	class Main
		@party_num
		def initialize(party_num)
			@party_num = party_num
		end
		def start
			si_first_m = Battle::JoinMember.new("ボタモ", 130, 15, "攻撃")
			si_second_m = Battle::JoinMember.new("フロスト", 200, 35, "毒針")
			si_third_m = Battle::JoinMember.new("キャベ", 150, 18, "スーパーサイヤ人")
			si_for_m = Battle::JoinMember.new("オッタ・マゲッタ", 220, 23, "溶岩のつば")
			si_five_m = Battle::JoinMember.new("ヒット", 300, 55, "時とばし")
			
			if @party_num == 0
				sv_for_m = Battle::JoinMember.new("モナカ", 30, 10, "仁王立ち")	
				seven_space_members = Battle::BattleParty.new([sv_for_m, sv_for_m, sv_for_m, sv_for_m])
			elsif @party_num == 1
				sv_first_m = Battle::JoinMember.new("孫悟飯", 280, 50, "潜在能力")
				sv_second_m = Battle::JoinMember.new("ピッコロ", 170, 28,  "まかんこうさっぽう")
				sv_third_m = Battle::JoinMember.new("ベジータ", 150, 38, "ビッグバン")
				seven_space_members = Battle::BattleParty.new([sv_first_m, sv_second_m, sv_third_m])
			else
				sv_first_m = Battle::JoinMember.new("孫悟空", 280, 45, "カメハメ波")
				sv_second_m = Battle::JoinMember.new("ピッコロ", 170, 28,  "まかんこうさっぽう")
				sv_third_m = Battle::JoinMember.new("ベジータ", 280, 42, "ビッグバン")
				sv_for_m = Battle::JoinMember.new("モナカ", 30, 10, "仁王立ち")	
				seven_space_members = Battle::BattleParty.new([sv_first_m, sv_second_m, sv_third_m, sv_for_m])
			end
			
			
			six_space_members = Battle::BattleParty.new([si_first_m, si_second_m, si_third_m, si_for_m, si_five_m])			
			pvp = Battle::PvP.new(six_space_members, seven_space_members)
			pvp.battle_exec
						
		end
	end
end
module GameSystem
	class BattleResultMessage
		@color_code
		@message
		def initialize(color_code, message)
			@color_code = color_code
			@message = message
		end
		def color_code
			@color_code
		end
		def message
			@message
		end
	end
end
module Battle
	class JoinMember
		@name
		@life
		@power
		@skill_name
    def initialize(name, life, power, skill_name)
      @name = name
      @life = life
      @power = power
      @skill_name = skill_name
    end
		def name
			@name
		end
		def life
			@life
		end
		def damage(damage)
			@life = @life - damage
		end
		def power
			@power
		end
		def is_dead
			@life <= 0
		end
		def skill_name
			@skill_name
		end
  end
	class BattleParty
		@members
		def initialize(members)
      @members = members
		end
		def get_member(num)
			@members[num]
		end
		def party_len
			@members.length
		end
	end
	class PvP
		@six_space_members
		@seven_space_members
		@round_num
		@six_member_num
		@seven_member_num
		@six_member
		@seven_member
		def initialize(six_space_members, seven_party_members)
      @six_space_members = six_space_members
      @seven_space_members = seven_party_members
      @round_num = 1
      @six_member_num = 0
			@seven_member_num = 0
			@round_result_messages = []
		end
		def battle_exec
      battle_start
			loop {
        round_exec
				if is_battle_end?
          break
				end
			}
			battle_end
		end
		def is_battle_end?
			@six_member_num >= @six_space_members.party_len || @seven_member_num >= @seven_space_members.party_len
		end
		def is_round_end?
			@six_member.is_dead || @seven_member.is_dead
		end
		def is_seven_win?
			@six_member.is_dead
		end
		def round_exec

			@six_member = @six_space_members.get_member(@six_member_num)
			@seven_member = @seven_space_members.get_member(@seven_member_num)
      round_start
			loop {
				command_exec(@seven_member, @six_member)
				break if is_round_end?
				command_exec(@six_member, @seven_member)
				break if is_round_end?
			  sleep(2)
			}
			round_end
		end
		def command_exec(attack_member, defense_member)
      command_message = "#{attack_member.name} が #{attack_member.skill_name} を発動したー"
			Display::GameMessage.output(:white, command_message)
			sleep(2)
			defense_member.damage(attack_member.power)
			command_result_message = "#{defense_member.name} は #{attack_member.power} ダメージを受けました "
			Display::GameMessage.output(:red, command_result_message)
			sleep(2)
			life_push_message = "#{defense_member.name} 残り体力 #{defense_member.life} です "
			Display::GameMessage.output(:red, life_push_message)
		end
		def battle_start
			@seven_space_name = Space::Seven::DISPLAY_NAME
			@six_space_name = Space::Six::DISPLAY_NAME
			battle_start_message = "これから #{@six_space_name} VS #{@seven_space_name} を開始いたします "
			Display::GameMessage.output(:white, battle_start_message)
			sleep(2)
		end
		def battle_end
			win_space_name  = is_seven_win? ? @seven_space_name : @six_space_name
			Display::GameMessage.message_clear
			Display::GameMessage.output(:white, "それでは、結果発表になります")
			sleep(3)
			@round_result_messages.each do |result_message|
				Display::GameMessage.output(result_message.color_code, result_message.message)
			end
			battle_end_message = "勝者は #{win_space_name} となります "
			Display::GameMessage.output(:white, battle_end_message)
			sleep(2)
		end
		def round_start
			Display::GameMessage.message_clear
			round_start_message = "第#{@round_num}戦 #{@six_member.name} VS #{@seven_member.name} を開始いたします "
			Display::GameMessage.output(:white, round_start_message)
			sleep(2)
		end
		def round_end
			win_member_name = is_seven_win? ? @seven_member.name : @six_member.name
			round_end_message = "第#{@round_num}戦 #{win_member_name} の勝者です"
			@round_num += 1
			if is_seven_win?
				@round_result_messages.push(GameSystem::BattleResultMessage.new(:blue, round_end_message))
				@six_member_num += 1
			else
				@round_result_messages.push(GameSystem::BattleResultMessage.new(:red, round_end_message))
				@seven_member_num += 1
			end
			Display::GameMessage.output(:white, round_end_message)
			sleep(2)
    end
	end
end


title = Scene::Title.new
title.start

opening = Scene::Opening.new
opening.start

party_select = Scene::PartySelect.new
party_num = party_select.start


main = Scene::Main.new(party_num)
main.start
