require 'json'

file = File.read('data/table.json')
table = JSON.parse(file)

puts "В нашей таблице #{table.keys.size} элементов"
puts "Введите элемент, о котором хотите узнать больше:"
p table.keys

element = STDIN.gets.chomp

if table.key?(element)
  puts "Порядковый номер: #{table[element]['number']}"
  puts "Название: #{table[element]['name']}"
  puts "Лат.: #{table[element]['latin']}, произносится, как: '#{table[element]['pronunciation']}'"
  puts "Первооткрыватель: #{table[element]['discoverer']}"
  puts "Плотность: #{table[element]['density']}"
  puts "Период, группа: #{table[element]['period_group']}"
  puts "Атомная масса: #{table[element]['atomic_mass']}"
  puts "Температура плавления: #{table[element]['melt_temp']}"
  puts "Температура замерзания: #{table[element]['freeze_temp']}"
  puts "Год открытия: #{table[element]['year']}"
else
  puts "Извините, про такой элемент мы еще не знаем."
end
