RailsAdmin.config do |config|
  config.model 'Agency' do
    list do
      field :name do
        label "Agency Name"
      end
      field :phone do
        label "Contact"
      end
      field :address do
        label "Address"
      end
      field :created_at do
        label "Created on"
      end
      field :updated_at do
        label "Updated on"
      end
    end
  end

   config.model 'Package' do
    list do
      field :name do
        label "Package Name"
      end
      field :price do
        label "Price"
      end
      field :duration do
        label "Trip Duration"
      end
      field :created_at do
        label "Created on"
      end
      field :updated_at do
        label "Updated on"
      end
    end
  end

#config.included_models = ["agency", "package", "user"]
config.excluded_models << 'role'
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
