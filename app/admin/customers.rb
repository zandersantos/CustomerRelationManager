ActiveAdmin.register Customer do
  permit_params :FullName, :PhoneNumber, :EmailAddress, :Notes, :image

  remove_filter :image_attachment, :image_blob

  form do |f|
    f.inputs do
      f.input :FullName
      f.input :PhoneNumber
      f.input :EmailAddress
      f.input :Notes
    end
    f.semantic_errors
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end