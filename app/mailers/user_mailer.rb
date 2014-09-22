class UserMailer < ActionMailer::Base
  default from: "skittlemonkeytaskmanager@gmail.com"
  
  def welcome_email(user)
      @user = user
      mail(to: @user.email, subject: 'Welcome to Skittle Monkey Task Manager')
  end
  
  def receive_task(user, task)
    @user = user
    @task = task
    mail(to: @task.email, subject: 'You have a task from Skittle Monkey')
  end 
   
end
