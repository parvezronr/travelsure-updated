class Agent < ActiveRecord::Base
belongs_to :user
has_one :agency

  def active_for_authentication?
        # Uncomment the below debug statement to view the properties of the returned self model values.
        #logger.debug self.to_yaml

        super && self.approve?
      end

      def inactive_message
        "Account is Not Approved"
      end

end
