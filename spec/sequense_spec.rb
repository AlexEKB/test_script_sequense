require 'rspec'
require_relative '../lib/sequense'

describe 'Sequense' do
  let(:seq) { Sequense.new }

  it 'should do ok for value 1' do
    seq.create_sequense
    expect(seq.value).to eq '11'
    seq.create_sequense
    expect(seq.value).to eq '21'
    seq.create_sequense
    expect(seq.value).to eq '1211'
    seq.create_sequense
    expect(seq.value).to eq '111221'
    seq.create_sequense
    expect(seq.value).to eq '312211'
  end
end
