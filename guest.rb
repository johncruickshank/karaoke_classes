require_relative("song")

class Guest 

  def initialize(name, fave_song, money)
    @name = name
    @fave_song = fave_song
    @money = money
  end

  def get_name()
    return @name
  end

  def get_fave_song()
    return @fave_song
  end

  def get_money()
    return @money
  end




end
