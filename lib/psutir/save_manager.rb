# frozen_string_literal: true

# Save Manager module, manages save files and save data
module SaveManager
  def self.save(save, file = 'save.yaml')
    File.open(file, 'w') { |f| f.write(save.to_yaml) }
  end
end
