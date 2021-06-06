def janken
  puts "----------------------"
  puts "じゃんけん・・・\r\n0(グー)1(チョキ)2(パー)3(戦わない)"
  puts "ホイッ！"
  player_hand = gets.to_i
  
  cp_hand = rand(3)

  jankens = ["グー", "チョキ", "パー"]

  puts "----------------------------"
  puts "あなた：#{jankens[player_hand]}"
  puts "相手：#{jankens[cp_hand]}"

  if player_hand == cp_hand
    puts "------------------"
    puts "あいこ"
    return true
  elsif (player_hand == 0 && cp_hand == 1) || (player_hand == 1 && cp_hand == 2) || (player_hand == 2 && cp_hand ==0)
    player_turn
  elsif (player_hand == 0 && cp_hand == 2) || (player_hand == 1 && cp_hand == 0) || (player_hand == 2 && cp_hand == 1)
    cp_turn
  elsif player_hand == 3
    return false
  else
    puts "0~3を入力してください"
    return true
  end
end

def player_turn
  puts "--------------------"
  puts "あっち向いて〜"
  puts "0(上)1(右)2(左)3(下)"
  ways = ["上", "右", "下", "左"]
  player_way = gets.to_i
  cp_way = rand(4)
  puts "ほい！"
  puts "-----------------------"
  puts "あなた：#{ways[player_way]}"
  puts "相手：#{ways[cp_way]}"

  if (player_way == cp_way)
    puts "あなたの勝ち"
  else
    return true
  end
end

def cp_turn
  puts "--------------------"
  puts "あっち向いて〜"
  puts "0(上)1(右)2(左)3(下)"
  ways = ["上", "右", "下", "左"]
  player_way = gets.to_i
  cp_way = rand(4)
  puts "ほい！"
  puts "-----------------------"
  puts "あなた：#{ways[player_way]}"
  puts "相手：#{ways[cp_way]}"

  if (player_way == cp_way)
    puts "あなたの負け"
  else
    return true
  end
end

next_game = true

while next_game
  next_game = janken
end