require "pry"

seating = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]


# index then index the index...all the way down.
seating.map.with_index(1) do |value, index|
  # print "Row #{index} seat"
  value.map.with_index do |v, i|
    if v == nil
      puts "Row #{index} seat #{i} is free"
      puts "Would you like to sit here?"
      @user_input = gets.chomp.downcase
      case @user_input
      when "y"
        # binding.pry
          puts "What is your name?"
          value[i] = gets.chomp
          return puts "#{seating}"

# binding.pry

      end
    end
  end
end
