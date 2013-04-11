#Day 3

class ItemList
  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def remove(item)
    @items.delete(item)
  end

  def sort!
    @items.sort! { |x,y| x <=> y  }
    self
  end

end


class StudentList < ItemList

  def initialize(cohort)
    @cohort = cohort
    super()

  end

  def view_cohort
    @cohort
  end

  def to_s
    @items.map { |student| student.view_name}

  end

  def view_more_names(student)

  end

  def view_items
    @items
  end

end


class Student

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

    def view_name()
      "#{@first_name} #{@last_name}"
    end

    def to_s()
      student_output = [@first_name, @last_name].to_s
      student_output
    end


    def <=>(other)
      self.value <=> other.value
    end

end

student_list = StudentList.new("March")

student1 = Student.new("Elrond", "Rivendell")
student_list.add(Student.new("Gimli", "Rivendell"))
student_list.add(Student.new("David", "Rivendell"))
student_list.add(Student.new("Legolas", "Rivendell"))

student2 = Student.new("Zahid", "Mitha")
student2.view_name()




# puts student_list.to_str

# puts student_list.sort!.to_str

puts "---------------------------"

puts student_list.view_cohort

student_list.add(student1)

puts "---------------------------"

puts student_list.sort!.to_s

#puts student_list.sort_it