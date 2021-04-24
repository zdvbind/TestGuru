class Test < ApplicationRecord
  def self.titles_by_category(cat)
    joins('JOIN categories ON category_id = categories.id')
      .where(categories: { title: cat })
      .order(title: :desc)
      .pluck(:title)
  end
end
