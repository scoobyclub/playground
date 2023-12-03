class CreateStimulusTutorials < ActiveRecord::Migration[7.1]
  def change
    create_table :stimulus_tutorials do |t|

      t.timestamps
    end
  end
end
