class EmailGeneratorClass
  attr_reader :name, :lastname

  def initialize(name, lastname)
    @name = name
    @lastname = lastname
  end

  def generate_email
    raise NotImplementedError, 'You must implement the generate_email method'
  end
end