ActiveAdmin.register Photo do
   permit_params do
     [:url, :holder_id, :holder_type]
   end

   form do |f|
     inputs 'Recipes' do
       input :url
       input :holder_id, as: :string
       input :holder_type, as: :radio, :collection => ['Creation', 'Recipe', 'Step']
       actions
     end
   end
end
