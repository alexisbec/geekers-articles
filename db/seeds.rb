# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sports = Category.create(name: 'Sports', priority: 1)
videogames = Category.create(name: 'Videogames', priority: 2)
technology = Category.create(name: 'Technology', priority: 3)
movies = Category.create(name: 'Movies', priority: 4)
tv = Category.create(name: 'TV', priority: 5)
entertainment = Category.create(name: 'Entertainment', priority: 6)

alexis = User.create(name: "Alexis")
arturo = User.create(name: "Arturo")
victor = User.create(name: "Victor")
marco = User.create(name: "Marco")


alexis.articles.create(title: "NFL releases 2021 schedule with Week 1 few months away", text: "The 2021 NFL schedules were officially released Wednesday night and there are a ton of intriguing matchups on the docket for fans to look forward to come the end of the year. It will be the first time in history the league will have an 18-week season. Officials voted to add another game to the schedule in the offseason. Each team will still have one bye week but there will be an added game for everyone, which means more football for fans to consume.", category_id: 1, image: "Sports_1")



arturo.articles.create(title: "Here’s how E3’s all-virtual event will work this year", text: "The world’s biggest gaming showcase, E3, is going all-virtual for the first time in its history, with organizers revealing today how they plan to keep enthusiasts interested without the sights and sounds of the show floor. The virtual E3 will run from June 12th to June 15th. The showcase will include an online portal with access to virtual exhibitor booths with video content and articles, live streams, and social elements like forums, customizable user profiles, leaderboards, and “lounges.” Registration is free and opens later this month.", category_id: 2, image: "Videogames_1")



victor.articles.create(title: "Tesla will no longer accept Bitcoin over climate concerns, says Musk", text: "Tesla has suspended vehicle purchases using Bitcoin due to climate change concerns, its CEO Elon Musk said in a tweet. Bitcoin fell by more than 10% after the tweet, while Tesla shares also dipped. Tesla's announcement in March that it would accept the cryptocurrency was met with an outcry from some environmentalists and investors. The electric carmaker had in February revealed it had bought $1.5bn (£1bn) of the world's biggest digital currency.", category_id: 3, image: "Technology_1")

marco.articles.create(title: "NHS tracing app 'prevented thousands of deaths'", text: "The NHS contact-tracing app had a significant impact on lowering the spread of the coronavirus in the UK, a peer-reviewed paper has found. Researchers estimate the app prevented hundreds of thousands of cases of the disease, and thousands of deaths. 'On average, each confirmed case who consented to notification of their contacts through the app prevented one new case,' the paper claims. The research has been accepted for publication by the journal Nature.", category_id: 3, image: "Technology_2")

alexis.articles.create(title: "Tesla will no longer accept Bitcoin over climate concerns, says Musk", text: "Tesla has suspended vehicle purchases using Bitcoin due to climate change concerns, its CEO Elon Musk said in a tweet. Bitcoin fell by more than 10% after the tweet, while Tesla shares also dipped. Tesla's announcement in March that it would accept the cryptocurrency was met with an outcry from some environmentalists and investors. The electric carmaker had in February revealed it had bought $1.5bn (£1bn) of the world's biggest digital currency.", category_id: 3, image: "Technology_3")

arturo.articles.create(title: "NHS tracing app 'prevented thousands of deaths'", text: "The NHS contact-tracing app had a significant impact on lowering the spread of the coronavirus in the UK, a peer-reviewed paper has found. Researchers estimate the app prevented hundreds of thousands of cases of the disease, and thousands of deaths. 'On average, each confirmed case who consented to notification of their contacts through the app prevented one new case,' the paper claims. The research has been accepted for publication by the journal Nature.", category_id: 3, image: "Technology_4")



marco.articles.create(title: "How The Forever Purge’s Director Has Worked To Make ‘The Most Authentic’ Of The Purge Movies", text: "The Purge franchise is recognized first and foremost as part of the horror genre, but what’s impossible not to pick up on in the story is the social commentary regarding class warfare. As the films have continued to come out, each one has added new layers to the world, and in doing so have provided new perspectives and angles for the subtext. This is definitely not going to be a tradition from which the upcoming The Forever Purge deviates, with the film unfolding a story at the United States’ southern border, but the director is also promising that the latest chapter of the series is going to be the most authentic and visceral that we’ve seen.", category_id: 4, image: "Movies_1")
