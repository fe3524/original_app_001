# README

## organization

- has_many :users

## users

- belongs_to :organization
- has_many :estimates

## estimates

- belongs_to :user
- belongs_to :invoice

## invoice

