likes(john,jane).    
likes(jane,john).    
likes(jack,jane).    

% and a single Rule below:    
friends(X,Y) :- likes(X,Y) , likes(Y, X).  
