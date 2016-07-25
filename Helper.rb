#MADE BY HAMZA HASBI

require 'colorize'
require 'benchmark'


Task=Benchmark.realtime do
print "Output file path :"
out_path=gets.chomp.to_s
out_tab=Array.new();

begin

File.foreach(out_path) do |line|

out_tab<<line.chomp
end

rescue Exception =>e
  puts e.message
  puts "Idlness limit Excedeed!"

end

print "judge's output file path :"
judge_path=gets.chomp.to_s
judge_tab=Array.new();

begin

File.foreach(judge_path) do |line|

judge_tab<<line.chomp
end

rescue Exception =>e
  puts e.message
  puts "Idlness limit Excedeed!".red

end

good=true;
if judge_tab.length==out_tab.length then
	for i in 0...judge_tab.length
		if judge_tab[i]!=out_tab[i]  then
			good=false
			break
		end
	end
else good=false
end


if good==true then puts "YES!".green
else puts "WRONG ANSWER!".red
end
end
puts "Process finished in #{Task} ms".yellow