ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :FullName, :PhoneNumber, :EmailAddress, :Notes
  #
  # or
  #
  # permit_params do
  #   permitted = [:FullName, :PhoneNumber, :EmailAddress, :Notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  ActiveAdmin.register Customer do
    permit_params :FullName, :PhoneNumber, :EmailAddress, :Notes

    remove_filter :image_attachment, :image_blob

    form do |f|
      f.semantic_errors
      f.inputs
      f.inputs do
        f.input :image, as :file
      end
      f.actions
    end
  end
