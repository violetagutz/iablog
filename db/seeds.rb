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
