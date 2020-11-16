class ColorOfSand < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'White' },
    { id: 3, name: 'Pink' },
    { id: 4, name: 'Red' },
    { id: 5, name: 'Orange' },
    { id: 6, name: 'Green' },
    { id: 7, name: 'Black'},
    { id: 8, name: 'Sparkling Blue'},
    { id: 9, name: 'Purple'},
    { id: 10, name: 'N/A'}
]

include ActiveHash::Associations
  has_many :reviews

end
