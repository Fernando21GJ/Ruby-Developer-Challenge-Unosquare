json.extract! real_estate, :id, :name, :type, :street, :external_number, :internal_number, :neighborhood, :string, :city, :country, :rooms, :bathrooms, :comments, :created_at, :updated_at
json.url real_estate_url(real_estate, format: :json)
