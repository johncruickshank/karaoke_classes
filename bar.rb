require_relative("room")

class Bar

  def initialize(rooms)
    @rooms = rooms
  end

  def add_room(room)
    return @rooms << room
  end

  ## not needed ##
  # def room_open?(room)
  #   for open_rooms in @rooms
  #     if open_rooms == room
  #       return true
  #     end
  #   end
  #   return "Sorry, room is closed"
  # end

  def admit_customer(guest, room)
    if room.space? && room.can_afford?(guest)
      return room.add_guest(guest)
    else
      return "No admittance"
    end
  end


end
