echo(version=version());
$fn = 500;
// rotate_extrude() rotates a 2D shape around the Z axis. 
// Note that the 2D shape must be either completely on the 
// positive or negative side of the X axis.
color("red")
    rotate_extrude()
        translate([13, 0])
            square([3,16.4]);
            
color("green")
    translate([0,0,2])
    rotate_extrude()
        translate([11,0])
            square([2.1,13.8]);
            





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
