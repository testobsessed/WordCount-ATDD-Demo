class WordCounter

    def self.count_words_on card
        re = /[[:alpha:]]+(?:[[:alpha:][:punct:]]*[[:alpha:]]+)*/
        return {} if card == nil
        # card.upcase.scan(/[a-zA-Z]+/).group_by {|x| x}.each{|word, instances| counts[word] = instances.count}
        Hash[card.upcase.scan(re).flatten.group_by {|word| word}.map {|word, instances| [word, instances.count] }]
    end
end

#  alpha+
# alpha+punct+alpha+
# alpha+(?internal*alpha+)*
# internal is alpha or punctuation