require "grammar_stats"

describe GrammarStats do 
  describe "#check" do
    context "given a text that starts with a capital letter and ends with an appropriate punctuation" do
      it "returns true" do
        grammar_stats = GrammarStats.new("Hello we are Aubrey and Andrea.")
        expect(grammar_stats.check()).to eq true
      end
    end

    context "given a text that starts with a capital letter and ends without an appropriate punctuation mark" do
      it "returns false" do
        grammar_stats = GrammarStats.new("Hello we are Aubrey and Andrea")
        expect(grammar_stats.check).to eq false
      end
    end

    context "given an empty string" do
      it "fails" do
        grammar_stats = GrammarStats.new("")
        expect { grammar_stats.check }.to raise_error "not valid sentence"
      end
    end
  end
end