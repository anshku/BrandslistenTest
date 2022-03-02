require 'rails_helper'

RSpec.describe "point_tables/edit", type: :view do
  before(:each) do
    @point_table = assign(:point_table, PointTable.create!(
      name: "MyString",
      win: 1,
      loss: 1,
      draw: 1,
      goals_for: 1,
      goals_against: 1,
      goals_diff: 1,
      total_points: 1
    ))
  end

  it "renders the edit point_table form" do
    render

    assert_select "form[action=?][method=?]", point_table_path(@point_table), "post" do

      assert_select "input[name=?]", "point_table[name]"

      assert_select "input[name=?]", "point_table[win]"

      assert_select "input[name=?]", "point_table[loss]"

      assert_select "input[name=?]", "point_table[draw]"

      assert_select "input[name=?]", "point_table[goals_for]"

      assert_select "input[name=?]", "point_table[goals_against]"

      assert_select "input[name=?]", "point_table[goals_diff]"

      assert_select "input[name=?]", "point_table[total_points]"
    end
  end
end
