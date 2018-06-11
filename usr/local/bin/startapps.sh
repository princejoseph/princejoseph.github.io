ttab -d ~/Desktop/projects/DockerConfig docker-compose up db store

sleep 2

ttab pt
sleep 15
ttab -d ~/Desktop/projects/PackageTracker sidekiq
ttab -d ~/Desktop/projects/PackageTracker tail -f log/sidekiq.log
ttab -d ~/Desktop/projects/PackageTracker rpush start
ttab -d ~/Desktop/projects/PackageTracker mailcatcher

ttab cfw
sleep 15
ttab -d ~/Desktop/projects/Airspace sidekiq
ttab -d ~/Desktop/projects/Airspace tail -f log/sidekiq.log

ttab dms
