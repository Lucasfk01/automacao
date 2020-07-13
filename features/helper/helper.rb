class Helpers
    def self.inadimplentes
      name = "inadimplentes.txt"
  
      lines = File.readlines(name)
  
      open(name, "w") do |file|
        file.puts lines[1, lines.size]
        return lines[0].gsub "\n", ""
      end
    end
  
    def self.set_mask(field, value)
      chars = value.split ""
      chars.each do |c|
        field.native.send_keys c
      end
    end
end