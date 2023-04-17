class GrammarStats
  def initialize(text)
    @text = text
  end

  # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    # && @text.include?(".", "!", "?")
  def check
    puts @text
    if @text[0].upcase == @text
      return true
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end

grammar_stats = GrammarStats.new("Hello we are")
grammar_stats.check