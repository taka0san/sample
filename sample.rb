profile = {}
profile[:name] = "太郎"
profile[:age] = 26
profile[:address] = "高知"

profiles = []
profiles << profile

profile2 = {}
profile2[:name] = "二郎"
profile2[:age] = 27
profile2[:address] = "愛媛"

profiles << profile2

# puts profiles


def withdraw(balance, amount)
  fee = 110  # 手数料
# 引き落とし額と残高を表示する、もしくは残高より多く引き落としたら残高不足と表示
  total = amount + fee
  if balance >= total
    balance -= total
    puts "#{amount}円引き落としました。残高は#{balance}円です"
  else
    puts "残高不足です"
  end
end

balance = 100000  # 残高
# puts "いくら引き落としますか？（手数料110円かかります）"
# money = gets.to_i
# withdraw(balance, money)


class Pockemon
  def initialize
    puts "鳴き声を設定してください"
    @sounds = gets.chomp
    puts "攻撃力を設定してください"
    @attack = gets.chomp
  end
end

class Pikachu < Pockemon
  def status
    puts "鳴き声は#{@sounds}です。攻撃力は#{@attack}です"
  end
end

pikachu = Pikachu.new
pikachu.status