class ApplicationCell < Cell::ViewModel
  include Escaped

  class << self
    def option(name, deny_blank: false)
      if deny_blank
        define_method(name) do
          raise "Option #{name} cannot be blank" if @options[name].blank?
          @options[name]
        end
      else
        define_method(name) { @options[name] }
      end
      private name
    end
  end

  private

  def part(name)
    render "_#{name}"
  end
end
