module Mail
  require 'Date'

  def write(text)
    @write = text
  end

  def send
    puts "Postcard of " + DateTime.now.strftime("%a %b %d %H:%M:%S %z")
  end

  def to_s
    "Dear #{@recipient},

    #{@write}

    Sincerely,
    #{@sender}"
  end
end

class Postcard
  include Mail
  
  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
  end
end
 
card = Postcard.new("Me", "Friend")
card.write("Did you forget my birthsday?")
card.send
puts "-" * 60
# sleep(2)
puts card

# p Date.today.strftime("%a")

# Tue Mar 22 11:59:16 +0900 2011: Sending a Postcard to Friend.
# ------------------------------------------------------------
# Postcard of Tue Mar 22 11:59:16 +0900 2011:

# Dear Friend,

# Did you forget my birthsday?

# Sincerely,
# Me
