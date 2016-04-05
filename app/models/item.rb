class Item < ActiveRecord::Base
  belongs_to :user
  has_one :priority

  def completed?
    !completed_at.blank?
  end
end
