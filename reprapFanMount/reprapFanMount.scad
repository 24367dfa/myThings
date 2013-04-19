srewDiam = 2.8; // diameter in mm
union()
{  
  // fan mounting base
  difference()
  {
    translate([-20,-20,0])cube([40, 40, 13]); 
    union()
      {
	  cylinder(r=19, h=13);
	  // screwholes
        translate([-16,-16,0])cylinder(r=1.4,h=10);
	  translate([-16,16,0])cylinder(r=1.4,h=10);
	  translate([16,-16,0])cylinder(r=1.4,h=10);
	  translate([16,16,0])cylinder(r=1.4,h=10);
	}
  translate([-20,-12,2])cube([10,24,9]);
  }
  // x-carriage mount plate
  difference() 
  {
    translate([-20,-20,13])cube([8,40,8]);
    union()
    {
      // screwholes
      translate([-19,7.5,17])rotate([0,90,0])cylinder(r=1.4,h=7);
      translate([-19,-7.5,17])rotate([0,90,0])cylinder(r=1.4,h=7);
    }
  }
  // air duct
  difference()
  {
    translate([-30,-20,0])cube([10,40,21]);
    translate([-28,-20,2])cube([8,32,17]);
  }
  
}