local p = import '../params.libsonnet';
local params = p.components.testapp;
[
 {
   apiVersion: 'v1',
   kind: 'Service',
   metadata: {
     name: params.appname,
   },
   spec: {
     type: 'NodePort',
     ports: [
       {
         port: params.port,
         targetPort: params.targetPort, 
         nodePort: params.nodePort       
       },
     ],
     selector: {
       app: params.appname,
     },
   },
 }
]