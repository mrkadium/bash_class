#! /usr/bin/ruby -w

puts "Hello world"

=begin
  local: inica con minuscula o _
  instancia: @var
  de clase: @@var
  globales: $var
=end
a = 4
b = 9
c = a + b

puts c

=begin
  Comments
  Block comment
=end

d = 24

class Person
  @var
  @@bar

  def initialize(a, b)
    
  end

  def test1

  end

  def test2
    
  end
end


array = [1,2,3]

array.each do |i|
  puts i
end


  #1 si mayor, 0 si igual, -1 si menor
puts 1 <=> 2



#IF
if 1 == 2
  puts "iguales"
elsif 1 > 2
  puts "mayor"
else
  puts "menor"
end

#IF PARA VERDADERO
puts "true" if 1 == 1

#UNLESS
unless 1 == 2
  puts "test"
else
  puts "verdadero"
end

#UNLESS PARA
puts "true" unless 1 == 2


opt = 2
#CASE
case opt
when 1,2
  puts "1 o 2"
when 3
  puts "3"
else
  puts "other"
end


limit=3
#FOR
for i in 1..5
  puts i
end
arr = ['red', 'blue', 'yellow']
for i in arr
  puts i
end
arr.each do |i|
  puts i
end
#UNTIL
i=0
until i > limit do
  puts i+= 1
end
#WHILE
i=0
while i < limit do
 puts i += 1
end
#DO-WHILE/UNTIL
i=0
begin
  puts i += 1
end while i < 10

#CONTROL DE FLUJO
#next
#redo
#break
