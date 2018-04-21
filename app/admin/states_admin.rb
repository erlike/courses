Trestle.resource(:states) do
  menu do
    item "Estados", "/states", group: :cadastros, priority: 2
  end

  search do |query|
    if query
      State.where("name ILIKE ?", "%#{query}%")
    else
      State.all
    end
  end
  
  table do
    column :id
    column :name, link: true
    column :country
    column :created_at, align: :center
    column :updated_at, align: :center
    actions
 end

  # Customize the form fields shown on the new/edit views.
  #
  form do |state|
    tab :metadata do
        row do
          col(sm: 6) { tag_select :name}
          col(sm: 2) { tag_select :initials  }
          col(sm: 4) { select :country_id, Country.all }
        end
    end
    unless instance.new_record?
      toolbar(:secondary) do
        link_to admin.path(:emails, id: state.id), method: :get, class: 'btn btn-info' do
          tag.i ' Emails ', class: 'fa fa-envelope'
        end
      end
    end
 
  end

  routes do
    # Routes are declared as if they are within the resources routing block
    get :emails, on: :member
  end

  controller do
    def emails
      
      # email = ::Emails::UpdatedEmail.new(instance)
      # email.body = params[:body]
      # email.send

  #    flash[:message] = "Email successfully sent"
      redirect_to admin.path(:show, id: params[:id])
    end
  end

  #routes do
    # Routes are declared as if they are within the resources routing block
  #  post :emails
  #end
 
  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:state).permit(:name, ...)
  # end
end
