class KaraokeMachine
  def initialize(melody)
    @code = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
    @melody = melody
  end

  def transpose(amount)
    code = @code.rotate(amount)
    ans = ''
    @melody.chars.each_with_index do |m, i|
      next if m == '#'
      if m.include?(' ') || m.include?('|')
        ans += m
      else
        ans += @melody[i + 1] == '#' ? code[@code.index(m) + 1] : code[@code.index(m)]
      end
    end
    ans
  end
end
# melody = "F# G# A# B |A# G# F#   |A# B C# D# |C# B A#   |F#   F#   |F#   F#   |F#F#G#G#A#A#BB|A# G# F#   "

# # melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
# # answer = melody
# puts KaraokeMachine.new(melody).transpose(6)
