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



# Sports news

alexis.articles.create(title: "NFL releases 2021 schedule with Week 1 few months away", text: "The 2021 NFL schedules were officially released Wednesday night and there are a ton of intriguing matchups on the docket for fans to look forward to come the end of the year. It will be the first time in history the league will have an 18-week season. Officials voted to add another game to the schedule in the offseason. Each team will still have one bye week but there will be an added game for everyone, which means more football for fans to consume.", category_id: 1, image: "Sports_1")

arturo.articles.create(title: "Trainer D. Wayne Lukas defends Bob Baffert amid Derby controversy: 'He obviously is innocent'", text: "D. Wayne Lukas, who is looking for his record-tying seventh Preakness Stakes victory on Saturday, came to the defense of his friend Bob Baffert, whose latest Kentucky Derby win is shrouded in controversy. Lukas opened up to Fox News Channel’s Janice Dean on 'Fox & Friends' on Friday about his friendship with Baffert. The legendary trainer has come under fire after Medina Sprit tested positive for an increased level of betamethasone after winning the Kentucky Derby.", category_id: 1, image: "Sports_2")

victor.articles.create(title: "Jerry West upset with Jeanie Buss' 'offensive' list of important Lakers", text: "NBA legend Jerry West was dissatisfied with Los Angeles Lakers co-owner Jeanie Buss’ top five list of figures who had come through the organization. Buss ranked the most important figures in April: Kobe Bryant, Kareem Abdul-Jabbar, LeBron James, Magic Johnson and Phil Jackson. Buss left West, who spent his entire Hall of Famer career with the Lakers and helped reshape the organization in the front office, off her list.", category_id: 1, image: "Sports_3")

marco.articles.create(title: "Booker hits late free throws, Suns top Trail Blazers 118-117", text: "Devin Booker wasn’t at his best Thursday night. Regardless, there was no question he was getting the ball with the game on the line. Booker received the inbounds pass, was fouled and made two free throws with 2.4 seconds left to give the Phoenix Suns a 118-117 victory over the Portland Trail Blazers.", category_id: 1, image: "Sports_4")



# Videogames news

arturo.articles.create(title: "Here’s how E3’s all-virtual event will work this year", text: "The world’s biggest gaming showcase, E3, is going all-virtual for the first time in its history, with organizers revealing today how they plan to keep enthusiasts interested without the sights and sounds of the show floor. The virtual E3 will run from June 12th to June 15th. The showcase will include an online portal with access to virtual exhibitor booths with video content and articles, live streams, and social elements like forums, customizable user profiles, leaderboards, and “lounges.” Registration is free and opens later this month.", category_id: 2, image: "Videogames_1")

victor.articles.create(title: "Famicom Detective Club brings more great crime drama to the Switch", text: "There’s something about the Nintendo Switch that makes it a great fit for murder mystery stories. Just like a good novel, these are games best enjoyed while curled up in a comfy chair with a warm drink, ideally when it’s dark and rainy outside. That’s one of the reasons why games like Phoenix Wright: Ace Attorney and Murder By Numbers are best enjoyed on Nintendo’s tablet, which lets you play wherever you want. It’s also what makes the Famicom Detective Club series so interesting — a pair of long-lost titles from the ‘80s that have been given a fresh new life.", category_id: 2, image: "Videogames_2")

marco.articles.create(title: "The Verge’s graduation gift guide 2021", text: "This year, we’ve tried to put together a list of devices and other products that will make it easier for graduates to start on their new adventure: Macs, Chromebooks, and Windows PCs; earbuds and speakers; and stuff to help with cooking, gaming, and sleeping. Take a look and see if any of these are right for any graduates whom you may want to present with a congratulatory gift.", category_id: 2, image: "Videogames_3")

alexis.articles.create(title: "Microsoft rolls out Dolby Vision gaming test on Xbox Series X and S", text: "Dolby Vision gaming is arriving on the Xbox Series X and S for testers who are a part of the Xbox Insider’s “alpha ring” group. This HDR format offers an upgraded set of features like support for dynamic metadata. Microsoft says the feature means “brighter highlights, sharper contrast, and more vibrant colors” in games when you’re playing on a Dolby Vision-compatible TV, offering “better clarity in both light and dark scenes.” The consoles currently support HDR via the less advanced HDR10 standard.", category_id: 2, image: "Videogames_4")



# Technology news

victor.articles.create(title: "Tesla will no longer accept Bitcoin over climate concerns, says Musk", text: "Tesla has suspended vehicle purchases using Bitcoin due to climate change concerns, its CEO Elon Musk said in a tweet. Bitcoin fell by more than 10% after the tweet, while Tesla shares also dipped. Tesla's announcement in March that it would accept the cryptocurrency was met with an outcry from some environmentalists and investors. The electric carmaker had in February revealed it had bought $1.5bn (£1bn) of the world's biggest digital currency.", category_id: 3, image: "Technology_1")

marco.articles.create(title: "NHS tracing app 'prevented thousands of deaths'", text: "The NHS contact-tracing app had a significant impact on lowering the spread of the coronavirus in the UK, a peer-reviewed paper has found. Researchers estimate the app prevented hundreds of thousands of cases of the disease, and thousands of deaths. 'On average, each confirmed case who consented to notification of their contacts through the app prevented one new case,' the paper claims. The research has been accepted for publication by the journal Nature.", category_id: 3, image: "Technology_2")

alexis.articles.create(title: "Tesla crash: Autopilot was off, says preliminary report", text: "The autopilot function on a Tesla car involved in a fatal crash in Texas in April was 'not available' at the time, according to a preliminary report. Police said one victim was found in the front passenger seat, the other in the back after it crashed and caught fire. The early findings suggest the car's autopilot was 'not available' on the road where the accident happened. But cruise-control could have been in operation, the National Transportation Safety Board said.", category_id: 3, image: "Technology_3")

arturo.articles.create(title: "Amazon has €250m 'back taxes' overturned in court
  ", text: "Amazon has won a court battle over €250m (£215m) in taxes it had been ordered to pay Luxembourg. The European Commission had ordered the tech giant to repay the funds as back taxes, alleging that Amazon had been given unfair special treatment. But the EU's General Court overturned that order, finding it had been given 'no selective advantage'. Amazon said the decision was 'in line with our long-standing position that we followed all applicable laws'.", category_id: 3, image: "Technology_4")



# Movies news

marco.articles.create(title: "How The Forever Purge’s Director Has Worked To Make ‘The Most Authentic’ Of The Purge Movies", text: "The Purge franchise is recognized first and foremost as part of the horror genre, but what’s impossible not to pick up on in the story is the social commentary regarding class warfare. As the films have continued to come out, each one has added new layers to the world, and in doing so have provided new perspectives and angles for the subtext. This is definitely not going to be a tradition from which the upcoming The Forever Purge deviates, with the film unfolding a story at the United States’ southern border, but the director is also promising that the latest chapter of the series is going to be the most authentic and visceral that we’ve seen.", category_id: 4, image: "Movies_1")

alexis.articles.create(title: "Zack Snyder Showed His Green Lantern To DC Fans And There’s Video", text: "Despite being released nearly two months ago, conversation surrounding Zack Snyder’s Justice League is showing no signs of slowing down. Fans have dissected every frame of the movie, and some are holding out hope for a sequel. We recently learn that Snyder shot footage for the introduction of Green Lantern John Stewart, and a new video shows the filmmaker revealing his design for the hero.", category_id: 4, image: "Movies_2")

arturo.articles.create(title: "Amber Heard Continues Teasing Aquaman 2, Reveals Her Favorite Aspect Of Mera", text: "The DC Extended Universe is an ever-growing place, which is known for keeping the moviegoing audience on their collective toes. Conversations surrounding Zack Snyder’s Justice League aren’t slowing down anytime soon, but there are a number of highly anticipated projects coming down the line. This includes James Wan’s Aquaman 2, and actress Amber Heard has been teasing her return as Mera. And now she’s revealed her favorite aspect of that character.", category_id: 4, image: "Movies_3")

victor.articles.create(title: "Wait, Is Michael Jordan In Space Jam: A New Legacy?", text: "From the earliest days when rumors of a Space Jam 2 first began, it seemed clear that what both fans and the studio wanted to do was largely recreate the concept of the original Space Jam, and simply replace Michael Jordan, who starred in the original film, with Lebron James. And for the most part, that seems to be what we're getting. The new movie will include basketball players, Looney Tunes, and a game of basketball, but beyond that it's not even clear if the new movie, which is officially called A New Legacy, is actually connected to the first Space Jam in any significant way. Except that apparently Michael Jordan will actually appear in the new movie, in some unspecified and unexpected way.", category_id: 4, image: "Movies_4")



# TV news

victor.articles.create(title: "Peggy Carter Is The First Super Soldier In Marvel's What If...?", text: "An image released ahead of the premiere of Marvel's animated What If...? series shows Peggy Carter as the world's first super soldier. The show will be the first animated series tied to the Marvel Cinematic Universe and one of many shows slated to appear on Disney+ in the upcoming months as part of phase 4 of the MCU. What If...? will be an anthology series focused on putting twists on the Marvel stories fans already know well. This will include Bucky Barnes (voiced by Sebastian Stan) fighting a zombified Captain America, T'Challa (voiced by the late Chadwick Boseman) being taken into space instead of Peter Quill, and, of course, Peggy Carter (voiced by Hayley Atwell) taking the Super Soldier Serum instead of Steve Rogers.", category_id: 5, image: "TV_1")

marco.articles.create(title: "TBS Is Airing Every Episode Of Friends Ahead Of HBO Max Reunion", text: "TBS is planning to air every episode of Friends ahead of the HBO Max reunion special. The show Friends was and still is a worldwide phenomenon that has stayed relevant across multiple decades. Since the program ended in 2004, people have continued to discover the show through reruns on network channels like TBS. This has created many new Friends fans across multiple generations over the years. Now, viewers have the HBO Max reunion special to look forward to which is coming to the service May 27.", category_id: 5, image: "TV_2")

alexis.articles.create(title: "Young Sheldon Season 4 Ending & All Big Bang Theory Setups Explained", text: "Young Sheldon season 4 wrapped up with a cliffhanger ending that will be significant in the sitcom's future, but it also features a lot of set-up for some important The Big Bang Theory plotlines involving Sheldon. Young Sheldon season 4 had a much shorter run, only having 18 episodes instead of the traditional 22, primarily due to the coronavirus pandemic. Despite this, there's still so much that has happened in the sitcom in terms of Sheldon's personal arc and the Coopers as a unit, including the titular character officially starting college while his parents' marriage slowly starts to crumble.", category_id: 5, image: "TV_3")

arturo.articles.create(title: "Loki Is In Time Variance Authority Custody In New Marvel Show", text: "Tom Hiddleston’s Loki is in the custody of the Time Variance Authority in a new image for Marvel’s upcoming series on Disney+. With Black Widow, the highly anticipated start to Marvel’s Phase 4, postponed to July due to the coronavirus pandemic, all eyes have been on the MCU’s companion series on Disney+. With WandaVision concluding in early March and The Falcon and the Winter Soldier bowing out late last month, Marvel's foray into the small screen is just getting started. Its loaded lineup includes What If...?, Hawkeye, and Ms. Marvel, but Loki is next on deck." , category_id: 5, image: "TV_4")


# Entertainment news

arturo.articles.create(title: "'Halston' dresses up Ewan McGregor as the fashion icon in an era of excess", text: "(CNN)-'Halston' follows the familiar rise-and-fall structure of cinematic biographies — think 'Citizen Kane', only with more sex, better clothes and disco. Yet what really defines this style-over-substance miniseries, other than Ewan McGregor's no-holds-barred performance, are its insights regarding the tension between art and commerce." , category_id: 6, image: "Entertainment_1")

victor.articles.create(title: "Singer Tank reveals he's going deaf", text: "(CNN)-R & B singer Tank is speaking out about losing his hearing, in an effort to help others who may face similar problems. The 45-year-old crooner and actor best known for tunes like 'Maybe I Deserve' and 'When We' took to his verified Instagram account to post a video about what he's been going through, saying, 'I want to use my situation to encourage your situation.'", category_id: 6, image: "Entertainment_2")

marco.articles.create(title: "'Mom' says goodbye with a finale that's as much about beginnings", text: "(CNN)-The 'Mom' finale was as much about beginnings as endings, as the CBS sitcom about sobriety settled for a low-key finish, which included a wedding but not the return of one of its original stars. Anna Faris left the show before the season began, citing a desire to 'pursue new opportunities.' That left Allison Janney -- the 'Mom' of the title in connection with her -- to carry on with the able supporting cast", category_id: 6, image: "Entertainment_3")

alexis.articles.create(title: "'One Night in Miami' packs a powerful dramatic punch", text: "(CNN)-A fascinating historical meeting of the minds provides the foundation for Regina King's impressive feature film directorial debut in 'One Night in Miami', a creative extrapolation about Malcolm X, Muhammad Ali, Jim Brown and Sam Cooke coming together in 1964. It's a small but riveting movie, anchored by a quartet of knockout performances.", category_id: 6, image: "Entertainment_4")
