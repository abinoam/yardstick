module Yardstick
  module RuleDescription
    class Tokenizer
      SUBJECT_PATTERN = /(\*[@\w ]+\*)/
      OPTION_PATTERN  = /(_[\w ]+_)/

      def initialize(text)
        @text = text
      end

      def tokenize
        text.split(pattern).reduce([]) do |tokens, part|
          tokens + case part
                   when ''              then []
                   when SUBJECT_PATTERN then [[:subject, part]]
                   when OPTION_PATTERN  then [[:option,  part]]
                   else                      [[:text,    part]]
                   end
        end
      end

      private

      def pattern
        Regexp.union(SUBJECT_PATTERN, OPTION_PATTERN)
      end

      attr_reader :text
    end
  end
end