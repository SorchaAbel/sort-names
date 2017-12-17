require 'spec_helper'

describe Parsers::OutputPeople do
  describe '#output_file' do
    before(:each) do
      @person1 = Person.new(:sorcha, :abel)
      @person2 = Person.new(:andrew, :abel)
      @people = []
      @people << @person1 << @person2
      @filename = './spec/fixtures/files/hi'
    end

    context 'file creation' do
      it 'should create a new file' do
        Parsers::OutputPeople.output_file(@people, @filename)
        expect { @filename.to be_an_existing_file }
      end

      it 'should output successful message to console' do
        log = "Finished: created ./spec/fixtures/files/hi-sorted.txt successfully\n"
        expect {
          Parsers::OutputPeople.output_file(@people, @filename)
        }.to output(log).to_stdout
      end
    end
  end
end
