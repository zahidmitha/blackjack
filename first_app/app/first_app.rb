names = ["Zahid", "Pol Pot", "Adolf", "  Ruben", "Leo", "General Pinochet"]

def my_name(array)
  array.each { |name| puts name }

end

def random_name(array)
  #name = array[rand(array.length)]
  #puts name
  #name2 = array[rand(array.length)]
  #puts name2

  puts array.shuffle[0..1]

end

def name_letters(array)

#  names = array
#  for name in names
#    if name.length > 6
#      puts name
#    else
#      puts " "
#    end
#  end

puts array.select { |name| name.length > 6 }
end






# my_name(names)

random_name(names)

#name_letters(names)
