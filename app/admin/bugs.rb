ActiveAdmin.register Bug do
  permit_params :title, :details, :deadline, :status, :developer

  form do |f|
    if current_admin_user.usertype == 'manager' || current_admin_user.usertype == 'qa'
      f.inputs do
        f.input :title
        f.input :details
        f.input :deadline 
        f.input :status
        if current_admin_user.usertype == 'manager'
          f.input :developer
        end
      end
    f.actions
    end
  end
end
