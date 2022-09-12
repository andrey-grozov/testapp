local base = import './base.libsonnet';

base {
  components+: {
    testapp+: {
      replicas: 6,
    },
  },
}
