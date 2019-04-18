require 'yaml'
require 'erb'

module FastConfig
  @@config_dir = nil
  def self.config_dir=(dir)
    @@config_dir = dir
  end

  def self.config_dir
    ENV['FAST_CONFIG_DIR'] || @@config_dir || "config"
  end

  def self.extended(main_class)
    path = File.expand_path("#{self.config_dir}/#{snake_case(main_class)}.yml")
    configs = YAML.load(ERB.new(File.read(path)).result)
    if configs.has_key?(snake_case(main_class))
      configs[snake_case(main_class)].each{ |k,v| main_class.set(k.to_sym, v) }
    elsif configs.has_key?(snake_case(ENV['ENV']))
      configs[snake_case(ENV['ENV'])].each{ |k,v| main_class.set(k.to_sym, v) }
    end
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
