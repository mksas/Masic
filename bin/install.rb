print "Are you sure you want to install the Masic command? [Y/N] "
confirm_install = gets.chomp.downcase
if confirm_install == "y"
	print "Enter the path to the Masic folder (leave empty for /home/Masic/): "
	path = gets.chomp
	if path == ""
		path = "/home/Masic/"
	end
	masic = File.new("/bin/masic","w")
	masic.write("ruby #{path}/src/masic.rb")
	puts "Done!"
else
	puts "Aborting..."
end
masic.close