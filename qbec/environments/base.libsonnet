
// this file has the baseline default parameters
{
  components: {
    testapp: {
      appname: 'testapp',
      image: 'mrgrav/testapp',
      replicas: 1,
      imageTag: ':latest',
      targetPort: 80,
      nodePort: 30001,
      port: 80,
      nodeSelector: {},
    },
  },
}
