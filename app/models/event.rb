class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances
    belongs_to :user
    
    validates :start_date, presence: true
    validate :start_date_must_be_in_future
    validates :duration, presence: true, numericality: { greater_than: 0, multiple_of: 5}
    validates :title, presence: true, length: { minimum: 5, maximum: 140 }
    validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
    validates :location, presence: true
  
    private
  
    def start_date_must_be_in_future
      if start_date.present? && start_date <= Date.today
        errors.add(:start_date, "must be in the future")
      end
    end
  end
  