require_relative 'lib/sequense'

puts "Тестовое задание, версия 0.1 beta"

sequense = Sequense.new

5.times do
  sequense.create_sequense
  puts sequense.get_sequense
end

