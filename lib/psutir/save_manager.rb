# frozen_string_literal: true

# Save Manager module, manages save files and save data
module SaveManager
  def self.save(save, file = 'save.yaml')
    File.open(file, 'w') { |f| f.write(save.to_yaml) }
  end

  def self.load(file = 'save.yaml')
    begin
      save = YAML.safe_load(File.read(file), [Symbol])
    rescue Errno::ENOENT
      save('error', file)
      save = YAML.safe_load(File.read(file))
    else
      save
    end
  end
end
