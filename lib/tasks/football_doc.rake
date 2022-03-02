# frozen_string_literal: true
require 'docx'

namespace :football_doc do
  desc 'Reading EPL table doc'
  task read_and_store_doc: :environment do
    docx = Docx::Document.open("#{Rails.root}/public/football.docx")
    docx.paragraphs.drop(1).each do |p|
    
      next if p.to_s.include? "---"        
    
      row_arr = p.to_s.split(" ")
      index_between_f_and_a = row_arr.index("-")
      
      goal_difference = row_arr[index_between_f_and_a - 1].to_i - row_arr[index_between_f_and_a + 1].to_i

      PointTable.create(
        name: row_arr[0],
        win: row_arr[2].to_i,
        loss: row_arr[3].to_i,
        draw: row_arr[4].to_i,
        goals_for: row_arr[5].to_i,
        goals_against: row_arr[7].to_i,
        total_points: row_arr[8].to_i,
        goals_diff: goal_difference.abs
      )            
    end
  end
end