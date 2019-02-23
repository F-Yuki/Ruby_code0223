puts "最初はグー…ジャン・ケン…！！！"

def jyanken
  puts "[0]グ〜\n[1]チョキ\n[2]パ〜"

  player_hand = gets.to_i
  program_hand = rand(3)

  jyanken = ["グ〜", "チョキ", "パ〜"]
  puts "あなたの手は…#{jyanken[player_hand]}, 相手の手は…#{jyanken[program_hand]}"

  if player_hand == program_hand
    puts "あいこで"
    return true
  elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    return false
  else
    puts "あなたの負けです"
    return false
  end
end

next_jyanken = true

while next_jyanken
  next_jyanken = jyanken
end
