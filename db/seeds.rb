require_relative '../app/models/word'

File.foreach("db/data/words.txt") do |line|
  c = Canon.find_or_create_by_canon(canon: Word.canonize(line.chomp))
  Word.create(word: line.chomp, canon_id: c.id)
end 