{- This file was auto-generated from envoy/service/extension/v3/config_discovery.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Extension.V3.ConfigDiscovery (
        ExtensionConfigDiscoveryService(..), EcdsDummy()
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
{- | Fields :
      -}
data EcdsDummy
  = EcdsDummy'_constructor {_EcdsDummy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EcdsDummy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message EcdsDummy where
  messageName _
    = Data.Text.pack "envoy.service.extension.v3.EcdsDummy"
  packedMessageDescriptor _
    = "\n\
      \\tEcdsDummy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EcdsDummy'_unknownFields
        (\ x__ y__ -> x__ {_EcdsDummy'_unknownFields = y__})
  defMessage
    = EcdsDummy'_constructor {_EcdsDummy'_unknownFields = []}
  parseMessage
    = let
        loop :: EcdsDummy -> Data.ProtoLens.Encoding.Bytes.Parser EcdsDummy
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
          (do loop Data.ProtoLens.defMessage) "EcdsDummy"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData EcdsDummy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_EcdsDummy'_unknownFields x__) ()
data ExtensionConfigDiscoveryService
  = ExtensionConfigDiscoveryService {}
instance Data.ProtoLens.Service.Types.Service ExtensionConfigDiscoveryService where
  type ServiceName ExtensionConfigDiscoveryService = "ExtensionConfigDiscoveryService"
  type ServicePackage ExtensionConfigDiscoveryService = "envoy.service.extension.v3"
  type ServiceMethods ExtensionConfigDiscoveryService = '["deltaExtensionConfigs",
                                                          "fetchExtensionConfigs",
                                                          "streamExtensionConfigs"]
instance Data.ProtoLens.Service.Types.HasMethodImpl ExtensionConfigDiscoveryService "streamExtensionConfigs" where
  type MethodName ExtensionConfigDiscoveryService "streamExtensionConfigs" = "StreamExtensionConfigs"
  type MethodInput ExtensionConfigDiscoveryService "streamExtensionConfigs" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput ExtensionConfigDiscoveryService "streamExtensionConfigs" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType ExtensionConfigDiscoveryService "streamExtensionConfigs" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ExtensionConfigDiscoveryService "deltaExtensionConfigs" where
  type MethodName ExtensionConfigDiscoveryService "deltaExtensionConfigs" = "DeltaExtensionConfigs"
  type MethodInput ExtensionConfigDiscoveryService "deltaExtensionConfigs" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryRequest
  type MethodOutput ExtensionConfigDiscoveryService "deltaExtensionConfigs" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryResponse
  type MethodStreamingType ExtensionConfigDiscoveryService "deltaExtensionConfigs" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ExtensionConfigDiscoveryService "fetchExtensionConfigs" where
  type MethodName ExtensionConfigDiscoveryService "fetchExtensionConfigs" = "FetchExtensionConfigs"
  type MethodInput ExtensionConfigDiscoveryService "fetchExtensionConfigs" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput ExtensionConfigDiscoveryService "fetchExtensionConfigs" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType ExtensionConfigDiscoveryService "fetchExtensionConfigs" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \1envoy/service/extension/v3/config_discovery.proto\DC2\SUBenvoy.service.extension.v3\SUB*envoy/service/discovery/v3/discovery.proto\SUB\FSgoogle/api/annotations.proto\SUB envoy/annotations/resource.proto\SUB\GSudpa/annotations/status.proto\"\v\n\
    \\tEcdsDummy2\129\EOT\n\
    \\USExtensionConfigDiscoveryService\DC2{\n\
    \\SYNStreamExtensionConfigs\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"\NUL(\SOH0\SOH\DC2\132\SOH\n\
    \\NAKDeltaExtensionConfigs\DC21.envoy.service.discovery.v3.DeltaDiscoveryRequest\SUB2.envoy.service.discovery.v3.DeltaDiscoveryResponse\"\NUL(\SOH0\SOH\DC2\166\SOH\n\
    \\NAKFetchExtensionConfigs\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"0\130\211\228\147\STX!\"\US/v3/discovery:extension_configs\130\211\228\147\STX\ETX:\SOH*\SUB1\138\164\150\243\a+\n\
    \)envoy.config.core.v3.TypedExtensionConfigBM\n\
    \(io.envoyproxy.envoy.service.extension.v3B\DC4ConfigDiscoveryProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\197\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL*\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL#\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL*\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULA\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULA\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\SO\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \n\n\
    \\STX\ACK\NUL\DC2\EOT\DC4\NUL$\SOH\SUB\" Return extension configurations.\n\
    \2> [#protodoc-title: Extension Config Discovery Service (ECDS)]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DC4\b'\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\NAK\STXY\n\
    \\SI\n\
    \\b\ACK\NUL\ETX\193\228\178~\SOH\DC2\ETX\NAK\STXY\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\ETB\STX\EM\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\ETB\ACK\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\ETB\GS#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\ETB$A\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX\CAN\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\CAN\SYN4\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\ESC\STX\GS\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\ESC\ACK\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ENQ\DC2\ETX\ESC\FS\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\ESC#E\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ACK\DC2\ETX\FS\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\FS\SYN9\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\US\STX#\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\US\ACK\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\US\FS9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX \SI-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX!\EOTF\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\EOT\DC2\ETX!\EOTF\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\"\EOT(\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\a\DC2\ETX\"\EOT(\n\
    \\198\SOH\n\
    \\STX\EOT\NUL\DC2\EOT)\NUL*\SOH\SUB\185\SOH [#not-implemented-hide:] Not configuration. Workaround c++ protobuf issue\n\
    \ with importing services: https://github.com/google/protobuf/issues/4221 and\n\
    \ protoxform to upgrade the file.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX)\b\DC1b\ACKproto3"