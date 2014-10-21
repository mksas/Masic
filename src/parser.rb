def parse(toks)
	i = 0
	while i < toks.length
		if toks[i] == "puts"
			if toks[i+1].index('str:') == 0
				puts "#{toks[i+1][5..-2]}"
				i += 2
			end
		elsif toks[i] == "print"
			if toks[i+1].index('str:') == 0
				print toks[i+1][5..-2]
				i += 2
			end
			
		end
	end
end