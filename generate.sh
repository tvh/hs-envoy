#/bin/env bash
rm -rf generated
mkdir generated

function doGenerate {
  protoc -I protobuf/src -I client_model -I opentelemetry-proto -I googleapis -I opencensus-proto/src -I envoy/api -I udpa -I protoc-gen-validate --plugin="/Users/tvh/.local/bin/protoc-gen-haskell" --haskell_out generated $@
}

doGenerate protobuf/src/google/protobuf/any.proto protobuf/src/google/protobuf/wrappers.proto
doGenerate `find envoy/api/envoy/service envoy/api/envoy/data/accesslog envoy/api/envoy/config/core -name '*.proto' | grep '/v3/'`

