{- This file was auto-generated from envoy/extensions/filters/network/kafka_broker/v3/kafka_broker.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.KafkaBroker.V3.KafkaBroker (
        KafkaBroker()
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.KafkaBroker.V3.KafkaBroker_Fields.statPrefix' @:: Lens' KafkaBroker Data.Text.Text@ -}
data KafkaBroker
  = KafkaBroker'_constructor {_KafkaBroker'statPrefix :: !Data.Text.Text,
                              _KafkaBroker'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KafkaBroker where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KafkaBroker "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KafkaBroker'statPrefix
           (\ x__ y__ -> x__ {_KafkaBroker'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message KafkaBroker where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.kafka_broker.v3.KafkaBroker"
  packedMessageDescriptor _
    = "\n\
      \\vKafkaBroker\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH:D\154\197\136\RS?\n\
      \=envoy.config.filter.network.kafka_broker.v2alpha1.KafkaBroker"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor KafkaBroker
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KafkaBroker'_unknownFields
        (\ x__ y__ -> x__ {_KafkaBroker'_unknownFields = y__})
  defMessage
    = KafkaBroker'_constructor
        {_KafkaBroker'statPrefix = Data.ProtoLens.fieldDefault,
         _KafkaBroker'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KafkaBroker -> Data.ProtoLens.Encoding.Bytes.Parser KafkaBroker
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KafkaBroker"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KafkaBroker where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KafkaBroker'_unknownFields x__)
             (Control.DeepSeq.deepseq (_KafkaBroker'statPrefix x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Cenvoy/extensions/filters/network/kafka_broker/v3/kafka_broker.proto\DC20envoy.extensions.filters.network.kafka_broker.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"}\n\
    \\vKafkaBroker\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH:D\154\197\136\RS?\n\
    \=envoy.config.filter.network.kafka_broker.v2alpha1.KafkaBrokerB\\\n\
    \>io.envoyproxy.envoy.extensions.filters.network.kafka_broker.v3B\DLEKafkaBrokerProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\174\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\ETB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL9\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULW\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULW\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL1\n\
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
    \\179\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\ETB\SOH2\166\SOH [#protodoc-title: Kafka Broker]\n\
    \ Kafka Broker :ref:`configuration overview <config_network_filters_kafka_broker>`.\n\
    \ [#extension: envoy.filters.network.kafka_broker]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\DC3\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC2\STX\DC3F\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC2\STX\DC3F\n\
    \m\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\STXB\SUB` The prefix to use when emitting :ref:`statistics <config_network_filters_kafka_broker_stats>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SYN\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\SYN\SUB@b\ACKproto3"