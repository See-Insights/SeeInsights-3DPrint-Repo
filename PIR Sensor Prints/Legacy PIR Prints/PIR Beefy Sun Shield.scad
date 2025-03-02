// Solar Shade for the PIR sensor
// We want to protect the PIR sensor from 10am to 2pm - Local solar time
// At 10am the sun should be 30 degrees from vertical
// So, our solar shade should be atan(30/40) or 37 degrees - good enough

// This is the extra beefy version with thicker tops and side - for tennis court use


difference() {
    translate([-30,-20,0]) cube([60,50,2]);                                     // This is the backplane of the sun visor
    color ("Black") translate([0,5,0]) cylinder(h=2,r=20, $fn=200);             // This is the hole in the center
};


module prism(l, w, h){                                                          // This section describes the connections between the prisms
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
       }
 color("Blue") translate([-30,26,2]) cube([60,4,30]);                         // This top the top of the visor

 color("Red") translate([26,-14,2]) prism(4, 40, 30);                         // Right side

 color ("Green") translate([-30,-14,2]) prism(4, 40, 30);                     // Left Side