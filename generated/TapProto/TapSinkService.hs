{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module TapProto.TapSinkService (TapSinkService, tapSinkService, StreamTaps, streamTaps) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified TapProto.StreamTapsRequest as TapProto
import qualified TapProto.StreamTapsResponse as TapProto

type TapSinkService = P'.Service "envoy.service.tap.v3.TapSinkService" '[StreamTaps]

tapSinkService :: TapSinkService
tapSinkService = P'.Service

type StreamTaps = P'.Method "StreamTaps" (P'.StreamOf TapProto.StreamTapsRequest) (P'.Single TapProto.StreamTapsResponse)

streamTaps :: StreamTaps
streamTaps = P'.Method