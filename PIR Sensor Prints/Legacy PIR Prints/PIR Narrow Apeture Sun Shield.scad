// Solar Shade for the PIR sensor
// We want to protect the PIR sensor from 10am to 2pm - Local solar time
// At 10am the sun should be 30 degrees from vertical
// So, our solar shade should be atan(30/40) or 37 degrees - good enough


difference() {
    translate([-15,-10,0]) cube([30,25,2]);                                     // This is the backplane of the sun visor
    color ("Black") translate([0,5,0]) cylinder(h=2,r=4.5, $fn=200);             // This is the hole in the center
};
translate([-15,13,2]) color("Blue") cube([30,2,15]);                         // This is the top of the visor

module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );

       }
   
 color("Red") translate([13,-7,2]) prism(2, 20, 15);

 color ("Green") translate([-15,-7,2]) prism(2, 20, 15);