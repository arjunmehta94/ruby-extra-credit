require 'combine_anagrams'

describe 'combine anagrams' do
  describe 'sanity checks' do
    it 'should work on the empty array' do
      expect(combine_anagrams([])).to eq([])
    end
    it 'should return an array of arrays for nonempty string' do
      combine_anagrams(["test"]).each { |element| expect(element).to be_a_kind_of(Array) }
    end
  end
  it 'for "scream cars for four scar creams"' do
    @anagrams =  combine_anagrams(['scream', 'cars', 'for', 'four', 'scar', 'creams']);
    @anagrams.each { |group| group.sort! }
    [%w(cars scar), %w(four), %w(for), %w(creams scream)].each do |group|
        expect(@anagrams).to include(group)
    end
  end
end