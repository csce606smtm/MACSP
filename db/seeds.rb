# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = [
    {
     :email => 'admin@gmail.com',
     :password => '123',
     :name => 'Lance',
     :user_type =>"Admin"}, 
    {
     :email => 'judge1@gmail.com',
     :password => '123',
     :bare_password=> '123',
     :name => 'Sungkuen Kim',
     :user_type =>"Judge"}, 
    {
     :email => 'judge2@gmail.com',
     :password => '123',
     :bare_password=> '123',
     :name => 'Donghwa Shin',
     :user_type =>"Judge"}, 
    {
     :email => 'auc1@gmail.com',
     :password => '123',
     :bare_password=> '123',
     :name => 'Aaron',
     :user_type =>"Auctioneer"}, 
    {
     :email => 'auc2@gmail.com',
     :password => '123',
     :bare_password=> '123',
     :name => 'Hannah',
     :user_type =>"Auctioneer"}, 
    ]

users.each do |user|
    User.create!(user)
end

contests = [
 {
  :contest_name => "Texas Auctioneers 2017"},
 ]
contests.each do |contest|
     Contest.create!(contest)
end

divisions = [
    {
     :contest_id => 1,
     :division_name => "Rookie",
     :round => 1}, 
    {
     :contest_id => 1,
     :division_name => "Ringman",
     :round => 1}, 
    {
     :contest_id => 1,
     :division_name => "Ringman",
     :round => 2}, 
    {
     :contest_id => 1,
     :division_name => "Senior",
     :round => 1}, 
    {
     :contest_id => 1,
     :division_name => "Senior",
     :round => 2}, 
    {
     :contest_id => 1,
     :division_name => "Champion",
     :round => 1}, 
    {
     :contest_id => 1,
     :division_name => "Champion",
     :round => 2}, 
    ]
divisions.each do |division|
    Division.create!(division)
end

judges = [
 {
  :user_id => 2,
  :contest_id => 1},
 {
  :user_id => 3,
  :contest_id => 1},
 ]
 
 judges.each do |judge|
  Judge.create!(judge)
 end
 
 
 auctioneers = [
  {:user_id => 4, 
  :division_id => 1,
  :judge_id => 1,
  :done => "false"},
  {:user_id => 4, 
  :division_id => 1,
  :judge_id => 2,
  :done => "false"},
  {:user_id => 5, 
  :division_id => 1,
  :judge_id => 1,
  :done => "false"},
  {:user_id => 5, 
  :division_id => 1,
  :judge_id => 2,
  :done => "false"},
  ]
 auctioneers.each do |auctioneer|
  Auctioneer.create!(auctioneer)
 end
 
qsheets = [
 {:division_id => 1},
 {:division_id => 2},
 {:division_id => 3},
 {:division_id => 4},
 {:division_id => 5},
 {:division_id => 6},
 {:division_id => 7},
 ]
 
 
 qsheets.each do |qsh|
  Qsheet.create!(qsh)
 end

questions = [
  {:qsheet_id => 1,
  :dataType => "I",
  :content => "[Opening Statement] Auctioneer Greeting, States Their Name, Contestant Number, and describes the Item for Sale."},
  {:qsheet_id => 1,
  :dataType => "I",
  :content => "[Style] Delivery, Poise, Eye Contact, and Gestures.	"},
  {:qsheet_id => 1,
  :dataType => "I",
  :content => "[Overall Bid Calling] Voice control, Voice Clarity, Volume, Speed, Rhythm, Bid Escalation.	"},
  {:qsheet_id => 1,
  :dataType => "I",
  :content => "[Professional Image] Appearance, Manner and Attitude.	"},
  {:qsheet_id => 1,
  :dataType => "I",
  :content => "[Salesmanship] Encourages the audience to bid, did bid reach a minimum $50.00	"},
  {:qsheet_id => 1,
  :dataType => "I",
  :content => "[Professionalism] Overall impression: Do you believe the Auctioneer fairly represented the merchandise, the auction profession, and would you hire this Auctioneer to sell your sale.	"},
  {:qsheet_id => 1,
  :dataType => "S",
  :content => "Comments"},
  {:qsheet_id => 2,
  :dataType => "I",
  :content => "[Introduction] Initial command/ Appearance/Poise	"},
  {:qsheet_id => 2,
  :dataType => "I",
  :content => "[Body Language] Hand Gestures; Surveys Crowd?	"},
  {:qsheet_id => 2,
  :dataType => "I",
  :content => "[Communication] Communicates With Auctioneer and Buyer"},
  {:qsheet_id => 2,
  :dataType => "I",
  :content => "[Salesmanship] Encourages the audience to bid; did bid reach a minimum $50 (no extra credit for above $50); signals auctioneer to end bidding.	"},
  {:qsheet_id => 2,
  :dataType => "I",
  :content => "[Overall] Judge desires to have Ringman work for him/her?	"},
  {:qsheet_id => 2,
  :dataType => "S",
  :content => "Comments"},
  {:qsheet_id => 3,
  :dataType => "I",
  :content => "[Introduction] Initial command/ Appearance/Poise And acknowledges items sponsors.	"},
  {:qsheet_id => 3,
  :dataType => "I",
  :content => "[Introduction] Hand Gestures; Surveys Crowd	"},
  {:qsheet_id => 3,
  :dataType => "I",
  :content => "[Communication] Communicates With Auctioneer and Buyer	"},
  {:qsheet_id => 3,
  :dataType => "I",
  :content => "[Introduction ] Encourages the audience to bid; did bid reach a minimum $50 (no extra credit for above $50); signals auctioneer to end bidding.	"},
  {:qsheet_id => 3,
  :dataType => "I",
  :content => "[Overall] Judge desires to have Ring Person work for him/her?	"},
  {:qsheet_id => 3,
  :dataType => "S",
  :content => "Comments"},
  {:qsheet_id => 4,
  :dataType => "I",
  :content => "[Opening Statement] Auctioneer Greeting, States Their Name, Contestant Number, and describes the Item for Sale.	"},
  {:qsheet_id => 4,
  :dataType => "I",
  :content => "[Style] Delivery, Poise, Eye Contact, and Gestures.	"},
  {:qsheet_id => 4,
  :dataType => "I",
  :content => "[Overall Bid Calling] Voice control, Voice Clarity, Volume, Speed, Rhythm, Bid Escalation.	"},
  {:qsheet_id => 4,
  :dataType => "I",
  :content => "[Professional Image] Appearance, Manner and Attitude.	"},
  {:qsheet_id => 4,
  :dataType => "I",
  :content => "[Salesmanship] Encourages the audience to bid, did bid reach a minimum $50.00.	"},
  {:qsheet_id => 4,
  :dataType => "I",
  :content => "[Professionalism] Overall impression: Do you believe the Auctioneer fairly represented the merchandise, the auction profession, and would you hire this Auctioneer to sell your sale.	"},
  {:qsheet_id => 4,
  :dataType => "S",
  :content => "Comments"},
  {:qsheet_id => 5,
  :dataType => "I",
  :content => "[Opening Statement] Auctioneer Greeting, States Their Name, Contestant Number, and describes the Item for Sale.	"},
  {:qsheet_id => 5,
  :dataType => "I",
  :content => "[Style] Delivery, Poise, Eye Contact, and Gestures.	"},
  {:qsheet_id => 5,
  :dataType => "I",
  :content => "[Overall Bid Calling] Voice control, Voice Clarity, Volume, Speed, Rhythm, Bid Escalation.	"},
  {:qsheet_id => 5,
  :dataType => "I",
  :content => "[Professional Image] Appearance, Manner and Attitude.	"},
  {:qsheet_id => 5,
  :dataType => "I",
  :content => "[Salesmanship] Encourages the audience to bid, did bid reach a minimum $50.00.	"},
  {:qsheet_id => 5,
  :dataType => "I",
  :content => "[Professionalism] Overall impression: Do you believe the Auctioneer fairly represented the merchandise, the auction profession, and would you hire this Auctioneer to sell your sale.	"},
  {:qsheet_id => 5,
  :dataType => "S",
  :content => "Comments"},
  {:qsheet_id => 6,
  :dataType => "I",
  :content => "[Oral Summary] Judge understands the market segment(s) in which the auctioneer is involved or is striving towards.	"},
  {:qsheet_id => 6,
  :dataType => "I",
  :content => "[Interview Question] Did contestant maintain professional posture and style during answer?	"},
  {:qsheet_id => 6,
  :dataType => "S",
  :content => "Comments"},
  {:qsheet_id => 7,
  :dataType => "I",
  :content => "[Statement] Auctioneer Greeting, States Their Name, Contestant Number, and describes the Item for Sale, and acknowledges items sponsors.	"},
  {:qsheet_id => 7,
  :dataType => "I",
  :content => "[Style] Delivery, Poise, Eye Contact, and Gestures.	"},
  {:qsheet_id => 7,
  :dataType => "I",
  :content => "[Professional Image] Appearance, Manner and Attitude.	"},
  {:qsheet_id => 7,
  :dataType => "I",
  :content => "[Salesmanship] Encourages the audience to bid, did bid reach a minimum $50.00 "},
  {:qsheet_id => 7,
  :dataType => "I",
  :content => "[Professionalism] Overall impression: Do you believe the Auctioneer fairly represented the merchandise, the auction profession, and would you hire this Auctioneer to sell your sale.	"},
  {:qsheet_id => 7,
  :dataType => "I",
  :content => "[Overall Bid Calling] Voice control, Voice Clarity, Volume, Speed, Rhythm, Bid Escalation.	"},
  {:qsheet_id => 7,
  :dataType => "S",
  :content => "Comments"},
  ]
  
  
  questions.each do |q|
   Question.create!(q)
  end
   
 scoresheets = [
  {:auctioneer_id => 1,
  :question_id => 1,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 2,
  :question_id => 1,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 3,
  :question_id => 1,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 4,
  :question_id => 1,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 1,
  :question_id => 2,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 2,
  :question_id => 2,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 3,
  :question_id => 2,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 4,
  :question_id => 2,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 1,
  :question_id => 3,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 2,
  :question_id => 3,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 3,
  :question_id => 3,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 4,
  :question_id => 3,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 1,
  :question_id => 4,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 2,
  :question_id => 4,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 3,
  :question_id => 4,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 4,
  :question_id => 4,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 1,
  :question_id => 5,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 2,
  :question_id => 5,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 3,
  :question_id => 5,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 4,
  :question_id => 5,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 1,
  :question_id => 6,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 2,
  :question_id => 6,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 3,
  :question_id => 6,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 4,
  :question_id => 6,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 1,
  :question_id => 7,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 2,
  :question_id => 7,
  :judge_id => 2,
  :score => "empty"},
  {:auctioneer_id => 3,
  :question_id => 7,
  :judge_id => 1,
  :score => "empty"},
  {:auctioneer_id => 4,
  :question_id => 7,
  :judge_id => 2,
  :score => "empty"},
  ]
  
  
 scoresheets.each do |sh|
  Scoresheet.create!(sh)
 end