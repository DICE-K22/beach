class TypeOfVisitor < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Family' },
    { id: 3, name: 'Couple' },
    { id: 4, name: 'Friend' },
    { id: 5, name: 'Solo' },
    { id: 6, name: 'N/A' },
]

include ActiveHash::Associations
  has_many :reviews

end
