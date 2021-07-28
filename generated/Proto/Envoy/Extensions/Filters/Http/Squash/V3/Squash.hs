{- This file was auto-generated from envoy/extensions/filters/http/squash/v3/squash.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Squash.V3.Squash (
        Squash()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Squash.V3.Squash_Fields.cluster' @:: Lens' Squash Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Squash.V3.Squash_Fields.attachmentTemplate' @:: Lens' Squash Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Extensions.Filters.Http.Squash.V3.Squash_Fields.maybe'attachmentTemplate' @:: Lens' Squash (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Extensions.Filters.Http.Squash.V3.Squash_Fields.requestTimeout' @:: Lens' Squash Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.Squash.V3.Squash_Fields.maybe'requestTimeout' @:: Lens' Squash (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Http.Squash.V3.Squash_Fields.attachmentTimeout' @:: Lens' Squash Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.Squash.V3.Squash_Fields.maybe'attachmentTimeout' @:: Lens' Squash (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Http.Squash.V3.Squash_Fields.attachmentPollPeriod' @:: Lens' Squash Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.Squash.V3.Squash_Fields.maybe'attachmentPollPeriod' @:: Lens' Squash (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data Squash
  = Squash'_constructor {_Squash'cluster :: !Data.Text.Text,
                         _Squash'attachmentTemplate :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                         _Squash'requestTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                         _Squash'attachmentTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                         _Squash'attachmentPollPeriod :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                         _Squash'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Squash where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Squash "cluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Squash'cluster (\ x__ y__ -> x__ {_Squash'cluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Squash "attachmentTemplate" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Squash'attachmentTemplate
           (\ x__ y__ -> x__ {_Squash'attachmentTemplate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Squash "maybe'attachmentTemplate" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Squash'attachmentTemplate
           (\ x__ y__ -> x__ {_Squash'attachmentTemplate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Squash "requestTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Squash'requestTimeout
           (\ x__ y__ -> x__ {_Squash'requestTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Squash "maybe'requestTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Squash'requestTimeout
           (\ x__ y__ -> x__ {_Squash'requestTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Squash "attachmentTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Squash'attachmentTimeout
           (\ x__ y__ -> x__ {_Squash'attachmentTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Squash "maybe'attachmentTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Squash'attachmentTimeout
           (\ x__ y__ -> x__ {_Squash'attachmentTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Squash "attachmentPollPeriod" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Squash'attachmentPollPeriod
           (\ x__ y__ -> x__ {_Squash'attachmentPollPeriod = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Squash "maybe'attachmentPollPeriod" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Squash'attachmentPollPeriod
           (\ x__ y__ -> x__ {_Squash'attachmentPollPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Message Squash where
  messageName _
    = Data.Text.pack "envoy.extensions.filters.http.squash.v3.Squash"
  packedMessageDescriptor _
    = "\n\
      \\ACKSquash\DC2!\n\
      \\acluster\CAN\SOH \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2H\n\
      \\DC3attachment_template\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\DC2attachmentTemplate\DC2B\n\
      \\SIrequest_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SOrequestTimeout\DC2H\n\
      \\DC2attachment_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC1attachmentTimeout\DC2O\n\
      \\SYNattachment_poll_period\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DC4attachmentPollPeriod:0\154\197\136\RS+\n\
      \)envoy.config.filter.http.squash.v2.Squash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cluster")) ::
              Data.ProtoLens.FieldDescriptor Squash
        attachmentTemplate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attachment_template"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'attachmentTemplate")) ::
              Data.ProtoLens.FieldDescriptor Squash
        requestTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestTimeout")) ::
              Data.ProtoLens.FieldDescriptor Squash
        attachmentTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attachment_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'attachmentTimeout")) ::
              Data.ProtoLens.FieldDescriptor Squash
        attachmentPollPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attachment_poll_period"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'attachmentPollPeriod")) ::
              Data.ProtoLens.FieldDescriptor Squash
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cluster__field_descriptor),
           (Data.ProtoLens.Tag 2, attachmentTemplate__field_descriptor),
           (Data.ProtoLens.Tag 3, requestTimeout__field_descriptor),
           (Data.ProtoLens.Tag 4, attachmentTimeout__field_descriptor),
           (Data.ProtoLens.Tag 5, attachmentPollPeriod__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Squash'_unknownFields
        (\ x__ y__ -> x__ {_Squash'_unknownFields = y__})
  defMessage
    = Squash'_constructor
        {_Squash'cluster = Data.ProtoLens.fieldDefault,
         _Squash'attachmentTemplate = Prelude.Nothing,
         _Squash'requestTimeout = Prelude.Nothing,
         _Squash'attachmentTimeout = Prelude.Nothing,
         _Squash'attachmentPollPeriod = Prelude.Nothing,
         _Squash'_unknownFields = []}
  parseMessage
    = let
        loop :: Squash -> Data.ProtoLens.Encoding.Bytes.Parser Squash
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
                                       "cluster"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "attachment_template"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"attachmentTemplate") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestTimeout") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "attachment_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"attachmentTimeout") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "attachment_poll_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"attachmentPollPeriod") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Squash"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cluster") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'attachmentTemplate") _x
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'requestTimeout") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                             (Data.ProtoLens.Field.field @"maybe'attachmentTimeout") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                (Data.ProtoLens.Field.field @"maybe'attachmentPollPeriod") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Squash where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Squash'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Squash'cluster x__)
                (Control.DeepSeq.deepseq
                   (_Squash'attachmentTemplate x__)
                   (Control.DeepSeq.deepseq
                      (_Squash'requestTimeout x__)
                      (Control.DeepSeq.deepseq
                         (_Squash'attachmentTimeout x__)
                         (Control.DeepSeq.deepseq (_Squash'attachmentPollPeriod x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \4envoy/extensions/filters/http/squash/v3/squash.proto\DC2'envoy.extensions.filters.http.squash.v3\SUB\RSgoogle/protobuf/duration.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\134\ETX\n\
    \\ACKSquash\DC2!\n\
    \\acluster\CAN\SOH \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2H\n\
    \\DC3attachment_template\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\DC2attachmentTemplate\DC2B\n\
    \\SIrequest_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SOrequestTimeout\DC2H\n\
    \\DC2attachment_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC1attachmentTimeout\DC2O\n\
    \\SYNattachment_poll_period\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DC4attachmentPollPeriod:0\154\197\136\RS+\n\
    \)envoy.config.filter.http.squash.v2.SquashBN\n\
    \5io.envoyproxy.envoy.extensions.filters.http.squash.v3B\vSquashProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\133\SO\n\
    \\ACK\DC2\EOT\NUL\NUL;\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL0\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULN\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULN\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\174\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL;\SOH\SUB\ETB [#next-free-field: 6]\n\
    \2\136\SOH [#protodoc-title: Squash]\n\
    \ Squash :ref:`configuration overview <config_http_filters_squash>`.\n\
    \ [#extension: envoy.filters.http.squash]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\SO\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SYN\STX\ETB2\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SYN\STX\ETB2\n\
    \D\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX>\SUB7 The name of the cluster that hosts the Squash server.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SUB\NAK=\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\SUB\SYN<\n\
    \\201\ENQ\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX/\STX1\SUB\187\ENQ When the filter requests the Squash server to create a DebugAttachment, it will use this\n\
    \ structure as template for the body of the request. It can contain reference to environment\n\
    \ variables in the form of '{{ ENV_VAR_NAME }}'. These can be used to provide the Squash server\n\
    \ with more information to find the process to attach the debugger to. For example, in a\n\
    \ Istio/k8s environment, this will contain information on the pod:\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \  {\n\
    \    \"spec\": {\n\
    \      \"attachment\": {\n\
    \        \"pod\": \"{{ POD_NAME }}\",\n\
    \        \"namespace\": \"{{ POD_NAMESPACE }}\"\n\
    \      },\n\
    \      \"match_request\": true\n\
    \    }\n\
    \  }\n\
    \\n\
    \ (where POD_NAME, POD_NAMESPACE are configured in the pod via the Downward API)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX/\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX/\EM,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX//0\n\
    \d\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX2\STX/\SUBW The timeout for individual requests sent to the Squash cluster. Defaults to 1 second.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX2\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX2\ESC*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX2-.\n\
    \u\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX6\STX2\SUBh The total timeout Squash will delay a request and wait for it to be attached. Defaults to 60\n\
    \ seconds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX6\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX6\ESC-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX601\n\
    \\155\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX:\STX6\SUB\141\SOH Amount of time to poll for the status of the attachment object in the Squash server\n\
    \ (to check if has been attached). Defaults to 1 second.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX:\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX:\ESC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX:45b\ACKproto3"