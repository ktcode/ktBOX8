//
// ktBOX8
//
//





gap1 = 0.001;
gap2 = 0.002;
th = 2;

X = 103;


//a();
//b();
c();

module a()
{
difference() //color( "Blue" )
{
    union()
    {
        scale([1, 0.9, 1]) rotate_extrude(convexity=10, $fn=100) translate([X/2, 0, 0]) circle(r=5+2, $fn=100);
    }
    scale([1, 0.9, 1]) rotate_extrude(convexity=10, $fn=100) translate([X/2, 0, 0]) circle(r=5, $fn=100);
    
    translate([-100, -200, -10]) cube([200, 200, 20]);
    translate([-100, -100, 0]) cube([200, 200, 20]);
}
difference() //color( "Blue" )
{
    union()
    {
        translate([ X/2-9.5/2, 0, -5-14]) cube([9.5, 5, 14]);
        translate([-X/2-9.5/2, 0, -5-14]) cube([9.5, 5, 14]);
    }
    translate([ X/2, 3, -10-2]) rotate([90, 0, 0]) rear_screw_hole();
    translate([-X/2, 3, -10-2]) rotate([90, 0, 0]) rear_screw_hole();

    
}
}



module b()
{
difference() //color( "Blue" )
{
    union()
    {
        translate([X/2-7, 0, 0]) rotate([0, 180, 180-35]) cube([12, 90, 20+2]);
        translate([X/2+7, 0, -22]) rotate([0, 0, 180]) cube([14, 18, 20+2]);
        translate([X/2+7, 0-18, -22]) rotate([0, 0, 180-15]) cube([12, 40, 20+2]);
        translate([X/2-3.3, 0-56.6, -22]) rotate([0, 0, 180-34.35]) cube([12, 42.88, 20+2]);
        translate([X/2+7+7, 0-14, -22]) rotate([0, 0, 180-22.1]) cube([12, 46, 20+2]);
        translate([X/2+7, 0, -22]) rotate([0, 0, 180+26.5]) cube([12, 15.65, 20+2]);
        translate([X/2, -20, -22]) rotate([0, 0, 180-32]) cube([13, 60, 20+2]);
        translate([X/2, -20, -22]) rotate([0, 0, 180-18]) cube([13, 60, 20+2]);
        
        translate([-X/2+7, 0, -22]) rotate([0, 0, 180+35]) cube([12, 90, 20+2]);
        translate([-X/2+7, 0, -22]) rotate([0, 0, 180]) cube([14, 18, 20+2]);
        translate([-X/2-7, 0-18, 0]) rotate([0, 180, 180+15]) cube([12, 40, 20+2]);
        translate([-X/2+3.3, 0-56.6, 0]) rotate([0, 180, 180+34.35]) cube([12, 42.88, 20+2]);
        translate([-X/2, -20, 0]) rotate([0, 180, 180+32]) cube([13, 60, 20+2]);
        translate([-X/2, -20, 0]) rotate([0, 180, 180+18]) cube([13, 60, 20+2]);
        
        translate([-45/2, -92, -22]) cube([45, 42, 20+2]);
    }

    
    translate([0, 0, 2]) union()
    {
        translate([X/2-7+1.8, 0, 0]) rotate([0, 180, 180-35]) cube([12, 90, 20+2]);
        translate([X/2+7-2, 0, -22]) rotate([0, 0, 180]) cube([14-4, 18, 20+2]);
        translate([X/2+7-2, 0-18, -22]) rotate([0, 0, 180-15]) cube([12, 40, 20+2]);
        translate([X/2-3.3-2, 0-56.6, -22]) rotate([0, 0, 180-34.35]) cube([12, 42.88-2.5, 20+2]);
        translate([X/2+7+7-2, 0-14-1, -22]) rotate([0, 0, 180-22.1-0.5]) cube([12, 46-1, 20+2]);
        translate([X/2+7-2, 0-1, -22]) rotate([0, 0, 180+26.5]) cube([12, 15.65, 20+2]);
        translate([X/2, -20, -22]) rotate([0, 0, 180-32]) cube([13, 60, 20+2]);
        translate([X/2, -20, -22]) rotate([0, 0, 180-19]) cube([13, 60, 20+2]);
    }
    
    translate([0, 0, 2]) union()
    {
        translate([-X/2+7-2, 0, -22]) rotate([0, 0, 180+35]) cube([12, 90, 20+2]);
        translate([-X/2+7-2, 0, -22]) rotate([0, 0, 180]) cube([14-4, 18, 20+2]);
        translate([-X/2-7+2, 0-18, 0]) rotate([0, 180, 180+15]) cube([12, 40, 20+2]);
        translate([-X/2+3.3+2, 0-56.6, 0]) rotate([0, 180, 180+34.35]) cube([12, 42.88-2.5, 20+2]);
        translate([-X/2, -20, 0]) rotate([0, 180, 180+32]) cube([13, 60, 20+2]);
        translate([-X/2, -20, 0]) rotate([0, 180, 180+19]) cube([13, 60, 20+2]);
    }    
    
    translate([-(45-1.3)/2, -92+2, -22+2]) cube([45-1.3, 42-4, 20+2+5]);

    translate([-100, 0, -50]) cube([200, 100, 100]);
}
difference() //color( "Blue" )
{
    union()
    {
        translate([ X/2-14/2, 0, -5-17]) cube([14, 5, 22]);
        translate([-X/2-14/2, 0, -5-17]) cube([14, 5, 22]);
        
        translate([ X/2-14/2, -5, -5-17]) cube([14, 5, 22]);
        translate([-X/2-14/2, -5, -5-17]) cube([14, 5, 22]);
    }
        translate([ X/2-10/2, gap1, -5-14.5]) cube([10, 5, 14.5]);
        translate([-X/2-10/2, gap1, -5-14.5]) cube([10, 5, 14.5]);
        scale([1, 0.9, 1]) rotate_extrude(convexity=10, $fn=100) translate([X/2, 0, 0]) circle(r=5+2+0.5, $fn=100);
    
        translate([ X/2, 0, -10-2]) rotate([90, 0, 0]) screw_hole();
        translate([-X/2, 0, -10-2]) rotate([90, 0, 0]) screw_hole();
}
}

module c()
{
difference() //color( "Black" )
{
    union()
    {
        translate([0, 0, 0]) scale([1, 0.9, 1]) rotate_extrude(angle=180, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5+2);
        rotate([0, 180, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5+2);
        rotate([0, 0, -24]) translate([X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5+2, h=30, $fn=100);
        rotate([0, 0, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5+2);
        rotate([0, 0, 24]) translate([-X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5+2, h=30, $fn=100);
        
        translate([-27, -57, 5]) rotate([-35, 0, 40]) resize(newsize=[14, 70, 40]) sphere(r=100);
        translate([ 27, -57, 5]) rotate([-35, 0,-40]) resize(newsize=[14, 70, 40]) sphere(r=100);
        
        translate([-47/2, -93+4, 0]) cube([47, 25, 10]);
        translate([0, -80.5+4, 17]) rotate([180, 0, 0]) rotate([0, 90, 0]) linear_extrude(height=47, center=true) circle(14.4, $fn=3);
        
        translate([ 41, -45, 0]) rotate([0, 0,-24]) resize(newsize=[18, 95, 30]) sphere(r=100);
        translate([ 28, -70, 0]) rotate([0, 0,-18]) resize(newsize=[17, 40, 40]) sphere(r=100);
        translate([ 26, -74, 0]) rotate([0, -15,-40]) resize(newsize=[17, 35, 50]) sphere(r=100);
    }
    translate([0, 0, 0]) scale([1, 0.9, 1]) rotate_extrude(angle=180, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5);
    rotate([0, 180, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5);
    rotate([0, 0, -24]) translate([X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5, h=30, $fn=100);
    rotate([0, 0, 180]) rotate_extrude(angle=24, convexity=10, $fn=100) translate([X/2, 0, 0]) circle(5);
    rotate([0, 0, 24]) translate([-X/2, 0, 0]) rotate([90, 0, 0]) cylinder(r=5, h=30, $fn=100);
    
    translate([-27, -57, 5]) rotate([-35, 0, 40]) resize(newsize=[14-2, 70-2, 40-2]) sphere(r=100);
    translate([ 27, -57, 5]) rotate([-35, 0,-40]) resize(newsize=[14-2, 70-2, 40-2]) sphere(r=100);
    
    translate([-(47-4)/2, -93+1+4, -gap1]) cube([47-4, 25-2, 10]);
    translate([0, -80.5+4, 17-0.5]) rotate([180, 0, 0]) rotate([0, 90, 0]) linear_extrude(height=47-4, center=true) circle(14.4-1, $fn=3);
    
    translate([ 41, -45, 0]) rotate([0, 0,-24]) resize(newsize=[18-2, 95-2, 30-2]) sphere(r=100);
    translate([ 28, -70, 0]) rotate([0, 0,-18]) resize(newsize=[17-2, 40-2, 40-2]) sphere(r=100);
    translate([ 26, -74, 0]) rotate([0, -15,-40]) resize(newsize=[17-2, 35-2, 50-2]) sphere(r=100);
    
    translate([-100, -100, -50]) cube([200, 200, 50]);
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
