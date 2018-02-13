require 'link'

describe Link do

  subject(:link) { described_class.new }

  describe '::all' do
    it 'returns an array of link objects' do
      expect(described_class.all).to be_an Array
    end
  end

  describe '::add' do

    let(:new_link) { 'http://www.new-link.co.uk' }

    it 'adds a link to the database' do
      described_class.add(new_link)
      expect(described_class.all).to include new_link
    end
  end
end
