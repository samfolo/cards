require 'card'

RSpec.describe Card do

  it 'must have a suit' do
    expect(subject).to respond_to :suit
  end

  it 'must have a value' do
    expect(subject).to respond_to :value
  end

  it 'must have a number' do
    expect(subject).to respond_to :number
  end
end
