
module albero(){
  
a=0;
b=0;





x1=2.92;
y1=b;


//x0=a;//+0.3;
//y0=b;//+0.3;

x0=x1;//+0.3;
y0=25.40;//+0.3;



x2=10.10;
y2=b;

x3=x2+4.77;
y3=y1+22.68;

x4=x3-1;
y4=y3+0.8;

x5=x4;
y5=y4+5.6;

x6=x5-1.25;
y6=y5;

x7=x6-1;
y7=y6+0.5;

x8=x7;
y8=y7+1.7;

x9=x6;
y9=y8+0.7;

x10=x9;
y10=y9+2.22;

x11=x10-3.5;
y11=y10+4.16;

x12=x11;
y12=y11+3.7;

x13=x12-5.50;
y13=y12;

x14=x13;
y14=y13-0.75;

x15=x12-6.05;
y15=y14;

x16=x15;
y16=y13-10.80;

x17=x16+0.3;
y17=y16;

x18=x17;
//y18=y17-2.20;
y18=y6;

x19=a;
y19=y18;

//x19=x18;
//y19=y18-5.19;

//x19=0;
//y19=25.40;

x20=x19;
y20=y0;


triangle_points =[[x0,y0],[x1,y1],[x2,y2],[x3,y3],[x4,y4],[x5,y5],[x6,y6],[x7,y7],[x8,y8],[x9,y9],[x10,y10],[x11,y11],[x12,y12],[x13,y13],[x14,y14],[x15,y15],[x16,y16],[x17,y17],[x18,y18],[x19,y19],[x20,y20]];
triangle_paths =[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]];
linear_extrude(height = 3.85, center = true, convexity = 10)
polygon(triangle_points, paths= triangle_paths);

}

module staffa(){
 cube([39,2.90,25.40]);
}

/*
albero();
translate([2.92,0,39/2])
rotate([0,90,90])
staffa();
*/
albero();
    

difference(){
    albero();
translate([-2,0,-5])
cube([20,27,10]);
}
