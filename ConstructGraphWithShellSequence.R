#####################################################################################
# Supplementary material for ADD TITLE OF PAPER
#####################################################################################
#####################################################################################
library(igraph) 
#####################################################################################
######################## Construct.Graph.With.Shell.Sequence ########################
#####################################################################################
Construct.Random.Graph.With.Shell.Sequence<-function(shell.seqn,permute=FALSE){
	shell.seqn<-sort(shell.seqn)
	n<-length(shell.seqn)
  if (any(shell.seqn[(n-shell.seqn[n]):n]<shell.seqn[n])){
    print("Erroneous input: Shell Sequence is not realizable")
    return (NULL)
  }
	g<-graph.empty(n, directed=FALSE)
	p<-rep(0,n)
  if ((n-shell.seqn[n]-1)!=0){
    for (i in 1:(n-shell.seqn[n]-1)){
      R<-Random.Subset( (i+1):n, max(0, shell.seqn[i]-p[i]),shell.seqn[i])
      for (j in R){
        g<-add.edges(g,c(i,j))
        if (shell.seqn[j]==shell.seqn[i])
          p[j]=p[j]+1
      }
    }
  }
	S<-(n-shell.seqn[n]):n
	for (j in S){
		if (p[j]==0){
			S<-S[S!=j] #S=S-{j}
			g<-add.edges(g,as.vector(rbind(rep(j,length(S)), S)))
		}
	}
  #Whileloop = TRUE;
	while (length(S)!=0){
    if(length(S)==1)
      i<-S[1]
    else
      i<-sample(S,1)

    S<-S[S!=i]
#     print("S is ")
#     print(S);
#     print("p");
#    print(p);
#     print("i is");
#     print(i);
    
    
		R<-Random.Subset(S,length(S)-p[i],length(S))
		for (j in R){
			g<-add.edges(g,c(i,j))
		}
		for (j in setdiff(S,R)){
			p[j]<-p[j]-1
			if (p[j]==0){
				S<-S[S!=j] #S=S-{j}
				if (length(S)!=0){
					g<-add.edges(g,as.vector(rbind(rep(j,length(S)), S)))
				}
			}
		}
	}
	#ERROR CHECK
  if (!is.simple(g)){
    print("ERROR: the graph produced is not simple! Please report to developer")
  }
	if (any (graph.coreness(g) != shell.seqn)){
		print("ERROR: the graph produced has the wrong Shell Sequence! Please report the bug to developer.")
	}
  ## the 'optional' step for permuting vertices before returning the graph (this ensures we get _all_ labeled graphs with given shell distribution)
	if(permute){
    g<-permute.vertices(g, sample(vcount(g)))
  }
  return (g)
}

Random.Subset<-function(S, min.size, max.size){
  if (max.size>length(S)){
    print("Random.Subset: Error max.size>length(S).")
  }
  if (min.size<0){
    min.size=0
  }
	if (min.size==max.size){
		r=min.size
	}
	else if (min.size<max.size){
		r<-sample(min.size:max.size,1)
	}
	else{
		print("Error! Min.Size>Max.Size in Random Subset.")
		return(NULL)
	}
  if (length(S)==0){
    return (S)
  }
  else if (length(S)==1){
    return (S[1])
  }
  else{
    return(  R<-sample(S,r))
  }
}