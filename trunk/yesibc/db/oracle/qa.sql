1) 啥时用到以下几种情况？
一 启动数据库 
1）启动实例，装载并打开数据库： 
   startup 
2）启动实例，装载并打开数据库： 
   startup nomount 
3)启动实例，并装载数据库： 
  startup mount 
4)在启动的过程中限制访问数据库 
  startup restrict 
5)迫使实例启动 
  startup force 
6)启动实例，装载数据库，并启动完整的介质恢复过程 
  startup open recover 
  
2)
SP2-0027: Input is too long (> 2499 characters) - line ignored
在values(' xxxxxxx...3000..xxx')中加回车，如：
values(' xxxxxxx...
3000..xxx')
确保每行不超2499就能解决了