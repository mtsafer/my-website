class Contact < ApplicationRecord
	validates :name,    presence: true
	validates :email,   presence: true
	validates :subject, presence: true, length: {maximum: 50}
	validates :message, presence: true
end
