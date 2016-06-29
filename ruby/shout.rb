# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end
# end
#
# p Shout.yell_angrily("noooo")
# p Shout.yelling_happily("Yipeee")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Mother
  include Shout
end

class Cop
  include Shout
end

mom = Mother.new
p mom.yell_angrily("Clean up after yourself")
p mom.yelling_happily("I'm so proud of you")

cop = Cop.new
p cop.yell_angrily("Stop right there")
p cop.yelling_happily("Donuts")