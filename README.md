# D.B.SHDB
-Daniel.Bullimore.ShellDatabase
Simple Shell Database engine for shell scripts

Just joined github need to publish something, anything. D.B.SHDB is my smallest working project.

I wrote this script along time ago, its an old school Tab file io engine.
It is small and basic by design.
I intended to produce a persistent memory system for unix scripts.
The hope was the engine would function with out modification on any *nix shell.
The engine can: Get, Add, Delete, Replace; key pairs in db files.
Basic error/syntax checking is included.
As it stands there are no create table functions, scripts must provide a file name for each action.
My decision on a db table file directory and create/destroy table functions has not been made yet.

This engine was written on like FreeBSD 8 or 9 and still functions on 11. And has been used as part of my Freebsd IDS for the past 6 years.

Daniel
