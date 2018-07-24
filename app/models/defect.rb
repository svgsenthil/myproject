class Defect < ApplicationRecord
	validates :defect_number, presence: true
end
