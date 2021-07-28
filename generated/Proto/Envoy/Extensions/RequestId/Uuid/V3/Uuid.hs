{- This file was auto-generated from envoy/extensions/request_id/uuid/v3/uuid.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.RequestId.Uuid.V3.Uuid (
        UuidRequestIdConfig()
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
{- | Fields :
     
         * 'Proto.Envoy.Extensions.RequestId.Uuid.V3.Uuid_Fields.packTraceReason' @:: Lens' UuidRequestIdConfig Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.RequestId.Uuid.V3.Uuid_Fields.maybe'packTraceReason' @:: Lens' UuidRequestIdConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.RequestId.Uuid.V3.Uuid_Fields.useRequestIdForTraceSampling' @:: Lens' UuidRequestIdConfig Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.RequestId.Uuid.V3.Uuid_Fields.maybe'useRequestIdForTraceSampling' @:: Lens' UuidRequestIdConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@ -}
data UuidRequestIdConfig
  = UuidRequestIdConfig'_constructor {_UuidRequestIdConfig'packTraceReason :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                      _UuidRequestIdConfig'useRequestIdForTraceSampling :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                      _UuidRequestIdConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UuidRequestIdConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UuidRequestIdConfig "packTraceReason" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UuidRequestIdConfig'packTraceReason
           (\ x__ y__ -> x__ {_UuidRequestIdConfig'packTraceReason = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UuidRequestIdConfig "maybe'packTraceReason" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UuidRequestIdConfig'packTraceReason
           (\ x__ y__ -> x__ {_UuidRequestIdConfig'packTraceReason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UuidRequestIdConfig "useRequestIdForTraceSampling" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UuidRequestIdConfig'useRequestIdForTraceSampling
           (\ x__ y__
              -> x__ {_UuidRequestIdConfig'useRequestIdForTraceSampling = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UuidRequestIdConfig "maybe'useRequestIdForTraceSampling" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UuidRequestIdConfig'useRequestIdForTraceSampling
           (\ x__ y__
              -> x__ {_UuidRequestIdConfig'useRequestIdForTraceSampling = y__}))
        Prelude.id
instance Data.ProtoLens.Message UuidRequestIdConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.request_id.uuid.v3.UuidRequestIdConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC3UuidRequestIdConfig\DC2F\n\
      \\DC1pack_trace_reason\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\SIpackTraceReason\DC2c\n\
      \!use_request_id_for_trace_sampling\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\FSuseRequestIdForTraceSampling"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        packTraceReason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pack_trace_reason"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'packTraceReason")) ::
              Data.ProtoLens.FieldDescriptor UuidRequestIdConfig
        useRequestIdForTraceSampling__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_request_id_for_trace_sampling"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'useRequestIdForTraceSampling")) ::
              Data.ProtoLens.FieldDescriptor UuidRequestIdConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, packTraceReason__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            useRequestIdForTraceSampling__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UuidRequestIdConfig'_unknownFields
        (\ x__ y__ -> x__ {_UuidRequestIdConfig'_unknownFields = y__})
  defMessage
    = UuidRequestIdConfig'_constructor
        {_UuidRequestIdConfig'packTraceReason = Prelude.Nothing,
         _UuidRequestIdConfig'useRequestIdForTraceSampling = Prelude.Nothing,
         _UuidRequestIdConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UuidRequestIdConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser UuidRequestIdConfig
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
                                       "pack_trace_reason"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"packTraceReason") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "use_request_id_for_trace_sampling"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useRequestIdForTraceSampling")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UuidRequestIdConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'packTraceReason") _x
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
                       (Data.ProtoLens.Field.field @"maybe'useRequestIdForTraceSampling")
                       _x
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
instance Control.DeepSeq.NFData UuidRequestIdConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UuidRequestIdConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UuidRequestIdConfig'packTraceReason x__)
                (Control.DeepSeq.deepseq
                   (_UuidRequestIdConfig'useRequestIdForTraceSampling x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \.envoy/extensions/request_id/uuid/v3/uuid.proto\DC2#envoy.extensions.request_id.uuid.v3\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\"\194\SOH\n\
    \\DC3UuidRequestIdConfig\DC2F\n\
    \\DC1pack_trace_reason\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\SIpackTraceReason\DC2c\n\
    \!use_request_id_for_trace_sampling\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\FSuseRequestIdForTraceSamplingBH\n\
    \1io.envoyproxy.envoy.extensions.request_id.uuid.v3B\tUuidProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\179\SI\n\
    \\ACK\DC2\EOT\NUL\NUL/\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL,\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULJ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULJ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\n\
    \\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\v\NULF\n\
    \\190\b\n\
    \\STX\EOT\NUL\DC2\EOT#\NUL/\SOH\SUB\241\a Configuration for the default UUID request ID extension which has the following behavior:\n\
    \\n\
    \ 1. Request ID is propagated using the :ref:`x-request-id\n\
    \    <config_http_conn_man_headers_x-request-id>` header.\n\
    \\n\
    \ 2. Request ID is a universally unique identifier `(UUID4)\n\
    \    <https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_4_(random)>`_.\n\
    \\n\
    \ 3. Tracing decision (sampled, forced, etc) is set in 14th nibble of the UUID. By default this will\n\
    \    overwrite existing UUIDs received in the *x-request-id* header if the trace sampling decision\n\
    \    is changed. The 14th nibble of the UUID4 has been chosen because it is fixed to '4' by the\n\
    \    standard. Thus, '4' indicates a default UUID and no trace status. This nibble is swapped to:\n\
    \\n\
    \      a. '9': Sampled.\n\
    \      b. 'a': Force traced due to server-side override.\n\
    \      c. 'b': Force traced due to client-side request ID joining.\n\
    \\n\
    \    See the :ref:`x-request-id <config_http_conn_man_headers_x-request-id>` documentation for\n\
    \    more information.\n\
    \2> [#protodoc-title: UUID]\n\
    \ [#extension: envoy.request_id.uuid]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX#\b\ESC\n\
    \\133\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX)\STX2\SUB\247\STX Whether the implementation alters the UUID to contain the trace sampling decision as per the\n\
    \ `UuidRequestIdConfig` message documentation. This defaults to true. If disabled no\n\
    \ modification to the UUID will be performed. It is important to note that if disabled,\n\
    \ stable sampling of traces, access logs, etc. will no longer work and only random sampling will\n\
    \ be possible.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX)\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX)\FS-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX)01\n\
    \\253\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX.\STXB\SUB\239\SOH Set whether to use :ref:`x-request-id<config_http_conn_man_headers_x-request-id>` for sampling or not.\n\
    \ This defaults to true. See the :ref:`context propagation <arch_overview_tracing_context_propagation>`\n\
    \ overview for more information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX.\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX.\FS=\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX.@Ab\ACKproto3"