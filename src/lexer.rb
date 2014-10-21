def lex(filecontents)
	tokens = []
	tok = ""
	in_string = false
	string = ""
	filecontents.each { |char| 
		tok += char
		if tok == " "
			if in_string == false
				tok = ""
			else
				tok = " "
			end
		elsif tok == "\n"
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
		elsif in_string == true
			string += tok
			tok = ""
		end
	}
	# puts "#{tokens}" # For debugging
	tokens
end