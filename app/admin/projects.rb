ActiveAdmin.register Project do
   permit_params :name, :description, :developer  
   form do |f|
    if current_admin_user.usertype == 'manager' 
      f.inputs do
        f.input :name
        f.input :description
        f.input :developer
       
      end
    f.actions
    end
  end
end
