module Blife
  class Defect < ApplicationRecord
    has_one :severity
    has_one :priority
    
  end
end
