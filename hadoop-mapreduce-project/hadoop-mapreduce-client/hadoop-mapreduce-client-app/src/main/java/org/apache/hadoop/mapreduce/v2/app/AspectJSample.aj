////package org.apache.hadoop.mapreduce.v2.app;
////
////import org.apache.hadoop.mapreduce.v2.app.rm.ContainerRequestEvent;
////
////public aspect AspectJSample {
////    pointcut addTaskId(ContainerRequestEvent req):
////            call(void addMap(ContainerRequestEvent)) && args(req);
////
////    before(ContainerRequestEvent req): addTaskId(req)
////            {
////                System.out.println("Aspect got called.");
////                System.out.println("===================");
////                System.out.println("===================");
////                System.out.println("===================");
////                System.out.println("===================");
////                System.out.println(req.getAttemptID());
////                System.out.println(req.getAttemptID().getTaskId().getId());
////                System.out.println("===================");
////                System.out.println("===================");
////                System.out.println("===================");
////                System.out.println("===================");
////            }
////}
//
//package org.apache.hadoop.mapreduce.v2.app;
//import org.apache.hadoop.mapreduce.v2.app.rm.ContainerRequestEvent;
//import org.apache.hadoop.yarn.api.records.ResourceRequest;
//
//public aspect AspectJSample {
//
//    public int id;
//    public int ResourceRequest.taskId;
//
//    pointcut addTaskId(ContainerRequestEvent req):
//            call(void addMap(ContainerRequestEvent)) && args(req);
//
//    pointcut addTaskIdToRequest(ResourceRequest resourceRequest):
//            this(resourceRequest) && call(void setNumContainers(int));
//
//    after(ContainerRequestEvent req): addTaskId(req)
//            {
//                System.out.println("===============================*");
//                System.out.println("ContainerRequestEvent Aspect got called.");
//                System.out.println(req.getAttemptID());
//                System.out.println(req.getAttemptID().getTaskId().getId());
//                id = req.getAttemptID().getTaskId().getId();
//                System.out.println("Inner id :" + id);
//                System.out.println("===============================**");
//            }
//
//    public void ResourceRequest.setTaskID(int id) {
//        this.taskId = id;
//    }
//
//    public int ResourceRequest.getTaskID() {
//        return this.taskId;
//    }
//
//    after(ResourceRequest resourceRequest): addTaskIdToRequest(resourceRequest)
//    {
//        System.out.println("===============================*****");
//        System.out.println("after addTaskIdToRequest aspect");
//        resourceRequest.setTaskID(id);
//        System.out.println(resourceRequest.getTaskID());
//        System.out.println("===============================******");
//    }
//}
