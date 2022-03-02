json.extract! point_table, :id, :name, :win, :loss, :draw, :goals_for, :goals_against, :goals_diff, :total_points, :created_at, :updated_at
json.url point_table_url(point_table, format: :json)
