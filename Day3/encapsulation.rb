#specification of this project:

#Create a list so that we can have a reference of students on a particular cohort


#LIST
#STUDENTS          [ATTRIBUTE]
#COHORT            [ATTRIBUTE]
#ADD (STUDENTS)    [INTERACTION/METHOD]
#REMOVE (STUDENTS) [INTERACTION/METHOD]
#VIEW(STUDENTS)    [INTERACTION/METHOD]

class StudentList

  def initialize(cohort)
    # Instance varaible-scope outside method
    @cohort = cohort
    @students = []
  end

  def add(student)
  end

  def remove(student)
  end

  def view_cohort_name
    @cohort
  end

  def view_students
  end

end

march_list = StudentList.new("March")
puts march_list.view_cohort_name
march_list.add("Zahid")
march_list.add("Leo")

puts march_list

# Finish list class, then makeStudent class and student object

















# SETTING COHORT ATTRIBUTE OF STUDENT LIST INSTANCE
# student_list.cohort = "March"

# GETTING COHORT ATTRIBUTE OF STUDENT LIST INSTANCE
# puts student_list.cohort