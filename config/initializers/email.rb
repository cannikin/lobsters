smtp_settings = YAML.load(File.open(Rails.root.join('config','secrets.yml')))[Rails.env].with_indifferent_access[:smtp]

ActionMailer::Base.smtp_settings = {
  :address              => smtp_settings[:address],
  :port                 => smtp_settings[:port],
  :user_name            => smtp_settings[:user_name],
  :password             => smtp_settings[:password],
  :authentication       => 'login',
  :enable_starttls_auto => true,
  :domain               => 'forwoodworkers.com'
}
