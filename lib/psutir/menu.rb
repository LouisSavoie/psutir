# frozen_string_literal: true

# Main menu to show player options
module Menu
  def self.run
    show
    process(gets.chomp)
  end

  def self.show
    puts <<~MENU

      - MENU -
      New Game (n)
      Load Game (l)
      Quit (q)
    MENU
  end

  def self.process(choice)
    case choice
    when 'n'
      SaveManager.create
    when 'l'
      SaveManager.load
    when 'q'
      'quit'
      # exit
    else
      run
    end
  end
end
