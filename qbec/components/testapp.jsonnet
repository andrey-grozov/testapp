local env = {
  name: std.extVar('qbec.io/env'),
  namespace: std.extVar('qbec.io/defaultNs'),
};

local p = import '../params.libsonnet';
local params = p.components.testapp;

[
 {
   apiVersion: 'apps/v1',
   kind: 'Deployment',
   metadata: {
     name: params.appname,
   },
   spec: {
     selector: {
       matchLabels: {
         app: params.appname,
       },
     },
     replicas: params.replicas,
     template: {
       metadata: {
         labels: {
           app: params.appname,
         },
       },
       spec: {
         terminationGracePeriodSeconds: 3,
         containers: [
           {
             name: params.appname,
             image: params.image+params.imageTag,
             ports: [
               {
                 containerPort: 80,
               },
             ],
           },
         ],
       },
     },
   },
 }
]