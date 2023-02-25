
# frozen_string_literal: true

require '../Utility/game_message'
require './scenario_character'
require './scenario_standard'
require 'fileutils'


# 世界帳簿登録アプリメッセージシーン
title_scene = GameStandard::Title.new("世界登録枠", "該当者登録開始")
title_scene.start
talk_scene = GameStandard::Talk.new

# キャラクタークラスを各種設定
wtm = WorldTriggerMachine.new("世界管理者　憑依機械")

# 会話シーンにおける、各会話登録をする
talk_scene.message_show(wtm.display_name, "ようこそ世界管理局へ")
talk_scene.message_show(wtm.display_name, "ここでは、あなたを世界に登録を開始します")
talk_scene.message_show("未登録 ", "お、おう　分かった。")
talk_scene.message_show(wtm.display_name, "それでは、名前の入力をお願いします")

# 名前の入力処理
select_name = gets

# 入力された名前の確認
loop {
    talk_scene.message_show(wtm.display_name, "#{select_name}で入力するぞ、いいな 1.はい 2.いいえ")
    # 選択肢入力
    select_num = gets.chomp
    select_num_value = select_num.to_i
    if select_num_value == 1
        break
    else
        talk_scene.message_show(wtm.display_name, "もう一度名前を入力してくれ")
        select_name = gets
    end
}

register_file_name = 'world_character_list.txt'

# 登録名簿ファイルに名前を設定
File.write register_file_name, select_name

# 登録帳簿の現在情報をSF風に出力
talk_scene.message_show(wtm.display_name, "登録完了 世界開示情報以下")


File.open register_file_name do |f|
    talk_scene.message_show(wtm.display_name, "帳簿最終照会日時 #{f.atime}")
    talk_scene.message_show(wtm.display_name, "帳簿最新更新日時 #{f.mtime}")
    talk_scene.message_show(wtm.display_name, "帳簿格納大きさ   #{f.size}")
    
end

talk_scene.message_show(wtm.display_name, "次 発生時生物番号入力依頼")

# 管理番号の入力処理
select_world_number = gets

# 既にディレクトリが存在する場合は、名前のみだったので入国手続き完了とする
if Dir.exist?(select_world_number)
    talk_scene.message_show(wtm.display_name, "これで入国に必要な残り手続きは完了")
    talk_scene.message_show(wtm.display_name, "それでは、入国をするといい")
    talk_scene.message_show("サリー開発センター", "終わり")
else
    # ディレクトリの作成が必要なので追加する
    Dir.mkdir select_world_number, 0755
    talk_scene.message_show(wtm.display_name, "新しい番号を登録しておいたぞ")
end

# 世界中で登録されている管理番号ごとの専用構造を用意
# Todo mkdir の Invalid argmentの調査をする
talk_scene.message_show(wtm.display_name, "登録番号は別途で可能 登録完了 次へ進め")

talk_scene.message_show("サリー開発センター", "終わり")

