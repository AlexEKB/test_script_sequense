require_relative 'lib/sequense'

puts 'Тестовое задание, версия 0.2 beta'
puts

sequense = Sequense.new
puts sequense.value

5.times do
  sequense.create_sequense
  #puts sequense.get_sequense
  puts sequense.value
end