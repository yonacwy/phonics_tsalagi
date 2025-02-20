phonics
=======
Phonics by Neuromancer
phonics
The purpose of this mod is to teach people to read. Initially it will be used to teach English, but there is no reason it could not be adapted to any language that relates symbols to sounds. The idea is that there are 45 or so basic sounds in English, and only 26 characters to represent them, so we will improvise and invent some new characters so that we have one per sound. For example "oo", "sh", "ch", "ar", "au" and long vowel symbols. By having 1 character represent 1 sound, you have simplified the language and given a beginner an easier way to start to learn how to read. Reading words then becomes an exercise in sounding out words.

The best way to teach someone a new skill is to immerse them in it. This phonics mod will allow you to immerse new readers in phonics the same way they are immersed in speech. By allowing you to easily create page objects and use chat commands to fill them with phonics (type "/write this is a test") you can create massive amounts of phonics for your new reader. But the cool part is that with Minetest, you are only limited by your imaginations. Follow the lead of your learner and whatever they are interested in at the moment. Say they want to play an RPG type game. Pretend you are an elf or some other magical creature who can't speak and can only communicate by thinking phonics onto magical pages. These pages are automatically created with mouth blocks which allow the new reader to sound out any word you have typed. The best way to do this is through multiplayer which is easy to set up. If you do not have 2 computers, then you can still easily create pages beforehand and place them throughout your Minetest world/map beforehand.

Existing Functionality: --left click the blue blocks and they make phonics sounds and light up. --Place a "sound out word" block (the one with a mouth on it) and then build a word by placing the blue blocks next to it. --Left Click (punch) the mouth block to hear the word you built sounded out. --more advanced readers can use the gray silent letters to have more accurate word spelling --punctuation symbols are also included on green blocks

Create Pages: --place a Scroll block ("StartPage") on top of a column as high as you want it (try 3 high). Then in the same row (in any diriection, place the Checkered Flag block ("PageFinish") on the ground 5 away and 3 down from the Scroll Block. A blank page is created. Write on Pages: type "/write " followed by any phrase you want to appear on the page. Remember to spell based on how the phonics sound, not on how the letters sound. example: "/write This iz testing". Notice how "ing" was automatically converted into 1 phonic. If you want to use silent letters, preceed them with "0". If you want to use long vowels, preceed them with "_". example "/write m_in0e" gives you "mine" with a long "i" and a silent "e". Clear Page (and re-enable writing to it): To clear a page with writing on it, and to enable it to be written on again, left click (punch) the scroll block at the upper left hand corner of the page. Remove Page: Dig (Left click with a pickaxe in your hand) the scroll block, and all the blocks for the page will be removed when the scroll block is dug.

If you are teaching someone to read, have them try the following games: -guess the sound each phonic makes until they know them all. -Give them word endings like "ot", "at", or "ing" and have them come up will as many words as they can by placing blocks in front of the endings. (let them use the mouth block so they can hear the word sounded out). -give them words to spell. -spell out a word for them and have them read it to you. If they get stuck, let them sound it out with the mouth block.
#######

phonics lib tsalagi
=======

Phonics_Tsalagi by Yona

This is a mod all credits go to Neuromancer for the original mod.

Added textures using the unicode tsalagi font and sound by a native speaker western dialect.

Create Pages: After you have created pages from above instruction type in latin "/gowelodi tsalagi" and it puts the syllabary textures on the blocks "ᏣᎳᎩ"
The command to write is "/gowelodi" in place of "/write"

Update: Added some crafting recipes to crafting.lua. Not exhaustive by no means just a sample to work from.

apple
ᏒᎦᏔ 
svgata
 
stick
ᎦᎾᏍᏓ
ganasda

stone
ᏅᏯ
nvya 

axe
ᎦᎷᏯᏍᏗ
galuyasdi
  
torch
ᎠᏨᏍᏓᏙᏗ
atsvsdadodi 

boat
ᏥᏳ
tsiyu

dirt
ᎦᏓ
gada

door_wood
ᎠᏍᏚᏗ ᎠᏓ
asdudi ada

glass
ᎠᏓᎨᏗ
adagedi

pine tree
ᏃᏥ
notsi

ladder
ᎠᏴᏠ
ayvtlo


Todo:
Still need to add eastern dialect sounds and syllabary

Sources:
https://github.com/Neuromancer56/phonics_lib
https://en.wikipedia.org/wiki/Cherokee_%28Unicode_block%29
https://cherokeespeaks.com/syllabary/#syllabary-characters
