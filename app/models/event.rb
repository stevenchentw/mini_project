class Event < ActiveRecord::Base
  has_many :event_groupships
  has_many :groups, :through => :event_groupships
end
