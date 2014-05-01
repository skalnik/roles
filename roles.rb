#!/usr/bin/env ruby

unless system("which convert 2>&1 > /dev/null")
  puts "To make the roles gif you must first install ImageMagick."
  exit(1)
end

puts "Deleteing old gif"
system("rm roles.gif")

puts "Generating new gif..."
if system("convert -delay 100 -resize 500 ./illustrations/* roles.gif")
  puts "New gif generated!"
else
  puts "Something dun broke"
  exit(1)
end

