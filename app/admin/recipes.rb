ActiveAdmin.register Recipe do
  show do
    h3 recipe.creation.name

    attributes_table do
      row :inspired_by
      row :source_url
      row :steps do
        ol do
          recipe.steps.each do |s|
            li  do
              span "#{s.seconds.to_f/60} minutes - "
              span s.description
            end
          end
        end
      end
    end
    active_admin_comments
  end

   permit_params :inspired_by, :source_url, :creation_id,
     photos_attributes: [:url],
     steps_attributes: [:description, :order, :seconds]

   form do |f|
     f.inputs 'Recipes' do
       f.input :inspired_by
       f.input :source_url
       f.input :creation, as: :select, collection: Creation.all
       f.inputs 'Steps' do
         f.has_many :steps, sortable: :order, sortable_start: 1 do |s|
           s.input :description
           s.input :seconds
         end
       end
       f.inputs 'Photos' do
         f.has_many :photos do |p|
           p.input :url
         end
       end
       f.actions
     end
   end
end
