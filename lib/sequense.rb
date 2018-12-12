class Sequense
  VALUE = '1'

  def initialize(value = nil)
    @value = value || VALUE
    puts VALUE
  end

  def create_sequense
    next_value = @value.chars.inject([]) do |array, x|
      if array.any? && array.last.has_key?(x)
        array.last[x] += 1
      else
        array << { x => 1 }
      end
      array
    end

    @value = ''

    next_value.map do |hash|
      hash.each { |k, v| @value << "#{v}#{k}" }
    end
  end

  def get_sequense
    @value
  end
end