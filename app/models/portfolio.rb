class Portfolio < ActiveRecord::Base
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.ember
    where(subtitle: 'Ember')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
