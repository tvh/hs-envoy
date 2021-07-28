{- This file was auto-generated from envoy/config/core/v3/udp_socket_config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.UdpSocketConfig (
        UdpSocketConfig()
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.UdpSocketConfig_Fields.maxRxDatagramSize' @:: Lens' UdpSocketConfig Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Config.Core.V3.UdpSocketConfig_Fields.maybe'maxRxDatagramSize' @:: Lens' UdpSocketConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@
         * 'Proto.Envoy.Config.Core.V3.UdpSocketConfig_Fields.preferGro' @:: Lens' UdpSocketConfig Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Core.V3.UdpSocketConfig_Fields.maybe'preferGro' @:: Lens' UdpSocketConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@ -}
data UdpSocketConfig
  = UdpSocketConfig'_constructor {_UdpSocketConfig'maxRxDatagramSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                                  _UdpSocketConfig'preferGro :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                  _UdpSocketConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UdpSocketConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UdpSocketConfig "maxRxDatagramSize" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpSocketConfig'maxRxDatagramSize
           (\ x__ y__ -> x__ {_UdpSocketConfig'maxRxDatagramSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UdpSocketConfig "maybe'maxRxDatagramSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpSocketConfig'maxRxDatagramSize
           (\ x__ y__ -> x__ {_UdpSocketConfig'maxRxDatagramSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UdpSocketConfig "preferGro" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpSocketConfig'preferGro
           (\ x__ y__ -> x__ {_UdpSocketConfig'preferGro = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UdpSocketConfig "maybe'preferGro" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpSocketConfig'preferGro
           (\ x__ y__ -> x__ {_UdpSocketConfig'preferGro = y__}))
        Prelude.id
instance Data.ProtoLens.Message UdpSocketConfig where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.UdpSocketConfig"
  packedMessageDescriptor _
    = "\n\
      \\SIUdpSocketConfig\DC2Z\n\
      \\DC4max_rx_datagram_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt64ValueR\DC1maxRxDatagramSizeB\v\250B\b2\ACK\DLE\128\128\EOT \NUL\DC29\n\
      \\n\
      \prefer_gro\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\tpreferGro"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxRxDatagramSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_rx_datagram_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxRxDatagramSize")) ::
              Data.ProtoLens.FieldDescriptor UdpSocketConfig
        preferGro__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefer_gro"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'preferGro")) ::
              Data.ProtoLens.FieldDescriptor UdpSocketConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxRxDatagramSize__field_descriptor),
           (Data.ProtoLens.Tag 2, preferGro__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UdpSocketConfig'_unknownFields
        (\ x__ y__ -> x__ {_UdpSocketConfig'_unknownFields = y__})
  defMessage
    = UdpSocketConfig'_constructor
        {_UdpSocketConfig'maxRxDatagramSize = Prelude.Nothing,
         _UdpSocketConfig'preferGro = Prelude.Nothing,
         _UdpSocketConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UdpSocketConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser UdpSocketConfig
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_rx_datagram_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxRxDatagramSize") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "prefer_gro"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"preferGro") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UdpSocketConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxRxDatagramSize") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'preferGro") _x
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
instance Control.DeepSeq.NFData UdpSocketConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UdpSocketConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UdpSocketConfig'maxRxDatagramSize x__)
                (Control.DeepSeq.deepseq (_UdpSocketConfig'preferGro x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \,envoy/config/core/v3/udp_socket_config.proto\DC2\DC4envoy.config.core.v3\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\168\SOH\n\
    \\SIUdpSocketConfig\DC2Z\n\
    \\DC4max_rx_datagram_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt64ValueR\DC1maxRxDatagramSizeB\v\250B\b2\ACK\DLE\128\128\EOT \NUL\DC29\n\
    \\n\
    \prefer_gro\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\tpreferGroBD\n\
    \\"io.envoyproxy.envoy.config.core.v3B\DC4UdpSocketConfigProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\211\a\n\
    \\ACK\DC2\EOT\NUL\NUL\RS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \W\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\RS\SOH\SUB# Generic UDP socket configuration.\n\
    \2& [#protodoc-title: UDP socket config]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\ETB\n\
    \\222\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\NAK\STX\SYN4\SUB\207\SOH The maximum size of received UDP datagrams. Using a larger size will cause Envoy to allocate\n\
    \ more memory per socket. Received datagrams above this size will be dropped. If not set\n\
    \ defaults to 1500 bytes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\NAK\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\RS2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK56\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SYN\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ACK\DC2\ETX\SYN\a2\n\
    \\130\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\STX+\SUB\244\STX Configures whether Generic Receive Offload (GRO)\n\
    \ <https://en.wikipedia.org/wiki/Large_receive_offload>_ is preferred when reading from the\n\
    \ UDP socket. The default is context dependent and is documented where UdpSocketConfig is used.\n\
    \ This option affects performance but not functionality. If GRO is not supported by the operating\n\
    \ system, non-GRO receive will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\GS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\FS&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS)*b\ACKproto3"