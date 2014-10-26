print "Are you sure you want to install the Masic command? [Y/N] "
confirm_install = gets.chomp.downcase
if confirm_install == "y"
	print "Enter the path to masic.rb (leave empty for /home/Masic/src/masic.rb): "
	path = gets.chomp
	if path == ""
		path = "/home/Masic/src/masic.rb"
	end
	masic = File.new("/bin/masic","w")
	masic.write("ruby #{path}")
	puts "Done!"
else
	puts "Aborting..."
end
masic.close