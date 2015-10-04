# encoding: utf-8

require 'spec_helper'

module Yardstick
  module RuleDescription
    describe Tokenizer, '#tokenize' do
      subject { instance.tokenize }

      let(:instance) { described_class.new(input) }

      context 'when plain text' do
        let(:input)  { 'plain string'            }
        let(:tokens) { [[:text, 'plain string']] }

        it { should eql(tokens) }
      end

      context "when input has text wrapped in '*'" do
        let(:input)  { '*special* message' }
        let(:tokens) { [[:subject, '*special*'], [:text, ' message']] }

        it { should eql(tokens) }
      end

      context "when input has text wrapped in '_'" do
        let(:input)  { 'underlined _value_' }
        let(:tokens) { [[:text, 'underlined '], [:option, '_value_']] }

        it { should eql(tokens) }
      end

      context "when input has both '*' and '_'" do
        let(:input)  { '*subject* and _value_' }
        let(:tokens) do
          [[:subject, '*subject*'], [:text, ' and '], [:option, '_value_']]
        end

        it { should eql(tokens) }
      end
    end
  end
end
