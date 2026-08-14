class Notice < ApplicationRecord
  CATEGORIES = %w[General Event Job Other]

  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 500 }
  validates :author_name, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  scope :pinned_first, -> { order(pinned: :desc, created_at: :desc) }
  scope :by_category, ->(cat) { where(category: cat) if cat.present? }
end
