#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Joke
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

jokes=(
  "I told my wife she should embrace her mistakes. She hugged me."
  "I'm reading a book on anti-gravity. It's impossible to put down!"
  "I'd tell you a chemistry joke, but I know I wouldn't get a reaction."
  "Why don't skeletons fight each other? They don't have the guts."
  "What do you call fake spaghetti? An impasta!"
  "Why don't scientists trust atoms? Because they make up everything."
  "I asked the librarian if the library had any books on paranoia. She whispered, 'They're right behind you...'"
  "Why was the math book sad? It had too many problems."
  "Why did the scarecrow win an award? Because he was outstanding in his field!"
  "What's orange and sounds like a parrot? A carrot."
  "I would tell you a joke about an elevator, but it's an uplifting experience."
  "Why couldn't the bicycle stand up by itself? It was two tired."
  "Why don't we ever tell secrets on a farm? Because the potatoes have eyes and the corn has ears."
  "What do you call an alligator in a vest? An investigator."
  "I used to have a job at a calendar factory but I got the sack because I took a couple of days off."
  "What do you call cheese that isn't yours? Nacho cheese."
  "Why did the tomato turn red? Because it saw the salad dressing."
  "What do sprinters eat before a race? Nothing, they fast."
  "How do you organize a space party? You planet."
  "Why do mushrooms get invited to all the parties? Because they're a fungi."
  "Why don't skeletons fight each other? They don't have the guts."
  "I'm only familiar with 25 letters in the English language. I don't know y."
  "What did the grape say when it got stepped on? Nothing, but it let out a little wine."
  "Why don't eggs tell jokes? They'd crack each other up."
  "I'd tell you a Fibonacci joke, but it's probably as bad as the last two you've heard combined."
  "Why did the coffee file a police report? It got mugged."
  "What do you call a belt made out of watches? A waist of time."
  "How does a penguin build its house? Igloos it together."
  "Why did the golfer bring two pairs of pants? In case he got a hole in one."
  "How do you make holy water? You boil the hell out of it."
  "What's brown and sticky? A stick."
  "What do you call a fish wearing a crown? A king fish."
  "Why did the bicycle fall over? Because it was two-tired!"
  "What do you call a dog that does magic tricks? A labracadabrador."
  "Why don't crabs give to charity? Because they're shellfish."
  "What's a snake's favorite subject? Hiss-tory."
  "What do you get from a pampered cow? Spoiled milk."
  "Why do cows have hooves instead of feet? Because they lactose."
  "Why are ghosts bad liars? Because they are too transparent."
  "What did the janitor say when he jumped out of the closet? Supplies!"
  "What do you call an elephant that doesn't matter? An irrelephant."
  "What do you call a bee that can't make up its mind? A maybe."
  "Why are pirates called pirates? Because they arrr."
  "What did one wall say to the other wall? 'I'll meet you at the corner.'"
  "Why didn't the skeleton go to the dance? He had no body to dance with."
  "What do you call a dinosaur with an extensive vocabulary? A thesaurus."
  "Why did the picture go to jail? Because it was framed."
  "What's a scarecrow's favorite fruit? Straw-berries."
  "Why did the chicken go to the séance? To talk to the other side."
  "Why don't oysters donate to charity? Because they are shellfish."
  "What do you call a factory that makes okay products? A satisfactory."
  "Why can't a nose be 12 inches long? Because then it would be a foot."
  "What do you call a snowman with a six-pack? An abdominal snowman."
  "What did the zero say to the eight? Nice belt."
  "Why do pancakes always win at baseball? Because they have the best batter."
  "What do you call a man with a rubber toe? Roberto."
  "Why did the scarecrow keep getting promoted? Because he was outstanding in his field."
  "What's orange and sounds like a parrot? A carrot."
  "Why did the golfer wear two pairs of pants? In case he got a hole in one."
  "Why don't skeletons fight each other? They don't have the guts."
  "What do you call an academically successful slice of bread? An honor roll."
  "What's an astronaut's favorite part of a computer? The space bar."
  "Why did the can crusher quit his job? Because it was soda pressing."
  "What kind of shoes do ninjas wear? Sneakers."
  "How do you find Will Smith in a snowstorm? Look for fresh prints."
  "Why did the belt get arrested? For holding up a pair of pants!"
  "Why don't eggs tell jokes? They'd crack each other up."
  "Why was the math book sad? Because it had too many problems."
  "Why did the orange stop? Because, it ran outta juice."
  "Why was the belt arrested? It held up some pants."
  "Why did the cookie go to the hospital? Because it felt crummy."
  "Why are elevators so good at their job? They always know how to lift people's spirits."
  "Why was the bicycle unable to stand up by itself? It was two tired."
  "Why did the bicycle fall over? It was two tired."
  "What did the fish say when it hit the wall? Dam!"
  "How do you catch a squirrel? Climb a tree and act like a nut."
  "What do you call a snowman in July? A puddle."
  "What happens to a frog's car when it breaks down? It gets toad away."
  "Why don't skeletons fight each other? They don't have the guts."
  "I'm on a whiskey diet. I've lost three days already."
  "Why did the tomato turn red? Because it saw the salad dressing."
  "Why did the student eat his homework? Because the teacher said it was a piece of cake."
  "What did one hat say to the other? Stay here, I'm going on ahead."
  "Why can't you give Elsa a balloon? Because she will let it go."
  "What gets wetter as it dries? A towel."
  "Why do we tell actors to 'break a leg'? Because every play has a cast."
  "What's the best thing about Switzerland? I don't know, but the flag is a big plus."
  "I invented a new word! Plagiarism."
  "What's the difference between a snowman and a snowwoman? Snowballs."
  "I used to play piano by ear, but now I use my hands."
  "Why did the golfer carry two shirts? In case he got a hole in one."
  "Did you hear about the claustrophobic astronaut? He just needed a little space."
  "Why did the picture go to jail? Because it was framed."
  "What do you call a belt with a watch on it? A waist of time."
)

get_joke() {
  echo "${jokes[RANDOM % ${#jokes[@]}]}"
}

get_joke
