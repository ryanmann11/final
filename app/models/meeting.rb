class Meeting < ActiveRecord::Base
	belongs_to :firstyear_user, class_name: "User" 
	belongs_to :case
	belongs_to :secondyear_user, class_name: "User"

	validates :firstyear_user, presence: true
	validates :secondyear_user_id, presence: true
	validates :meeting_time, presence: true
	validates :case_id, presence: true	

	months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
	days = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
	time = ["9-10 am", "10-11 am", "11-12 pm", "12-1 pm", "1-2 pm", "2-3 pm", "3-4 pm", "4-5 pm"]

end