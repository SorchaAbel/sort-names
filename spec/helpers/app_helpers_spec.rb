require 'spec_helper'

describe Helpers::AppHelpers do
  describe '#sort_asc' do
    before(:each) do
      @person1 = Person.new(:sorcha, :abel)
      @person2 = Person.new(:andrew, :abel)
      @people = []
      @people << @person1 << @person2
    end
    it 'should sort an array in ascending order' do
      expect(Helpers::AppHelpers.sort_asc(@people)[0].first_name).to eq(:andrew)
    end
  end
end
