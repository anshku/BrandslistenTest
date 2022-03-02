class PointTable < ApplicationRecord

    scope :smallest_goal_diff_id, -> {order("goals_diff asc").first&.id}

end
