require './levels'
include Levels

class Game


  def initialize(start)
    @quips = [
	  "You died, and thus ends the world's best hope for peace.",
	  "The terrorists win, and humanity loses.",
	  "The greatest warrior of modern times has perished...",
	  "It's a shame you won't live long enough to see the terrorists take over the world."
	  ]
	  
	@start = start
	
	def forgot_name()
	  puts()
	  puts "OK wise guy, why don't you come back when you remember your name!"
	  Process.exit(2)
	end
	
	def no_answer()
	  puts()
	  puts "You will need at least elementary school-level English to be able"
	  puts "to defeat the terrorists."
	  Process.exit(2)
	end
	
	def enter_name()
	puts "Before we begin our adventure, what is your name?"
	puts()
	prompt()
	@name = gets.chomp()
	if @name == ""
	  puts()
	  puts "Are you sure you do not have a name?"
	  puts()
	  prompt()
	  name_confirmation = gets.chomp()
	  if name_confirmation == "no" || name_confirmation == "No"
	    puts()
	    puts "Then please state your name."
		puts()
	    prompt()
	    @name = gets.chomp()
	      if @name == ""
	      forgot_name
	      end
	  elsif name_confirmation == ""
	    forgot_name
	  elsif name_confirmation == "yes" || name_confirmation == "Yes"
	  @name = "Nameless one"
	  puts()
	  puts "Alright then, let us start our adventure, nameless hero!"
	  return :holding_room
	  else
	    no_answer()
	end
	return :holding_room
	end
	return :holding_room
    end
  
  def play()
    next_room = @start
	
	while true
	  puts "\n----------"
	  puts
	  room = method(next_room)
	  next_room = room.call()
	end
  end
  
  def death()
    puts @quips[rand(@quips.length())]
	Process.exit(1)
  end
  
end
end

a_game = Game.new(:enter_name).play()

  