#!/bin/bash

# This script is designed to take list of movies in the order that they are
# physically stored. The album they are stored in holds 4 movies in each page.
# The script numbers each line in groups of 4 movies with their corresponding
# page number then sorts all the lines alphabetically.

lines=(
"Clockstopers"
"Eon Kid"
"Criminal"
"Relative Strangers"
"Home From The Hill"
"Kate and Leopold"
"Serendipity"
"Haunted Mansion"
"My Blue Heaven"
"Little Big Man"
"Jack and Jill"
"Throw Momma from the Train"
"Divergent"
"I-Spy"
"Knight and Day"
"Deep Impact"
"Showtime"
"What About Bob"
"BIG"
"Justice League"
"The Cave"
"The Incredibles"
"Dr. Seuss - The Cat's Playhouse"
"Analyze This - Analyze That"
"Robin Hood"
"The Burbs"
"Here Comes the Boom"
"Benchwarmers"
"Money Pit"
"Jack And The Beanstalk - Adventures Of A Teenage Dragon Slayer - Jr. Detective Agency - Fishtales - Spy School"
"Untraceable"
"Escape Plan"
"27 Dresses"
"Wizard of Oz"
"Lake Placid"
"Nutty Professor - Nutty Professor 2"
"Parental Guidance - Blu-ray"
"Parental Guidance - DVD"
"Death of Superman - Blu-ray"
"Death of Superman - DVD"
"Home Alone"
"Lion King 2"
"Lion King 2 - Disc 2"
"Lion King 1 1/2"
"The Little Mermaid"
"The Little Mermaid - Disc 2"
"Cars"
"Cars - Widescreen"
"Cars 2"
"Wolfman"
"Troy"
"Troy - Special Features"
"The Fighter"
"Powder"
"Mall Cop - Grown Ups"
"Zookeeper"
"Bewitched"
"Rat Race"
"Uncle Buck - The Great Outdoors"
"Going Berserk"
"Grown Ups"
"Grown Ups 2"
"Priceless"
"Priceless - Special Features"
"The Family Man"
"Goosebumps - Jack Black"
"Christmass with the Kranks"
"Antibody"
"Evan Almighty"
"The Devil Wears Prada"
"Mysterious Island"
"Avatar"
"Dirty Dancing"
"Thor"
"Ice Age - Continental Drift"
"The Bourne Ultimatum"
"National Lampoon's - European Vacation"
"Vegas Vacation"
"Goonies"
"Taken"
"Inside Out"
"Inside Out - Features"
"Inside Out - Bonus"
"Envy"
"Funny Farm"
"Moscow on the Hudson"
"Cats and Dogs"
"Cats and Dogs - The Revenge of Kitty Galore"
"Divergent"
"Valerian - Blu-ray"
"Valerian - DVD"
"Maze Runner"
"Home Alone"
"Home Alone 2"
"Home Alone 3"
"The Grinch that Stole Christmas"
"Mystery Men"
"Hangover"
"Hangover - Unrated"
"Due Date"
"Death Becomes Her"
"Mr. Art Critic"
"Indian Wars"
"Heist"
"Roxanne"
"The Rookie"
"The Quick and the Dead"
"Faster"
"The Answer Man"
"GoodFellas"
"From Dusk Till Dawn"
"Air Force One"
"Looney Tunes 1"
"Looney Tunes 2"
"Gremlins"
"Plains Trains and Automobiles"
"Aviator"
"Aviator - Disc 2"
"Gulliver's Travels"
"House of Sand and Fog"
"The Book of Daniel"
"The Departed - Disc 2"
"OverBoard"
"Office Space"
"Mission Impossible - Tom Cruise"
"Mission Impossible M i-2 - Tom Cruise"
"Mission Impossible M i-3 - Tom Cruise"
"Step Brothers"
"The Majestic"
"Dumb and Dumber"
"Yes Man"
"The Mask"
"Seven Psychopaths"
"The Watch"
"Road House"
"i,ROBOT - Will Smith"
"Independence Day - ID4 20th Anniversary Edition"
"Prometheus"
"The Abyss"
"Tag"
"Wild Wild West"
"The Fifth Element"
"The Fifth Element - Special Features"
"Sherlock Holmes"
"Red Eye"
"Big Momma's House"
"The Lazarus Project"
"Big Momma's House - Like Father Like Son"
"Alice in Wonderland"
"Alice in Wonderland - Special Features"
"Johnny Test - Super Smarty Pants"
"Horton Hears a Who!"
"Miracle of the Cards"
"The Incredible Hulk - 2 Movie, Returns and Trial of..."
"Wild Hogs"
"A-Team"
"Mary Poppins"
"Space Warriors"
"What's in the Bible"
"12 Children's Movies - Disc 3"
"Rango"
"Alvin and the Chipmunks the Squeakquel"
"Alvin and the Chipmunks - A Chipmunk Christmas"
"Alvin and the Chipmunks - Scare-riffic Double Feature"
"Wayne's World"
"Tremors and Tremors 2"
"Angry Birds Toons"
"Matrix"
"Age of the Dragons"
"Monsters University"
"Star Trek"
"Toy Story 2"
"Gone in 60 Seconds"
"Cinderella"
"Comanche Moon - Second Lonesome Dove"
"Outland"
"Duplex"
"Rush Hour"
"Rush Hour 2"
"Rush Hour 3"
"Garfield The Movie"
"Garfield - A Tail of Two Kitties"
"Elf - Fullscreen"
"Elf - Widescreen"
"Time Changer"
"Two Weeks Notice"
"Yellowstone"
"Ben 10 - Race Against Time"
"Hulk - Newer Movie"
"Hulk - Newer Movie Disc 2"
"Mario Bros Super Show"
"Footloose"
"Alex and Emma"
"Able's Field"
"Strange Brew"
"Strange Brew"
"Night at the Museum"
"Night at the Museum - Special Features"
"Pixels"
"Hidalgo - Fullscreen"
"Fireproof"
"Confessions of a Shopaholic"
"Stir of Echoes"
"Short Circuit"
"Speed Racer - Widescreen"
"Speed Racer - Fullscreen"
"Superman - The movie expanded edition"
"Superman Returns"
"The Terminator"
"Terminator T2 - Disc 1"
"Terminator T2 - Disc 2"
"Terminator 3 - The Rise of the Machines"
"Dr. Dolittle"
"Dr. Dolittle 2"
"Dr. Dolittle - Tail to the Chief"
"Stuart Little"
"Nutcracker"
"Ben 10 - Alien Swarm"
"All Dogs Go To Heaven"
"Toys"
"Mrs. Doubtfire - Disc 1"
"Mrs. Doubtfire - Disc 2"
"Ernest Goes to Camp - Ernest Goes to Jail"
"Ernest Scared Stupid"
"Ernest's Wacky Adventures - Disc 1"
"Ernest's Wacky Adventures - Disc 2"
"Casper - The Little Rascals"
"Flipper - Leave it to Beaver"
"Teenage Mutant Ninja Turtles - The Movie"
"Teenage Mutant Ninja Turtles - Animated"
"Teenage Mutant Ninja Turtles 2"
"Teenage Mutant Ninja Turtles 3"
"Widows"
"Battleship"
"Bob the Builder - Build it and they will come"
"Only You"
"Robots"
"Ghostbusters"
"Ghostbusters - 2"
"Ghostbusters - The Newer Movie"
"He-Man and the Masters of the Universe - Origins"
"Johnny Test - Saves the World"
"Walle"
"Charlie's Angels - Full Throttle"
"Total Recall"
"Gulliver's Travels - Long John Silver - Returns to Treasure Island - Jack and the Beanstalk - Little Lord Fauntleroy - The Over the Hill Gang"
"The Borrowers - The New Adventures of Heidi - The Little Princess - The Pied Piper of Hamelin - The Magic Sword"
"Coach of the Year - The Flying Deuces - The Over the Hill Gang Rides Again - The Jungle Book - The Son of Monte Cristo"
"Foul Play"
"Iron Man 2"
"The Animal"
"Adventures in Babysitting"
"Smurfs - Magic Flute"
"Disc 1 Side A - Spin - Jack and the Beanstalk - Disc 1 Side B - Elle - Home Team"
"Disc 2 Side A - School of Life - Spy School - Disc 2 Side B - THB PIED PIPER of HAMBLIN - THE INSPECTOR GENERAL"
"Disc 3 Side A - HARD KNOX - COACH of THE YEAR - Disc 3 Side B - The Big Trees - Wacky Taxi"
"Back to the Future"
"We Bought a Zoo"
"Veggie Tales - Johna"
"Legend of the BoneKnapper Dragon"
"Secondhand Lions"
"Secondhand Lions"
"Hoodwinked - Widescreen"
"The Story of English Bible"
"The Sound of Music - Blu-Ray"
"The Sound of Music - DVD"
"The Sound of Music - Special Features"
"The Lego Movie"
"Indiana Jones and the Kingdom of the Crystal Skull"
"Indiana Jones and the Raiders of the Lost Ark"
"Beethoven - Beethoven 2nd - Beethoven 3rd - Beethoven 4th"
"Beethoven 5th"
"Unbreakable"
"Unbreakable - Special Features"
"X-Men Origins - Wolverine Hugh Jackman - Fullscreen"
"X-Men Origins - Wolverine Hugh Jackman - Widescreen"
"The Jerk"
"Vampire's Kiss"
"The Lost Medallion"
"Deep Blue Sea"
"Go Diego Go - Magical Missions"
"My Big Fat Greek Life"
"God Save Our Farm"
"Seven Brides for Seven Brothers"
"Ben Hur - Animated"
"The Fox and the Hound"
"The Polar Express"
"Last Ounce of Courage"
"The Dukes of Hazzard - TV Pilot Episode"
"Diary of a Wimpy Kid"
"Spiderwick Chronicles"
"Spiderwick Chronicles - Special Features"
"Bowfinger with Steve Martin - Life with Eddie Murphy and Martin Lawrence"
"Mario Bros Super Show - Mega Mix"
"Tom and Jerry - Winter Wackiness"
"Veggie Tales - Noah's Ark"
"EARTH MINUS ZERO - WHEN ZACHARY BEAVER CAME TO TOWN - THE POWER WITHIN - BIGFOOT THE UNFORGETTABLE ENCOUNTER - THE PHOENIX AND THE CARPET"
"EZ MONEY - LIL' TREASURE HUNTERS - BAILEY'S BILLIONS - LITTLE BIGFOOT 2: THE JOURNEY - HOME - THE IMPOSSIBLE ELEPHANT"
);

# initialize shell variables
list=()
sortedList=()
i=0
j=0

# loop each line item in the array stoping at its length
for ((i = 0 ; i < ${#lines[@]} ; i++)); do
    # If the line number is evenly divisible by 4 add 1 to $j
    if (( $i%4 == 0 )); then
        j=$(( j + 1 ))
    fi
    # Append the same number on the end of 4 consecutive lines
    list+=( "${lines[$i]} ----- PAGE #$j" )
done

# The Internal Field Separator (IFS) that is used for word splitting after expansion
IFS=$'\n'

# sort all of the list array into new sorted array
sortedList=($(sort <<<"${list[*]}"))
# print each string in the new array on their own line
# Then redirect the output in to your_file.txt
                                 # Uncomment to output file
printf '%s\n' "${sortedList[@]}" # > ~/Desktop/your_file.txt

# Uncomment to see the length of the list array
# echo "list Array is ${#list[@]} items long"
