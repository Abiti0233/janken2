puts "じゃんけん.."

#jankenメソッドの定義
def janken
  hands = ["グー","チョキ","パー"]

  puts "0（グー）1（チョキ）2（パー）3（戦わない）"

  player_hand = gets.to_i
  program_hand = rand(3)

  puts "ホイ"
  puts "あなた： #{hands[player_hand]}" + "を出しました。"
  puts "相手：#{hands[program_hand]}" + "を出しました。"
  puts "----------------------"

  if player_hand == 3
    puts "勝負しませんでした。"
    exit
  end
   #プレイヤーと相手が同じ手の場合はあいこ
  if player_hand == program_hand
    puts "あいこです。"
    janken
   #プレイヤーが勝ちの場合の条件
   elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    $result_jan = "win"
    puts "あなたの勝ちです。"
    puts "--------------------"
    hoi
   #プレイヤーが負けの条件
   else
    $result_jan = "lose"
    puts "あなたの負けです。"
    puts "--------------------"
    hoi
  end
end



#hoiメソッドの定義
def hoi

  choice = ["上","下","左","右"]
   puts "あっち向いて〜〜"
   puts "0(上) 1(下) 2(左) 3(右)"
 
   player_choice = gets.to_i
   program_choice = rand(4)
 
   puts "ホイ！"
   puts "-----------------------"
 
   puts "あなた： #{choice[player_choice]}"
   puts "相手： #{choice[program_choice]}"
   puts "-----------------------"
   if (player_choice == program_choice) && ($result_jan == "win")
     puts "あなたの勝ちです！！おめでとう。"
   elsif (player_choice == program_choice) && ($result_jan == "lose")
     puts "あなたの負けです、、残念でした。"
   else
     puts "引き分けです。もう一度じゃんけんしましょう。"
     puts "じゃんけん.."
     janken
   end
end

janken

