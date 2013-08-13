acksed.pkg
==========

acksed is a dotpkg plugin to add "acksed" (and "ack-sed" alias) to your shell environment.

The acksed shell function, which is really implemented as ack -l | xargs perl -pie, performs global 
search and replace on your file tree.

    $ ack-sed "foo" "bar"
    
will replace every occurrence (foo, food, foodfight) of the letters "foo" with the letters "bar". 

Since it uses ack (built on perl), you can use perl regexes in the pattern (suitably escaped).

Since it uses perl, you can use perl regex-foo in the replacement expression (suitably escaped).

Installation
------------

1. Add to your profile: 
    
    dotpkg aghast/acksed.pkg
    
2. Re-run your profile (relogin, or re-run by hand).

3. Profit!
