class StreetVendor < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Exist' },
    { id: 3, name: 'Not Exist' },
    { id: 4, name: 'N/A'}
]

include ActiveHash::Associations
  has_many :reviews

end
