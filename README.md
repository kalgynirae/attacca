*Attacca*
========

*The geolocation-powered remote theme music activator.*

    The age-old expression is once again voiced--
    "Which method of entrance is prudently choiced?"
    From much speculation a case doth egress
    And after review we're obliged to confess:

    There's not a more marvelous way to announce
    Your arrival to everyone there in the house
    Than by playing theme music with volume cranked high,
    With singing and dancing and family nearby!
    A fitting hoopla for this day of the Pi.

How it works
------------

*Attacca* consists of two simple services: one that keeps track of users'
**homeness** and exposes a simple HTTP API, and one that polls the server
and plays the user's theme music whenever the user arrives home. The user can
employ whatever method he/she wishes to notify the server of arrivals and
departures. The authors recommend the use of a geofencing application that can
make HTTP requests (e.g., [Geofencer] or [Tasker]) whenever the user enters a
particular area.

Prerequisites
-------------

### Client

*   `curl`
*   `mplayer`

### Server

*   Python 3 (and `virtualenv`)

Setup
-----

### Client

1.  Clone this repository.

        $ git clone https://github.com/kalgynirae/attacca.git
        $ cd attacca

2.  Run the client script.

        $ ./client.sh <server> <name> <theme_music>

### Server

1.  Clone this repository.

        $ git clone https://github.com/kalgynirae/attacca.git
        $ cd attacca

2.  Create a virtualenv.

        $ virtualenv env

3.  Install dependencies.

        $ env/bin/pip install flask

4.  Run the server.

        $ env/bin/python server.py

[Geofencer]: https://play.google.com/store/apps/details?id=com.arpacell.fencer
[Tasker]: http://tasker.dinglisch.net/
