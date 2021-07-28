{- This file was auto-generated from envoy/service/secret/v3/sds.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Secret.V3.Sds (
        SecretDiscoveryService(..), SdsDummy()
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
data SdsDummy
  = SdsDummy'_constructor {_SdsDummy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SdsDummy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message SdsDummy where
  messageName _ = Data.Text.pack "envoy.service.secret.v3.SdsDummy"
  packedMessageDescriptor _
    = "\n\
      \\bSdsDummy:*\154\197\136\RS%\n\
      \#envoy.service.discovery.v2.SdsDummy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SdsDummy'_unknownFields
        (\ x__ y__ -> x__ {_SdsDummy'_unknownFields = y__})
  defMessage = SdsDummy'_constructor {_SdsDummy'_unknownFields = []}
  parseMessage
    = let
        loop :: SdsDummy -> Data.ProtoLens.Encoding.Bytes.Parser SdsDummy
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
          (do loop Data.ProtoLens.defMessage) "SdsDummy"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData SdsDummy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_SdsDummy'_unknownFields x__) ()
data SecretDiscoveryService = SecretDiscoveryService {}
instance Data.ProtoLens.Service.Types.Service SecretDiscoveryService where
  type ServiceName SecretDiscoveryService = "SecretDiscoveryService"
  type ServicePackage SecretDiscoveryService = "envoy.service.secret.v3"
  type ServiceMethods SecretDiscoveryService = '["deltaSecrets",
                                                 "fetchSecrets",
                                                 "streamSecrets"]
instance Data.ProtoLens.Service.Types.HasMethodImpl SecretDiscoveryService "deltaSecrets" where
  type MethodName SecretDiscoveryService "deltaSecrets" = "DeltaSecrets"
  type MethodInput SecretDiscoveryService "deltaSecrets" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryRequest
  type MethodOutput SecretDiscoveryService "deltaSecrets" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryResponse
  type MethodStreamingType SecretDiscoveryService "deltaSecrets" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl SecretDiscoveryService "streamSecrets" where
  type MethodName SecretDiscoveryService "streamSecrets" = "StreamSecrets"
  type MethodInput SecretDiscoveryService "streamSecrets" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput SecretDiscoveryService "streamSecrets" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType SecretDiscoveryService "streamSecrets" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl SecretDiscoveryService "fetchSecrets" where
  type MethodName SecretDiscoveryService "fetchSecrets" = "FetchSecrets"
  type MethodInput SecretDiscoveryService "fetchSecrets" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput SecretDiscoveryService "fetchSecrets" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType SecretDiscoveryService "fetchSecrets" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!envoy/service/secret/v3/sds.proto\DC2\ETBenvoy.service.secret.v3\SUB*envoy/service/discovery/v3/discovery.proto\SUB\FSgoogle/api/annotations.proto\SUB envoy/annotations/resource.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"6\n\
    \\bSdsDummy:*\154\197\136\RS%\n\
    \#envoy.service.discovery.v2.SdsDummy2\217\ETX\n\
    \\SYNSecretDiscoveryService\DC2{\n\
    \\fDeltaSecrets\DC21.envoy.service.discovery.v3.DeltaDiscoveryRequest\SUB2.envoy.service.discovery.v3.DeltaDiscoveryResponse\"\NUL(\SOH0\SOH\DC2r\n\
    \\rStreamSecrets\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"\NUL(\SOH0\SOH\DC2\147\SOH\n\
    \\fFetchSecrets\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"&\130\211\228\147\STX\ETB\"\NAK/v3/discovery:secrets\130\211\228\147\STX\ETX:\SOH*\SUB8\138\164\150\243\a2\n\
    \0envoy.extensions.transport_sockets.tls.v3.SecretB>\n\
    \%io.envoyproxy.envoy.service.secret.v3B\bSdsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\155\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL*\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
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
    \\SOH\b\DC2\ETX\f\NUL>\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL>\n\
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
    \?\n\
    \\STX\ACK\NUL\DC2\EOT\DC4\NUL#\SOH23 [#protodoc-title: Secret Discovery Service (SDS)]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DC4\b\RS\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\NAK\STX`\n\
    \\SI\n\
    \\b\ACK\NUL\ETX\193\228\178~\SOH\DC2\ETX\NAK\STX`\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\ETB\STX\EM\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\ETB\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\ETB\DC3\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\ETB\SUB<\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX\CAN\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\CAN\SYN9\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\ESC\STX\GS\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\ESC\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ENQ\DC2\ETX\ESC\DC4\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\ESC\ESC8\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ACK\DC2\ETX\FS\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\FS\SYN4\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\US\STX\"\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\US\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\US\DC30\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\US;Y\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX \EOT<\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\EOT\DC2\ETX \EOT<\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX!\EOT(\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\a\DC2\ETX!\EOT(\n\
    \\161\SOH\n\
    \\STX\EOT\NUL\DC2\EOT'\NUL*\SOH\SUB\148\SOH [#not-implemented-hide:] Not configuration. Workaround c++ protobuf issue with importing\n\
    \ services: https://github.com/google/protobuf/issues/4221\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX'\b\DLE\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT(\STX),\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT(\STX),b\ACKproto3"