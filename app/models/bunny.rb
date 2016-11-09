class Bunny < ApplicationRecord
	belongs_to :mother, class_name:"Bunny", optional: true
	belongs_to :father, class_name:"Bunny", optional: true

	def children
		Bunny.where(mother_id: self.id).or(Bunny.where(father_id: self.id))
	end
end
