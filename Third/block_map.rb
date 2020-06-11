
BATTLE_RESULT_WIN = 0
BATTLE_RESULT_DRAW = 1
BATTLE_RESULT_LOSE = 2

battle_result_list = [2, 0, 1].map do |result_code|
  case result_code
    when BATTLE_RESULT_WIN 
      '手堅い選択でしたね、あなたの勝ちです'
    when BATTLE_RESULT_DRAW 
      'お互いに均衡していたようです'
    else 
      'ああ、この敵は挑むにはまだ強すぎたようです'
  end
end

puts "戦闘結果を確認中"
sleep(2)

puts "結果発表"
battle_result_list.each do |result_message|
  sleep(1)
  puts result_message
  puts "次の結果表示をいたします"
end
sleep(2)
puts "今回のマップ戦については、これで完了となります"
