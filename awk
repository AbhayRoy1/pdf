exp1 BEGIN{
drpd=0;
rcd=0;
}
{
if($1=="d"&&$4=="3")
drpd++;
if($1=="r"&&$4=="3")
rcd++;
}
END{
printf("\ndroppedreceievdpkts are %d\n%d\n\n",drpd,rcd);
}
exp2 
BEGIN{
tcppkt=0;
udppkt=0;
}
{
if($1=="r"&&$4=="3"&&$5=="tcp"&&"1540")
tcppkt++;
if($1=="r"&&$4=="3"&&$5=="cbr"&&"1000")
udppkt++;
}
END{
printf("\n\nn0 tcppkts&udppkts:%d\n%d\n\n",tcppkt,udppkt);
}


exp 5
BEGIN{
tcpcnt1=0;
tcpcnt2=0;
}
{
if($1=="r"&&$3=="_1_"&&$4=="AGT")
{
tcpcnt1++;
}
if($1=="r"&&$3=="_2_"&&$4=="AGT")
{
tcpcnt2++;
}
}
END{
printf("\n total no tcppktsrecd at node 1 and node 2 : %d\n %d\n", tcpcnt1, tcpcnt2);
}
