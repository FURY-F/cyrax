require 'has_active_logger'
class Cyrax::Base
  include HasActiveLogger::Mixin
  include Cyrax::Extensions::HasResponse

  attr_accessor :params, :accessor, :options

  # Creates a new Cyrax resource
  #
  # @param options [Hash] Options to pass in. You need `:as` and `:params`
  #   :as defines the accessor
  #   :params are parameters passed by the controller usually
  #   :serializer overrides resource serializer
  #   :decorator overrides resource serializer
  #
  # @example Instantiating a new resource
  #     Products::UserResource.new(as: current_user, params: params)
  def initialize(options = {})
    @accessor = options[:as]
    @params = options[:params]
    @options = options
  end
end
