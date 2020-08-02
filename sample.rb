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
puts "いくら引き落としますか？（手数料110円かかります）"
money = gets.to_i
withdraw(balance, money)