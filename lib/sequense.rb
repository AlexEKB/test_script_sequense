class Sequense
  VALUE = '1'.freeze
  attr_reader :value

  def initialize(value = nil)
    @value = value || VALUE
  end

  def create_sequense
    next_value = @value.chars.each_with_object([]) do |x, array|
      if array.any? && array.last.key?(x)
        array.last[x] += 1
      else
        array << { x => 1 }
      end
    end

    @value = ''

    next_value.map do |hash|
      hash.each { |k, v| @value << "#{v}#{k}" }
    end
  end
end
