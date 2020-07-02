# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#create a main sample user.

#USERS
user_one = User.create!(name:  "Violeta",
             email: "violetacastrogutierrez@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             confirmed_at: Time.now)

user_two = User.create!(name: "Monty",
             email: "myviatech@gmail.com",
             password:           "foobar",
             password_confirmation: "foobar",
             confirmed_at: Time.now)



#POSTS
Post.create!(title: "The looming Hunger Pandemic",
             content: "The novel coronavirus has overwhelmed public health systems and jolted economies around the world. Now it is poised to spark a global hunger crisis as well. After decades of progress in the battle against poverty and hunger, the job losses, supply chain disruptions, and other economic dislocations caused by the pandemic threaten to push millions of people from food security into food insecurity—and toward outright starvation. International institutions and their member states must act decisively to prevent that outcome. Otherwise, they risk setting in motion a costly and chaotic era of rising hunger and poverty.",
             user_id: user_one.id
)

Post.create!(title: "What is a life worth?",
             content: "COVID-19 pandemic has raised fundamental questions about how to balance the protection of public health and the protection of the economy. How should authorities weigh the risk of illness and death against the risk of economic damage caused by social distancing and other restrictions that slow the spread of disease?i",
             user_id: user_two.id
)

Post.create!(title: "The Kremlin Fears American Disorder More Than It Celebrates It",
             content: "Schadenfreude is a staple of propaganda, and so one might expect that Russia’s state media is enjoying the spectacle of the most serious American unrest since the 1960s. Surely, one might assume, Russian pundits are seizing the opportunity to tap into American grievances, foment conflict, and call out U.S. hypocrisy.

There has indeed been some of that. But far from delivering any unified message to the world or to its domestic audience, Russian state media, through some of its popular television talk shows, has been airing debates about Black Lives Matter that betray a great deal about how the Kremlin views itself and the fragility of state power.",
             user_id: user_one.id
)


Post.create!(title: "Five Lessons To Remember When Lockdown Ends",
             content: "(ychologist Jill Suttie explores what she and so many of us have felt and learned during the pandemic -- and the growing discussion about what comes next. Her own experience living in a city that imposed shelter-in-place orders 10 weeks ago as of this writing has been a mixed bag. I shifted to working at home pretty easily but it’s been hard finding a routine and avoiding distractions. I’m connected with friends online but I miss their physical presence. Plus my sleep and mood have suffered as anxiety looms over the future of our society. I don’t want to negate these feelings or ignore our losses. Suttie offers five lessons she wants to hold on to once sheltering in place is lifted like being with others is key to happiness. Reducing stress is good for everyone. Showing gratitude matters. We need less stuff that we think. And we are stronger when we act together.)",
             user_id: user_one.id
)


Post.create!(title: "World’s Rarest Wading Bird is Making a Comeback as Its Population Rises By 30%",
             content: "A decades-long fight to recover the world’s rarest wading bird is turning a corner with the success of New Zealand’s massive effort to prevent extinction of their most unique and amazing species.",
             user_id: user_two.id
)


Post.create!(title: "The Hong Kong crisis and the new world order",
             content: "With the UK opening its doors to three million Hong Kong residents and China threatening serious retaliation for what it sees as an intrusion into its domestic affairs, the Hong Kong crisis is becoming a real-time test of diplomacy in a pandemic-distracted world.",
             user_id: user_one.id
)
