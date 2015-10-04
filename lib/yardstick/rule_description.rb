module Yardstick
  module RuleDescription
    class Tokenizer
      PATTERNS = {
        subject: /(\*[@\w ]+\*)/,
        option:  /(_[\w ]+_)/
      }.freeze

      def initialize(text)
        @text = text
      end

      def tokenize
        tokens.reduce([]) do |tokens, part|
          next tokens if part.empty?

          tokens + classify(part)
        end
      end

      private

      def classify(token)
        PATTERNS.each do |name, pattern|
          return [[name, token]] if /\A#{pattern}\Z/.match(token)
        end

        [[:text, token]]
      end

      def tokens
        text.split(Regexp.union(*PATTERNS.values))
      end

      attr_reader :text
    end
  end
end