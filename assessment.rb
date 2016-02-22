class Television
  # attr_accessor :control1 :control2

  def initialize(tvcontr, channelcontr, mutecontr, volumecontr)
    @tvcontr = tvcontr
    @channelcontr = channelcontr
    @mutecontr = mutecontr
    @volumecontr = volumecontr
  end
  
    
  def self.power
    puts "Please choose to 1 to turn the TV on 2 to turn if off"
    @tvcontr = gets.to_i

    if (@tvcontr == 1)
      puts "Your television is now on"
    elsif (@tvcontr == 2)
      puts "Your telesion is now off"
    else (@tvcontr > 2) || (@tvcontr < 1)
      puts "Please select option 1 or 2"
    end
    # you must select Television.power every time to 
    # change the power setting
          
  end

  def self.channels
    puts "Please select a channel to view"
    @channelcontr = gets.to_i

    channel = (@channelcontr)
    # puts "You are watching channel #{channel}"

    if (@channelcontr > 100) || (@channelcontr < 1)
      puts "Please select a channel between 1-100"
      channel = (@channelcontr)
    elsif (@channelcontr < 100) && (@channelcontr > 1)
      puts "You are now watching channel #{channel}"
    elsif (@channelcontr == "up")
      puts "You are now watching channel (#{channel} + 1)"
    else (@channelcontr == "down")
      puts "You are now watching channel (#{channel} - 1)"
    end
  end
    # you must select Television.channels every time to 
    # change the channels setting
    # I am unable to set a channel that can the be changed from there
    # same goes with the other functions
    # I believe it may be something with the log function
    # but I did not have enough time to sort it out


  # def self.mutes
  #   puts "Please select mute or unmute"
  #   @mutecontr = gets.to_s

  #   if (@mutecontr == "mute")
  #     puts "The television is muted"
  #   elsif (mutecontr == "unmute")
  #     puts "The television is no longer muted"
  #   else (@mutecontr != "mute") || (@mutecontr != "unmute")
  #     puts "I'm sorry, but this is not a proper command"
  #   end
  # end

  

  def self.volumes 
    puts "Please select the volume at which you would like the TV to project"
    @volumecontr = gets.to_i

    volume = (@volumecontr)
  
    if (@volumecontr == 0)
      puts "You have muted your televion"
    elsif (@volumecontr > 32) || (@volumecontr < 1)
      puts "Please select a volume level between 1-32"
    elsif (@volumecontr < 32) && (@volumecontr > 1)
      puts "Your volume is now #{volume}"
    elsif (@volumecontr == "up")
      puts "Your volume is now (#{volume} + 1)"
    else (@volumecontr == "down")
      puts "Your volume is now (#{volume} - 1)"
    end
  end

end

