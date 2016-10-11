class Client < ActiveRecord::Base

  has_many :payloads
  has_many :request_types, through: :payloads
  has_many :urls, through: :payloads

  validates :identifier, presence: true
  validates :root_url, presence: true
end
