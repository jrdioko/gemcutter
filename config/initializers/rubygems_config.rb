$rubygems_config = YAML.load_file(Rails.root.join("config", "rubygems.yml"))[Rails.env].symbolize_keys

HOST          = $rubygems_config[:host]
Hostess.local = $rubygems_config[:local_storage]

Gemcutter::Application.configure do
  config.action_mailer.default_url_options = { :host => HOST }
end
