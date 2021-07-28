#!/usr/bin/env bash
rm -rf generated
mkdir generated

function doGenerate {
  protoc -I protobuf/src -I client_model -I opentelemetry-proto -I googleapis -I opencensus-proto/src -I envoy/api -I udpa -I protoc-gen-validate --plugin=protoc-gen-haskell=$(which proto-lens-protoc) --haskell_out generated "$@"
}

doGenerate \
  protobuf/src/google/protobuf/struct.proto \
  googleapis/google/api/expr/v1alpha1/syntax.proto \
  googleapis/google/api/expr/v1alpha1/checked.proto \
  $(find udpa/udpa/annotations -name '*.proto') \
  $(find udpa/xds/core/v3 -name '*.proto') \
  protoc-gen-validate/validate/validate.proto \
  opencensus-proto/src/opencensus/proto/trace/v1/trace.proto \
  opencensus-proto/src/opencensus/proto/trace/v1/trace_config.proto \
  opencensus-proto/src/opencensus/proto/resource/v1/resource.proto \
  opentelemetry-proto/opentelemetry/proto/common/v1/common.proto \
  googleapis/google/api/annotations.proto \
  googleapis/google/api/http.proto \
  googleapis/google/rpc/status.proto \
  client_model/io/prometheus/client/metrics.proto \
  $(find envoy/api/envoy -name '*.proto' | grep -vE '/v[0-24-9]')
