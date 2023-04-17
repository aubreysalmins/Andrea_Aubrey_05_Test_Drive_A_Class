class GrammarStats
  def initialize(text)
    @text = text
    @passed_texts = 0
    @checked_texts = 0
  end
  
  def check
    fail "not valid sentence" if @text == ""
    loop do
      if (@text[0] == @text[0].capitalize) && ([".", "!", "?"].include? @text[-1])
        @passed_texts += 1
        @checked_texts += 1
        return true
      else
        @checked_texts += 1
        return false
      end
    end
  end
  
  # Returns as an integer the percentage of texts checked so far that passed
  # the check defined in the `check` method. The number 55 represents 55%.
  
  def percentage_good
    puts @passed_texts
    puts @checked_texts
    @passed_texts / @checked_texts * 100
  end
end

grammar_stats = GrammarStats.new("Valid string!")
grammar_stats1 = GrammarStats.new("invalid string!")
grammar_stats2 = GrammarStats.new("invalid string2?")
grammar_stats.check
grammar_stats1.check
grammar_stats2.check
grammar_stats.percentage_good
