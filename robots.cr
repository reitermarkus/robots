#!/usr/bin/env crystal

# https://codegolf.stackexchange.com/questions/123396/buzzby-berkeley-robot-hokey-pokey

n, b, d=ARGV.map(&.to_i)

def antenna(i, j)
  ["\\/\\/", "|┌┐|", ")||(", "||||", "┐/\\┌"][i][j]
end

def head(i)
	"[" + ["''","*-"][i] + "]"
end

def body(i)
    "[" + ["__","_<","<.","..",".>",">_"][i] + "]"
end

def hand(i)
	"└┘┌┐"[i]
end

def foot(i)
   "  " + [" || ","/<  ","  >\\","<\  ","  />","/  \\"," /| "][i] + "  "
end


def line(i)
  
end


def main(robots = 6, duration = 10, delay = 0)
  
    
    
    
    
    
end

puts "   " + antenna(0,0) + antenna(0,1) + "   "
puts "  " + head(0) + "  "
puts " " + hand(0) + body(0) + hand(1) + " "
puts foot(0)

def line(number, action)
  [
    "You put your ? in",
    "You take your ? out",
    "You put your ? in",
    "And you shake it all about",
    "You do the Hokey Pokey and you turn yourself around",
    "That's what it's all about!",
  ].map { |l| l.sub('?', ACTIONS[action % 5]) }[number % 6]
end

ACTIONS = [
  "right foot",
  "left foot",
  "right hand",
  "left hand",
  "whole self",
]

i = 0
while true
  6.times { |l|
    puts line(l, i)
    sleep 0.5
  }
  sleep 0.5
  i += 1
end
