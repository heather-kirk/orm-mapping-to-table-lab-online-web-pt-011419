class Student

  attr_accessor :name, :grade
  attr_reader :id 

  def initialize(name:, grade:, id = nil )
    @name = name 
    @grade = grade 
    @id = id 
  end 
  
  def self.create_table
    sql =  <<-SQL
    CREATE TABLE IF NOT EXISTS students(
    id PRIMARY INTEGER KEY,
    name TEXT,
    grade INTEGER,
    )
    SQL 
    
    DB[:conn].execute(sql)
  end 
  
  def self.drop_table
  sql = <<-SQL
  DROP TABLE IF NOT EXISTS students
  SQL 
  
  DB[:conn].execute(sql)
  end 
  
  def save
  sql = <<-SQL 
  INSERT INTO students (name, grade) VALUES (?,?)
  SQL 
  DB[:conn].execute(sql)
  end 
end
