json.extract! ticket, :id, :name, :description, :user_id, :state_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
