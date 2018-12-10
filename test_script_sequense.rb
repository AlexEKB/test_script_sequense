puts "Тестовое задание, версия 0.1 beta"

value = '1'
puts value

5.times do

  next_value = value.chars.inject([]) do |array, x|
    if array.any? && array.last.has_key?(x)
      array.last[x] += 1
    else
      array << {x => 1}
    end
    array
  end
  
  value = ''

  next_value.map do |hash| 
    hash.each { |k,v| value << "#{v}#{k}" }
  end

  puts value
end