puts "じゃんけん！"

def janken
    puts "0(ぐー) 1(チョキ) 2(パー)"
    
    jankens = ["ぐー", "チョキ", "パー"]
    
    player_hand=gets.to_i
    program_hand=rand(3)
    
    puts "ほい！"
    puts "----------------"
    
    puts "あなたの手: #{jankens[player_hand]}"
    puts "相手の手: #{jankens[program_hand]}"
    
    
    if player_hand == program_hand
        puts "----------------"
        puts "あいこで！"
        return true
    elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
        puts "----------------"
        attimuite_win
    else
        puts "----------------"
        attimuite_lose
    end
end
                

def attimuite_win
    puts "あっちむいて〜"
    puts "0(上) 1(右) 2(下) 3(左)"
    
    atti= ["上","右","下","左"]
    
    player_point =gets.to_i
    program_point =rand(4)
    
    puts "ほい！"
    puts "----------------"
    puts "あなたの手: #{atti[player_point]}"
    puts "相手の手: #{atti[program_point]}"
    
    if player_point == program_point
        puts "あなたの勝ちです"
        return false
    else
        puts "---------------"
        return true
    end
end

def attimuite_lose
    puts "あっちむいて〜"
    puts "0(上) 1(右) 2(下) 3(左)"
    
    atti= ["上","右","下","左"]
    
    player_point =gets.to_i
    program_point =rand(4)
    
    puts "ほい！"
    puts "----------------"
    puts "あなたの手: #{atti[player_point]}"
    puts "相手の手: #{atti[program_point]}"
    
    if player_point == program_point
        puts "あなたの負けです"
        return false
    else
        puts "---------------"
        return true
    end
end

next_game = true

while next_game
    next_game=janken
end
