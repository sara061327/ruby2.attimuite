require "csv" 
$case_pattern = nil
puts "じゃんけん..."

def janken
puts"0(グー)1(チョキ)2(パー)3(戦わない)"
 
 player_hand = gets.to_i
 program_hand = rand(2)
 jankens = ["グー", "チョキ","パー"]

 if jankens[player_hand]
  puts "あなたは#{jankens[player_hand]}を出しました"
  puts "相手は#{jankens[program_hand]}を出しました"
 elsif player_hand == 3
  puts "あなたは戦いません"
 else 
  puts "0から3の数字を入力してください"
 end

 case 
  when player_hand == program_hand
   puts "あいこで..."
    return true
  when (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
   puts "あっち向いて"
    $case_pattern = "win"
     return false
  else
   puts "あっち向いて"
    $case_pattern = "lose"
     return false
    
 end
end

 next_game = true
 
while next_game
 next_game = janken 
end

 puts "0(上)1(下)2(左)3(右)"
  player = gets.to_i
  program =rand(3)
  directions = ["上","下","左","右"]

 puts "ほいっ"
 puts "あなたは#{directions[player]}を出しました"
 puts "相手は#{directions[program]}を出しました"

 if $case_pattern == "win"
  case 
  when player == program
    puts"あなたの勝ちです"
  else
    puts"引き分けです"
  end
 end
 
 
  if $case_pattern == "lose"
   case 
   when player == program
    puts"あなた負けです"
   else
    puts"引き分けです"
   end
  end
  

