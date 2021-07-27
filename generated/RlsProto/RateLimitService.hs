{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RlsProto.RateLimitService (RateLimitService, rateLimitService, ShouldRateLimit, shouldRateLimit) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified RlsProto.RateLimitRequest as RlsProto
import qualified RlsProto.RateLimitResponse as RlsProto

type RateLimitService = P'.Service "envoy.service.ratelimit.v3.RateLimitService" '[ShouldRateLimit]

rateLimitService :: RateLimitService
rateLimitService = P'.Service

type ShouldRateLimit = P'.Method "ShouldRateLimit" (P'.Single RlsProto.RateLimitRequest) (P'.Single RlsProto.RateLimitResponse)

shouldRateLimit :: ShouldRateLimit
shouldRateLimit = P'.Method