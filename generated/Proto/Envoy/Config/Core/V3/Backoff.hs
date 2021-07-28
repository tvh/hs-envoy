{- This file was auto-generated from envoy/config/core/v3/backoff.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.Backoff (
        BackoffStrategy()
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Backoff_Fields.baseInterval' @:: Lens' BackoffStrategy Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.Backoff_Fields.maybe'baseInterval' @:: Lens' BackoffStrategy (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.Backoff_Fields.maxInterval' @:: Lens' BackoffStrategy Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.Backoff_Fields.maybe'maxInterval' @:: Lens' BackoffStrategy (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data BackoffStrategy
  = BackoffStrategy'_constructor {_BackoffStrategy'baseInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _BackoffStrategy'maxInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _BackoffStrategy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BackoffStrategy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BackoffStrategy "baseInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BackoffStrategy'baseInterval
           (\ x__ y__ -> x__ {_BackoffStrategy'baseInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BackoffStrategy "maybe'baseInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BackoffStrategy'baseInterval
           (\ x__ y__ -> x__ {_BackoffStrategy'baseInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BackoffStrategy "maxInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BackoffStrategy'maxInterval
           (\ x__ y__ -> x__ {_BackoffStrategy'maxInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BackoffStrategy "maybe'maxInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BackoffStrategy'maxInterval
           (\ x__ y__ -> x__ {_BackoffStrategy'maxInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Message BackoffStrategy where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.BackoffStrategy"
  packedMessageDescriptor _
    = "\n\
      \\SIBackoffStrategy\DC2N\n\
      \\rbase_interval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fbaseIntervalB\SO\250B\v\170\SOH\b\b\SOH2\EOT\DLE\192\132=\DC2F\n\
      \\fmax_interval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\vmaxIntervalB\b\250B\ENQ\170\SOH\STX*\NUL:(\154\197\136\RS#\n\
      \!envoy.api.v2.core.BackoffStrategy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        baseInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'baseInterval")) ::
              Data.ProtoLens.FieldDescriptor BackoffStrategy
        maxInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxInterval")) ::
              Data.ProtoLens.FieldDescriptor BackoffStrategy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, baseInterval__field_descriptor),
           (Data.ProtoLens.Tag 2, maxInterval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BackoffStrategy'_unknownFields
        (\ x__ y__ -> x__ {_BackoffStrategy'_unknownFields = y__})
  defMessage
    = BackoffStrategy'_constructor
        {_BackoffStrategy'baseInterval = Prelude.Nothing,
         _BackoffStrategy'maxInterval = Prelude.Nothing,
         _BackoffStrategy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BackoffStrategy
          -> Data.ProtoLens.Encoding.Bytes.Parser BackoffStrategy
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
                                       "base_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"baseInterval") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_interval"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxInterval") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BackoffStrategy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'baseInterval") _x
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
                       (Data.ProtoLens.Field.field @"maybe'maxInterval") _x
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
instance Control.DeepSeq.NFData BackoffStrategy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BackoffStrategy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BackoffStrategy'baseInterval x__)
                (Control.DeepSeq.deepseq (_BackoffStrategy'maxInterval x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"envoy/config/core/v3/backoff.proto\DC2\DC4envoy.config.core.v3\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\211\SOH\n\
    \\SIBackoffStrategy\DC2N\n\
    \\rbase_interval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fbaseIntervalB\SO\250B\v\170\SOH\b\b\SOH2\EOT\DLE\192\132=\DC2F\n\
    \\fmax_interval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\vmaxIntervalB\b\250B\ENQ\170\SOH\STX*\NUL:(\154\197\136\RS#\n\
    \!envoy.api.v2.core.BackoffStrategyB<\n\
    \\"io.envoyproxy.envoy.config.core.v3B\fBackoffProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\150\b\n\
    \\ACK\DC2\EOT\NUL\NUL#\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \u\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL#\SOH\SUBB Configuration defining a jittered exponential back off strategy.\n\
    \2% [#protodoc-title: Backoff Strategy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC3\STXc\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC3\STXc\n\
    \\225\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\CAN\STX\ESC\ENQ\SUB\210\SOH The base interval to be used for the next back off computation. It should\n\
    \ be greater than zero and less than or equal to :ref:`max_interval\n\
    \ <envoy_v3_api_field_config.core.v3.BackoffStrategy.max_interval>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\CAN\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\ESC(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN+,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\CAN-\ESC\EOT\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\NAK\DC2\EOT\CAN.\ESC\ETX\n\
    \\219\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STXR\SUB\205\STX Specifies the maximum interval between retries. This parameter is optional,\n\
    \ but must be greater than or equal to the :ref:`base_interval\n\
    \ <envoy_v3_api_field_config.core.v3.BackoffStrategy.base_interval>` if set. The default\n\
    \ is 10 times the :ref:`base_interval\n\
    \ <envoy_v3_api_field_config.core.v3.BackoffStrategy.base_interval>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\"\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\ESC'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"*+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\",Q\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\NAK\DC2\ETX\"-Pb\ACKproto3"