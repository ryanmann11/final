# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
User.delete_all
Case.delete_all
CaseSource.delete_all
Meeting.delete_all

# Create the users
puts "Users..."
Mann = User.create(name: 'Ryan Mann', email: 'rmann2016@kellogg.northwestern.edu', password: 'AppCreator',year: '2',firm: 'McKinsey')
Smith = User.create(name: 'John Smith', email: 'jsmith2016@kellogg.northwestern.edu', password: 'Generic',year: '1',firm: 'Nil')
Hendrix = User.create(name: 'Jimmy Hendrix', email: 'jhendrix2016@kellogg.northwestern.edu', password: 'Spangled',year: '1',firm: 'Nil')
Bugayong = User.create(name: 'Elizabeth Bugayong', email: 'ebugayong2015@kellogg.northwestern.edu', password: 'Password',year: '2',firm: 'BCG')
Jelinek = User.create(name: 'Ashley Jelinek', email: 'ajelinek2015@kellogg.northwestern.edu', password: 'Missing',year: '2',firm: 'Bain')

# Create the casesource
puts "Creating casesources..."
source1 = CaseSource.create(source: 'McK')
source2 = CaseSource.create(source: 'BCG')
source3 = CaseSource.create(source: 'Bain')
source4 = CaseSource.create(source: 'Deloitte')
source5 = CaseSource.create(source: 'KCC')

# Create the cases
puts "Creating cases..."
case1 = Case.create(source_id: source1.id, title: 'Orrington Office Supplies')
case2 = Case.create(source_id: source1.id, title: 'ComputerCo')
case3 = Case.create(source_id: source1.id, title: 'Big Oil')
case4 = Case.create(source_id: source1.id, title: 'Dark Sky')
case5 = Case.create(source_id: source1.id, title: 'Chic Cosmetology')

# Create the meeting
puts "Creating meetings..."
meeting1 = Meeting.create(meeting_time: '42032', firstyear_user_id: Smith.id, secondyear_user_id: Mann.id, case_id: case1.id )
meeting2 = Meeting.create(meeting_time: '42033', firstyear_user_id: Hendrix.id, secondyear_user_id: Bugayong.id, case_id: case2.id )
meeting3 = Meeting.create(meeting_time: '42034', firstyear_user_id: Hendrix.id, secondyear_user_id: Jelinek.id, case_id: case3.id )
meeting4 = Meeting.create(meeting_time: '42035', firstyear_user_id: Smith.id, secondyear_user_id: Mann.id, case_id: case4.id )
meeting5 = Meeting.create(meeting_time: '42036', firstyear_user_id: Hendrix.id, secondyear_user_id: Bugayong.id, case_id: case5.id )

puts "There are now #{User.count} users, #{Case.count} cases from #{CaseSource.count} sources, and #{Meeting.count} meetings in the database."
