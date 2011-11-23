class WordCounter

    def self.count_words_on card
        counts = {}
        return counts if card == nil
        card.upcase.scan(/[a-zA-Z]+/).group_by {|x| x}.each{|word, count| counts[word] = count.count}
        counts
    end
end
