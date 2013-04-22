module Levels

  def prompt()
    print "> "
  end
  
  def screen_pause(level)
    prompt()
	print "Press ENTER or RETURN to continue"
	action = gets.chomp()
	if action
	  return level
	end
  end
  
def holding_room()
    puts <<TEXT
	You awake to find yourself in a dark, damp room, with a single dimly-lit bulb 
	floating above your head. You still feel groggy, and your vision is blurry, as 
	the blood from numerous wounds trickles onto the floor. You try to move, but 
	realize that your arms are shackled to the wall.
	
	As you try to adjust to your environment, you notice a door directly in front of you. 
	As you turn your head around, pain shoots throughout your body, but you notice that 
	the brackets that hold the chains are rather weak. If you tried, maybe you could 
	break free from the chains that bind you. On the other hand, you have sustained 
	major injuries, and besides, if you make too much noise, your captors might hear.
	
	Do you try to break the chains, or just wait for a better opportunity?
	
TEXT
	
  prompt()
  action = gets.chomp()
  puts()
	
  if action.include? "break"
    puts <<TEXT
	You pull the chains with all your might and try to detach the brackets from 
	the wall. Alas, the brackets do not break, but you sense that if you keep trying, 
	they might eventually break. You pull several more times, and each time, searing pain 
	shoots through your body. You are losing more blood and feeling dizzier now, but 
	you do not want to give up.
		
	Just then, you hear muffled voices echoing through the hallway outside the door.
	You pause momentarily, and then, when the voices are gone, you summon your last 
	bit of strength, kick your legs up, and propel yourself into the air. The brackets 
	finally break off the wall, the chains shatter, and you land on the cold, hard floor 
	with a thud, back-first. The pain of your injured body hitting the ground is intense, 
	but you are free of the chains, at least.
		
	However, you are not out of the woods yet - the voices return, and it seems as 
	if they are approaching your room. Since you are physically weakened after being
	tortured, it would seem like a bad idea to attempt to take them on. On the other 
	hand, there is a lead pipe nearby, and if you waited by the door, you could 
	surprise them as they entered.
		
	Do you try to attack your captors straight away, or do you hide in the shadows?
	
TEXT
	prompt()
	action = gets.chomp()
	puts()
		
  if action.include? "attack"
	puts <<TEXT
	You pick up the lead pipe and stand next to the door, waiting for your captors 
	to enter before unleashing the fury upon them. You hear the lock turning, and the 
	door opens. As the first man enters, you swing the pipe as hard as you can 
	at his face, knocking him out instantly.

	However, the swing leaves you completely exposed, and gives the second person 
	enough time to pull out his Glock 19, which he uses to fill you full of lead. 
	You crumple to the ground, and as your vision fades, you wonder if you should 
	have tried a different approach.
	
TEXT
	return :death
			
  elsif action.include? "hide"
	puts <<TEXT 
	You decide it might be better to hide, and as luck turns out, you see a huge 
	cardboard box on the other side of the room. You jump into the box, and poke 
	a few holes so that you can see outside the box. The lock turns, the door opens,
	and two men enter the room. They immediately notice you are missing, and 
	head over to the wall and inspect the shattered chains and brackets.
		
	"Where the hell is he?" asks one of the men, as they both have their backs 
	turned to you. You quietly step out of the box and, using your covert operative 
	training, you sneak up on the men. Fortunately, they are talking to each other,
	so they do not hear you approaching them.
		
	With one swift motion, you punch the first man in the back of the head, sending
	him hurtling toward the wall. As the other man turns around, you unleash 
	a series of vicious strikes, knocking him down to the ground. You notice that the
	first man is out cold, with your well-placed hit having knocked him out. But now
	the second man attempts to pull out his gun, so you disarm him with a quick strike, 
	and then grab him with a chokehold. Within moments, he too is asleep.
		
	You inspect both bodies but fail to find anything other than the gun the man was 
	carrying. At this stage, it is probably better to remain as low-key as possible, 
	and to heal your wounds and get out of here, so you decide to head out into the 
	hallway. But before you do, you find some rope nearby and tie both men up so they
	do not follow you or alert the others.
	
TEXT
	screen_pause(:hallway)
		
  else 
	puts <<TEXT 
	Your failure to act in a timely fashion proves costly, as the door swings open, 
	and the men, noticing that you have broken free of the chains, begin firing upon 
	you. Bullet after bullet strikes your already beaten body, and you fall to the 
	floor, dying in a pool of your own blood.
	
TEXT
    return :death
  end
	
  elsif action.include? "wait"
    puts <<TEXT
	You decide not to take any chances, since you are chained to the wall and feel 
	as if you do not have the physical strength to break them. Just then, the door 
	opens, and two men enter. Since it is dim, you can't get a good look at them, 
	but that doesn't matter, since your vision begins to dim further after one of them 
	cracks you in the face with a lead pipe.

	You yell out in pain as the pipe strikes your face several more times, blood gushing 
	out onto the floor. The men both laugh, and as the life slips out of you, you wonder 
	how you got here and why your life has to end this way. Unfortunately, you will 
	never know.
	
TEXT
	return :death
	 
  else 
	puts "DOES NOT COMPUTE!"
	return :holding_room
  end
  end
  
  def hallway()
	puts <<TEXT
	With the two attackers now subdued, you slowly make your way out of the room 
	and into the hallway. All you see is a long corridor, with several doors on 
	either side, and an elevator at the end of the hallway. Due to the lack of windows 
	anywhere, you surmise that you are underground.

	Just then you realize that you are in the very same building that you work at, 
	the headquarters of a large financial institution. Even though you are the head 
	of security here, you had no idea that such an underground bunker existed. Normally, 
	you would have a keycard to access the elevator and open doors, but you have been 
	stripped of all your belongings.

	You decide that your first priority is to leave this area, especially since 
	whoever sent the two men to check up on you is likely to get suspicious and send 
	more guards downstairs to investigate. On the other hand, it might be a good idea
	to at least quickly search the rooms for any items that might prove to be useful.
	
	Do you take the elevator now or search the rooms for clues?
	
TEXT
	
	prompt()
	action = gets.chomp()
	puts()
	
	if action.include? "elevator"
	puts <<TEXT
	Time is of the essence now, and you are still bleeding, so you think that the 
	best thing to do is to get out of there. You stumble toward the elevator, and 
	realize that with no keycard, you will have to enter the three-digit security code
	in order to access the elevator. You enter what you think the code is, but are then
	greeted with a message stating, "Invalid access code. Please reenter." It appears 
	that the security code has been changed, and you will now have to correctly guess
	the security code in order to access the elevator.
	
TEXT
	
	puts()
	code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]
	print "[keypad]> "
	guess = gets.chomp()
	guesses = 1
		
	while guess != code and guesses < 5
	puts "Invalid access code. Please reenter."
	guesses += 1
	print "[keypad]> "
	guess = gets.chomp()
	end
		
	if guess == code
	puts <<TEXT
	A computerized voice says, "Access code valid. Welcome #{@name}." The elevator 
	doors open and you step inside.
	
TEXT
	return :elevator
	
	else
	puts <<TEXT
	
	A computerized voice says, "Exceeded maximum number of attempts. Security system 
	activated." Suddenly, a loud alarm goes off, reverberating throughout the hallway. 
	You feel sick to your stomach, as you recognize that sound. You hear a loud 
	hissing sound, and see gas being emitted from vents on the ceiling. You run back 
	into the room where you were tied up, but it is of no use. You realize that
	every room contains vents pumping out poison gas. And with no gas mask, you 
	will be dead soon. You still have no idea why you were captured and locked up 
	in that room, and now, you will never know why.
	
TEXT
	return :death
	end
	
	elsif action.include? "search"
	puts <<TEXT
	You decide to search the rooms for any clues, or a keycard for the elevator. You 
	try the first door to your right, but find yourself in a completely empty room. You 
	immediately try the door on your left, and it opens to reveal a storage room. In it, 
	you find some gauze and other medical supplies, so you bandage your wounds.

	After you get yourself cleaned up, you search the room some more, but find nothing. 
	You still have no way to access the elevator and get out of here, so you try the
	next room on the left, which is also empty. You decide to go for broke and search 
	the last room in the hallway. As you walk up to it, you see the name "R. Ballard" 
	on the door. The door is locked, but there is no keypad and, being the 
	head of security here, you know you can break the door down without attracting any 
	attention, especially since you are underground and there is no one else down here,
	other than the two men who are incapacitated now.

	With a few firm kicks, the door bursts open and you find a desk and a chair 
	in the room. You open the first drawer to find a keycard in there, which should 
	grant you access to the elevator. You walk out of the room and toward the elevator.

	You swipe the card and hear a computerized voice that says,
	"Access granted. Welcome #{@name}." The elevator doors swing open, and you 
	walk in.
	
TEXT
	return :elevator
	
	else
	  puts "DOES NOT COMPUTE!"
	  return :hallway
	end	
  end
  
  def elevator()
    puts <<TEXT
	Although the building has many dozens of floors, you are surprised to see that 
	the elevator can only access four floors: B1, B2, B3, and B4, where you are now.

	Which floor do you go to?
	
TEXT
	
	prompt()
	action = gets.chomp()
	puts()
	
	if action == "B3"
	puts <<TEXT
	You press the button for B3 and go up one floor. When the door opens, you are 
	greeted by several security guards. Quickly, before they realize what is going on, 
	you disarm the first guard by taking the knife out of the sheath on his belt,
	then hitting him in the throat with the handle of the knife, knocking him to
	the ground. You slit the throat of the guard next to him, and then attempt to
	reach the last guard. But by this time, it is too late, and he has triggered 
	the alarm. The elevator doors close, and soon, the rest of the security team 
	will be upon you. 
	
	In frustration, you lash out at the guard, quickly subduing him with a series of 
	strikes, and then throwing him to the ground. However, it doesn't matter, since you 
	can't go anywhere. Within moments, you will be captured again and likely killed.
	
TEXT
	return :death
	
	elsif action == "B2"
	puts <<TEXT
	You press the button for B2 and go up two floors. The doors open and you see 
	another long hallway, this one with only two doors: one at the very end, and 
	one on your right. The light is on in the room at the end of the hallway.

	Since the light is on in the room at the end, you decide not to go in there, 
	but rather, try your luck with the other door.
	
TEXT
	return :small_room
	
	elsif action == "B1"
	puts <<TEXT
	You press the button for B1 and go up three floors. The doors open and ahead of 
	you, you see another hallway, with a door at the end. Since there is no other 
	option, you make your way toward the door at the end. After you take a few steps, 
	though, you hear a loud alarm go off, which was likely triggered when you walked 
	over an infrared sensor. Since you had no UV goggles, you had no way of knowing 
	there were infrared sensors there, but the alarm is the least of your worries.

	You hear a computerized voice that says, "Security system activated", and you feel 
	your skin start to burn. Soon, the searing pain is too much to handle, and you are 
	cut to pieces by the laser beams that shoot throughout the hallway.
	
TEXT
	  return :death
	
	elsif action == "B4"
	  puts "You are already on B4. Try another floor."
	  return :elevator
	  
	else
	  puts "DOES NOT COMPUTE!"
	  return :elevator
	end
  end
	
	def small_room()
	puts <<TEXT
	The door opens and you walk in, only to find a desk, chair, and filing cabinet.
	There are a few magazines and a cup on top of the desk, but nothing inside.
	As you open the filing cabinet, you find numerous files associated with a project 
	called SM-APPS-OH, which you have never heard of before. Before you can check any 
	of the files, you hear a door open, and several voices. 

	You figure you should hide quickly, but the only place you can hide is under the 
	desk. On the other hand, you do not want to be a sitting duck, and  are not sure 
	you will get lucky like you did in the holding room downstairs.

	Do you hide under the desk, or do you create a distraction and surprise them 
	as they walk by?
	
TEXT
	  
	prompt()
	action = gets.chomp()
	puts()
	  
	if action.include? "hide"
	puts <<TEXT
	You quietly close the door and quickly scramble under the desk before the 
	voices get louder. As the people walk past your room, you hear one of them mention 
	something about needing to take some files. Just then, the door opens and you hear 
	two sets of footsteps enter. Soon, the muzzle of a gun is pressed against your face.

	"Don't bother trying anything funny, #{@name}. Security is on their way," says a 
	voice. They were likely suspicious after seeing the light on in the room, which you
	forgot to turn off. Soon you will be captured, and most probably shot dead. More 
	importantly, you will never find out what project SM-APPS-OH is, and why 
	you ended up here in the first place.
	
TEXT
	return :death
		
	elsif action.include? "distract" 
	puts <<TEXT
	You decide to go for a riskier approach, and grab the cup from on top of 
	the desk. As the voices get louder, you roll the cup onto the floor, and it rolls 
	out into the hallway.

	"What the hell?" exclaims one of the men, but before he has a chance to 
	investigate, you step out of the room and strike him in the throat. His white coat
	flails in the air, and as he falls to the ground, you notice that the other man is 
	armed, so you strike quickly, disarming him and then knocking him to the ground. 
	As the first man tries to catch his breath, you pick up the gun and point it at them.

	"Don't move," you tell them.

	"#{@name}, you son of a bitch," says the man with the white coat, coughing. 
	"What you're trying to do is pointless. What makes you think you'll get out of 
	here alive?"

	"What makes you think you will?" you reply, pulling the trigger twice. Soon, 
	both men are incapacitated, but not dead; fortunately for them, the gun is a 
	tranquilizer gun. But they will be sleeping for a while, so at least they will 
	no longer be a nuisance to you. You quickly drag both bodies into the small room, 
	turn off the light, and then close the door. You then head over to the room ahead.
	
TEXT
	return :control_room
	  
	  else 
	    puts "DOES NOT COMPUTE!"
		return :small_room
	  end
	end
	
	def control_room()
	puts <<TEXT
	You enter what seems to be a control room, with a large supercomputer in 
	front of you. On the screen, you see a message that says: 
	"System locked - enter passcode". Since you used to be in charge of security here, 
	you enter the override code that you used to enter whenever you wanted to gain 
	access to a computer system. Fortunately, the code works, but you are soon greeted 
	with another message, instructing you to decipher the following:
	
TEXT
	
	decipher_code = "Hideo Kojima is your master".split("").shuffle.join
	puts decipher_code
	puts()
	  
	prompt()
	action = gets.chomp()
	puts()
	  
	if action == "Hideo Kojima is your master"
	puts <<TEXT
	The code you entered was apparently the correct one, and you are soon greeted
	with a message that says, "Access granted. Welcome #{@name}." As you navigate 
	through the menus, you see photos and profiles of the people who have worked on 
	the project. All the profiles contain a photo, except the one for R. Ballard. 
	You remember that name from the room downstairs where you got the keycard from.

	As you investigate further, you find nothing in there of any interest, but you do 
	see a card scanner next to the computer. You try swiping the card you found 
	earlier, and sure enough, a green light appears on the panel. Just then, the wall 
	behind you slides away, revealing an elevator.
	
TEXT
	return :hidden_elevator
		
	else
	puts <<TEXT
	The code you entered appears to be incorrect, and an alarm goes off. You
	hear a computerized voice that says, "Intruder alert. Security system activated."
	Soon you will be surrounded by armed guards, and considering the fact that you only
	have a tranquilizer gun with you, you are ill-equipped to deal with the small
	army that is coming after you. It is a shame you will never find out what
	SM-APPS-OH is all about, but you were close...
	
TEXT
	return :death
	end
	end
	
	def hidden_elevator()
	puts <<TEXT
	You step inside the elevator and see only one button, "P". You press the
	button, the doors close, and the elevator starts moving, briskly taking you to
	the top of the building. After a short while, you reach your destination. The 
	elevator then stops, and the doors open, revealing a luxurious office, full of 
	floor-to-ceiling glass windows, allowing magnificent views of the city. You 
	step out slowly, and are astonished to see none other than the CEO of the firm, 
	sitting behind a desk at the far end of the room.

	"Most impressive, #{@name}. I'm surprised you made it all the way here,"
	he says.

	"Mind telling me what the hell is going on?" you ask.

	"I was hoping you could tell me," he replies, smiling.

	"Enough with the games, asshole. Why'd you have me kidnapped? And what is
	project SM-APPS-OH?" you demand.

	"You still haven't figured it out yet, have you. Well, I'll fill
	in a few blanks; not like it's going to matter anyway," he says,
	pulling a pistol out of his desk and pointing it at you.
	
TEXT
	
	screen_pause(:top_floor)

	end
	
	def top_floor()
	puts <<TEXT
	"Oh, before I forget, I'd just like to thank you for deciphering the
	code downstairs. Thanks to your authorization, the plan is now in place, and will
	commence at approximately 9:00 a.m. tomorrow morning. Of course, this will lead to 
	the financial markets going haywire, causing huge losses for investors, but 
	big gains for a few specific individuals," he explains.

	"You're going to sink the financial markets? Why should I care?" you ask.

	"It's really quite simple; we have certain strategic investment targets worldwide 
	that need to be dealt with, and you have not only signed off on this project, 
	you also created it," he says.

	"How could I have done that? I had no idea this place even existed until I was
	kidnapped and thrown down here," you reply.

	"Don't be so modest, #{@name}. With your vast experience in military security, plus 
	your advanced computer skills, you are the only one in this organization who would 
	be able to conceive such a thing, let alone pull it off, without anyone else 
	knowing about it," he explains.

	"Except of course, for R. Ballard," you say.

	"Bravo," he says, clapping several times. He then gets up out of his chair. 
	"This will be the largest financial crime in the history of mankind, bigger than 
	all those that came before; bigger than all of them combined, in fact. But 
	I'm going to do you a favor and not let you spend the rest of your miserable life 
	behind bars. And since I'm the CEO, everyone will believe me when I say you were 
	a rogue security chief with delusions of grandeur, who went astray. It's a shame 
	you'll never get to meet Mr. Ballard. You two would have made quite a team," he says.

	While his gun is pointed at you, he is a company man, and not a soldier. And while 
	he has undoubtedly helped devastate the lives of people all over the world 
	through financial weapons of destruction and other devious means, and is clearly 
	displaying psychopathic tendencies, he does not have the experience in warfare 
	that you do. On the other hand, he does have a gun pointed at you, and seems to be 
	quite intent on ending your life, though you still have the tranquilizer gun 
	you picked up earlier.

	Do you try to disarm him, shoot him, or talk him out of it?
	
TEXT
	  
	  prompt()
	  action = gets.chomp()
	  puts()
	  
	  if action
	    puts "Congratulations on making it this far, #{@name}...TO BE CONTINUED!"
	    puts()
	    Process.exit(0)
	  end
	end
end
