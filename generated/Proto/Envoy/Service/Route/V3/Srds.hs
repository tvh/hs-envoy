{- This file was auto-generated from envoy/service/route/v3/srds.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Route.V3.Srds (
        ScopedRoutesDiscoveryService(..), SrdsDummy()
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
import qualified Proto.Envoy.Annotations.Resource
import qualified Proto.Envoy.Service.Discovery.V3.Discovery
import qualified Proto.Google.Api.Annotations
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
      -}
data SrdsDummy
  = SrdsDummy'_constructor {_SrdsDummy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SrdsDummy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message SrdsDummy where
  messageName _ = Data.Text.pack "envoy.service.route.v3.SrdsDummy"
  packedMessageDescriptor _
    = "\n\
      \\tSrdsDummy:\GS\154\197\136\RS\CAN\n\
      \\SYNenvoy.api.v2.SrdsDummy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SrdsDummy'_unknownFields
        (\ x__ y__ -> x__ {_SrdsDummy'_unknownFields = y__})
  defMessage
    = SrdsDummy'_constructor {_SrdsDummy'_unknownFields = []}
  parseMessage
    = let
        loop :: SrdsDummy -> Data.ProtoLens.Encoding.Bytes.Parser SrdsDummy
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
          (do loop Data.ProtoLens.defMessage) "SrdsDummy"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData SrdsDummy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_SrdsDummy'_unknownFields x__) ()
data ScopedRoutesDiscoveryService = ScopedRoutesDiscoveryService {}
instance Data.ProtoLens.Service.Types.Service ScopedRoutesDiscoveryService where
  type ServiceName ScopedRoutesDiscoveryService = "ScopedRoutesDiscoveryService"
  type ServicePackage ScopedRoutesDiscoveryService = "envoy.service.route.v3"
  type ServiceMethods ScopedRoutesDiscoveryService = '["deltaScopedRoutes",
                                                       "fetchScopedRoutes",
                                                       "streamScopedRoutes"]
instance Data.ProtoLens.Service.Types.HasMethodImpl ScopedRoutesDiscoveryService "streamScopedRoutes" where
  type MethodName ScopedRoutesDiscoveryService "streamScopedRoutes" = "StreamScopedRoutes"
  type MethodInput ScopedRoutesDiscoveryService "streamScopedRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput ScopedRoutesDiscoveryService "streamScopedRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType ScopedRoutesDiscoveryService "streamScopedRoutes" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ScopedRoutesDiscoveryService "deltaScopedRoutes" where
  type MethodName ScopedRoutesDiscoveryService "deltaScopedRoutes" = "DeltaScopedRoutes"
  type MethodInput ScopedRoutesDiscoveryService "deltaScopedRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryRequest
  type MethodOutput ScopedRoutesDiscoveryService "deltaScopedRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryResponse
  type MethodStreamingType ScopedRoutesDiscoveryService "deltaScopedRoutes" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ScopedRoutesDiscoveryService "fetchScopedRoutes" where
  type MethodName ScopedRoutesDiscoveryService "fetchScopedRoutes" = "FetchScopedRoutes"
  type MethodInput ScopedRoutesDiscoveryService "fetchScopedRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput ScopedRoutesDiscoveryService "fetchScopedRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType ScopedRoutesDiscoveryService "fetchScopedRoutes" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!envoy/service/route/v3/srds.proto\DC2\SYNenvoy.service.route.v3\SUB*envoy/service/discovery/v3/discovery.proto\SUB\FSgoogle/api/annotations.proto\SUB envoy/annotations/resource.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"*\n\
    \\tSrdsDummy:\GS\154\197\136\RS\CAN\n\
    \\SYNenvoy.api.v2.SrdsDummy2\243\ETX\n\
    \\FSScopedRoutesDiscoveryService\DC2w\n\
    \\DC2StreamScopedRoutes\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"\NUL(\SOH0\SOH\DC2\128\SOH\n\
    \\DC1DeltaScopedRoutes\DC21.envoy.service.discovery.v3.DeltaDiscoveryRequest\SUB2.envoy.service.discovery.v3.DeltaDiscoveryResponse\"\NUL(\SOH0\SOH\DC2\158\SOH\n\
    \\DC1FetchScopedRoutes\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\",\130\211\228\147\STX\GS\"\ESC/v3/discovery:scoped-routes\130\211\228\147\STX\ETX:\SOH*\SUB6\138\164\150\243\a0\n\
    \.envoy.config.route.v3.ScopedRouteConfigurationB>\n\
    \$io.envoyproxy.envoy.service.route.v3B\tSrdsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\170\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL1\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL*\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL=\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL=\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\SI\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\171\EOT\n\
    \\STX\ACK\NUL\DC2\EOT\FS\NUL+\SOH\SUB\190\ETX The Scoped Routes Discovery Service (SRDS) API distributes\n\
    \ :ref:`ScopedRouteConfiguration<envoy_v3_api_msg.ScopedRouteConfiguration>`\n\
    \ resources. Each ScopedRouteConfiguration resource represents a \"routing\n\
    \ scope\" containing a mapping that allows the HTTP connection manager to\n\
    \ dynamically assign a routing table (specified via a\n\
    \ :ref:`RouteConfiguration<envoy_v3_api_msg_config.route.v3.RouteConfiguration>` message) to each\n\
    \ HTTP request.\n\
    \2^ [#protodoc-title: SRDS]\n\
    \ * Routing :ref:`architecture overview <arch_overview_http_routing>`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\FS\b$\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\GS\STX^\n\
    \\SI\n\
    \\b\ACK\NUL\ETX\193\228\178~\SOH\DC2\ETX\GS\STX^\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\US\STX!\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\US\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\US\EM\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\US =\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX \SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX \SYN4\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT#\STX%\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX#\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ENQ\DC2\ETX#\CAN\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX#\USA\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ACK\DC2\ETX$\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX$\SYN9\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT'\STX*\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX'\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX'\CAN5\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX'@^\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX(\EOTB\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\EOT\DC2\ETX(\EOTB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX)\EOT(\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\a\DC2\ETX)\EOT(\n\
    \\197\SOH\n\
    \\STX\EOT\NUL\DC2\EOT/\NUL1\SOH\SUB\184\SOH [#not-implemented-hide:] Not configuration. Workaround c++ protobuf issue with importing\n\
    \ services: https://github.com/google/protobuf/issues/4221 and protoxform to upgrade the file.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX/\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX0\STXX\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX0\STXXb\ACKproto3"