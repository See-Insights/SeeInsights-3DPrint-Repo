// This is the ring that connects to the inner sensor 
// Assume a 1" hole in the face of the enclosure
// The enclosure is 2.8mm thick
// The outer shun shield has a 39mm hole in the center


echo(version=version());
$fn = 500;
// rotate_extrude() rotates a 2D shape around the Z axis. 
// Note that the 2D shape must be either completely on the 
// positive or negative side of the X axis.
color("red")
    rotate_extrude()
        translate([12.5, 0])
            square([7.2,2]);
            
color("green")
    translate([0,0,-2.8])
    rotate_extrude()
        translate([11,2.8])
            square([1.5,5]);
            

