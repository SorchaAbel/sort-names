module Helpers
  # to be used by any class in the app to share common behaviour
  class AppHelpers
    def self.sort_asc(people)
      people.sort_by do |person|
        [person.first_name, person.last_name]
      end
    end
  end
end
