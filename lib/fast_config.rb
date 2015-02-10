require 'yaml'

module FastConfig
  def self.extended(main_class)
    configs = YAML.load_file(File.expand_path("config/#{snake_case(main_class)}.yml"))
    configs[snake_case(main_class)].each{ |k,v| main_class.set(k.to_sym, v) }
    super
  end

  @settings = {}
  def settings
    @settings ||= {}
  end

  def set(key, val)
    settings[key] = val
  end

  def self.snake_case(camel_cased_word)
    camel_cased_word.to_s.gsub(/::/, '_').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    downcase
  end
end
