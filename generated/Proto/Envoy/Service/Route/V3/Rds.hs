{- This file was auto-generated from envoy/service/route/v3/rds.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Route.V3.Rds (
        RouteDiscoveryService(..), VirtualHostDiscoveryService(..),
        RdsDummy()
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
data RdsDummy
  = RdsDummy'_constructor {_RdsDummy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RdsDummy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message RdsDummy where
  messageName _ = Data.Text.pack "envoy.service.route.v3.RdsDummy"
  packedMessageDescriptor _
    = "\n\
      \\bRdsDummy:\FS\154\197\136\RS\ETB\n\
      \\NAKenvoy.api.v2.RdsDummy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RdsDummy'_unknownFields
        (\ x__ y__ -> x__ {_RdsDummy'_unknownFields = y__})
  defMessage = RdsDummy'_constructor {_RdsDummy'_unknownFields = []}
  parseMessage
    = let
        loop :: RdsDummy -> Data.ProtoLens.Encoding.Bytes.Parser RdsDummy
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
          (do loop Data.ProtoLens.defMessage) "RdsDummy"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData RdsDummy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_RdsDummy'_unknownFields x__) ()
data RouteDiscoveryService = RouteDiscoveryService {}
instance Data.ProtoLens.Service.Types.Service RouteDiscoveryService where
  type ServiceName RouteDiscoveryService = "RouteDiscoveryService"
  type ServicePackage RouteDiscoveryService = "envoy.service.route.v3"
  type ServiceMethods RouteDiscoveryService = '["deltaRoutes",
                                                "fetchRoutes",
                                                "streamRoutes"]
instance Data.ProtoLens.Service.Types.HasMethodImpl RouteDiscoveryService "streamRoutes" where
  type MethodName RouteDiscoveryService "streamRoutes" = "StreamRoutes"
  type MethodInput RouteDiscoveryService "streamRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput RouteDiscoveryService "streamRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType RouteDiscoveryService "streamRoutes" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl RouteDiscoveryService "deltaRoutes" where
  type MethodName RouteDiscoveryService "deltaRoutes" = "DeltaRoutes"
  type MethodInput RouteDiscoveryService "deltaRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryRequest
  type MethodOutput RouteDiscoveryService "deltaRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryResponse
  type MethodStreamingType RouteDiscoveryService "deltaRoutes" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl RouteDiscoveryService "fetchRoutes" where
  type MethodName RouteDiscoveryService "fetchRoutes" = "FetchRoutes"
  type MethodInput RouteDiscoveryService "fetchRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput RouteDiscoveryService "fetchRoutes" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType RouteDiscoveryService "fetchRoutes" = 'Data.ProtoLens.Service.Types.NonStreaming
data VirtualHostDiscoveryService = VirtualHostDiscoveryService {}
instance Data.ProtoLens.Service.Types.Service VirtualHostDiscoveryService where
  type ServiceName VirtualHostDiscoveryService = "VirtualHostDiscoveryService"
  type ServicePackage VirtualHostDiscoveryService = "envoy.service.route.v3"
  type ServiceMethods VirtualHostDiscoveryService = '["deltaVirtualHosts"]
instance Data.ProtoLens.Service.Types.HasMethodImpl VirtualHostDiscoveryService "deltaVirtualHosts" where
  type MethodName VirtualHostDiscoveryService "deltaVirtualHosts" = "DeltaVirtualHosts"
  type MethodInput VirtualHostDiscoveryService "deltaVirtualHosts" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryRequest
  type MethodOutput VirtualHostDiscoveryService "deltaVirtualHosts" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryResponse
  type MethodStreamingType VirtualHostDiscoveryService "deltaVirtualHosts" = 'Data.ProtoLens.Service.Types.BiDiStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ envoy/service/route/v3/rds.proto\DC2\SYNenvoy.service.route.v3\SUB*envoy/service/discovery/v3/discovery.proto\SUB\FSgoogle/api/annotations.proto\SUB envoy/annotations/resource.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"(\n\
    \\bRdsDummy:\FS\154\197\136\RS\ETB\n\
    \\NAKenvoy.api.v2.RdsDummy2\204\ETX\n\
    \\NAKRouteDiscoveryService\DC2q\n\
    \\fStreamRoutes\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"\NUL(\SOH0\SOH\DC2z\n\
    \\vDeltaRoutes\DC21.envoy.service.discovery.v3.DeltaDiscoveryRequest\SUB2.envoy.service.discovery.v3.DeltaDiscoveryResponse\"\NUL(\SOH0\SOH\DC2\145\SOH\n\
    \\vFetchRoutes\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"%\130\211\228\147\STX\SYN\"\DC4/v3/discovery:routes\130\211\228\147\STX\ETX:\SOH*\SUB0\138\164\150\243\a*\n\
    \(envoy.config.route.v3.RouteConfiguration2\203\SOH\n\
    \\ESCVirtualHostDiscoveryService\DC2\128\SOH\n\
    \\DC1DeltaVirtualHosts\DC21.envoy.service.discovery.v3.DeltaDiscoveryRequest\SUB2.envoy.service.discovery.v3.DeltaDiscoveryResponse\"\NUL(\SOH0\SOH\SUB)\138\164\150\243\a#\n\
    \!envoy.config.route.v3.VirtualHostB=\n\
    \$io.envoyproxy.envoy.service.route.v3B\bRdsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\181\DC1\n\
    \\ACK\DC2\EOT\NUL\NUL@\SOH\n\
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
    \\SOH\b\DC2\ETX\r\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL)\n\
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
    \\243\STX\n\
    \\STX\ACK\NUL\DC2\EOT\EM\NUL(\SOH\SUB\204\STX The resource_names field in DiscoveryRequest specifies a route configuration.\n\
    \ This allows an Envoy configuration with multiple HTTP listeners (and\n\
    \ associated HTTP connection manager filters) to use different route\n\
    \ configurations. Each listener will bind its HTTP connection manager filter to\n\
    \ a route table via this identifier.\n\
    \2\CAN [#protodoc-title: RDS]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\EM\b\GS\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\SUB\STXX\n\
    \\SI\n\
    \\b\ACK\NUL\ETX\193\228\178~\SOH\DC2\ETX\SUB\STXX\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\FS\STX\RS\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\FS\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\FS\DC3\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\FS\SUB7\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX\GS\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\GS\SYN4\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT \STX\"\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX \ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ENQ\DC2\ETX \DC2\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX \EM;\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ACK\DC2\ETX!\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX!\SYN9\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT$\STX'\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX$\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX$\DC2/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX$:X\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX%\EOT;\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\EOT\DC2\ETX%\EOT;\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX&\EOT(\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\a\DC2\ETX&\EOT(\n\
    \\195\a\n\
    \\STX\ACK\SOH\DC2\EOT4\NUL:\SOH\SUB\182\a Virtual Host Discovery Service (VHDS) is used to dynamically update the list of virtual hosts for\n\
    \ a given RouteConfiguration. If VHDS is configured a virtual host list update will be triggered\n\
    \ during the processing of an HTTP request if a route for the request cannot be resolved. The\n\
    \ :ref:`resource_names_subscribe <envoy_v3_api_field_service.discovery.v3.DeltaDiscoveryRequest.resource_names_subscribe>`\n\
    \ field contains a list of virtual host names or aliases to track. The contents of an alias would\n\
    \ be the contents of a *host* or *authority* header used to make an http request. An xDS server\n\
    \ will match an alias to a virtual host based on the content of :ref:`domains'\n\
    \ <envoy_v3_api_field_config.route.v3.VirtualHost.domains>` field. The *resource_names_unsubscribe* field\n\
    \ contains a list of virtual host names that have been :ref:`unsubscribed\n\
    \ <xds_protocol_unsubscribe>` from the routing table associated with the RouteConfiguration.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\SOH\SOH\DC2\ETX4\b#\n\
    \\n\
    \\n\
    \\ETX\ACK\SOH\ETX\DC2\ETX5\STXQ\n\
    \\SI\n\
    \\b\ACK\SOH\ETX\193\228\178~\SOH\DC2\ETX5\STXQ\n\
    \\f\n\
    \\EOT\ACK\SOH\STX\NUL\DC2\EOT7\STX9\ETX\n\
    \\f\n\
    \\ENQ\ACK\SOH\STX\NUL\SOH\DC2\ETX7\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\SOH\STX\NUL\ENQ\DC2\ETX7\CAN\RS\n\
    \\f\n\
    \\ENQ\ACK\SOH\STX\NUL\STX\DC2\ETX7\USA\n\
    \\f\n\
    \\ENQ\ACK\SOH\STX\NUL\ACK\DC2\ETX8\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\SOH\STX\NUL\ETX\DC2\ETX8\SYN9\n\
    \\197\SOH\n\
    \\STX\EOT\NUL\DC2\EOT>\NUL@\SOH\SUB\184\SOH [#not-implemented-hide:] Not configuration. Workaround c++ protobuf issue with importing\n\
    \ services: https://github.com/google/protobuf/issues/4221 and protoxform to upgrade the file.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX>\b\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX?\STXW\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX?\STXWb\ACKproto3"