require 'rails_helper'

RSpec.describe "point_tables/index", type: :view do
  before(:each) do
    assign(:point_tables, [
      PointTable.create!(
        name: "Name",
        win: 2,
        loss: 3,
        draw: 4,
        goals_for: 5,
        goals_against: 6,
        goals_diff: 7,
        total_points: 8
      ),
      PointTable.create!(
        name: "Name",
        win: 2,
        loss: 3,
        draw: 4,
        goals_for: 5,
        goals_against: 6,
        goals_diff: 7,
        total_points: 8
      )
    ])
  end

  it "renders a list of point_tables" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
    assert_select "tr>td", text: 8.to_s, count: 2
  end
end
