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
