
names = ["Zahid", "Pol Pot", "Adolf", "Elrond", "Ruben", "Leo"]

def my_name(array)
  array.each { |name| puts name }

end

def random_name(array)
  name = array[rand(array.length)]
  puts name
  name2 = array[rand(array.length)]
  puts name2
end






# my_name(names)
random_name(names)
