require 'word_counter'

describe WordCounter do
    it "counts a single word" do
        card = "a"
        counts = WordCounter.new count_words_on card
        counts.should == {"A" => 1}
    end
end
