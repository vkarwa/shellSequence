source("/Users/despina/Dropbox/k-core ERGM/Code/ConstructGraphWithShellSequence.R") 
source("/Users/despina/Dropbox/k-core ERGM/Code/CountingGraphsEncountered.R") 



###########

# march 2015
# shell distribution (0,0,0,0,5)
shell.seq=c(4,4,4,4,4)
#current.filename="/Users/radilica2/Dropbox/k-coresERGM/Code/FiberSampling/ForTriangles/ISOn10shellDist00005steps100"
current.filename="/Users/petrovic/Dropbox/k-coresERGM/Code/FiberSampling/ForTriangles/ISOn10shellDist00005steps100"



# shell dist ()
shell.seq=c(8,9,9,9,9,9,9,9,9,9)#,rep(9,9))
current.filename="/Users/radilica2/Dropbox/k-coresERGM/Code/FiberSampling/ForTriangles/ISOn10DaneExampleSteps100"

# sampson --  by the way, NOTE WE HAD TYPO 15 in the paper! 
shell.seq=c(1,1,2,2,2,rep(3,13))
current.filename="/Users/radilica2/Dropbox/k-coresERGM/Code/FiberSampling/ForTriangles/sonjatest"

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=10, filename.extension=current.filename) 



####################################
# shell distribution (1,4,0,0,0)
shell.seq=c(1,1,1,1,0)
Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist14000steps100")
graph.counts.14000.100 = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist14000steps100.distinct.graph.counts.txt", skip=1)
#3 graphs discovered.
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist14000steps100.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.14000.100 , main = "shell distrib (1,4,0,0,0)", sub="100 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=10000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist14000steps10K")
graph.counts.14000.10K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist14000steps10K.distinct.graph.counts.txt", skip=1)
#3 graphs discovered.
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist14000steps10K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.14000.10K , main = "shell distrib (1,4,0,0,0)", sub="10K steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist14000steps100K")
graph.counts.14000.100K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist14000steps100K.distinct.graph.counts.txt", skip=1)
#3 isomorphism graph classes discovered
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist14000steps100K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.14000.100K , main = "shell distrib (1,4,0,0,0)", sub="100K steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

####################################
# shell distribution (0,0,5,0,0)
shell.seq=c(2,2,2,2,2)
Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100")
# 100 steps - discovered  7 isomorphism classes
graph.counts.00500.100= scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.00500.100 , main = "shell distrib (0,0,5,0,0)", sub="100 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=10000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps10K")
# 10K steps - discovered 7 isomorphism classes:
graph.counts.00500.10K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps10K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps10K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.00500.10K , main = "shell distrib (0,0,5,0,0)", sub="10,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100K")
# 100K steps - discovered  graphs:
graph.counts.00500.100K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.00500.100K , main = "shell distrib (0,0,5,0,0)", sub="100,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

####################################
# shell distribution (0,0,5,0,0)
shell.seq=c(2,2,2,2,2)
Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100")
# 100 steps - discovered  7 isomorphism classes
graph.counts.00500.100= scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.00500.100 , main = "shell distrib (0,0,5,0,0)", sub="100 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=10000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps10K")
# 10K steps - discovered 7 isomorphism classes:
graph.counts.00500.10K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps10K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps10K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.00500.10K , main = "shell distrib (0,0,5,0,0)", sub="10,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100K")
# 100K steps - discovered  graphs:
graph.counts.00500.100K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100K.distinct.graph.counts.txt", skip=1)
# it has NOT converged to some uniform distribution (tv distance too large from 1/127): 
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist00500steps100K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.00500.100K , main = "shell distrib (0,0,5,0,0)", sub="100,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

####################################
# shell distribution (0,2,3,0,0)
shell.seq=c(1,1,2,2,2)
Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist02300steps100")
# 100 steps - discovered  7 isomorphism classes 
graph.counts.02300.100= scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist02300steps100.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist02300steps100.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02300.100 , main = "shell distrib (0,2,3,0,0)", sub="100 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=10000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist02300steps10K")
# 10K steps - discovered 7 isomorphism classes:
graph.counts.02300.10K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist02300steps10K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist02300steps10K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02300.10K , main = "shell distrib (0,2,3,0,0)", sub="10,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist02300steps100K")
# 100K steps -  discovered 7 isomorphism classes 
graph.counts.02300.100K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist02300steps100K.distinct.graph.counts.txt", skip=1)
# it has NOT converged to some uniform distribution (tv distance too large from 1/127): 
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn5shellDist02300steps100K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02300.100K , main = "shell distrib (0,2,3,0,0)", sub="100,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

####################################
# shell distribution (0,2,1,4,0,0,0)
shell.seq=c(1,1,2,3,3,3,3)
t.02140000.50<-system.time(Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=50, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps50"))
# 50 steps - discovered 11  isomorphism classes 
graph.counts.02140000.50= scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps50.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps50.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02140000.50 , main = "shell distrib (0,2,1,4,0,0,0)", sub="50 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps100")
# 100 steps - discovered 12  isomorphism classes 
graph.counts.02140000.100= scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps100.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps100.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02140000.100 , main = "shell distrib (0,2,1,4,0,0,0)", sub="100 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=10000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps10K")
# 10K steps - discovered 12 isomorphism classes:
graph.counts.02140000.10K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps10K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps10K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02140000.10K , main = "shell distrib (0,2,1,4,0,0,0)", sub="10,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps100K")
# 100K steps -  discovered 12  isomorphism classes 
graph.counts.02140000.100K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps100K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps100K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02140000.100K , main = "shell distrib (0,2,1,4,0,0,0)", sub="100,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=500000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps500K")
# 500K steps -  discovered 12 isomorphism classes 
graph.counts.02140000.500K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps500K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist02140000steps500K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02140000.500K , main = "shell distrib (0,2,1,4,0,0,0)", sub="500,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

####Labelled graphs ###
Enumerate.Fiber.to.File(shell.seq, numsteps=100, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps100",permute=TRUE)
# 100 steps - discovered 101 graphs
graph.counts.02140000.100= scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps100.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps100.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02140000.100 , main = "shell distrib (0,2,1,4,0,0,0)", sub="100 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.to.File(shell.seq, numsteps=10000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps10K",permute=TRUE)
# 10K steps - discovered 7573 graphs
graph.counts.02140000.10K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps10K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps10K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02140000.10K , main = "shell distrib (0,2,1,4,0,0,0)", sub="10,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()

t.02140000.50K<-system.time(Enumerate.Fiber.to.File(shell.seq, numsteps=50000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps50K",permute=TRUE))
# 50K steps - discovered  graphs
graph.counts.02140000.50K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps50K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps50K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02140000.50K , main = "shell distrib (0,2,1,4,0,0,0)", sub="50,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()

# 10K steps took 4-5 hours; REST WILL TAKE TOO LONG
Enumerate.Fiber.to.File(shell.seq, numsteps=100000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps100K",permute=TRUE)
# 100K steps -  discovered graphs
graph.counts.02140000.100K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps100K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps100K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02140000.100K , main = "shell distrib (0,2,1,4,0,0,0)", sub="100,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

Enumerate.Fiber.to.File(shell.seq, numsteps=500000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps500K",permute=TRUE)
# 500K steps -  discovered graphs
graph.counts.02140000.500K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps500K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist02140000steps500K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.02140000.500K , main = "shell distrib (0,2,1,4,0,0,0)", sub="1,000,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 
####################################
# shell distribution (0,1,0,0,6,0,0)
shell.seq=c(1,4,4,4,4,4,4)
Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps100")
# 100 steps - discovered 30 isomorphism classes 
graph.counts.0100600.100= scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps100.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps100.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0100600.100 , main = "shell distrib (0,1,0,0,6,0,0)", sub="100 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=5000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps5K")
# 5K steps - discovered isomorphism classes
graph.counts.0100600.5K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps5K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps5K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0100600.5K , main = "shell distrib (0,1,0,0,6,0,0)", sub="5,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=10000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps10K")
# 10K steps - discovered 4 isomorphic classes.
# R problem?? In a few runs discovered ~2.5K isomorphism classes; THIS IS WEIRD. not all graphs are non-isomorphic and some have only one edge!
graph.counts.0100600.10K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps10K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps10K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0100600.10K , main = "shell distrib (0,1,0,0,6,0,0)", sub="10,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps100K")
# 100K steps -  discovered 4 isomorphism classes 
graph.counts.0100600.100K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps100K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps100K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0100600.100K , main = "shell distrib (0,1,0,0,6,0,0)", sub="100,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=500000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps500K")
# 500K steps -  discovered  isomorphism classes 
graph.counts.0100600.500K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps500K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn7shellDist0100600steps500K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0100600.500K , main = "shell distrib (0,1,0,0,6,0,0)", sub="1,000,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

####Labelled graphs ###
Enumerate.Fiber.to.File(shell.seq, numsteps=100, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps100",permute=TRUE)
# 100 steps - discovered 99 graphs
graph.counts.0100600.100= scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps100.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps100.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0100600.100 , main = "shell distrib (0,1,0,0,6,0,0)", sub="100 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.to.File(shell.seq, numsteps=10000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps10K",permute=TRUE)
# 10K steps - discovered 1260 graphs
graph.counts.0100600.10K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps10K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps10K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0100600.10K , main = "shell distrib (0,1,0,0,6,0,0)", sub="10,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.to.File(shell.seq, numsteps=100000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps100K",permute=TRUE)
# 100K steps -  discovered graphs
graph.counts.0100600.100K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps100K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps100K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0100600.100K , main = "shell distrib (0,1,0,0,6,0,0)", sub="100,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

Enumerate.Fiber.to.File(shell.seq, numsteps=500000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps500K",permute=TRUE)
# 500K steps -  discovered graphs
graph.counts.0100600.500K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps500K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n7shellDist0100600steps500K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0100600.500K , main = "shell distrib (0,1,0,0,6,0,0)", sub="1,000,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

####################################
# shell distribution (0,0,2,2,6,0,0)
shell.seq=c(2,2,3,3,4,4,4,4,4,4)
Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps100")
# 100 steps - discovered 100 isomorphism classes 
graph.counts.0022600000.100= scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps100.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps100.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.100 , main = "shell distrib (0,0,2,2,6,0,0)", sub="100 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

t.0022600000.5K<-system.time(Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=5000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps5K"))
# 5K steps - discovered 500 isomorphism classes
graph.counts.0022600000.5K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps5K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps5K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.5K , main = "shell distrib (0,0,2,2,6,0,0)", sub="5,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=10000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps10K")
# 10K steps - discovered 780 isomorphic classes.
graph.counts.0022600000.10K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps10K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps10K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.10K , main = "shell distrib (0,0,2,2,6,0,0)", sub="10,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()

t.0022600000.100K<-system.time(Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=100000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps100K"))
# 100K steps -  discovered 7376 isomorphism classes -stopped after 11 hours-checking for error.
graph.counts.0022600000.100K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps100K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps100K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.100K , main = "shell distrib (0,0,2,2,6,0,0)", sub="100,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

t.0022600000.250K<-system.time(Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=250000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps250K"))
# 250K steps -  discovered  isomorphism classes -stopped after 11 hours-checking for error.
graph.counts.0022600000.250K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps250K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps250K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.250K , main = "shell distrib (0,0,2,2,6,0,0)", sub="250,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

t.0022600000.500K <-system.time(Enumerate.Fiber.Up.to.Isomorphism.to.File(shell.seq, numsteps=500000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps500K"))
# 500K steps -  discovered  isomorphism classes 
graph.counts.0022600000.500K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps500K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/ISOn10shellDist0022600000steps500K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.500K , main = "shell distrib (0,0,2,2,6,0,0)", sub="1,000,000 steps", xlab="Distinct Isomorphic Graph Classes", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

####Labelled graphs ###
Enumerate.Fiber.to.File(shell.seq, numsteps=100, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps100",permute=TRUE)
# 100 steps - discovered  graphs
graph.counts.0022600000.100= scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps100.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps100.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.100 , main = "shell distrib (0,0,2,2,6,0,0)", sub="100 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()


t.0022600000.1K <-system.time(Enumerate.Fiber.to.File(shell.seq, numsteps=1000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps1K",permute=TRUE))
# 1K steps - discovered  graphs
graph.counts.0022600000.1K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps1K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps1K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.1K , main = "shell distrib (0,0,2,2,6,0,0)", sub="10,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.to.File(shell.seq, numsteps=10000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps10K",permute=TRUE)
# 10K steps - discovered  graphs
graph.counts.0022600000.10K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps10K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps10K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.10K , main = "shell distrib (0,0,2,2,6,0,0)", sub="10,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()

Enumerate.Fiber.to.File(shell.seq, numsteps=100000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps100K",permute=TRUE)
# 100K steps -  discovered graphs
graph.counts.0022600000.100K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps100K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps100K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.100K , main = "shell distrib (0,0,2,2,6,0,0)", sub="100,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 

Enumerate.Fiber.to.File(shell.seq, numsteps=500000, filename.extension="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps500K",permute=TRUE)
# 500K steps -  discovered graphs
graph.counts.0022600000.500K = scan(file="/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps500K.distinct.graph.counts.txt", skip=1)
pdf('/Users/despina/Dropbox/k-core ERGM/Code/FiberSampling/n10shellDist0022600000steps500K.distinct.graph.counts.pdf',height=6, width=6)
barplot(graph.counts.0022600000.500K , main = "shell distrib (0,0,2,2,6,0,0)", sub="1,000,000 steps", xlab="Distinct Graphs", ylab="Frequency in walk")
dev.off()                            #close the pdf file created with pdf 


