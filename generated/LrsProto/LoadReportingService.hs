{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module LrsProto.LoadReportingService (LoadReportingService, loadReportingService, StreamLoadStats, streamLoadStats) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LrsProto.LoadStatsRequest as LrsProto
import qualified LrsProto.LoadStatsResponse as LrsProto

type LoadReportingService = P'.Service "envoy.service.load_stats.v3.LoadReportingService" '[StreamLoadStats]

loadReportingService :: LoadReportingService
loadReportingService = P'.Service

type StreamLoadStats = P'.Method "StreamLoadStats" (P'.StreamOf LrsProto.LoadStatsRequest) (P'.StreamOf LrsProto.LoadStatsResponse)

streamLoadStats :: StreamLoadStats
streamLoadStats = P'.Method