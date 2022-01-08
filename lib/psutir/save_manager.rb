# frozen_string_literal: true

require_relative 'save'

# Save Manager module, manages save files and save data
module SaveManager
  def self.save(save, file = 'save.yaml')
    File.open(file, 'w') { |f| f.write(save.to_yaml) }
  end

  def self.load(file = 'save.yaml')
    save = YAML.safe_load(File.read(file), [Symbol])
  rescue Errno::ENOENT
    puts 'No save file now found.'
    nil
  else
    save
  end

  def self.create(file = 'save.yaml')
    save = Save.new
    save(save, file)
    save
  end
end
