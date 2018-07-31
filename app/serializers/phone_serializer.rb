class PhoneSerializer < ActiveModel::Serializer
  attributes :id, :number

  belongs_to :contact do
    link(:related) { contact_url(object.contact_id) }
  end
end
