puts "sam"

names = ["tom","dick","harry","maz","bob","rodger","timmo","samuel"] 
puts names

randomname = names[rand(names.length)]
  puts randomname
randname = randomname
while randomname == randname	
	randname = names[rand(names.length)]
end
puts randname

names.each do |name|
	if (name.length) == 6
		puts name
    end
end
