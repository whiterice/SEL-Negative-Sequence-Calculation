#! c:\Octave\3.2.3_gcc-4.4.0\bin\octave -qf

arg_list = argv ();
Ia = str2num(arg_list{1});
Ib = str2num(arg_list{2});
Ic = str2num(arg_list{3});

printf("I = [%d %d %d]", Ia, Ib, Ic)

printf ("\n\nCalculating...\n\n");

%Constants
a = 1*exp(j*120*pi/180);
r2d = 180/pi;
TxRatio = 27600/600;

%Calculations
%Symmetrical Components
I0 = ((Ia)+(Ib)+(Ic));
I1 = ((Ia)+(Ib*a)+(Ic*a^2))/3;
I2 = ((Ia)+(Ib*a^2)+(Ic*a));

I012 = [I0; I1; I2;];

%Power
Iavg = (abs(real(Ia))+abs(real(Ib))+abs(real(Ic)))/3;

%Terminal Output
printf("3I0: %d /_ %d\n\n", abs(I0), (r2d*angle(I0)));
printf("I1: %d /_ %d\n\n", abs(I1), (r2d*angle(I1)));
printf("3I2: %d /_ %d\n\n", abs(I2), (r2d*angle(I2)));

