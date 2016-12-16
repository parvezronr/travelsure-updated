class Agent < ActiveRecord::Base
belongs_to :user
has_one :agency
end
