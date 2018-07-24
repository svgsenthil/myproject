class DefectSerializer < ActiveModel::Serializer
  attributes :id, :defect_number, :defect_desc, :created_at, :updated_at
end
