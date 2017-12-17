module Parsers
  # create file with sorted objects
  class OutputPeople
    attr_reader :filename

    def self.output_file(people, filename)
      @filename = sorted_file_name(filename)

      File.open(@filename, 'w') do |file|
        people.each do |person|
          file.puts "#{person.first_name}, #{person.last_name}"
        end
      end
      puts "Finished: created #{@filename} successfully"
    end

    def self.sorted_file_name(filename)
      "#{filename.split('.txt')[0]}-sorted.txt"
    end

    private_class_method :sorted_file_name
  end

end
