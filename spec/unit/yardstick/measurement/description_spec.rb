# encoding: utf-8

require 'spec_helper'

describe Yardstick::Measurement, '#description' do
  subject { described_class.new(rule).description }

  let(:rule)     { ValidRule.new(document) }
  let(:document) { DocumentMock.new        }

  it { should eql(ValidRule.description) }
end
