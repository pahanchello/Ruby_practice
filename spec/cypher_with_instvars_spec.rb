require 'rspec'
require_relative '../cypher_with_instvars.rb'

describe Pifagore do

    it 'cyphers works correctly' do
        pifagore = Pifagore.new (str 'abc', k: '1')
        expect(pifagore).to be 'bcd'
    end
end
    