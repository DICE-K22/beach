 #  テーブル設計

 ##  users テーブル

| Column         | Type    | Options     |
|----------------|---------|-------------|
| username       | string  | null: false |
| nationality_id | integer | null: false |
| password       | string  | null: false |
| email          | string  | null: false |

###  Association

- has_many :reviews
- has_many :comments

##  reviews テーブル

| Column          | Type       | Options                        |
|-----------------|------------|--------------------------------|
| title           | string     | null: false                    |
| place           | string     | null: false                    |
| year_visit      | integer    | null: false                    |
| month_visit     | integer    | null: false                    | 
| pros            | text       |                                |
| cons            | text       |                                |
| type_of_visitor | integer    | null: false                    |
| type_of_beach   | integer    | null: false                    |
| color_of_sand   | integer    | null: false                    |
| cleanliness     | integer    | null: false                    |
| transparency    | integer    | null: false                    |
| quietness       | integer    | null: false                    |
| crowd           | integer    | null: false                    |
| street_vendor   | integer    | null: false                    |
| shop            | integer    | null: false                    |
| toilet          | integer    | null: false                    |
| shower          | integer    | null: false                    |
| recommended     | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

###  Association

- belongs_to :user
- has_many :comments

##  comments テーブル

| Column  | Type       | Options                        |
|---------|------------|--------------------------------|
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| review  | references | null: false, foreign_key: true |

###  Association

- belongs_to: user
- belongs_to: review