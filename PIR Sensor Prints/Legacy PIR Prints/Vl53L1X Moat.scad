echo(version=version());
$fn = 500;
// This is a simple "moat" to go around a Vl53L1X sensor for potting
color("yellow")
    linear_extrude(6.5,false)
        translate([2, -4])
            square([1,7.5]);

color("red")
    linear_extrude(6.5,false)
        translate([-3.5, -4])
            square([1,7.5]);
            
color("green")
    linear_extrude(6.5,false)
        translate([-3.5,3.5])
            square([6.5,1]);
            

color("purple")
    linear_extrude(6.5,false)
        translate([-3.5,-5])
            square([6.5,1]);



// Written in 2015 by Torsten Paul <Torsten.Paul@gmx.de>
//
// To the extent possible under law, the author(s) have dedicated all
// copyright and related and neighboring rights to this software to the
// public domain worldwide. This software is distributed without any
// warranty.
//
// You should have received a copy of the CC0 Public Domain
// Dedication along with this software.
// If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.
