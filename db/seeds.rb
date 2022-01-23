# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Question.create(q_text: "You're really busy at work and a colleague is telling you their life story and personal woes. You:", image:"url")
Option.create(o_text: "Don't dare to interrupt them", question_id: 1, score: -1)
Option.create(o_text: "Think it's more important to give them some of your time; work can wait", question_id: 1, score: 1)
Option.create(o_text: "Listen, but with only with half an ear", question_id: 1, score: -1)
Option.create(o_text: "Interrupt and explain that you are really busy at the moment", question_id: 1, score: 1)

Question.create(q_text: "You've been sitting in the doctor's waiting room for more than 25 minutes. You:", image:"url")
Option.create(o_text: "Look at your watch every two minutes", question_id:2 , score:-1)
Option.create(o_text: "Bubble with inner anger, but keep quiet", question_id:2 , score:-1)
Option.create(o_text: "Explain to other equally impatient people in the room that the doctor is always running late", question_id:2 , score:1)
Option.create(o_text: "Complain in a loud voice, while tapping your foot impatiently", question_id:2 , score:1)

Question.create(q_text: "You're having an animated discussion with a colleague regarding a project that you're in charge of. You:", image:"url")
Option.create(o_text: "Don't dare contradict them", question_id:3 , score:-1)
Option.create(o_text: "Think that they are obviously right", question_id:3 , score:-1)
Option.create(o_text: "Defend your own point of view, tooth and nail", question_id:3 , score:1)
Option.create(o_text: "Continuously interrupt your colleague", question_id:3 , score:1)

Question.create(q_text: "You are taking part in a guided tour of a museum. You:", image:"url")
Option.create(o_text: "Are a bit too far towards the back so don't really hear what the guide is saying", question_id:4 , score:-1)
Option.create(o_text: "Follow the group without question", question_id:4 , score:-1)
Option.create(o_text: "Make sure that everyone is able to hear properly", question_id:4 , score:1)
Option.create(o_text: "Are right up the front, adding your own comments in a loud voice", question_id:4 , score:1)

Question.create(q_text: "During dinner parties at your home, you have a hard time with people who:", image:"url")
Option.create(o_text: "Ask you to tell a story in front of everyone else", question_id:5 , score:-1)
Option.create(o_text: "Talk privately between themselves", question_id:5 , score:-1)
Option.create(o_text: "Hang around you all evening", question_id:5 , score:1)
Option.create(o_text: "Always drag the conversation back to themselves", question_id:5 , score:1)

Question.create(q_text: "You crack a joke at work, but nobody seems to have noticed. You:", image:"url")
Option.create(o_text: "Think it is for the best — it was a lame joke anyway", question_id:6 , score:-1)
Option.create(o_text: "Wait to share it with your friends after work", question_id:6 , score:-1)
Option.create(o_text: "Try again a bit later with one of your colleagues", question_id:6 , score:1)
Option.create(o_text: "Keep telling it until they pay attention", question_id:6 , score:1)

Question.create(q_text: "This morning, your agenda seems to be free. You:", image:"url")
Option.create(o_text: "Know that somebody will find a reason to come and bother you", question_id:7 , score:-1)
Option.create(o_text: "Heave a sigh of relief and look forward to a day without stress", question_id:7 , score:-1)
Option.create(o_text: "Question your colleagues about a project that's been worrying you", question_id:7 , score:1)
Option.create(o_text: "Pick up the phone and start filling up your agenda with meetings", question_id:7 , score:1)

Question.create(q_text: "During dinner, the discussion moves to a subject about which you know nothing at all. You:", image:"url")
Option.create(o_text: "Don't dare show that you don't know anything about the subject", question_id:8 , score:-1)
Option.create(o_text: "Barely follow the discussion", question_id:8 , score:-1)
Option.create(o_text: "Ask lots of questions to learn more about it", question_id:8 , score:1)
Option.create(o_text: "Change the subject of discussion", question_id:8 , score:1)

Question.create(q_text: "You're out with a group of friends and there's a person who's quite shy and doesn't talk much. You:", image:"url")
Option.create(o_text: "Notice that they are alone, but do not go over to talk with them", question_id:9 , score:-1)
Option.create(o_text: "Go and have a chat with them", question_id:9 , score:-1)
Option.create(o_text: "Shoot some friendly smiles in their direction", question_id:9 , score:1)
Option.create(o_text: "Hardly notice them at all", question_id:9 , score:1)

Question.create(q_text: "At work, somebody asks for your help for the hundredth time. You:", image:"url")
Option.create(o_text: "Give them a hand, as usual", question_id:10 , score:-1)
Option.create(o_text: "Accept — you're known for being helpful", question_id:10 , score:-1)
Option.create(o_text: "Ask them, please, to find somebody else for a change", question_id:10 , score:1)
Option.create(o_text: "Loudly make it known that you're annoyed", question_id:10 , score:1)

Question.create(q_text: "You've been see a movie with your family and the reviews are mixed. You:", image:"url")
Option.create(o_text: "Don't share your point of view with anyone", question_id:11 , score:-1)
Option.create(o_text: "Didn't like the film, but keep your views to yourself when asked", question_id:11 , score:-1)
Option.create(o_text: "State your point of view with enthusiasm", question_id:11 , score:1)
Option.create(o_text: "Try to bring the others round to your point of view", question_id:11 , score:1)

Question.create(q_text: "A friend arrives late for your meeting. You:", image:"url")
Option.create(o_text: "Say, ‘It's not a problem,' even if that's not what you really think", question_id:12 , score:-1)
Option.create(o_text: "Give them a filthy look and sulk for the rest of the evening", question_id:12 , score:-1)
Option.create(o_text: "Tell them, ‘You're too much! Have you seen the time?'", question_id:12 , score:1)
Option.create(o_text: "Make a scene in front of everyone", question_id:12 , score:1)

Question.create(q_text: "You can't find your car keys. You:", image:"url")
Option.create(o_text: "Don't want anyone to find out, so you take the bus instead", question_id:13 , score:-1)
Option.create(o_text: "Panic and search madly without asking anyone for help", question_id:13 , score:-1)
Option.create(o_text: "Grumble without telling your family why you're in a bad mood", question_id:13 , score:1)
Option.create(o_text: "Accuse those around you for misplacing them", question_id:13 , score:1)

Question.create(q_text: "It's time for your annual appraisal with your boss. You:", image:"url")
Option.create(o_text: "Go with great hesitation as these sessions are torture for you", question_id:14 , score:-1)
Option.create(o_text: "Look forward to hearing what your boss thinks about you and expects from you", question_id:14 , score:-1)
Option.create(o_text: "Rehearse ad nauseam the arguments and ideas that you've prepared for the meeting", question_id:14 , score:1)
Option.create(o_text: "Go along unprepared as you are confident and like improvising", question_id:14 , score:1)