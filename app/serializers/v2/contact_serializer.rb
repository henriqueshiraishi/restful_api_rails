class V2::ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  link(:self) { v2_contact_url(object.id) }

  has_many :phones do
    link(:related) { v2_contact_phones_url(object.id) }
  end
  has_one :address do
    link(:related) { v2_contact_address_url(object.id) }
  end
  belongs_to :kind do
    link(:related) { v2_contact_kind_url(object.id) }
  end
end
