{- This file was auto-generated from envoy/service/runtime/v3/rtds.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Runtime.V3.Rtds (
        RuntimeDiscoveryService(..), RtdsDummy(), Runtime()
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
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
      -}
data RtdsDummy
  = RtdsDummy'_constructor {_RtdsDummy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RtdsDummy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message RtdsDummy where
  messageName _ = Data.Text.pack "envoy.service.runtime.v3.RtdsDummy"
  packedMessageDescriptor _
    = "\n\
      \\tRtdsDummy:+\154\197\136\RS&\n\
      \$envoy.service.discovery.v2.RtdsDummy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RtdsDummy'_unknownFields
        (\ x__ y__ -> x__ {_RtdsDummy'_unknownFields = y__})
  defMessage
    = RtdsDummy'_constructor {_RtdsDummy'_unknownFields = []}
  parseMessage
    = let
        loop :: RtdsDummy -> Data.ProtoLens.Encoding.Bytes.Parser RtdsDummy
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
          (do loop Data.ProtoLens.defMessage) "RtdsDummy"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData RtdsDummy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_RtdsDummy'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Service.Runtime.V3.Rtds_Fields.name' @:: Lens' Runtime Data.Text.Text@
         * 'Proto.Envoy.Service.Runtime.V3.Rtds_Fields.layer' @:: Lens' Runtime Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Service.Runtime.V3.Rtds_Fields.maybe'layer' @:: Lens' Runtime (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@ -}
data Runtime
  = Runtime'_constructor {_Runtime'name :: !Data.Text.Text,
                          _Runtime'layer :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                          _Runtime'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Runtime where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Runtime "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Runtime'name (\ x__ y__ -> x__ {_Runtime'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Runtime "layer" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Runtime'layer (\ x__ y__ -> x__ {_Runtime'layer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Runtime "maybe'layer" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Runtime'layer (\ x__ y__ -> x__ {_Runtime'layer = y__}))
        Prelude.id
instance Data.ProtoLens.Message Runtime where
  messageName _ = Data.Text.pack "envoy.service.runtime.v3.Runtime"
  packedMessageDescriptor _
    = "\n\
      \\aRuntime\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2-\n\
      \\ENQlayer\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQlayer:)\154\197\136\RS$\n\
      \\"envoy.service.discovery.v2.Runtime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Runtime
        layer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "layer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'layer")) ::
              Data.ProtoLens.FieldDescriptor Runtime
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, layer__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Runtime'_unknownFields
        (\ x__ y__ -> x__ {_Runtime'_unknownFields = y__})
  defMessage
    = Runtime'_constructor
        {_Runtime'name = Data.ProtoLens.fieldDefault,
         _Runtime'layer = Prelude.Nothing, _Runtime'_unknownFields = []}
  parseMessage
    = let
        loop :: Runtime -> Data.ProtoLens.Encoding.Bytes.Parser Runtime
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
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "layer"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"layer") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Runtime"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'layer") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Runtime where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Runtime'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Runtime'name x__)
                (Control.DeepSeq.deepseq (_Runtime'layer x__) ()))
data RuntimeDiscoveryService = RuntimeDiscoveryService {}
instance Data.ProtoLens.Service.Types.Service RuntimeDiscoveryService where
  type ServiceName RuntimeDiscoveryService = "RuntimeDiscoveryService"
  type ServicePackage RuntimeDiscoveryService = "envoy.service.runtime.v3"
  type ServiceMethods RuntimeDiscoveryService = '["deltaRuntime",
                                                  "fetchRuntime",
                                                  "streamRuntime"]
instance Data.ProtoLens.Service.Types.HasMethodImpl RuntimeDiscoveryService "streamRuntime" where
  type MethodName RuntimeDiscoveryService "streamRuntime" = "StreamRuntime"
  type MethodInput RuntimeDiscoveryService "streamRuntime" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput RuntimeDiscoveryService "streamRuntime" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType RuntimeDiscoveryService "streamRuntime" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl RuntimeDiscoveryService "deltaRuntime" where
  type MethodName RuntimeDiscoveryService "deltaRuntime" = "DeltaRuntime"
  type MethodInput RuntimeDiscoveryService "deltaRuntime" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryRequest
  type MethodOutput RuntimeDiscoveryService "deltaRuntime" = Proto.Envoy.Service.Discovery.V3.Discovery.DeltaDiscoveryResponse
  type MethodStreamingType RuntimeDiscoveryService "deltaRuntime" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl RuntimeDiscoveryService "fetchRuntime" where
  type MethodName RuntimeDiscoveryService "fetchRuntime" = "FetchRuntime"
  type MethodInput RuntimeDiscoveryService "fetchRuntime" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryRequest
  type MethodOutput RuntimeDiscoveryService "fetchRuntime" = Proto.Envoy.Service.Discovery.V3.Discovery.DiscoveryResponse
  type MethodStreamingType RuntimeDiscoveryService "fetchRuntime" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#envoy/service/runtime/v3/rtds.proto\DC2\CANenvoy.service.runtime.v3\SUB*envoy/service/discovery/v3/discovery.proto\SUB\FSgoogle/api/annotations.proto\SUB\FSgoogle/protobuf/struct.proto\SUB envoy/annotations/resource.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"8\n\
    \\tRtdsDummy:+\154\197\136\RS&\n\
    \$envoy.service.discovery.v2.RtdsDummy\"\128\SOH\n\
    \\aRuntime\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2-\n\
    \\ENQlayer\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQlayer:)\154\197\136\RS$\n\
    \\"envoy.service.discovery.v2.Runtime2\202\ETX\n\
    \\ETBRuntimeDiscoveryService\DC2r\n\
    \\rStreamRuntime\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"\NUL(\SOH0\SOH\DC2{\n\
    \\fDeltaRuntime\DC21.envoy.service.discovery.v3.DeltaDiscoveryRequest\SUB2.envoy.service.discovery.v3.DeltaDiscoveryResponse\"\NUL(\SOH0\SOH\DC2\147\SOH\n\
    \\fFetchRuntime\DC2,.envoy.service.discovery.v3.DiscoveryRequest\SUB-.envoy.service.discovery.v3.DiscoveryResponse\"&\130\211\228\147\STX\ETB\"\NAK/v3/discovery:runtime\130\211\228\147\STX\ETX:\SOH*\SUB(\138\164\150\243\a\"\n\
    \ envoy.service.runtime.v3.RuntimeB@\n\
    \&io.envoyproxy.envoy.service.runtime.v3B\tRtdsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\255\t\n\
    \\ACK\DC2\EOT\NUL\NUL9\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL*\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\DC1\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \\167\SOH\n\
    \\STX\ACK\NUL\DC2\EOT\CAN\NUL'\SOH\SUB* Discovery service for Runtime resources.\n\
    \2o [#protodoc-title: Runtime Discovery Service (RTDS)]\n\
    \ RTDS :ref:`configuration overview <config_runtime_rtds>`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\CAN\b\US\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\EM\STXP\n\
    \\SI\n\
    \\b\ACK\NUL\ETX\193\228\178~\SOH\DC2\ETX\EM\STXP\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\ESC\STX\GS\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\ESC\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\ESC\DC4\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\ESC\ESC8\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX\FS\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\FS\SYN4\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\US\STX!\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\US\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ENQ\DC2\ETX\US\DC3\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\US\SUB<\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ACK\DC2\ETX \SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX \SYN9\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT#\STX&\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX#\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX#\DC30\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX#;Y\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX$\EOT<\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\EOT\DC2\ETX$\EOT<\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX%\EOT(\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\a\DC2\ETX%\EOT(\n\
    \\161\SOH\n\
    \\STX\EOT\NUL\DC2\EOT+\NUL.\SOH\SUB\148\SOH [#not-implemented-hide:] Not configuration. Workaround c++ protobuf issue with importing\n\
    \ services: https://github.com/google/protobuf/issues/4221\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX+\b\DC1\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT,\STX--\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT,\STX--\n\
    \[\n\
    \\STX\EOT\SOH\DC2\EOT1\NUL9\SOH\SUBO RTDS resource type. This describes a layer in the runtime virtual filesystem.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX1\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX2\STXd\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX2\STXd\n\
    \]\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX6\STX;\SUBP Runtime resource name. This makes the Runtime a self-describing xDS\n\
    \ resource.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX6\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX6\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX6\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX6\DC2:\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\SO\DC2\ETX6\DC39\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX8\STX#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX8\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX8\EM\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX8!\"b\ACKproto3"