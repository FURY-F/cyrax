class Cyrax::BasePresenter

  def present(object, options = {})
    should_decorate = options[:decorate].nil? || options[:decorate]
    if options[:decorable] && should_decorate
      present_with_decoration(object, options)
    else
      object
    end
  end

  class << self

    def present(object, options = {})
      self.new.present(object, options)
    end

  end

  private

  def present_with_decoration(object, options)
    if options[:present] == :collection 
      options[:decorator_class].decorate_collection(object)
    else
      options[:decorator_class].decorate(object)
    end
  end
end