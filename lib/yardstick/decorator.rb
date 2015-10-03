module Yardstick
  # A string decorator for applying unix console codes
  class Decorator
    FORMAT = "\e[%{mode};%{color}%{string}\e[0m".freeze

    COLOR_CODES = {
      red:    31,
      yellow: 33
    }.freeze

    MODE_CODES = {
      bold:      1,
      underline: 4
    }.freeze

    private_constant(:FORMAT, :COLOR_CODES, :MODE_CODES)

    # Initializes new string decorator instance
    #
    # @param color [Symbol] name of color to use for formatting
    # @param mode [Symbol] mode for formatting text
    #
    # @return [undefined]
    #
    # @api private
    def initialize(color, mode)
      @color = COLOR_CODES.fetch(color)
      @mode  = MODE_CODES.fetch(mode)
    end

    # Decorate a string
    #
    # @param string [String] unformatted string
    #
    # @return [String]
    #
    # @api private
    def decorate(string)
      FORMAT % { mode: mode, color: color, string: string }
    end

    private

    # @!attribute [r] color
    # Display color for decorated text
    #
    # @return [Fixnum] numeric code for color
    #
    # @api private
    attr_reader :color

    # @!attribute [r] mode
    # Display mode for decorated text
    #
    # @return [Fixnum] numeric code for mode
    #
    # @api private
    attr_reader :mode
  end # class Decorator
end # module Yardstick
