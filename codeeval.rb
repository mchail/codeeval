#!/usr/bin/env ruby

require 'optparse'
require 'fileutils'
require 'colored'

options = {
	language: :rb,
}
OptionParser.new do |opts|
	opts.banner = "Usage: codeeval.rb [options] problem_name"

	opts.on("-l", "--language [LANGUAGE]", "Specify language (default is ruby)") do |language|
		options[:language] = language.downcase
	end
	opts.on("-s", "--skip-test-data", "Don't create a test_data file") do |s|
		options[:skip_test_data] = true
	end
end.parse!

options[:create] = FileUtils.pwd.split('/').last == 'codeeval'
options[:problem_name] = ARGV.first.downcase

if options[:create]
	puts "Creating " + "/#{options[:problem_name]}".green + " directory."
	FileUtils.mkdir_p options[:problem_name]
	dir = options[:problem_name]
else
	dir = '.'
end

def filename(problem_name, language)
	extensions = {
		ruby: :rb,
		rb: :rb,
		python: :py2,
		py: :py2,
		lua: :lua,
		java: :java,
		go: :go,
		golang: :go,
		coffee: :coffee,
		perl: :pl,
		pl: :pl,
	}
	if language.to_s == 'java'
		problem_name = 'Main'
	elsif extensions[language.to_sym] == :go
		problem_name = problem_name.split('_').map{|token| token[0].upcase + token[1..-1]}.join('')
	end
	"#{problem_name}.#{extensions[language.to_sym]}"
end

name = filename(options[:problem_name], options[:language])
puts "Creating " + name.red + " src file."
FileUtils.touch(File.join(dir, name))
unless options[:skip_test_data]
	puts "Creating empty " + "test_data".green + " file."
	FileUtils.touch(File.join(dir, 'test_data'))
end

puts "Done. Now run: " + "cd #{options[:problem_name]}".green.bold
