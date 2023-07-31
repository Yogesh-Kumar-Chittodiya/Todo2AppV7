ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :emp_name, :email, :phone_number, :company, :address, :password
  #
  # or
  #
  # permit_params do
  #   permitted = [:emp_name, :email, :phone_number, :company, :address, :password]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # actions :index, :edit, :update, :create, :destroy

  permit_params :emp_name, :email, :phone_number, :company, :address
  
end
