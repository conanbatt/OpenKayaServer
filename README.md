OpenKayaServer
==============

Any easy dev skeleton to contribute to the Kaya server.

This is a first project to attempt organization of server side changes by the community into the Kaya Go Server.

The structure provides a similar setup to how Kaya is built, with a way easier arquitecture to set up. Takes minutes instead of hours!

Code here will be evaluated and tested and merged into Kaya.gs. Code writers are expected to write tests and mantain their code until it reaches a stable point.

Server Rubyists are very welcome to help out! 

Kaya runs on ruby 1.9.2. We strongly advice rvm for ruby management.

On top of that, you will need redis. 

      In ubuntu : sudo-apt get install redis-server. 
      
Then run it with

      redis-server

To run, you will need to install all the gems in the .gems file. Respect the versions, as kaya has some old non-backward compatible gems.(Particularly ohm) 


Then run 
  
      rackup

Go to

      http://localhost:9292
