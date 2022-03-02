# ./spec/tasks/foo_task_spec.rb
require 'rails_helper'

Rails.application.load_tasks

describe "read_and_store_points_table.rake" do

  before(:each) do
    run_task(task_name: "football_doc:read_and_store_doc")
    @docx = Docx::Document.open("#{Rails.root}/public/football.docx")
    @point_table = PointTable.last
  end

  context "store from the docx file" do
    it "does store" do
      last_record = @point_table.name
      expect(last_record).to eq("Leicester")
    end

    it "read from the docx file" do    
      last_record = @docx.paragraphs
      expect(last_record).to be_a_kind_of(Object)
    end
  end 

end

def run_task(task_name:)
  Rake::Task[task_name].invoke
end