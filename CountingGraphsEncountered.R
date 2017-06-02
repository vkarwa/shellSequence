
#Get.Next.Network<-function(network){
#  REPLACE WITH YOUR FAVORITE WAY TO GET A NEW RANDOM GRAPH WITH SAME CORE SEQUENCE
#  s <- graph.coreness(network)
#  new.network <- Construct.Random.Graph.With.Shell.Sequence(s)
#	 return(new.network)
#}

Enumerate.Fiber.to.File<-function(shell.seqn, numsteps=1000, filename.extension="", permute=FALSE){
	counts=list(1)
  #NOTE: if shell.seqn is not sorted the method WILL sort it, 
  #and produce graphs with lower numbered vertices having smaller coreness number.
	network=Construct.Random.Graph.With.Shell.Sequence(shell.seqn) 
	numGraphs=1
	num.cols = 2*ecount(network)
	write(t(get.edgelist(network)), paste(filename.extension, "graphs.txt", sep="."), append=FALSE,ncolumns=num.cols, sep = ", ")	
		
	for (i in 1:numsteps){
#		on.exit(print(paste("Number of steps: ", numsteps, " ------- Number of Graphs discovered: ", numGraphs, "\n total variation distance: ",(sum(abs(counts/numsteps-1/numGraphs)))/2, "\n counts: \n", counts, "\n empty move counts: \n", empty.move.counts)))
		flag = FALSE
		prev.network = network
		network = Construct.Random.Graph.With.Shell.Sequence(shell.seqn,permute)
		# OPEN CONNECTION  
		conB = file(paste(filename.extension, "graphs.txt", sep="."), open ="r")
		graph.index = 0
		# (WHILE FILE HAS MORE GRAPHS TO READ: READ GRAPH, COMPARE IT TO CURRENT. REST AS BEFORE) ##### Sonja: I don't even want to do this! I don't want to look at the file at all, just blindly keep going..
		while ( (length(str.graph <- readLines(conB, n = 1, warn = FALSE)) > 0) && flag==FALSE) {
      # THE NEXT FEW LINES FIND INDEX FOR CURRENT GRAPH STORED
      # THIS IS NOT A GREAT METHOD TO DO IT BUT WORKS...
      # MAYBE MICHAEL'S BINARY TREE IDEA WOULD MAKE MORE SENSE HERE...
			graph.index = graph.index+1      
			read.graph = unlist(strsplit(str.graph,split=','))
			graph.edges = as.numeric(read.graph)
			g = graph(graph.edges, n = vcount(network), directed = FALSE)

			if (ecount(graph.difference(network,g)) == 0){
				# Current network was visited before
				counts[[graph.index]]=counts[[graph.index]]+1
				flag = TRUE
			} 
		}
		# CLOSE CONNECTION  
		close(conB)
		if (!flag){
			# Encountered new graph
			counts = append(counts, 1)
#			empty.move.counts = append(empty.move.counts,list(0))
			numGraphs = numGraphs+1
			# Write new graph to files 
			write(t(get.edgelist(network)), paste(filename.extension, "graphs.txt", sep="."), append=TRUE,ncolumns=num.cols, sep = ", ")	
			}	
		# Write counts to file
#		write(counts, paste(filename.extension, "distinct.graph.counts.txt", sep="."), append=FALSE, ncolumns=length(counts), sep = ", ")	
    write("Graph Counts", paste(filename.extension, "distinct.graph.counts.txt", sep="."), append=FALSE)
    lapply(counts, write, paste(filename.extension, "distinct.graph.counts.txt", sep="."), append=TRUE)
	}
  print(counts)
	# calculate the TV distance
	TV=(sum(abs(as.numeric(counts)/numsteps-1/numGraphs)))/2
	write(TV, paste(filename.extension, "tv.distance.txt", sep="."), append=FALSE, ncolumns=length(counts), sep = ", ")	
	return (counts)
}



Enumerate.Fiber.Up.to.Isomorphism.to.File<-function(shell.seqn, numsteps=1000, filename.extension=""){
	counts=list(1)
  #NOTE: if shell.seqn is not sorted the method WILL sort it, 
  #and produce graphs with lower numbered vertices having smaller coreness number.
	network=Construct.Random.Graph.With.Shell.Sequence(shell.seqn) 
	numGraphs=1
	num.cols = 2*ecount(network)
	write(t(get.edgelist(network)), paste(filename.extension, "graphs.up.to.isomorphism.txt", sep="."), append=FALSE,ncolumns=num.cols, sep = ", ")	
		
	for (i in 1:numsteps){
#		on.exit(print(paste("Number of steps: ", numsteps, " ------- Number of Graphs discovered: ", numGraphs, "\n total variation distance: ",(sum(abs(counts/numsteps-1/numGraphs)))/2, "\n counts: \n", counts, "\n empty move counts: \n", empty.move.counts)))
	  isomorphic.class.encountered.flag = FALSE
		prev.network = network
		network = Construct.Random.Graph.With.Shell.Sequence(shell.seqn,permute=FALSE)
		# Trying to catch weird error
		while(any(sort(graph.coreness(network))!=sort(shell.seqn))){
		  print("Error in Enumerate.Fiber.To.File")
		  print(str(network))
		  network = Construct.Random.Graph.With.Shell.Sequence(shell.seqn,permute=FALSE)
		}
		# OPEN CONNECTION  
		conB = file(paste(filename.extension, "graphs.up.to.isomorphism.txt", sep="."), open ="r")
		graph.index = 0
		# (WHILE FILE HAS MORE GRAPHS TO READ: READ GRAPH, COMPARE IT TO CURRENT. REST AS BEFORE)
		while ( (length(str.graph <- readLines(conB, n = 1, warn = FALSE)) > 0) && isomorphic.class.encountered.flag==FALSE) {
      # THE NEXT FEW LINES FIND INDEX FOR CURRENT GRAPH STORED
      # THIS IS NOT A GREAT METHOD TO DO IT BUT WORKS...
      # MAYBE MICHAEL'S BINARY TREE IDEA WOULD MAKE MORE SENSE HERE...
			graph.index = graph.index+1      
			read.graph = unlist(strsplit(str.graph,split=','))
			graph.edges = as.numeric(read.graph)
			g = graph(graph.edges, n = vcount(network), directed = FALSE)
			if (graph.isomorphic(network,g)){
				# Current network is isomorphic to previous network
				counts[[graph.index]]=counts[[graph.index]]+1
				isomorphic.class.encountered.flag = TRUE
			} 
		}
		# CLOSE CONNECTION  
		close(conB)
		if (!isomorphic.class.encountered.flag){
			# Encountered new graph
			counts = append(counts, 1)
			numGraphs = numGraphs+1
			num.cols=2*ecount(network)
			# Write new graph to files 
			write(t(get.edgelist(network)), paste(filename.extension, "graphs.up.to.isomorphism.txt", sep="."), append=TRUE,ncolumns=num.cols, sep = ", ")	
			}	
		# Write counts to file
#		write(counts, paste(filename.extension, "distinct.graph.counts.txt", sep="."), append=FALSE, ncolumns=length(counts), sep = ", ")	
    write("Graph Equivalence up to isomorphism Counts", paste(filename.extension, "distinct.graph.counts.txt", sep="."), append=FALSE)
    lapply(counts, write, paste(filename.extension, "distinct.graph.counts.txt", sep="."), append=TRUE)
	}
	# calculate the TV distance
	TV=(sum(abs(as.numeric(counts)/numsteps-1/numGraphs)))/2
	write(TV, paste(filename.extension, "tv.distance.txt", sep="."), append=FALSE, ncolumns=length(counts), sep = ", ")	
	return (counts)
}


Enumerate.Fiber.No.Looking.Back.to.File<-function(shell.seqn, numsteps=1000, filename.extension="", permute=FALSE){
	counts=list(1)
  #NOTE: if shell.seqn is not sorted the method WILL sort it, 
  #and produce graphs with lower numbered vertices having smaller coreness number.
	network=Construct.Random.Graph.With.Shell.Sequence(shell.seqn) 
	numGraphs=1
	num.cols = 2*ecount(network)
	write(t(get.edgelist(network)), paste(filename.extension, "graphs.no.look.back.txt", sep="."), append=FALSE,ncolumns=num.cols, sep = ", ")	
		
	for (i in 1:numsteps){
		flag = FALSE
		prev.network = network
		network = Construct.Random.Graph.With.Shell.Sequence(shell.seqn,permute)
		# OPEN CONNECTION  
		conB = file(paste(filename.extension, "graphs.no.look.back.txt", sep="."), open ="r")
#		# (WHILE FILE HAS MORE GRAPHS TO READ: READ GRAPH, COMPARE IT TO CURRENT. REST AS BEFORE) 
##### Sonja: I don't even want to look at the file at all, just blindly keep going.. #####
			counts = append(counts, 1)
			numGraphs = numGraphs+1
			num.cols = 2*ecount(network)
			# Write new graph to files 
			write(t(get.edgelist(network)), paste(filename.extension, "graphs.no.look.back.txt", sep="."), append=TRUE,ncolumns=num.cols, sep = ", ")	
    write("Graph Counts", paste(filename.extension, "graphs.no.look.back.counts.txt", sep="."), append=FALSE)
    lapply(counts, write, paste(filename.extension, "graphs.no.look.back.counts.txt", sep="."), append=TRUE)
	}
  print(counts)
	# calculate the TV distance
	TV=(sum(abs(as.numeric(counts)/numsteps-1/numGraphs)))/2
	write(TV, paste(filename.extension, "tv.distance.txt", sep="."), append=FALSE, ncolumns=length(counts), sep = ", ")	
	return (counts)
}