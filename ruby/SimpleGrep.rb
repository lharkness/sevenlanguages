# Default values
file_name = "data.txt"
target = "the"

#
# If we supply only one argument then it's the target
# If we supply two arguments then they are the filename and the target
if (ARGV.length == 1) then target = ARGV[0] end
if (ARGV.length == 2) then 
    file_name = ARGV[0]
    target = ARGV[1]
end

#
# Scan through the file and output all lines that contain the target string
# prepended with the line number 
#
File.open(file_name, "r") do |f|
    f.each_line.with_index do |line, index|
        if (line.include? target) then puts "#{index}: #{line}" end
    end
  end