class Shop < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Near' },
    { id: 3, name: 'Far' },
    { id: 4, name: 'Not Exist' },
    { id: 5, name: 'N/A'}
]

include ActiveHash::Associations
  has_many :reviews

end
