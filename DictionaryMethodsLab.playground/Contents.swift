/*: Outline

 # Iterating over a Dictionary

 ### Readings associated with this lab

 * [Dictionary](https://github.com/learn-co-curriculum/swift-dictionary-readme)
 * [Iterating over a Dictionary](https://github.com/learn-co-curriculum/swift-dictionaryIteration-readme)
 * [Dictionary - Methods](https://github.com/learn-co-curriculum/swift-dictionaryMethods-readme)
 */
/*: question1
 ### 1. You'll first need to create a few arrays that you will use in subsequent questions in this lab. First, create an `Array` _variable_ called `starWarsHeroes` that contains the names of the heroes of _Star Wars_. These heroes are: Luke Skywalker, Princess Leia, Han Solo, and Rey.
 */
var heroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
/*: question2
 ### 2. Now create another variable `Array` called `starWarsVillains` that contains the villains of _Star Wars_: Darth Vader and Emperor Palpatine.
 */
var villains = ["Darth Vader", "Emperor Palpatine"]
/*: question3
 ### 3. Finally, create a third variable `Array` called `starWarsDroids` that contains the droids of _Star Wars_: R2-D2, C-3P0, IG-88, and BB-8 (the cutest droid of them all).
 */
var droids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
/*: question4
 ### 4. Darn! We forgot to add Kylo Ren, the newest _Star Wars_ villain. Add "Kylo Ren" to `starWarsVillains` using the `append()` method.
 */
villains.append("Kylo Ren")
/*: question5
 ### 5. On second thought, we don't really care that much about IG-88. Remove him from the `starWarsDroids` array using the `removeAtIndex()` method. (What index is "IG-88" at?)
 */
droids.remove(at: droids.index(of: "IG-88")!)
/*: question6
 ### 6. Excellent! We want to store these arrays in a dictionary. Create a _variable_ dictionary called `starWarsCharacters` with the following keys: "Heroes", "Villains", and "Droids". Assign the appropriate variables that you created in the previous questions to these keys when you initialize the dictionary.
 */
var characters = ["Heroes" : heroes,
                  "Villains" : villains,
                  "Droids" : droids]
/*: question7
 ### 7. We forgot some characters! There are a lot of ne'er-do-wells in the _Star Wars_ universe, too. Create a variable array called `starWarsGangsters` with the names of these two shady characters: Watto, Jabba the Hutt.
 */
var gangsters = ["Watto", "Jabba the Hutt"]
/*: question8
 ### 8. Insert `starWarsGangsters` into your `starWarsCharacters` dictionary with the key "Gangsters". Use subscript notation.
 */
characters.updateValue(gangsters, forKey: "Gangsters")
/*: question9
 ### 9. Use the dictionary's `keys` property to print out all the keys in your dictionary to the console, one line at a time (hint: use iteration). Do you see all four of the keys you created above?
 */
for (key, value) in characters {
    print(key)
}
/*: question10
 ### 10. Just for good measure, print the number of keys in the dictionary to the console using the `count` method. Do you see `4` printed to the console?
 */
print(characters.keys.count)
/*: question11
 ### 11. Use an if statement and the dictionary's `isEmpty` property to print "The dictionary is empty!" to the console if it is empty; otherwise, print "There are <Count> items in the dictionary." What do you expect to see in the console? What _do_ you see?
 */
if characters.isEmpty {
    print("The dictionary is empty!")
} else {
    print("There are \(characters.count) items in the dictionary")
}
/*: question12
 ### 12. We forgot some more pretty important characters. Create another variable array called `starWarsJedi`. Add the names of these important _Star Wars_ Jedi: Yoda, Obi-Wan Kenobi, Mace Windu.
 */
var jedi = ["Yoda", "Obi-Wan Kenobi", "Mace Windu"]
/*: question13
 ### 13. Add the variable `starWarsJedi` to the `starWarsCharacter` dictionary using the key "Jedi". Use the `updateValue(_:forKey:)` method to do this. If a new key was added, print "Added Jedi key" to the console; otherwise, print "Updated Jedi key" to the console.
 */
var result = characters.updateValue(jedi, forKey: "Jedi")
if result == nil {
    print("Added Jedi Key")
} else {
    print("Updated Jedi Key")
}
/*: question14
 ### 14. I can't remember if we added the a key/value pair for "Bounty Hunters" or not. Regardless, let's not worry about them for now. Use the `removeValueForKey()` method to remove "Bounty Hunters" from `starWarsCharacters`. Print the message "Removed Bounty Hunters" if the key was present in the dictionary, or "Bount Hunters did not exist" if it wasn't.
 */
result = characters.removeValue(forKey: "Bounty Hunters")
if result == nil {
    print("Bounty Hunters did not exist")
} else {
    print("Removed Bounty Hunters")
}

/*: question15
 ### 15. We forgot to add a really cool Jedi to the list of Jedi: Aayla Secura. Unfortunately, the code below is broken: It doesn't appear to be adding Aayla Secura to the array. Can you fix it so that it does? (The code has been commented out, since it won't even compile until you've answered the questions above. Start by uncommenting the code, but that's not all you need to fix!)

 After you've fixed the error, print out the contents of the "Jedi" key in `starWarsCharacters` to make sure your code works.
 */
jedi.append("Aayla Secura")
/*: question16
 ### 16. We want to print out the names of our _Star Wars_ heroes line-by-line. Unfortunately, the code below isn't working correctly -- nothing gets printed! Can you fix it so that our heroes are printed out? (Again, the code has been commented out so that it doesn't interfere with earlier questions until they have been completed. Start by uncommenting the code, but there's still another bug!)
 */
for hero in heroes {
    print(hero)
}
/*:
 [Solution](solution)
 */
// ❤️
