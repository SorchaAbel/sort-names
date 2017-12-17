require './lib/person'
require './lib/helpers/app_helpers'

project_root = File.dirname(File.absolute_path(__FILE__))
Dir.glob(project_root + '/lib/parsers/*') { |file| require file }

filename = File.exist?(ARGV[0]) ? ARGV[0] : './data/names.txt'

people = Parsers::LoadPeople.parse!(filename)

Parsers::OutputPeople.output_file(people, filename)
