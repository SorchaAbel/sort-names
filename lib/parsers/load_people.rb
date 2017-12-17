module Parsers
  # separate the parsing of the file from the person object
  class LoadPeople
    attr_reader :filename, :people

    def self.parse!(filename)
      @people = []

      File.open(filename) do |file|
        file.each do |line|
          names = line.chomp.split(',')
          @people << Person.new(names[0], names[1].lstrip)
        end
      end
      sort(@people)
    end

    def self.sort(people)
      Helpers::AppHelpers.sort_asc(people)
    end
  end
end
