{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module MetricsServiceProto.MetricsService (MetricsService, metricsService, StreamMetrics, streamMetrics) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified MetricsServiceProto.StreamMetricsMessage as MetricsServiceProto
import qualified MetricsServiceProto.StreamMetricsResponse as MetricsServiceProto

type MetricsService = P'.Service "envoy.service.metrics.v3.MetricsService" '[StreamMetrics]

metricsService :: MetricsService
metricsService = P'.Service

type StreamMetrics =
     P'.Method "StreamMetrics" (P'.StreamOf MetricsServiceProto.StreamMetricsMessage)
      (P'.Single MetricsServiceProto.StreamMetricsResponse)

streamMetrics :: StreamMetrics
streamMetrics = P'.Method