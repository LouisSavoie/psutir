# frozen_string_literal: true

require_relative 'psutir/menu'

# Main module that runs the main game loop and calls other modules
module Psutir
  def self.play
    Menu.run
  end
end
