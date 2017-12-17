require 'spec_helper'

describe Person do
  it 'should have 2 attributes' do
    @person = Person.new('sorcha', 'abel')

    expect(@person.first_name).to eq('sorcha')
    expect(@person.last_name).to eq('abel')
  end
end
