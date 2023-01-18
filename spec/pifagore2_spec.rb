# frozen_string_literal: true

require 'rspec'
require_relative './pifagore2'

describe Pifagore do
  it 'cyphers works correctly' do
    pifagore = Pifagore.new(str('abc', k: '1'))
    expect(pifagore).to be 'bcd'
  end
end
