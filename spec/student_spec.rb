# Add the 2 requires you will need here
require 'rspec'
require './lib/student'


describe Student do
  #describe '#initialize' do # The describe block is OPTIONAL
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new('Penelope')

      expect(student).to be_an_instance_of(Student)
    end

    it 'has a name' do
    # test it has a name
    # test it has cookies
    # test it can add cookies
    student = Student.new('Penelope')

    expect(student.name).to eq('Penelope')
    end
  
    it 'has empty cookies array' do
      student = Student.new('Penelope')
      
      expect(student.cookies).to eq([])
    end
  
    it 'adds a cookie' do
      student = Student.new('Penelope')
      student.add_cookie('Chocolate Chunk')
      student.add_cookie('Snickerdoodle')
      
      expect(student.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"])
    end

  #end
end
