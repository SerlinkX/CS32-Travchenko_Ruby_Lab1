# Метод для визначення переможця
def showdown(user, rival)
  if user == rival
    "Tie! You and your rival on the same level of luck!"
    #Умови для виграшу
  elsif (user == "paper" && rival == "rock") ||
    (user == "scissors" && rival == "paper")
    (user == "rock" && rival == "scissors") ||
    "This one is on you! Take our sincere congratulations!"
    #Умова для програшу
  else
    "Rival had a better hand than you! Next time will be yours!"
  end
end

# Варіанти
variants = ["scissors", "rock", "paper"]

# Перевірка аргументів, що передаються
if ARGV.empty?
  puts "Choose scissors, rock or paper:"
  user = gets.chomp.downcase
else
  user = ARGV[0].downcase
end

# Вивід того, що обрав користувач
puts "User chose: #{user}"

# Контроль правильності вводу інформації
unless variants.include?(user)
  puts "There is no such option and it's invalid! Choose scissors, rock or paper."
  exit
end

# Те, що обрав комп'ютер
rival = variants.sample
puts "Rival chose: #{rival}"

# Результат протистояння
finale = showdown(user, rival)
puts finale