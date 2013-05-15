class Word < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :canon

  def self.canonize(test)
    test.to_s.downcase.split("").sort.join
  end

  def self.anagrams(input)
    canon = Canon.where("canon = ?", Word.canonize(input)).first
    if canon
      canon.id
    else
      return []
    end
    anagrams = Word.where("canon_id = ?",canon) 
    anagrams.delete_if{ |w| w.word == input}
  end
end
