{- This file was auto-generated from envoy/extensions/transport_sockets/starttls/v3/starttls.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.Starttls.V3.Starttls (
        StartTlsConfig(), UpstreamStartTlsConfig()
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
import qualified Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Starttls.V3.Starttls_Fields.cleartextSocketConfig' @:: Lens' StartTlsConfig Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer@
         * 'Proto.Envoy.Extensions.TransportSockets.Starttls.V3.Starttls_Fields.maybe'cleartextSocketConfig' @:: Lens' StartTlsConfig (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer)@
         * 'Proto.Envoy.Extensions.TransportSockets.Starttls.V3.Starttls_Fields.tlsSocketConfig' @:: Lens' StartTlsConfig Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext@
         * 'Proto.Envoy.Extensions.TransportSockets.Starttls.V3.Starttls_Fields.maybe'tlsSocketConfig' @:: Lens' StartTlsConfig (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext)@ -}
data StartTlsConfig
  = StartTlsConfig'_constructor {_StartTlsConfig'cleartextSocketConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer),
                                 _StartTlsConfig'tlsSocketConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext),
                                 _StartTlsConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartTlsConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartTlsConfig "cleartextSocketConfig" Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartTlsConfig'cleartextSocketConfig
           (\ x__ y__ -> x__ {_StartTlsConfig'cleartextSocketConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartTlsConfig "maybe'cleartextSocketConfig" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartTlsConfig'cleartextSocketConfig
           (\ x__ y__ -> x__ {_StartTlsConfig'cleartextSocketConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartTlsConfig "tlsSocketConfig" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartTlsConfig'tlsSocketConfig
           (\ x__ y__ -> x__ {_StartTlsConfig'tlsSocketConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartTlsConfig "maybe'tlsSocketConfig" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartTlsConfig'tlsSocketConfig
           (\ x__ y__ -> x__ {_StartTlsConfig'tlsSocketConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartTlsConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.starttls.v3.StartTlsConfig"
  packedMessageDescriptor _
    = "\n\
      \\SOStartTlsConfig\DC2s\n\
      \\ETBcleartext_socket_config\CAN\SOH \SOH(\v2;.envoy.extensions.transport_sockets.raw_buffer.v3.RawBufferR\NAKcleartextSocketConfig\DC2u\n\
      \\DC1tls_socket_config\CAN\STX \SOH(\v2?.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContextR\SItlsSocketConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cleartextSocketConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cleartext_socket_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cleartextSocketConfig")) ::
              Data.ProtoLens.FieldDescriptor StartTlsConfig
        tlsSocketConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_socket_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tlsSocketConfig")) ::
              Data.ProtoLens.FieldDescriptor StartTlsConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cleartextSocketConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, tlsSocketConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartTlsConfig'_unknownFields
        (\ x__ y__ -> x__ {_StartTlsConfig'_unknownFields = y__})
  defMessage
    = StartTlsConfig'_constructor
        {_StartTlsConfig'cleartextSocketConfig = Prelude.Nothing,
         _StartTlsConfig'tlsSocketConfig = Prelude.Nothing,
         _StartTlsConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartTlsConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser StartTlsConfig
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
                                       "cleartext_socket_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cleartextSocketConfig") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tls_socket_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tlsSocketConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StartTlsConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'cleartextSocketConfig") _x
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
                       (Data.ProtoLens.Field.field @"maybe'tlsSocketConfig") _x
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
instance Control.DeepSeq.NFData StartTlsConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartTlsConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartTlsConfig'cleartextSocketConfig x__)
                (Control.DeepSeq.deepseq (_StartTlsConfig'tlsSocketConfig x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Starttls.V3.Starttls_Fields.cleartextSocketConfig' @:: Lens' UpstreamStartTlsConfig Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer@
         * 'Proto.Envoy.Extensions.TransportSockets.Starttls.V3.Starttls_Fields.maybe'cleartextSocketConfig' @:: Lens' UpstreamStartTlsConfig (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer)@
         * 'Proto.Envoy.Extensions.TransportSockets.Starttls.V3.Starttls_Fields.tlsSocketConfig' @:: Lens' UpstreamStartTlsConfig Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext@
         * 'Proto.Envoy.Extensions.TransportSockets.Starttls.V3.Starttls_Fields.maybe'tlsSocketConfig' @:: Lens' UpstreamStartTlsConfig (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext)@ -}
data UpstreamStartTlsConfig
  = UpstreamStartTlsConfig'_constructor {_UpstreamStartTlsConfig'cleartextSocketConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer),
                                         _UpstreamStartTlsConfig'tlsSocketConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext),
                                         _UpstreamStartTlsConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpstreamStartTlsConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpstreamStartTlsConfig "cleartextSocketConfig" Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamStartTlsConfig'cleartextSocketConfig
           (\ x__ y__
              -> x__ {_UpstreamStartTlsConfig'cleartextSocketConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpstreamStartTlsConfig "maybe'cleartextSocketConfig" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamStartTlsConfig'cleartextSocketConfig
           (\ x__ y__
              -> x__ {_UpstreamStartTlsConfig'cleartextSocketConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamStartTlsConfig "tlsSocketConfig" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamStartTlsConfig'tlsSocketConfig
           (\ x__ y__ -> x__ {_UpstreamStartTlsConfig'tlsSocketConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpstreamStartTlsConfig "maybe'tlsSocketConfig" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamStartTlsConfig'tlsSocketConfig
           (\ x__ y__ -> x__ {_UpstreamStartTlsConfig'tlsSocketConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpstreamStartTlsConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.starttls.v3.UpstreamStartTlsConfig"
  packedMessageDescriptor _
    = "\n\
      \\SYNUpstreamStartTlsConfig\DC2s\n\
      \\ETBcleartext_socket_config\CAN\SOH \SOH(\v2;.envoy.extensions.transport_sockets.raw_buffer.v3.RawBufferR\NAKcleartextSocketConfig\DC2s\n\
      \\DC1tls_socket_config\CAN\STX \SOH(\v2=.envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContextR\SItlsSocketConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cleartextSocketConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cleartext_socket_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.RawBuffer.V3.RawBuffer.RawBuffer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cleartextSocketConfig")) ::
              Data.ProtoLens.FieldDescriptor UpstreamStartTlsConfig
        tlsSocketConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_socket_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tlsSocketConfig")) ::
              Data.ProtoLens.FieldDescriptor UpstreamStartTlsConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cleartextSocketConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, tlsSocketConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpstreamStartTlsConfig'_unknownFields
        (\ x__ y__ -> x__ {_UpstreamStartTlsConfig'_unknownFields = y__})
  defMessage
    = UpstreamStartTlsConfig'_constructor
        {_UpstreamStartTlsConfig'cleartextSocketConfig = Prelude.Nothing,
         _UpstreamStartTlsConfig'tlsSocketConfig = Prelude.Nothing,
         _UpstreamStartTlsConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpstreamStartTlsConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser UpstreamStartTlsConfig
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
                                       "cleartext_socket_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cleartextSocketConfig") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tls_socket_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tlsSocketConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpstreamStartTlsConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'cleartextSocketConfig") _x
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
                       (Data.ProtoLens.Field.field @"maybe'tlsSocketConfig") _x
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
instance Control.DeepSeq.NFData UpstreamStartTlsConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpstreamStartTlsConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpstreamStartTlsConfig'cleartextSocketConfig x__)
                (Control.DeepSeq.deepseq
                   (_UpstreamStartTlsConfig'tlsSocketConfig x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \=envoy/extensions/transport_sockets/starttls/v3/starttls.proto\DC2.envoy.extensions.transport_sockets.starttls.v3\SUBAenvoy/extensions/transport_sockets/raw_buffer/v3/raw_buffer.proto\SUB3envoy/extensions/transport_sockets/tls/v3/tls.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\252\SOH\n\
    \\SOStartTlsConfig\DC2s\n\
    \\ETBcleartext_socket_config\CAN\SOH \SOH(\v2;.envoy.extensions.transport_sockets.raw_buffer.v3.RawBufferR\NAKcleartextSocketConfig\DC2u\n\
    \\DC1tls_socket_config\CAN\STX \SOH(\v2?.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContextR\SItlsSocketConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\"\130\STX\n\
    \\SYNUpstreamStartTlsConfig\DC2s\n\
    \\ETBcleartext_socket_config\CAN\SOH \SOH(\v2;.envoy.extensions.transport_sockets.raw_buffer.v3.RawBufferR\NAKcleartextSocketConfig\DC2s\n\
    \\DC1tls_socket_config\CAN\STX \SOH(\v2=.envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContextR\SItlsSocketConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOHBW\n\
    \<io.envoyproxy.envoy.extensions.transport_sockets.starttls.v3B\rStarttlsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\184\SI\n\
    \\ACK\DC2\EOT\NUL\NUL2\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL7\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NULK\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL=\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULU\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULU\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\206\a\n\
    \\STX\EOT\NUL\DC2\EOT\RS\NUL%\SOH\SUB\249\SOH Configuration for a downstream StartTls transport socket.\n\
    \ StartTls transport socket wraps two sockets:\n\
    \ * raw_buffer socket which is used at the beginning of the session\n\
    \ * TLS socket used when a protocol negotiates a switch to encrypted traffic.\n\
    \2M [#protodoc-title: StartTls]\n\
    \ [#extension: envoy.transport_sockets.starttls]\n\
    \2\246\EOT StartTls transport socket addresses situations when a protocol starts in clear-text and\n\
    \ negotiates an in-band switch to TLS. StartTls transport socket is protocol agnostic. In the\n\
    \ case of downstream StartTls a network filter is required which understands protocol exchange\n\
    \ and a state machine to signal to the StartTls transport socket when a switch to TLS is\n\
    \ required. Similarly, upstream StartTls requires the owner of an upstream transport socket to\n\
    \ manage the state machine necessary to properly coordinate negotiation with the upstream and\n\
    \ signal to the transport socket when a switch to secure transport is required.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\RS\b\SYN\n\
    \c\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX \STX6\SUBV (optional) Configuration for clear-text socket used at the beginning of the session.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX \STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX \SUB1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX 45\n\
    \:\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT#\STX$4\SUB, Configuration for a downstream TLS socket.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX#\STX/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX#0A\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX#DE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX$\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\ETX$\a2\n\
    \\133\STX\n\
    \\STX\EOT\SOH\DC2\EOT+\NUL2\SOH\SUB\248\SOH Configuration for an upstream StartTls transport socket.\n\
    \ StartTls transport socket wraps two sockets:\n\
    \ * raw_buffer socket which is used at the beginning of the session\n\
    \ * TLS socket used when a protocol negotiates a switch to encrypted traffic.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX+\b\RS\n\
    \c\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX-\STX6\SUBV (optional) Configuration for clear-text socket used at the beginning of the session.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX-\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX-\SUB1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX-45\n\
    \9\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT0\STX14\SUB+ Configuration for an upstream TLS socket.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX0\STX-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX0.?\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX0BC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX1\ACK3\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\DC1\DC2\ETX1\a2b\ACKproto3"