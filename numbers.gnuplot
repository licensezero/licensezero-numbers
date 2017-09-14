set terminal svg size 800,600
set title "License Zero"
set xlabel "Private License Price ($)"
set ylabel "($)"
stripe(x) = 0.30 + exp(x*0.0029)
agent(x) = exp(x*0.006)
fees(x) = stripe(x) + agent(x)
plot [3:250] [0:10] stripe(x) title "Stripe Fee", agent(x) title "Agent Commission", fees(x) title "Total Fees"
