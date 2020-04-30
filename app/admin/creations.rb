ActiveAdmin.register Creation do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :summary, :creator_id

   form do |f|
     f.inputs 'Creations' do
       f.input :name
       f.input :summary
       f.input :creator, as: :select, collection: User.pluck(:name)
       f.actions
     end
   end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :summary, :creator_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
