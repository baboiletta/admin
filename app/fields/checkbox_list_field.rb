require "administrate/field/base"

class CheckboxListField < Administrate::Field::Base
  # def self.permitted_attribute(attr, _options = nil)
  #   # Yes, this has to be a hash rocket `=>`,
  #   # not a colon `:`. Otherwise it will be the key
  #   # `attr` (literally) as opposed to a key whose name
  #   # is the value of the argument `attr`.
  #   { attr => [] }
  # end

  # def choices
  #   options[:choices]
  # end
  def to_s
    data
  end

  def choices
    Category.all
  end
  
end
