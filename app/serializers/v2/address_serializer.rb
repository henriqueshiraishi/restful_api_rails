class V2::AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :city

  belongs_to :contact do
    link(:related) { v2_contact_url(object.contact_id) }
  end
end
