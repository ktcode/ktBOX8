//
// ktBOX8
//
//





gap1 = 0.001;
gap2 = 0.002;
th = 2;

X = 103;



a();
//b();
//c();

module a()
{
difference() //color( "Blue" )
{
    union()
    {
        translate([0, 0, 0]) scale([1, 0.9, 1]) rotate_extrude(angle=180, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5+2);
        rotate([0, 180, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5+2);
        rotate([0, 0, -24]) translate([X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5+2, h=30, $fn=100);
        rotate([0, 0, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5+2);
        rotate([0, 0, 24]) translate([-X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5+2, h=30, $fn=100);
        
        translate([-47/2, -93+4, -5]) cube([47, 25, 5]);
        translate([-47/2, -93+4+25/2, -5]) rotate([90, 0, 90]) cylinder(r=25/2, h=47, $fn=100);
        
        rotate([0, 0, -24]) translate([X/2, 0, -13]) rotate([90, 0, 0]) cylinder(r=5+2, h=38+34, $fn=100);
        rotate([180, 0, -24]) translate([X/2, (38+34)/2, ((5+2)*2)/2]) cube([(5+2)*2, 38+34, (5+2)*2], center=true);
        rotate([180, 0, -24]) translate([X/2, 0, 13]) rotate([90, 0, 0]) cylinder(r=5+2, h=8, $fn=100);
        rotate([0, 0, -24]) translate([X/2, 8/2, -((5+2)*2)/2]) cube([(5+2)*2, 8, (5+2)*2], center=true);
        
        rotate([0, 0, 24]) translate([-X/2, 0, -13]) rotate([90, 0, 0]) cylinder(r=5+2, h=38+34, $fn=100);
        rotate([180, 0, 24]) translate([-X/2, (38+34)/2, ((5+2)*2)/2]) cube([(5+2)*2, 38+34, (5+2)*2], center=true);
        rotate([180, 0, 24]) translate([-X/2, 0, 13]) rotate([90, 0, 0]) cylinder(r=5+2, h=8, $fn=100);
        rotate([0, 0, 24]) translate([-X/2, 8/2, -((5+2)*2)/2]) cube([(5+2)*2, 8, (5+2)*2], center=true);
        
        difference()
        {
            union()
            {
                translate([-27, -57, 5]) rotate([-35, 0, 40]) resize(newsize=[14, 70, 40]) sphere(r=100);
                translate([ 27, -57, 5]) rotate([-35, 0,-40]) resize(newsize=[14, 70, 40]) sphere(r=100);
                translate([ 41, -45, 0]) rotate([0, 0,-24]) resize(newsize=[18, 95, 30]) sphere(r=100);
            }
            translate([-100, -100, -50-2-15]) cube([200, 200, 50]);
            translate([-100, -100, 0]) cube([200, 200, 50]);
            translate([-50, -45, -10]) cube([10, 10, 10]);
        }
        
        translate([-48.3/2, -91, -10]) cube([48.3, 3, 10]);
    }
    translate([0, 0, 0]) scale([1, 0.9, 1]) rotate_extrude(angle=180, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5);
    rotate([0, 180, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5);
    rotate([0, 0, -24]) translate([X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5, h=30, $fn=100);
    rotate([0, 0, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5);
    rotate([0, 0, 24]) translate([-X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5, h=30, $fn=100);
    
    rotate([0, 0, -24]) translate([X/2, 0, -13]) rotate([90, 0, 0]) cylinder(r=5, h=38-2, $fn=100);
    rotate([180, 0, -24]) translate([X/2, (38-2)/2, ((5+2)*2)/2]) cube([(5)*2, 38-2, (5+2)*2], center=true);
    rotate([180, 0, -24]) translate([X/2, 0, 13]) rotate([90, 0, 0]) cylinder(r=5, h=8-2, $fn=100);
    rotate([0, 0, -24]) translate([X/2, (8-2)/2, -((5+2)*2)/2]) cube([(5)*2, 8-2, (5+2)*2], center=true);

    rotate([0, 0, 24]) translate([-X/2, 0, -13]) rotate([90, 0, 0]) cylinder(r=5, h=38-2, $fn=100);
    rotate([180, 0, 24]) translate([-X/2, (38-2)/2, ((5+2)*2)/2]) cube([(5)*2, 38-2, (5+2)*2], center=true);
    rotate([180, 0, 24]) translate([-X/2, 0, 13]) rotate([90, 0, 0]) cylinder(r=5, h=8-2, $fn=100);
    rotate([0, 0, 24]) translate([-X/2, (8-2)/2, -((5+2)*2)/2]) cube([(5)*2, 8-2, (5+2)*2], center=true);

    translate([-47/2+1, -93+4+1, -5]) cube([47-2, 25-2, 5]);
    translate([-47/2+1, -93+4+25/2, -5]) rotate([90, 0, 90]) cylinder(r=25/2-1, h=47-2, $fn=100);
    
    translate([-38/2, -91-gap1, -5]) rotate([-90, 90, 0]) screw_hole();
    translate([ 38/2, -91-gap1, -5]) rotate([-90, 90, 0]) screw_hole();

    translate([-100, -100, 0]) cube([200, 200, 50]);
}
}



module b()
{
difference() //color( "Black" )
{
    union()
    {
        translate([0, 0, 0]) scale([1, 0.9, 1]) rotate_extrude(angle=180, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5+2);
        rotate([0, 180, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5+2);
        rotate([0, 0, -24]) translate([X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5+2, h=30+8+34, $fn=100);
        rotate([0, 0, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5+2);
        rotate([0, 0, 24]) translate([-X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5+2, h=30+8+34, $fn=100);
        
        translate([-27, -57, 5]) rotate([-35, 0, 40]) resize(newsize=[14, 70, 40]) sphere(r=100);
        translate([ 27, -57, 5]) rotate([-35, 0,-40]) resize(newsize=[14, 70, 40]) sphere(r=100);
        
        translate([-47/2, -93+4, 0]) cube([47, 25, 10]);
        difference()
        {
            translate([0, -80.5+4, 17]) rotate([180, 0, 0]) rotate([0, 90, 0]) linear_extrude(height=47, center=true) circle(14.4, $fn=3);
            translate([-50/2, -93+4+20/2, 29]) cube([50, 5, 5]);
        }
        translate([-47/2, -80.5+4, 28.2]) rotate([90, 0, 90]) cylinder(r=1.6, h=47, $fn=100);
        
        translate([ 41, -45, 0]) rotate([0, 0,-24]) resize(newsize=[18, 95, 30]) sphere(r=100);
        translate([ 28, -70+0.2, 0]) rotate([0, 0,-27]) resize(newsize=[17, 40, 40]) sphere(r=100);
        translate([ 25, -74, 0]) rotate([0, -15,-40]) resize(newsize=[17, 35, 50]) sphere(r=100);
        
        translate([-30/2, 48, 0]) cube([30, 5, 15]);
    }
    translate([0, 0, 0]) scale([1, 0.9, 1]) rotate_extrude(angle=180, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5);
    rotate([0, 180, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5);
    rotate([0, 0, -24]) translate([X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5, h=30, $fn=100);
    rotate([0, 0, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5);
    rotate([0, 0, 24]) translate([-X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5, h=30, $fn=100);
    
    translate([-27, -57, 5]) rotate([-35, 0, 40]) resize(newsize=[14-2, 70-2, 40-2]) sphere(r=100);
    translate([ 27, -57, 5]) rotate([-35, 0,-40]) resize(newsize=[14-2, 70-2, 40-2]) sphere(r=100);
    
    translate([-(47-4)/2, -93+1+4, -gap1]) cube([47-4, 25-2, 10]);
    difference()
    {
        translate([0, -80.5+4, 17-0.5]) rotate([180, 0, 0]) rotate([0, 90, 0]) linear_extrude(height=47-4, center=true) circle(14.4-1, $fn=3);
        translate([-50/2, -93+4+20/2, 29-1]) cube([50, 5, 5]);
    }
    
    translate([ 41, -45, 0]) rotate([0, 0,-24]) resize(newsize=[18-2, 95-2, 30-2]) sphere(r=100);
    translate([ 28, -70+0.2, 0]) rotate([0, 0,-27]) resize(newsize=[17-2, 40-2, 40-2]) sphere(r=100);
    translate([ 25, -74, 0]) rotate([0, -15,-40]) resize(newsize=[17-2, 35-2, 50-2]) sphere(r=100);
    
    translate([-55/2, -93, 0]) cube([55, 4, 10]);

    translate([-22/2, 53+gap1, 11]) rotate([90, 90, 0]) screw_hole();
    translate([ 22/2, 53+gap1, 11]) rotate([90, 90, 0]) screw_hole();
    
    translate([-100, -100, -50]) cube([200, 200, 50]);
}
}



module c()
{
difference() //color( "Blue" )
{
    union()
    {
        translate([-48.3/2, -91, -10]) rotate([0, 0, -90]) hinge();
        translate([48.3/2-48/3+0.3, -91, -10]) rotate([0, 0, -90]) hinge();
    }
}
}






module screw_hole()
{
    cylinder( 10, 1.6, 1.6, $fn=30 );
    translate( [0, 0, 1.5] ) cylinder( 10, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
}



module rear_screw_hole()
{
    translate([0, 0, 3]) cylinder(5, 1.5, 1.5, $fn=30);
    translate([0, 0, 2.2-gap1]) cylinder(0.8+gap2, 1.5+0.7, 1.5, $fn=30);
    translate([0, 0, -gap1]) cylinder(2.2+gap1, 3.25+0.4, 3.25-0.6, $fn=30);
    translate([0, 0, -10]) cylinder(10, 3.25+0.4, 3.25+0.4, $fn=30);
}


module hinge()
{
h = 8;
hinge_x = 6.5;
hinge_y = 48/3-0.3;
hinge_hole = 1.1+0.4;
difference()
{
    union()
    {
        cube( [hinge_x, hinge_y, h+th] );
        translate( [hinge_x/2+0.25, hinge_y/2, h+th] ) rotate( [90, 0, 0] ) cylinder( hinge_y, hinge_x/2-0.25, hinge_x/2-0.25, center=true, $fn=30 );
    }
    translate( [hinge_x/2+0.25, hinge_y/2, h+th] )
     rotate( [90, 0, 0] ) cylinder( hinge_y+gap2, hinge_hole, hinge_hole, center=true, $fn=30 );
}
}
