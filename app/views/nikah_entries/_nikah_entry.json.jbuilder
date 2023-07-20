json.extract! nikah_entry, :id, :nikah_date, :user_id, :nikah_address, :bride_name, :groom_name, :meahar_amount, :groom_parent_name, :bride_parent_name, :created_at, :updated_at
json.url nikah_entry_url(nikah_entry, format: :json)
