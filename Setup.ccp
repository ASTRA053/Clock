
#include<iostream>
#include<chrono>
#include<thread>
using namespace std;
main()
{
 
  int i=0,h,m,s;
 
 /* input the present time to run the clock */
  
    cout<<" input the hour"<<endl;
    cin>>h;
    cout<<" input the  minute"<<endl;
    cin>>m;
    cout<<" inter the second "<<endl;
    cin>>s;
    
    
 jj:
   if (h==12)
       h=h*0;
   
 kk:
 
   if (m==60)
         h++;
         
   if (m==60)
       m=m*0;
       
   if (h==12)
     goto jj;
     
 hh:
   
   if (s==59)
         m++;

   if (s==59)
       s=s*0;
   
   if (m==60)
     goto kk;
             
   for(i;i<3600000;i++)
        {
         
          s++;
          
 /*     
          These two commands are used to make the program run
              every one second for real time simulation.
             To use them,the two libraries must be called
                     (chrono ... and ... thread)
 */
        
          auto start = std::chrono::high_resolution_clock::now();
          std::this_thread::sleep_for(1s);
           
          
          cout<<"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
          cout<<h<<":"<<m<<":"<<s<<endl;
   
          if(s==59)
          goto hh;

        }
 
 
  return 0;
}
