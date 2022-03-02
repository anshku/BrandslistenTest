require 'rails_helper'

RSpec.describe "point_tables/show", type: :view do
  before(:each) do
    @point_table = assign(:point_table, PointTable.create!(
      name: "Name",
      win: 2,
      loss: 3,
      draw: 4,
      goals_for: 5,
      goals_against: 6,
      goals_diff: 7,
      total_points: 8
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
  end
end
