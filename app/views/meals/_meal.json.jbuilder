json.extract! meal, :id, :date, :time_zone, :menu, :multi_ticket_price, :single_ticket_price, :soldout, :created_at, :updated_at
json.url meal_url(meal, format: :json)
