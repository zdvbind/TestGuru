class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  has_many :questions, dependent: :destroy
  has_many :test_results, dependent: :destroy
  has_many :users, through: :test_results, dependent: :destroy

  def self.titles_by_category(cat)
    joins('JOIN categories ON category_id = categories.id')
      .where(categories: { title: cat })
      .order(title: :desc)
      .pluck(:title)
  end
end
