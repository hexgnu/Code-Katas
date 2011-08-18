
##How big##
- roughly how many binary digits (bit) are required for the unsigned representation of:
	- 1,000: log_2(1000) = 9.96 =~ 10
	- 1,000,000: =~ 20
	- 1,000,000,000: 30
	- 1,000,000,000,000: 40 
	- 8,000,000,000,000: 43
- My town has approximately 20,000 residences. How much space is required to store the names, addresses, and a phone number for all of these (if we store them as characters)?
	- Assuming that peoples names are approximately 15 characters long, phone numbers are 10 digits including area code, addresses are generally around 35.  So 20,000 * 15 * 10 * 35 =~ 10.5MM characters
- I’m storing 1,000,000 integers in a binary tree. Roughly how many nodes and levels can I expect the tree to have? Roughly how much space will it occupy on a 32-bit architecture?
	- Around 20 levels.
	- On a 32-bit architecture it will take up 

##How fast?##
- My copy of Meyer’s Object Oriented Software Construction has about 1,200 body pages. Assuming no flow control or protocol overhead, about how long would it take to send it over an async 56k baud modem line?
	- Assuming that each page has around 20,000 characters 56kbps means 7KBps so on average we'd get 7000/20,000 or 35% of a page per second.  To get all 1200 pages we'd need to take up to (1200 * 20,000 / 7000) or 57 minutes
- My binary search algorithm takes about 4.5mS to search a 10,000 entry array, and about 6mS to search 100,000 elements. How long would I expect it to take to search 10,000,000 elements (assuming I have sufficient memory to prevent paging).
	- Since binary searching operates in log n time we can back out of this by saying Math.log(10_000) / 2 =~ 4.5 seconds.  Using this function we can find that for 10MM elements we should get execution in around 8 seconds.
- Unix passwords are stored using a one-way hash function: the original string is converted to the ‘encrypted’ password string, which cannot be converted back to the original string. One way to attack the password file is to generate all possible cleartext passwords, applying the password hash to each in turn and checking to see if the result matches the password you’re trying to crack. If the hashes match, then the string you used to generate the hash is the original password (or at least, it’s as good as the original password as far as logging in is concerned). In our particular system, passwords can be up to 16 characters long, and there are 96 possible characters at each position. If it takes 1mS to generate the password hash, is this a viable approach to attacking a password?
	- The total amount of combinations of a 16 character long password with 96 possible inputs to each spot is 96^16 or some really big number.  So no..



