# frozen_string_literal: true

require 'psutir/save'

RSpec.describe Save do
  let(:save) { described_class.new }

  it 'has a name' do
    expect(save.name).to eq('')
  end
end
