More notes for me:
 - This company owns hundreds of thousands of lines of code.  Especially the older code: a lot of it was written in haste, and not very well.  I'm thankful to those people, because they made things work.  But in any case, working here, you spend a lot of time reading code - way more time reading code than writing it, because there's so much already, and whatever you're trying to accomplish, you need to know how it's going to fit in to what's already there, how you can use what's already there, etc.
 - We've two code samples here.  They're both written in Ruby, which is the language we use most frequently here.  It's supposed to be an easy-to-read language.  The first one is one file; the second is four files.  And I'd like you to imagine that you've started a job at a company with huge codebase, and you think you might need to change one of these files, but first you've got to figure out what they do.  So work with a partner, start with the first code sample, and try to figure out what the code is for, and, very roughly speaking, how it works.  Give yourself a couple minutes on the first example, and then move on to the second.  Remember, the second example is four files.  Same questions: what does the code do; and then try to summarize how it works?  Don't yell out the answers or anything, we'll talk about it together afterwards.
...
 - So - in case you haven't figured it out: these two code samples do exactly the same thing.  And big picture, they do it in exactly the same way.  What is it they do?
 - Post a picture of a scary animal to Twitter.  How?  Pick a random animal name, search on google for scary pictures of that animal, download the picture, and post it to twitter.
 - I wrote this code last Saturday with Victoria.  We came up with something like the first one, which I made worse for this example.  And then I spent a while cleaning it up, and ended up with the second one.

First question: which code sample would you be happier to come across in a huge, unfamiliar code base?  Which is more easily understandable.  Correct answer: the second one.

Second question: what makes the second sample so much better, so much easier to understand?
 - Things are named well, especially the main thing that it does.
   - But not only the main things: even lower-level functions/methods are well named, so that it's not just a bunch of mysterious things you've never heard of, unless you really dig in.
 - The pieces are organized, so that related things go together.
 - The big picture is emphasized: you can get the high-level story of what it does and how it works without getting into the weeds, the details.  All you need to know to understand is what is in that first file - tweets scary animals, does a google image search, downloads the result, posts it to twitter.
 - The pieces are re-usable: Want to make this thing also download the first 100 pictures of Donald Trump from Google?  You can reuse the google interface and the image downloader.
 - It's obvious how to extend the pieces: need to do a google web search, instead of an image search?  You know which file to put the extra code in.  
 - More things, probably.

So: being able to write clean code - code like the second one, not like the first, is a hugely important skill for software developers.  So how can you get good at it?
 - Most obvious: when you're writing code, don't be satisfied with getting the code to work.  Instead, keep plugging at it, and messing with it, changing it, so that it works, and it's easy to understand.
 - Took maybe 3 hours to get this thing to work in the first place; I'd say I spent another 3 hours cleaning it up.  That's normal for real work here, where the code is going to last a long time, and it's going to be read by people who have no idea what you were thinking, what the business folks wanted done, etc.
 - But, really, the skills for writing clean code are basically the same skills as the skills for writing good stuff in English.  So you can get better at coding in English class, in history.
 - edit your writing.  Keep changing it, polishing it, working at it, until it comes out just perfectly.   
 - Think about what the most important things you're trying to say are, and make sure they come out loud and clear in your essays.  Hide the details further in, so that someone who cares can find them, but someone who doesn't will still be following along.
 - Read a lot, English, code, whatever.  Absorb the best of it: not what is prettiest, but what makes things most clear, and easy to understand.  And try to emulate it.
 - Find teachers who will push you to write better, and don't be satisfied with bad writing, or bad code.