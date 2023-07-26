%% bayer_filter
N = 6
P_Y_open = 0.6%sensor information P(Y|Open)
P_N_open = 0.4%sensor infromation P(N|Open)
P_Y_close = 0.2%sensor infromationP(Y|Close)
P_N_close = 0.8%sensor infromationP(N|Close)
P0=0.5%open and close // Initial Probability
i = 0
while i<=N
    i=i+1;
   P=(0.6*P0)/(0.6*P0+0.2*(1-P0));

   P0 = P
   
end
