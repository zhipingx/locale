#: STRINGS.ABILITIES.ACCESS_BANK
# msgctxt "STRINGS.ABILITIES.ACCESS_BANK"
# msgid "Access Bank Account"
# msgstr "访问银行账户"

oldfile = File.new("lang00.po", "r+")
newfile = File.new("new_strings00.po", "r+")
# output = File.new("new_strings03.pot", "w")

oldarray = oldfile.readlines
newarray = newfile.readlines

oldarray.each_with_index do |line, index|
  oldarray[index] = line.chomp
end
newarray.each_with_index do |line, index|
  newarray[index] = line.chomp
end

oldarray[3..(oldarray.length-1)].each_slice(5) do |slice|
  index = newarray.index slice[0]
  puts index
  newarray[index+3] = slice[3] if index != nil
end

File.open("new_strings03.pot", "w+") do |f|
  newarray.each { |element| f.puts(element) }
end

# newfile = File.new("new_strings01.pot", "w")
