class Car < ActiveRecord::Base
  has_and_belongs_to_many :options

  def as_json(options = {})
      super(options.merge(include: :options))
  end
end
