spessore=2.5;
$fn=100;

module pie_slice(r, start_angle, end_angle) {
    R = r * sqrt(2) + 1;
    a0 = (4 * start_angle + 0 * end_angle) / 4;
    a1 = (3 * start_angle + 1 * end_angle) / 4;
    a2 = (2 * start_angle + 2 * end_angle) / 4;
    a3 = (1 * start_angle + 3 * end_angle) / 4;
    a4 = (0 * start_angle + 4 * end_angle) / 4;
    if(end_angle > start_angle)
        intersection() {
        circle(r);
        polygon([
            [0,0],
            [R * cos(a0), R * sin(a0)],
            [R * cos(a1), R * sin(a1)],
            [R * cos(a2), R * sin(a2)],
            [R * cos(a3), R * sin(a3)],
            [R * cos(a4), R * sin(a4)],
            [0,0]
       ]);
    }
}

module gancio(){
    linear_extrude(height = 30){

        union(){
    translate([10.5,0,0])

                translate([-8,10,0])
                rotate([0,0,90])
                
                difference(){
                pie_slice(8+spessore, -50, 180);
                pie_slice(8, -100, 250);
                }

                pie_slice(spessore, 270, 365);

                //translate([6,-19,0])
                //square(center = false,size = [spessore, 20] );

                //translate([17.5,-19,0])
                //rotate([0,0,30])
                //square(center = false,size = [spessore, 23] );

                rotate([0,0,0])
                translate([0,0-25,0])
                square(center = false,size = [spessore, 25] );
            }
    }

 translate([7,-17,16])
 rotate([0,270,0])
 portaCalamita();
   
}

module calamita(){
 cylinder($fn=100,d=8.10,h=4.13, center = false);
}


module pezzo(){
    difference(){
    linear_extrude(height = 28){
    translate([10.1,-26,0])
                square(center = false,size = [4, 22] );
                }

    //calamita
    translate([9,-20,13])
                rotate([0,90,0]){

                                  calamita();
                }
            }  
    }
    
module portaCalamita(){
        difference(){
            translate([0,0,0.03])
            cylinder($fn=100,d=10,h=5.5, center = false);
            calamita();
        }
    }


//translate([6,7,0])  cylinder($fn=100,d=11,h=200, center = false);


gancio();


rotate([0,180,1800])    

translate([-8.9,2.9,-29])
pezzo();



