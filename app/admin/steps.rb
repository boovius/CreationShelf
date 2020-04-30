ActiveAdmin.register Step do
   permit_params do
     [:description, :order, :seconds, :recipe_id]
   end

   form do |f|
     f.inputs 'Steps' do
       f.input :description
       f.input :order
       f.input :seconds
       f.input :recipe_id, as: :string
       actions
     end
   end
end
