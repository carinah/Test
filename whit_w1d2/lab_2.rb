file = File.new("story.txt", "r")

#this gets the file to load into memory

while (line = file.gets)
	puts line
end
file.close

