require "cyrax/version"
require "cyrax/extensions/has_resource.rb"
require "cyrax/extensions/has_response.rb"
require "cyrax/extensions/has_callbacks.rb"
require "cyrax/extensions/has_service.rb"
require "cyrax/extensions/has_decorator.rb"
require "cyrax/base.rb"
require "cyrax/base_resource.rb"
require "cyrax/base_presenter.rb"
require "cyrax/response.rb"
require "cyrax/callbacks.rb"
require "cyrax/base_collection_presenter.rb"
require "cyrax/decorated_collection_presenter.rb"
require "cyrax/decorator.rb"

module Cyrax
  @@strong_parameters = false

  def self.strong_parameters
    @@strong_parameters
  end

  def self.strong_parameters=(value)
    @@strong_parameters = value
  end
end
