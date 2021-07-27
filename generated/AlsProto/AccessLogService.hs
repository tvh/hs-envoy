{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AlsProto.AccessLogService (AccessLogService, accessLogService, StreamAccessLogs, streamAccessLogs) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AlsProto.StreamAccessLogsMessage as AlsProto
import qualified AlsProto.StreamAccessLogsResponse as AlsProto

type AccessLogService = P'.Service "envoy.service.accesslog.v3.AccessLogService" '[StreamAccessLogs]

accessLogService :: AccessLogService
accessLogService = P'.Service

type StreamAccessLogs =
     P'.Method "StreamAccessLogs" (P'.StreamOf AlsProto.StreamAccessLogsMessage) (P'.Single AlsProto.StreamAccessLogsResponse)

streamAccessLogs :: StreamAccessLogs
streamAccessLogs = P'.Method