def parse(toks)
	i = 0
	while i < toks.length
		if toks[i] == "puts"
			if toks[i+1][0..3] == "str:"
				puts "#{toks[i+1][5..-2]}"
				i += 2
			end
		elsif toks[i] == "print"
			if toks[i+1][0..3] == "str:"
				print toks[i+1][5..-2]
				i += 2
			end
		elsif toks[i] == "comment"
			i += 1
		end
	end
end