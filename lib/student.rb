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
    CREATE TABLE IF NOT EXISTS student (
    id PRIMARY INTEGER KEY,
    name TEXT,
    grade TEXT,
    );
    
    DB[:conn].execute
  end 
  
  
end
