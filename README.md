# README

## administrator
| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| corporation_name   | string | null: false unique: true |
| zipcode            | string | null: false              |
| address            | string | null: false              |
| phone_number       | string | null: false              |
| fax_number         | string |                          |
| corporation_code   | string | null: false              |
| email              | string | null: false unique: true |
| encrypted_password | string | null: false              |

### Association
- has_many :users
- has_many :estimates
- has_many :estimated_items


## users
| Column              | Type   | Options                  |
| ------------------- | ------ | ------------------------ |
| name                | string | null: false              |
| department          | string | null: false              |
| position            | string | null: false              |
| phone_number        | string | null: false              |
| email               | string | null: false unique: true |
| encrypted_password  | string | null: false              |

### Association
- belongs_to :administrator
- has_many :estimates


## estimates
| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| est_number       | string | null: false |
| issue_date       | string | null: false |
| exp_date         | string | null: false |
| destination      | string | null: false |
| title            | string | null: false |
| delivery_date    | string | null: false |
| offer_conditions | text   | null: false |
| status_circular  | string | null: false |

### Association
- belongs_to :administrator
- belongs_to :user
- has_many :estimated_items, through: :estimates_items_tags
- has_many :estimates_items_tags


## est_items
| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| item_name  | string  | null: false |
| unit_price | integer | null: false |
| memo       | text    |             |

### Association
- belongs_to :administrator
- has_many :estimates, through: :estimates_items_tags
- has_many :estimates_items_tags


## estimates_items_tags

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| estimates_id | string | null: false |
| est_items_id | string | null: false |

### Association
- belongs_to :estimates
- belongs_to :est_items