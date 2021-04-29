class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  has_many :questions, dependent: :destroy
  has_many :test_results, dependent: :destroy
  has_many :users, through: :test_results

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: {
    only_integer: true,
    greater_than: 0
  }

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :by_category, ->(cat) { joins(:category).where(categories: { title: cat }) }

  def self.titles_by_category(cat)
    by_category(cat).order(title: :desc).pluck(:title)
  end
end
