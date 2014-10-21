def lex(filecontents)
	tokens = []
	tok = ""
	in_string = false
	string = ""
	comment = false
	filecontents.each { |char| 
		tok += char
		if comment == true and tok != "\n"
			tok = ""
		end

		if tok == " "
			if in_string == false
				tok = ""
			else
				tok = " "
			end
		elsif tok == "\n"
			if comment == true
				comment = false
			end
			tok = ""
		elsif tok == "puts"
			tokens.push("puts")
			tok = ""
		elsif tok == "print"
			tokens.push("print")
			tok = ""
		elsif tok == "\""
			if in_string == false
				in_string = true
				string += tok
				tok = ""
			elsif in_string == true
				in_string = false
				tokens.push("str:" + string + "\"")
				string = ""
				tok = ""
			end
		elsif tok == "--"
			comment = true
			tokens.push("comment")
			tok = ""
		elsif in_string == true
			string += tok
			tok = ""
		end
	}
	# puts "#{tokens}" # For debugging
	tokens
end