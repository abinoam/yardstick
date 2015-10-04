module Yardstick
  class RuleDescription
    def self.parse(description)
      new(Tokenizer.new(description).tokenize)
    end

    def initialize(tokens)
      @tokens = tokens
    end

    def ==(other)
      tokens == other.tokens
    end

    protected

    attr_reader :tokens

    class Token
      extend Forwardable

      def self.coerce(value)
        new(value[1..-2])
      end

      def initialize(value)
        @value = value
      end

      def_delegator :value, :to_str
      def_delegators :to_str, :==

      private

      attr_reader :value
    end

    Subject = Class.new(Token)
    Option  = Class.new(Token)

    class Text < Token
      def self.coerce(value)
        new(value)
      end
    end

    class Tokenizer
      PATTERNS = {
        Subject => /(\*[@\w ]+\*)/,
        Option  => /(_[\w ]+_)/
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
        PATTERNS.each do |klass, pattern|
          return [klass.coerce(token)] if /\A#{pattern}\Z/.match(token)
        end

        [Text.coerce(token)]
      end

      def tokens
        text.split(Regexp.union(*PATTERNS.values))
      end

      attr_reader :text
    end
  end
end