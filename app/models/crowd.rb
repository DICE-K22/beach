class Crowd < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Little' },
    { id: 3, name: 'A Little' },
    { id: 4, name: 'Many' },
    { id: 5, name: 'So Many' },
    { id: 6, name: 'N/A'}
]

include ActiveHash::Associations
  has_many :reviews

end
