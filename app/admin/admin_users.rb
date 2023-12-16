ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation , :name ,:usertype

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :usertype
    column :created_at
    actions
  end

  filter :email
  filter :name
  filter :usertype
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :name
      f.input :usertype, :as => :select, collection: (['manager', 'developer', 'qa'])
      f.input :password
      f.input :password_confirmation
    end
    f.actions 
  end

end
