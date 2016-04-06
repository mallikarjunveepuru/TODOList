class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :priority

  def completed?
    !completed_at.blank?
  end
end
