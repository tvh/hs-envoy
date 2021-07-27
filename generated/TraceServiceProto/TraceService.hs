{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module TraceServiceProto.TraceService (TraceService, traceService, StreamTraces, streamTraces) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified TraceServiceProto.StreamTracesMessage as TraceServiceProto
import qualified TraceServiceProto.StreamTracesResponse as TraceServiceProto

type TraceService = P'.Service "envoy.service.trace.v3.TraceService" '[StreamTraces]

traceService :: TraceService
traceService = P'.Service

type StreamTraces =
     P'.Method "StreamTraces" (P'.StreamOf TraceServiceProto.StreamTracesMessage) (P'.Single TraceServiceProto.StreamTracesResponse)

streamTraces :: StreamTraces
streamTraces = P'.Method