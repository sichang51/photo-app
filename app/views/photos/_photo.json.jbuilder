# json.extract! photo, :id, :created_at, :updated_at
# json.url photo_url(photo, format: :json)

json.id photo.id
json.name photo.name
json.width photo.width
json.height photo.height
json.created_at photo.created_at
json.updated_at photo.updated_at
