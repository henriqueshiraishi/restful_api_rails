class V1::AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :city

  belongs_to :contact do
    link(:related) { v1_contact_url(object.contact_id) }
  end
end
