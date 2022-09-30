require_relative 'component.rb'

class ConcreteComponent < Component
  # @return [String]
  def operation
    'ConcreteComponent'
  end
end
