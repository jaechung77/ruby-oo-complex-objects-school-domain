class School
    attr_accessor :student, :grade
    attr_reader :name
    def initialize(name)
        @name = name
        @school = Hash.new {|h,k| h[k] = [] }
    end 
    def roster   
        @school    
    end    
    #{ :grade => [student] }
    def add_student(student, grade)    
        @school[grade] << student    
    end 
    def grade(grade) 
        @school[grade]    
    end   
    def sort
        result = Hash.new {|h,k| h[k] = [] }
        @school.sort.each do |k, v|
            result[k] = v.sort
        end  
        result                 
    end      
end    

