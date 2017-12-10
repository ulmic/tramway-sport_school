class AddStateToTramwaySportSchoolKindSports < ActiveRecord::Migration[5.1]
  def change
    add_column :tramway_sport_school_kind_sports, :state, :text
    add_column :tramway_sport_school_kind_sports, :view_state, :text
  end
end
