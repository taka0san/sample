# profile = {}
# profile[:name] = "太郎"
# profile[:age] = 26
# profile[:address] = "高知"

# profiles = []
# profiles << profile

# profile2 = {}
# profile2[:name] = "二郎"
# profile2[:age] = 27
# profile2[:address] = "愛媛"

# profiles << profile2

# puts profiles


# def withdraw(balance, amount)
#   fee = 110  # 手数料
# # 引き落とし額と残高を表示する、もしくは残高より多く引き落としたら残高不足と表示
#   total = amount + fee
#   if balance >= total
#     balance -= total
#     puts "#{amount}円引き落としました。残高は#{balance}円です"
#   else
#     puts "残高不足です"
#   end
# end

# balance = 100000  # 残高
# # puts "いくら引き落としますか？（手数料110円かかります）"
# # money = gets.to_i
# # withdraw(balance, money)


# class Pockemon
#   def initialize
#     puts "鳴き声を設定してください"
#     @sounds = gets.chomp
#     puts "攻撃力を設定してください"
#     @attack = gets.chomp
#   end
# end

# class Pikachu < Pockemon
#   def status
#     puts "鳴き声は#{@sounds}です。攻撃力は#{@attack}です"
#   end
# end

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

# result = []
# 20000.times do |i|
#   num = i + 1
#   if num % 3 == 0 || num.to_s.include?("3")
#     result << num
#   end
# end
# puts result.sum

# input = "1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502841027019385211055596446229489549303819644288109756659334461284756482337867831652712019091456485669234603486104543266482133936072602491412737245870066063155881748815209209628292540917153643678925903600113305305488204665213841469519415116094330572703657595919530921861173819326117931051185480744623799627495673518857527248912279381830119491298336733624406566430860213949463952247371907021798609437027705392171762931767523846748184676694051320005681271452635608277857713427577896091736371787214684409012249534301465495853710507922796892589235420199561121290219608640344181598136297747713099605187072113499999983729780499510597317328160963185950244594553469083026425223082533446850352619311881710100031378387528865875332083814206171776691473035982534904287554687311595628638823537875937519577818577805321712268066130019278766111959092164201989"
# num = input.split("").map(&:to_i)
# result = []
# i = 0
# while i < 999
#   num_a = num[i] * 10 + num[i + 1]
#   result << num_a
#   i += 1
# end
# puts result.group_by { |e| e }.sort_by { |e, v| -v.size }.map(&:first).first
　
