module Finances
  class Report < ActiveRecord::Base
    validates :name, :presence => true, :uniqueness => true
  end
end
