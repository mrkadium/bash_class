#! /usr/bin/ruby -w
#
#
#
a = (1..5)

puts "TO ARRAY"
puts a.to_a

puts "REJECT"
puts a.reject{|i| i<4}

=begin
def func(a)
  puts a
  b = yield a
  puts b
end

puts "func()"
func(5) {|i| i**2}

file = File.new("db", "r")
#file.readline
#file.sysread(5)
#
puts "IO"
IO.foreach("db") {|i| puts i}



#File.open("data")
if File.exists?("data")
  puts "exists"
  if File.file?("data")
    puts "is file"
  else
    puts "directory"
  end
end

File.readable("db2")
File.writable("db2")
File.executable("db2")

File.zero?("db2")
File.size?("db2")
File::ftype("db2")
File::ctime("db2")
File::mtime("db2")
File::atime("db2")

Dir.chdir("/var/log")
Dir.pwd
Dir.entries("/var/log") #ls


files = {}
Dir.foreach("/var/log") do |i|
  puts i
end

Dir["/var/log/*"]
Dir.mkdir("nombre")
Dir.delete("nombre")


require "tempfile"
file = Tempfile.new("tmp")
=end

a = 0
begin
  puts 10 / a
  #raise "Exception1" #to raise an error
rescue
#rescue Exception1 => ex
  puts "Error handleded"
  a = 1
  #puts ex.message
  #puts ex.backtrace
  retry
else
  puts "There was no error"
ensure
  puts "Do this always"
end



class Circle
  def initialize(radius)
    @radius = radius
  end

  def getRadius()
    return @radius
  end

  private @radius
end
