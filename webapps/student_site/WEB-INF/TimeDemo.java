class MyTime
{
int hours,minutes;
public void getTime(int hours,int minutes)
{
this.hours=hours;
this.minutes=minutes;
}
public void showTime()
{
System.out.println("\n Hours :"+hours+"\n Minutes :"+minutes);
}
public void add(MyTime n1,MyTime n2)
{
int h;
h=(n1.hours+n2.hours)/60;
hours=(n1.hours+n1.hours)+h;
minutes=(n2.minutes+n2.minutes)%60;
}
}
class TimeDemo
{
public static void main(String ar[])
{
MyTime t1,t2,t3;
t1=new MyTime();
t2=new MyTime();
t3=new MyTime();
t1.getTime(20,30);
t2.getTime(30,40);
t3.add(t1,t2);

t1.showTime();
t2.showTime();
t3.showTime();

}
}