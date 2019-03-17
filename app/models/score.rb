class Score < ApplicationRecord
    belongs_to :team
    belongs_to :guest_team, class_name: "Team"
  end