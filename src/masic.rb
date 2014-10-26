require_relative 'lexer'
require_relative 'parser'

def open_file(filename)
	data = File.new(filename, "r")
	data.read.split(//)
end

def run
	data = open_file(ARGV[0])
	toks = lex(data)
	parse(toks)
end


run()
