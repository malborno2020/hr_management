class JobHistory < ApplicationRecord
  belongs_to :employee
  belongs_to :job
end
