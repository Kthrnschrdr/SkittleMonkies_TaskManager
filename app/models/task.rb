class Task < ActiveRecord::Base
  
  include PublicActivity::Common
  # tracked owner: ->(controller, model) { controller && controller.current_user }
  attr_accessible :description, :status, :task_name, :user_id, :email, :project_id, :category_id
  belongs_to :project
  belongs_to :user
  belongs_to :category  
  has_many :comments
  
  # def send_email(user, task)
 #    if self.email == ""
 #      puts "Email field was empty"
 #    else
 #      UserMailer.receive_task(@task).deliver
 #    end
 #  end

end
