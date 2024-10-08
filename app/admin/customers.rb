ActiveAdmin.register Customer do
  permit_params :id, :full_name, :phone_number, :email_address, :notes, :image

  form do |f|
    f.inputs do
      f.input :id
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :full_name
    column :phone_number
    column :email_address
    column :notes
    column :image do |customer|
      image_tag(customer.image) if customer.image.attached?
    end
    actions
  end
end
