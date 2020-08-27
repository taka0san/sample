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

# pikachu = Pikachu.new
# pikachu.status

# input_line = gets.to_i
# i = 1
# while i <= input_line
#     word = gets.chomp
#     if word[-1] == "s" || word[-1] == "o" || word[-1] == "x" || word[-1] == "s" || word[-2..-1] == "sh" || word[-2..-1] == "ch"
#         word += "es"
#     elsif word[-1] == "f"
#         word.slice!(-1)
#         word += "ves"
#     elsif word[-2..-1] == "fe"
#         word.slice!(-2..-1)
#         word += "ves"
#     elsif word[-1] == "y" && word[-2] == "a" || word[-1] == "y" && word[-2] == "i" || word[-1] == "y" && word[-2] == "u" || word[-1] == "y" && word[-2] == "e" || word[-1] == "y" && word[-2] == "o"
#         word.slice!(-1)
#         word += "ies"
#     else
#         word += "s"
#     end
#     puts word
#     i += 1
# end

# input_line = gets.split.map(&:to_i)
# i = 1
# result = []
# input_line[0].times {result.push(0)}
# while i <= input_line[2]
#     num = gets.to_i
#     if input_line[1] > 0
#         input_line[1] -= 1
#         result[num - 1] += 1
#     end
#     input_line[0].times do |n|
#         if result[n] > 0
#            result[n] -= 1
#            result[num - 1] += 1
#        end
#     end
#     i += 1
# end
# result.each_with_index do |x, m|
#   if x == result.max
#     puts m + 1
#   end
# end

# time = gets.split.map(&:to_i)
# time_after = time[1] + time[2]
# num = gets.to_i
# i = 1
# result = []
# while i <= num
#     clock = gets.split.map(&:to_i)
#     n = clock[0] * 60 + clock[1] + time_after
#     if n < 540
#         n -= time_after
#         result << n
#     end
#     i += 1
# end
# a = result.max
# a -= time[0]
# b = a % 60
# c = (a - b) / 60
# if c < 10
#     puts "0#{c}:#{b}"
# else
#     puts "#{c}:#{b}"
# end

# a = []
# b = "33##3"
# a << "....##...."
# a << "....."
# # a[0][2..6] = "#"
# if a[0].include?("#")
#   puts "a"
# end
# puts a

# block[0].times do |m|
#   block[1].times do |i|
#   map[num[0] - 1 - m][block[2] + i] = "#"
#   end
# end

# i = 1
# num = 1234567890
# result = []
# while i <= num do
#   remainder = num % i
#   if remainder == 0 && i <= 10000000
#     result << i
#   end 
#   i += 1
# end
# puts result.sum

# num = [1,0,5]
# 25.times do |i|
#   a = num[i] + num[i + 1] + num[i + 2]
#   num << a
# end
# puts num

result = []
20000.times do |i|
  num = i + 1
  if num % 3 == 0 || num.to_s.include?("3")
    result << num
  end
end
puts result.sum