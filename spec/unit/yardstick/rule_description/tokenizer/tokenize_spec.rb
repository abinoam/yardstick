# encoding: utf-8

require 'spec_helper'

module Yardstick
  class RuleDescription
    describe Tokenizer, '#tokenize' do
      subject { instance.tokenize }

      let(:instance) { described_class.new(input) }

      context 'when plain text' do
        let(:input)  { 'plain string'            }
        let(:tokens) { [Text.new('plain string')] }

        it { should eq(tokens) }
      end

      context "when input has text wrapped in '*'" do
        let(:input)  { '*special* message' }
        let(:tokens) { [Subject.new('special'), Text.new(' message')] }

        it { should eq(tokens) }
      end

      context "when input has text wrapped in '_'" do
        let(:input)  { 'underlined _value_' }
        let(:tokens) { [Text.new('underlined '), Option.new('value')] }

        it { should eq(tokens) }
      end

      context "when input has both '*' and '_'" do
        let(:input)  { '*subject* and _value_' }
        let(:tokens) do
          [Subject.new('subject'), Text.new(' and '), Option.new('value')]
        end

        it { should eq(tokens) }
      end
    end
  end
end
