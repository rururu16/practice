require_relative 'calendar.rb'

RSpec.describe Calendar do
  it 'display a calendar'do
    cal = Calendar.new.display
    answer = <<'EOS'
      May 2019       
Su Mo Tu We Th Fr Sa
          1  2  3  4 
 5  6  7  8  9 10 11 
12 13 14 15 16 17 18 
19 20 21 22 23 24 25 
26 27 28 29 30 31 
EOS
    answer.chomp!
    # puts answer
    expect(cal).to eq answer
  end
end
