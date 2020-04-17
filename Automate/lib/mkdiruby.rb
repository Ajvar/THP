abort("Error invalid argument number\nUse: mkdir filename") if ARGV.size > 1
dir_name = ARGV.first
Dir.mkdir(dir_name)
Dir.chdir dir_name
File.open("Gemfile", "w") {|f| f.write("source 'https://rubygems.org'\nruby '2.5.1'\ngem 'nokogiri'\ngem 'rspec'\ngem 'launchy'\ngem 'watir'")}
system("git init")
file = File.open(".env", "w")
file.close
File.open(".gitignore", "w") {|f| f.write(".env")}
Dir.mkdir("lib")
system("rspec --init")
File.open("README.md", "w") {|f| f.write("This is a Ruby program\n")}
