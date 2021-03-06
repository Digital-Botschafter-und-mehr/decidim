# frozen_string_literal: true

return if Rails.application.secrets.bulletin_board.blank?

Decidim::BulletinBoard.configure do |config|
  # Exposes a configuration option: the bulletin board server
  config.server = Rails.application.secrets.bulletin_board[:server]

  # Exposes a configuration option: the api key generated by the Bulletin Board for the Decidim instance
  config.api_key = Rails.application.secrets.bulletin_board[:api_key]

  # Exposes a configuration option: the scheme to be used for messages
  config.scheme = Rails.application.secrets.bulletin_board[:scheme]

  # Exposes a configuration option: the authority name String
  config.authority_name = Rails.application.secrets.bulletin_board[:authority_name]

  # Exposes a configuration option: number of trustees for an election
  config.number_of_trustees = Rails.application.secrets.bulletin_board[:number_of_trustees]

  # Exposes a configuration option: private key, that got generated by the Decidim instance
  config.identification_private_key = Rails.application.secrets.bulletin_board[:identification_private_key]
end
