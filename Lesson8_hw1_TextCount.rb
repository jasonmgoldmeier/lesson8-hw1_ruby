# #Assignment
# 1. Create a program to analyze a large block of text and report back on the frequency of
# each word in the text. a. Start by sorting the text into a hash where each word is a key with the word’s
# value being the amount of times it has been used in the block: {the: 10, john: 1, of: 15} b. Once you’ve created this hash, return the word that has been used the most c. When you’re done, encapsulate your script inside of a method that can analyze any block of text fed to it
# 2. Bonus assignment: Create a “choose your own adventure” Ruby game using the gets
# ruby method to get user input from the command line. Have the game send the user down many different paths depending on the input that they enter. Use objects to store data about the user and different items they could collect along the way. See http:// en.wikipedia.org/wiki/Interactive_fiction for a more in-depth description of “choose your own adventure”-style command line games.
# Note: If you complete assignment 1 only, you are eligible for a 10/10 for homework. The bonus assignment is just a great way to get a ton more Ruby practice!

#text = <<WORD or HEREDOC to find words inside a paragraph


TextCounter = <<HEREDOC
In this article, I’d like to reacquaint you with the humble workhorse of communication that is the paragraph. Paragraphs are everywhere. 
In fact, at the high risk of stating the obvious, you are reading one now. Despite their ubiquity, we frequently neglect their presentation. This is a mistake. Here, we’ll refer to some time-honored typesetting conventions, with an emphasis on readability, and offer guidance on adapting them effectively for devices and screens. We’ll see that the ability to embed fonts with @font-face is not by itself a solution to all of our typographic challenges.
A Web Of Words
In 1992, Tim Berners-Lee circulated a document titled “HTML Tags,” which outlined just 20 tags, many of which are now obsolete or have taken other forms. The first surviving tag to be defined in the document, after the crucial anchor tag, is the paragraph tag. It wasn’t until 1993 that a discussion emerged on the proposed image tag.
Bursting with imagery, motion, interaction and distraction though it is, today’s World Wide Web is still primarily a conduit for textual information. In HTML5, the focus on writing and authorship is more pronounced than ever. It’s evident in the very way that new elements such as article and aside are named. HTML5 asks us to treat the HTML document more as… well, a document.
It’s not just the specifications that are changing, either. Much has been made of permutations to Google’s algorithms, which are beginning to favor better written, more authoritative content (and making work for the growing content strategy industry). Google’s bots are now charged with asking questions like, “Was the article edited well, or does it appear sloppy or hastily produced?” and “Does this article provide a complete or comprehensive description of the topic?,” the sorts of questions one might expect to be posed by an earnest college professor.
This increased support for quality writing, allied with the book-like convenience and tactility of smartphones and tablets, means there has never been a better time for reading online. The remaining task is to make the writing itself a joy to read.
What Is The Perfect Paragraph?
As designers, we are frequently and incorrectly reminded that our job is to “make things pretty.” We are indeed designers — not artists — and there is no place for formalism in good design. Web design has a function, and that function is to communicate the message for which the Web page was conceived. The medium is not the message.
Never is this principle more pertinent than when dealing with type, the bread and butter of Web-borne communication. A well-set paragraph of text is not supposed to wow the reader; the wowing should be left to the idea or observation for which the paragraph is a vehicle. In fact, the perfect paragraph is unassuming to the point of near invisibility. That is not to say that the appearance of your text should have no appeal at all. On the contrary: well-balanced, comfortably read typography is a thing of beauty; it’s just not the arresting sort of beauty that might distract you from reading.

HEREDOC

def word_count(text)
counter = Hash.new(0)
#the above code is to initialize the new hash, created to count all words and of the text 


new_text = text.split(" ")
#the above identifies space between words as different words

new_text.each {|word| counter[word]+= 1}
#the above code tells ruby to count the use of each word and add the number of times encountered

max_num = counter.values.sort.last 


puts "Most commonly used word is " + counter.key(max_num) + " occuring #{max_num}" + "times"


end

puts word_count(TextCounter)




