require '../Utility/game_message'
require './scenario_character'
require './scenario_standard'

title_scene = GameStandard::Title.new("", "ダンジョン紹介なのだー")
title_scene.start


HumanCharacter = Struct.new(:age, :job)

# HumanCharacterでパーティを作成する
raa = HumanCharacter.new(3, 'linuxsetup')
miio = HumanCharacter.new(4, 'partyFacility')
cplug = HumanCharacter.new(1, 'sounder')

# system用キャラクター定義
manager = HumanCharacter.new(15, '世界管理者')

talk_scene = GameStandard::Talk.new

Display::GameMessage.output(:white, "------- ダンジョン紹介画面   --------------")
Display::GameMessage.output(:white, "------- #{raa.job}  age #{raa.age}    ---")
Display::GameMessage.output(:white, "----                         ---------")
Display::GameMessage.output(:white, "------- #{miio.job} age #{miio.age}  ---")
Display::GameMessage.output(:white, "----                           ---------")
Display::GameMessage.output(:white, "------- #{cplug.job} age #{cplug.age}  -")
Display::GameMessage.wait_and_message_clear


talk_scene.message_show(manager.job, "よーし確認したぞ")

# issue メッセージの組み合わせによる、コンボ実装と

talk_scene.scenario_end_message

