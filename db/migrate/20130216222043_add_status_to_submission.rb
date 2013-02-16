class AddStatusToSubmission < ActiveRecord::Migration
  def change
    add_column :submissions, :status, :string, :default => "new"

  end
end
