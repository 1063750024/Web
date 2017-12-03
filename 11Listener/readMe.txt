监听器：Listener
     
   下面的三个接口都是 继承了   EventListener  这个接口！
  只要是想实现监听器的功能，必须  扩展这个   EventListener 接口！
/**
 * A tagging interface that all event listener interfaces must extend.
 * @since JDK1.1
 */ 
    
1.HttpSessionBindingListener   
    只有实现HttpSessionBindingListener接口的类，才能被监听！
    01.valueBound   
    02.valueUnBound
  

2.HttpSessionListener 

3.ServletContextListener