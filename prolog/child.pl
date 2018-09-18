:- dynamic age/2.
                          
age(karen,10).
age(carlos,4).
age(sara,25).                       
              
child(X) :- age(X, Y) , Y =< 11.