class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name:, grade:, id: = nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE students (
        id INTEGER PRIMARY ID,
        name TEXT,
        grade INTEGER
      );
    SQL

    DB[:conn]execute(sql)
  end

end
