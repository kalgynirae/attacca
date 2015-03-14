*Attaca*
========

The geolocation-powered remote music activator.

How it works
------------

*Attaca* consists of two simple services: one that keeps track of users'
**homeness** and exposes a simple HTTP API, and one that polls the server
and plays the user's theme music whenever the user arrives home. The user can
employ whatever method he/she wishes to notify the server of arrivals and
departures. The authors recommend the use of a geofencing application that can
make HTTP requests (e.g., [Geofencer] or [Tasker]) whenever the user enters a
particular area.

Prerequisites
-------------

*   Python 3 (and `virtualenv`)
*   `curl`
*   `mplayer`

Setup
-----

### Client

1.  Clone this repository.

        $ git clone https://github.com/kalgynirae/attaca.git

2.  Run the client script.

        $ ./client.sh <server> <name> <theme_music>

### Server

1.  Clone this repository.

        $ git clone https://github.com/kalgynirae/attaca.git

2.  Create a virtualenv.

        $ virtualenv env

3.  Install dependencies.

        $ env/bin/pip install flask

4.  Run the server.

        $ env/bin/python server.py

[Geofencer]: https://play.google.com/store/apps/details?id=com.arpacell.fencer
[Tasker]: http://tasker.dinglisch.net/
