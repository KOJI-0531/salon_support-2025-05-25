class Contact < ApplicationRecord
    serialize :contact_method, Array, coder: JSON
end
