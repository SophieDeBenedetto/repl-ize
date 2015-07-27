require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ReplIzer
  class Application < Rails::Application
    config.opal.method_missing      = true
    config.opal.optimized_operators = true
    config.opal.arity_check         = false
    config.opal.const_missing       = true
    config.opal.dynamic_require_severity = :ignore

    # Enable/disable /opal_specs route
    config.opal.enable_specs        = true

    config.opal.spec_location = 'spec-opal'
    config.active_record.raise_in_transactional_callbacks = true
  end
end
