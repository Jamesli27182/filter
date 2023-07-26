function [particle_new] = particle_resample(num_particles, particle, weight)

% empty set of particles
particle_new = [];

% Random number to begin resampling
r = (1/num_particles)*rand(1);

% Keeping track of total weight (< 1)
weight_running_total = weight(1);
count = 1;

for(p_count=1:1:num_particles)
    resample_weight = r + (1/num_particles)*(p_count-1);
    while(resample_weight > weight_running_total)
        count = count + 1;
        weight_running_total = weight_running_total + weight(count);
    end
    particle_new = horzcat(particle_new,particle(:,count));
    
end
