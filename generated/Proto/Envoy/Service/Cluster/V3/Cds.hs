{- This file was auto-generated from envoy/service/cluster/v3/cds.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Cluster.V3.Cds (
        ClusterDiscoveryService(..), CdsDummy()
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
data CdsDummy
  = CdsDummy'_constructor {_CdsDummy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CdsDummy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message CdsDummy where
  messageName _ = Data.Text.pack "envoy.service.cluster.v3.CdsDummy"
  packedMessageDescriptor _
    = "\n\
      \\bCdsDummy:\FS\154\197\136\RS\ETB\n\
      \\NAKenvoy.api.v2.CdsDummy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CdsDummy'_unknownFields
        (\ x__ y__ -> x__ {_CdsDummy'_unknownFields = y__})
  defMessage = CdsDummy'_constructor {_CdsDummy'_unknownFields = []}
  parseMessage
    = let
        loop :: CdsDummy -> Data.ProtoLens.Encoding.Bytes.Parser CdsDummy
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
          (do loop Data.ProtoLens.defMessage) "CdsDummy"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData CdsDummy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_CdsDummy'_unknownFields x__) ()
data ClusterDiscoveryService = ClusterDiscoveryService {}
instance Data.ProtoLens.Service.Types.Service ClusterDiscoveryService where
  type ServiceName ClusterDiscoveryService = "ClusterDiscoveryService"
  type ServicePackage ClusterDiscoveryService = "envoy.service.cluster.v3"
  type ServiceMethods ClusterDiscoveryService = '["deltaClusters",
                                                  "fetchClusters",
                                                  "streamClusters"]
instance Data.ProtoLens.Service.Types.HasMethodImpl ClusterDiscoveryService "streamClusters" where
  type MethodName ClusterDiscoveryService "streamClusters" = "StreamClusters"
  type MethodInput ClusterDiscoveryService "streamClusters" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput ClusterDiscoveryService "streamClusters" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType ClusterDiscoveryService "streamClusters" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ClusterDiscoveryService "deltaClusters" where
  type MethodName ClusterDiscoveryService "deltaClusters" = "DeltaClusters"
  type MethodInput ClusterDiscoveryService "deltaClusters" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryRequest
  type MethodOutput ClusterDiscoveryService "deltaClusters" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryResponse
  type MethodStreamingType ClusterDiscoveryService "deltaClusters" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ClusterDiscoveryService "fetchClusters" where
  type MethodName ClusterDiscoveryService "fetchClusters" = "FetchClusters"
  type MethodInput ClusterDiscoveryService "fetchClusters" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput ClusterDiscoveryService "fetchClusters" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType ClusterDiscoveryService "fetchClusters" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"envoy/service/cluster/v3/cds.proto\DC2\CANenvoy.service.cluster.v3\SUB*envoy/service/discovery/v3/discovery.proto\SUB\FSgoogle/api/annotations.proto\SUB envoy/annotations/resource.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"(\n\
    \\bCdsDummy:\FS\154\197\136\RS\ETB\n\
    \\NAKenvoy.api.v2.CdsDummy2\205\ETX\n\
    \\ETBClusterDiscoveryService\DC2s\n\
    \\SOStreamClusters\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"\NUL(\SOH0\SOH\DC2|\n\
    \\rDeltaClusters\DC21.envoy.service.discovery.v3.DeltaDiscoveryRequest\SUB2.envoy.service.discovery.v3.DeltaDiscoveryResponse\"\NUL(\SOH0\SOH\DC2\149\SOH\n\
    \\rFetchClusters\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"'\130\211\228\147\STX\CAN\"\SYN/v3/discovery:clusters\130\211\228\147\STX\ETX:\SOH*\SUB'\138\164\150\243\a!\n\
    \\USenvoy.config.cluster.v3.ClusterB?\n\
    \&io.envoyproxy.envoy.service.cluster.v3B\bCdsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\226\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL*\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
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
    \\SOH\b\DC2\ETX\f\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL?\n\
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
    \d\n\
    \\STX\ACK\NUL\DC2\EOT\NAK\NUL$\SOH\SUB> Return list of all clusters this proxy will load balance to.\n\
    \2\CAN [#protodoc-title: CDS]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\NAK\b\US\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\SYN\STXO\n\
    \\SI\n\
    \\b\ACK\NUL\ETX\193\228\178~\SOH\DC2\ETX\SYN\STXO\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\CAN\STX\SUB\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\CAN\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\CAN\NAK\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\CAN\FS9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX\EM\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\EM\SYN4\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\FS\STX\RS\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\FS\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ENQ\DC2\ETX\FS\DC4\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\FS\ESC=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ACK\DC2\ETX\GS\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\GS\SYN9\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT \STX#\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX \ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX \DC41\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX <Z\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX!\EOT=\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\EOT\DC2\ETX!\EOT=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\"\EOT(\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\a\DC2\ETX\"\EOT(\n\
    \\197\SOH\n\
    \\STX\EOT\NUL\DC2\EOT(\NUL*\SOH\SUB\184\SOH [#not-implemented-hide:] Not configuration. Workaround c++ protobuf issue with importing\n\
    \ services: https://github.com/google/protobuf/issues/4221 and protoxform to upgrade the file.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX(\b\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX)\STXW\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX)\STXWb\ACKproto3"