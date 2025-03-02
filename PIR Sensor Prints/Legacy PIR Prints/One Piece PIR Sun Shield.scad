// Solar Shade for the PIR sensor
// We want to protect the PIR sensor from 10am to 2pm - Local solar time
// At 10am the sun should be 30 degrees from vertical
// So, our solar shade should be atan(30/40) or 37 degrees - good enough


difference() {
    translate([-30,-20,0]) cube([60,50,2]);                                     // This is the backplane of the sun visor
    color ("Black") translate([0,5,0]) cylinder(h=2,r=11, $fn=200);             // This is the hole in the center
};
translate([-30,28,2]) color("Blue") cube([60,2,30]);                         // This is the top of the visor


module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );

       }
   
 color("Red") translate([28,-10,2]) prism(2, 40, 30);

 color ("Green") translate([-30,-10,2]) prism(2, 40, 30);
       
       
 
echo(version=version());
$fn = 500;
// rotate_extrude() rotates a 2D shape around the Z axis. 
// Note that the 2D shape must be either completely on the 
// positive or negative side of the X axis.

            
color("purple")
    translate([0,5,-5.4])
    rotate_extrude()
        translate([11,2.8])
            square([1.5,4.4]);
       
       
     //color("red")
    //rotate_extrude()
    //    translate([12.5, 0])
    //        square([7.2,2]);