{- This file was auto-generated from envoy/service/discovery/v3/ads.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Discovery.V3.Ads (
        AggregatedDiscoveryService(..), AdsDummy()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Envoy.Service.Discovery.V3.Discovery
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
      -}
data AdsDummy
  = AdsDummy'_constructor {_AdsDummy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AdsDummy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message AdsDummy where
  messageName _
    = Data.Text.pack "envoy.service.discovery.v3.AdsDummy"
  packedMessageDescriptor _
    = "\n\
      \\bAdsDummy:*\154\197\136\RS%\n\
      \#envoy.service.discovery.v2.AdsDummy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AdsDummy'_unknownFields
        (\ x__ y__ -> x__ {_AdsDummy'_unknownFields = y__})
  defMessage = AdsDummy'_constructor {_AdsDummy'_unknownFields = []}
  parseMessage
    = let
        loop :: AdsDummy -> Data.ProtoLens.Encoding.Bytes.Parser AdsDummy
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AdsDummy"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData AdsDummy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_AdsDummy'_unknownFields x__) ()
data AggregatedDiscoveryService = AggregatedDiscoveryService {}
instance Data.ProtoLens.Service.Types.Service AggregatedDiscoveryService where
  type ServiceName AggregatedDiscoveryService = "AggregatedDiscoveryService"
  type ServicePackage AggregatedDiscoveryService = "envoy.service.discovery.v3"
  type ServiceMethods AggregatedDiscoveryService = '["deltaAggregatedResources",
                                                     "streamAggregatedResources"]
instance Data.ProtoLens.Service.Types.HasMethodImpl AggregatedDiscoveryService "streamAggregatedResources" where
  type MethodName AggregatedDiscoveryService "streamAggregatedResources" = "StreamAggregatedResources"
  type MethodInput AggregatedDiscoveryService "streamAggregatedResources" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput AggregatedDiscoveryService "streamAggregatedResources" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType AggregatedDiscoveryService "streamAggregatedResources" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl AggregatedDiscoveryService "deltaAggregatedResources" where
  type MethodName AggregatedDiscoveryService "deltaAggregatedResources" = "DeltaAggregatedResources"
  type MethodInput AggregatedDiscoveryService "deltaAggregatedResources" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryRequest
  type MethodOutput AggregatedDiscoveryService "deltaAggregatedResources" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryResponse
  type MethodStreamingType AggregatedDiscoveryService "deltaAggregatedResources" = 'Data.ProtoLens.Service.Types.BiDiStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$envoy/service/discovery/v3/ads.proto\DC2\SUBenvoy.service.discovery.v3\SUB*envoy/service/discovery/v3/discovery.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"6\n\
    \\bAdsDummy:*\154\197\136\RS%\n\
    \#envoy.service.discovery.v2.AdsDummy2\166\STX\n\
    \\SUBAggregatedDiscoveryService\DC2~\n\
    \\EMStreamAggregatedResources\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"\NUL(\SOH0\SOH\DC2\135\SOH\n\
    \\CANDeltaAggregatedResources\DC21.envoy.service.discovery.v3.DeltaDiscoveryRequest\SUB2.envoy.service.discovery.v3.DeltaDiscoveryResponse\"\NUL(\SOH0\SOHBA\n\
    \(io.envoyproxy.envoy.service.discovery.v3B\bAdsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\129\v\n\
    \\ACK\DC2\EOT\NUL\NUL+\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL#\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULA\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULA\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\f\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\181\ACK\n\
    \\STX\ACK\NUL\DC2\EOT\FS\NUL$\SOH\SUB\194\ETX See https://github.com/lyft/envoy-api#apis for a description of the role of\n\
    \ ADS and how it is intended to be used by a management server. ADS requests\n\
    \ have the same structure as their singleton xDS counterparts, but can\n\
    \ multiplex many resource types on a single stream. The type_url in the\n\
    \ DiscoveryRequest/DiscoveryResponse provides sufficient information to recover\n\
    \ the multiplexed singleton APIs at the Envoy instance and management server.\n\
    \27 [#protodoc-title: Aggregated Discovery Service (ADS)]\n\
    \2\170\STX [#not-implemented-hide:] Discovery services for endpoints, clusters, routes,\n\
    \ and listeners are retained in the package `envoy.api.v2` for backwards\n\
    \ compatibility with existing management servers. New development in discovery\n\
    \ services should proceed in the package `envoy.service.discovery.v2`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\FS\b\"\n\
    \(\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\RS\STX\US\ETX\SUB\SUB This is a gRPC-only API.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\RS\ACK\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\RS &\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\RS'7\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX\RSBH\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\RSIZ\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT!\STX#\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX!\ACK\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ENQ\DC2\ETX!\US%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX!&;\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ACK\DC2\ETX\"\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\"\SYN,\n\
    \\161\SOH\n\
    \\STX\EOT\NUL\DC2\EOT(\NUL+\SOH\SUB\148\SOH [#not-implemented-hide:] Not configuration. Workaround c++ protobuf issue with importing\n\
    \ services: https://github.com/google/protobuf/issues/4221\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX(\b\DLE\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT)\STX*,\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT)\STX*,b\ACKproto3"