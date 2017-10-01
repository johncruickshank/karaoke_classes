require_relative("room")

class Bar < Room

  def initialize(rooms)
    @rooms = rooms
  end

  def add_room(room)
    return @rooms << room
  end

  def room_open?(room)
    for open_rooms in @rooms
      if open_rooms == room
        return true
      end
    end
    return "Sorry, room is closed"
  end

## want to get && working here  ##
  def admit_customer(guest, room)
    room.space?()
      if self.room_open?(room)
        if room.can_afford?(guest)
          return room.add_guest(guest)
        end
      end
    end
  

end
