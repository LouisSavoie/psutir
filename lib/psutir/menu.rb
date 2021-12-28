# frozen_string_literal: true

# Main menu to show player options
module Menu
  def self.show
    puts <<~MENU

      - MENU -
      New Game (n)
      Load Game (l)
      Quit (q)
    MENU
  end
end
