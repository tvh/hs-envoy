{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module EventReportingServiceProto.EventReportingService (EventReportingService, eventReportingService, StreamEvents, streamEvents)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified EventReportingServiceProto.StreamEventsRequest as EventReportingServiceProto
import qualified EventReportingServiceProto.StreamEventsResponse as EventReportingServiceProto

type EventReportingService = P'.Service "envoy.service.event_reporting.v3.EventReportingService" '[StreamEvents]

eventReportingService :: EventReportingService
eventReportingService = P'.Service

type StreamEvents =
     P'.Method "StreamEvents" (P'.StreamOf EventReportingServiceProto.StreamEventsRequest)
      (P'.StreamOf EventReportingServiceProto.StreamEventsResponse)

streamEvents :: StreamEvents
streamEvents = P'.Method