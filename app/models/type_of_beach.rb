class TypeOfBeach < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Sandy Beach' },
    { id: 3, name: 'Seashell Beach' },
    { id: 4, name: 'Glass Beach' },
    { id: 5, name: 'Rocky Beach' },
    { id: 6, name: 'Cave Beach' },
    { id: 7, name: 'Urban Beach'},
    { id: 8, name: 'N/A'}
]

include ActiveHash::Associations
  has_many :reviews

end