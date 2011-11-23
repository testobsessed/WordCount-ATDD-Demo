require 'spec_helper'
require 'word_counter'

describe WordCounter do
    it "counts a single word" do
        card = "a"
        counts = WordCounter.count_words_on card
        counts.should == {"A" => 1}
    end

    it "counts words in a sentence" do
        card = "Go for a walk."
        counts = WordCounter.count_words_on card
        counts.should == {
            "GO" => 1,
            "FOR" => 1,
            "A" => 1,
            "WALK" => 1,
            }
    end
    
    it "handles nil input" do
        card = nil
        counts = WordCounter.count_words_on card
        counts.should == {}
    end
    
    it "handles blank input" do
        card = ""
        counts = WordCounter.count_words_on card
        counts.should == {}
    end
    
    it "detects !" do
        card = "dog!"
        counts = WordCounter.count_words_on card
        counts.should == {"DOG" => 1}
    end
    
    it "counts words with apostrophes" do
        card = "she'll"
        counts = WordCounter.count_words_on card
        counts.should == {"SHE'LL" => 1}
    end
    
    it "detects ?" do
        card = "dog?"
        counts = WordCounter.count_words_on card
        counts.should == {"DOG" => 1}
    end
    
        
end
