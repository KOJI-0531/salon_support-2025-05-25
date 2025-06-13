class Contact < ApplicationRecord
    serialize :contact_method, Array, coder: JSON
    validates :name, :email, :message, presence: true
end
