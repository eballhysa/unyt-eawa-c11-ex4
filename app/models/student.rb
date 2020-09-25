class Student < ActiveRecord::Base
  def full_name
    "#{name} #{surname}"
  end

  #
  # filters is a map
  #  e.g.
  #  {:name => 'al', :surname => '', :dept => 'CS'}
  #  represents the search "students whose name include 'al' and whose department is CS"
  def self.search(filters)
    students = Student
          .where('name LIKE ?', "%#{filters[:name]}%")
          .where('surname LIKE ?', "%#{filters[:surname]}%")
    if (not filters[:dept].empty?)
      students = students.where(department_code: filters[:dept]);
    end

    students
  end
end