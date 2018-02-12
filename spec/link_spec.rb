require 'link'

describe Link do

  subject(:link) { described_class.new }

  describe 'class method #all' do
      it 'returns an array of link objects' do
        expect(described_class.all).to be_an Array
      end
    end
end
