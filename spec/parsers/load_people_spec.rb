require 'spec_helper'

describe Parsers::LoadPeople do
  describe '#load_people' do
    before(:each) do
      root = Pathname.new('..').expand_path(File.dirname(__FILE__))
      @filename = root.join('fixtures', 'files', 'names_spec.txt')
    end

    it 'should return an array' do
      expect(Parsers::LoadPeople.parse!(@filename)).to be_an_instance_of(Array)
    end
  end
end
