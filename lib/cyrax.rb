require "cyrax/version"
require "cyrax/extensions/has_resource.rb"
require "cyrax/extensions/has_response.rb"
require "cyrax/extensions/has_callbacks.rb"
require "cyrax/extensions/has_service.rb"
require "cyrax/extensions/has_decorator.rb"
require "cyrax/extensions/has_serializer.rb"
require "cyrax/presenters/base_collection.rb"
require "cyrax/presenters/decorated_collection.rb"
require "cyrax/serializers/scope.rb"
require "cyrax/helpers/controller.rb"
require "cyrax/base.rb"
require "cyrax/resource.rb"
require "cyrax/wrapper.rb"
require "cyrax/presenter.rb"
require "cyrax/response.rb"
require "cyrax/callbacks.rb"
require "cyrax/decorator.rb"
require "cyrax/serializer.rb"

module Cyrax
  @@strong_parameters = true

  def self.strong_parameters
    @@strong_parameters
  end

  def self.strong_parameters=(value)
    @@strong_parameters = value
  end

  def self.const_missing(const_name)
    case const_name
    when :BaseResource
      warn "`Cyrax::BaseResource` has been deprecated. Use `Cyrax::Resource` instead."
      Cyrax::Resource
    when :DecoratedCollectionPresenter
      warn "`Cyrax:DecoratedCollectionPresenter` has been deprecated. Use `Cyrax::Presenters::DecoratedCollection` instead."
      Cyrax::Presenters::DecoratedCollection
    else
      super
    end
  end
end
