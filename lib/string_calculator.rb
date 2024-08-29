class StringCalculator
  def self.add(numbers)
    negative_numbers = numbers.scan(/-\d+/)
    
    if !negative_numbers.empty?
      return "Negative numbers not allowed #{negative_numbers.join(', ')}"
    end

    numbers.scan(/-?\d+/).map(&:to_i).sum
  end
end