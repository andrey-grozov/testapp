
// this file has the baseline default parameters
local image_tag = std.extVar('image_tag');
{
  components: {
    testapp: {
      appname: 'testapp',
      image: 'mrgrav/testapp',
      replicas: 1,
      imageTag: ':'+image_tag,
      targetPort: 80,
      nodePort: 30001,
      port: 80,
      nodeSelector: {},
    },
  },
}
