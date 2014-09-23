class Task < ActiveRecord::Base
  
  include PublicActivity::Common
  # tracked owner: ->(controller, model) { controller && controller.current_user }
  attr_accessible :description, :status, :task_name, :user_id, :email, :project_id, :category_id, :new_category
  belongs_to :project
  belongs_to :user
  belongs_to :category  
  has_many :comments
  
  attr_accessor :new_category
  
  def create_category
    self.category = Category.create!(name: new_category) if new_category.present?
  end

end
