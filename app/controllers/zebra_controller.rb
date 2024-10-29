class ZebraController < ApplicationController


def giraffe
array = ["rock","paper","scissors"]
@they = array.sample
if @they == "rock"
  @outcome = "tied!"
elsif @they == "paper"
  @outcome = "lost!"
else
  @outcome = "won!"
end
render({:template => "game_templates/play_rock"})
end

def elephant
  array = ["rock","paper","scissors"]
 @they = array.sample
  if @they == "rock"
    @outcome = "won!"
  elsif @they == "paper"
    @outcome = "tied!"
  else
    @outcome = "lost!"
  end
  render({:template => "game_templates/play_paper"})
end

def lion
  array = ["rock","paper","scissors"]
  @they = array.sample
  if @they == "rock"
    @outcome = "lost!"
  elsif @they == "paper"
    @outcome = "won!"
  else
    @outcome = "tied!"
  end
  render({:template => "game_templates/play_scissors"})
end

def rules
  render({:template => "game_templates/show_rules"})
end

end
