class V1::ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate#, :calculed
  link(:self) { v1_contact_url(object.id) }

  has_many :phones do
    link(:related) { v1_contact_phones_url(object.id) }
  end
  has_one :address do
    link(:related) { v1_contact_address_url(object.id) }
  end
  belongs_to :kind do
    link(:related) { v1_contact_kind_url(object.id) }
  end

  # def calculed
  #   "#{100 + 200}"
  # end

  meta do
    { author: "Henrique Augusto Shiraishi" }
  end

  def attributes(*args)
    h = super(*args)
    # h[:birthdate] = (I18n.l(object.birthdate) unless object.birthdate.blank?)
    h[:birthdate] = (object.birthdate.to_time.iso8601 unless object.birthdate.blank?)
    h
  end
end
