//cube([50,50,3],center=true);

diametro=80;
diametroBase=100;
spessore=7;
spessoreBase=10;
altezza=80;
altezzaPresa=70;
$fn=150;


module aereosol(){
color(c="red"){
cylinder(h=spessore,d=13,center=true);
translate([0,0,-spessore])
cylinder(h=spessore,d=47,center=true);
}
}



module presa(){
    difference(){
    translate([0,0,-altezzaPresa/2])
    cylinder(h=altezzaPresa+spessore,d=diametro,center=true);

    translate([0,0,-altezzaPresa/2-spessore/2])
    cylinder(h=altezzaPresa+1,d=diametro-5,center=true);

    translate([diametro/4-6,0,0])
    cube([diametro/2+12,20,2*altezzaPresa],center=true);

    translate([0,0,-96])
    rotate([70,0,90])    
    cube([diametro+12,altezzaPresa,2*altezzaPresa],center=true);
    
    }

    translate([diametro/2-5,-9,0])
    cylinder(h=spessore,d=10,center=true);
    translate([diametro/2-5,9,0])
    cylinder(h=spessore,d=10,center=true);
    
    
}
module base(){
    translate([0,0,altezza])
    cylinder(h=spessore,d=diametroBase,center=true);
    translate([0,20,altezza/2])
    cylinder(h=altezza+spessore,d=10,center=true);
    translate([0,-20,altezza/2])
    cylinder(h=altezza+spessore,d=10,center=true);
    translate([-22,0,altezza/2])
    cylinder(h=altezza+spessore,d=10,center=true);
    
}

module base_daTogliere(){
    translate([0,20,altezza/2-2])
    cylinder(h=altezza+spessore,d=10+0.4,center=true);
    translate([0,-20,altezza/2-2])
    cylinder(h=altezza+spessore,d=10+0.4,center=true);
    translate([-22,0,altezza/2-2])
    cylinder(h=altezza+spessore,d=10+0.4,center=true);
    
}


//aereosol();

//difference(){
//presa();
//base_daTogliere();     
//}

presa();
base();

