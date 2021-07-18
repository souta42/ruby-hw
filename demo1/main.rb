require_relative 'src/task1.rb'
require_relative 'src/task2.rb'
require_relative 'src/task3.rb'
require_relative 'src/task4.rb'
require_relative 'src/task5.rb'
require_relative 'src/task6.rb'
require_relative 'src/task7.rb'

# 1
#print chessboard(5, 15, "*")

# 2
envelope_1 = { "a" => 12, "b" => 8}
envelope_2 = { "c" => 7, "d" => 3}
#print contains(envelope_1, envelope_2)

#3
triangles = [
  {
    'verices' => 'ABC',
    'a' => 10,
    'b' => 20,
    'c' => 22.36
  },
  {
    'verices' => 'XYZ',
    'x' => 20,
    'y' => 42.55,
    'z' => 36
  },
  {
    'verices' => 'DEF',
    'd' => 19,
    'e' => 21,
    'f' => 14
  }
]

#print tr_area(triangles)

#4
#print palindrome(1234437)

#5
#print tickets(0, 0)

#6
#print square(3, 9)

#7
num = {:min => 4, :max => 20}
#print fibonacci(num)
