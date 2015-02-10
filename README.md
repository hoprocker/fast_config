#FastConfig

##Installation

* Add to Gemfile

        gem "fast_config"

* Install the gem

        bundle install

##How To Use

* Extend your class with the module, and use settings however you like.

        require 'fast_config'
        
        class MyClassName
          extend FastConfig

          def self.setting_plus_1(setting_name)
            return settings[setting_name] + 1 # use settings however
          end

          def my_email
            "#{username}@#{MyClassName.settings[:email_domain]}"
          end

        end
        

* Create config file in config/my\_class\_name.yml

        my_class_name:
          alpha: 12
          beta: "Hello World"
          gamma: "http://127.0.0.1:11211"
          email_domain: "gmail.com"

