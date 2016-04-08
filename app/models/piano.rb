class Piano

  attr_reader :session

  def initialize(session)
    @session = session
    @lastnote = ""
  end

  def play(note)
    keys = {"C" => 1, "Db" => 2, "D" => 3, "Eb" => 4, "E" => 5, "F" => 6, 
      "Gb" => 7, "G" => 8, "Ab" => 9, "A" => 10, "Bb" => 11, "B" => 12}
    intervals = {0 => "unison", 1 => "minor second", 2 => "major second", 3 => "minor third",
      4 => "major third", 5 => "perfect fourth", 6 => "augmented fourth", 7 => "perfect fifth",
      8 => "minor sixth", 9 => "major sixth", 10 => "minor seventh", 11 => "major seventh" }
    if @lastnote != ""
      @interval = (keys[note] - keys[@lastnote]).abs
      puts "interval: " + intervals[@interval].to_s
    end
    @lastnote = note
  end

end
