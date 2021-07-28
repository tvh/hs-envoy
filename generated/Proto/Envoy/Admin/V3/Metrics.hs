{- This file was auto-generated from envoy/admin/v3/metrics.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.Metrics (
        SimpleMetric(), SimpleMetric'Type(..), SimpleMetric'Type(),
        SimpleMetric'Type'UnrecognizedValue
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
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Metrics_Fields.type'' @:: Lens' SimpleMetric SimpleMetric'Type@
         * 'Proto.Envoy.Admin.V3.Metrics_Fields.value' @:: Lens' SimpleMetric Data.Word.Word64@
         * 'Proto.Envoy.Admin.V3.Metrics_Fields.name' @:: Lens' SimpleMetric Data.Text.Text@ -}
data SimpleMetric
  = SimpleMetric'_constructor {_SimpleMetric'type' :: !SimpleMetric'Type,
                               _SimpleMetric'value :: !Data.Word.Word64,
                               _SimpleMetric'name :: !Data.Text.Text,
                               _SimpleMetric'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SimpleMetric where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SimpleMetric "type'" SimpleMetric'Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimpleMetric'type' (\ x__ y__ -> x__ {_SimpleMetric'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SimpleMetric "value" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimpleMetric'value (\ x__ y__ -> x__ {_SimpleMetric'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SimpleMetric "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimpleMetric'name (\ x__ y__ -> x__ {_SimpleMetric'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message SimpleMetric where
  messageName _ = Data.Text.pack "envoy.admin.v3.SimpleMetric"
  packedMessageDescriptor _
    = "\n\
      \\fSimpleMetric\DC25\n\
      \\EOTtype\CAN\SOH \SOH(\SO2!.envoy.admin.v3.SimpleMetric.TypeR\EOTtype\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname\"\RS\n\
      \\EOTType\DC2\v\n\
      \\aCOUNTER\DLE\NUL\DC2\t\n\
      \\ENQGAUGE\DLE\SOH:'\154\197\136\RS\"\n\
      \ envoy.admin.v2alpha.SimpleMetric"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor SimpleMetric'Type)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor SimpleMetric
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor SimpleMetric
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor SimpleMetric
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor),
           (Data.ProtoLens.Tag 3, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SimpleMetric'_unknownFields
        (\ x__ y__ -> x__ {_SimpleMetric'_unknownFields = y__})
  defMessage
    = SimpleMetric'_constructor
        {_SimpleMetric'type' = Data.ProtoLens.fieldDefault,
         _SimpleMetric'value = Data.ProtoLens.fieldDefault,
         _SimpleMetric'name = Data.ProtoLens.fieldDefault,
         _SimpleMetric'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SimpleMetric -> Data.ProtoLens.Encoding.Bytes.Parser SimpleMetric
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        26
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SimpleMetric"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SimpleMetric where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SimpleMetric'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SimpleMetric'type' x__)
                (Control.DeepSeq.deepseq
                   (_SimpleMetric'value x__)
                   (Control.DeepSeq.deepseq (_SimpleMetric'name x__) ())))
newtype SimpleMetric'Type'UnrecognizedValue
  = SimpleMetric'Type'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data SimpleMetric'Type
  = SimpleMetric'COUNTER |
    SimpleMetric'GAUGE |
    SimpleMetric'Type'Unrecognized !SimpleMetric'Type'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum SimpleMetric'Type where
  maybeToEnum 0 = Prelude.Just SimpleMetric'COUNTER
  maybeToEnum 1 = Prelude.Just SimpleMetric'GAUGE
  maybeToEnum k
    = Prelude.Just
        (SimpleMetric'Type'Unrecognized
           (SimpleMetric'Type'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum SimpleMetric'COUNTER = "COUNTER"
  showEnum SimpleMetric'GAUGE = "GAUGE"
  showEnum
    (SimpleMetric'Type'Unrecognized (SimpleMetric'Type'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "COUNTER" = Prelude.Just SimpleMetric'COUNTER
    | (Prelude.==) k "GAUGE" = Prelude.Just SimpleMetric'GAUGE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded SimpleMetric'Type where
  minBound = SimpleMetric'COUNTER
  maxBound = SimpleMetric'GAUGE
instance Prelude.Enum SimpleMetric'Type where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Type: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum SimpleMetric'COUNTER = 0
  fromEnum SimpleMetric'GAUGE = 1
  fromEnum
    (SimpleMetric'Type'Unrecognized (SimpleMetric'Type'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ SimpleMetric'GAUGE
    = Prelude.error
        "SimpleMetric'Type.succ: bad argument SimpleMetric'GAUGE. This value would be out of bounds."
  succ SimpleMetric'COUNTER = SimpleMetric'GAUGE
  succ (SimpleMetric'Type'Unrecognized _)
    = Prelude.error
        "SimpleMetric'Type.succ: bad argument: unrecognized value"
  pred SimpleMetric'COUNTER
    = Prelude.error
        "SimpleMetric'Type.pred: bad argument SimpleMetric'COUNTER. This value would be out of bounds."
  pred SimpleMetric'GAUGE = SimpleMetric'COUNTER
  pred (SimpleMetric'Type'Unrecognized _)
    = Prelude.error
        "SimpleMetric'Type.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault SimpleMetric'Type where
  fieldDefault = SimpleMetric'COUNTER
instance Control.DeepSeq.NFData SimpleMetric'Type where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FSenvoy/admin/v3/metrics.proto\DC2\SOenvoy.admin.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\184\SOH\n\
    \\fSimpleMetric\DC25\n\
    \\EOTtype\CAN\SOH \SOH(\SO2!.envoy.admin.v3.SimpleMetric.TypeR\EOTtype\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\tR\EOTname\"\RS\n\
    \\EOTType\DC2\v\n\
    \\aCOUNTER\DLE\NUL\DC2\t\n\
    \\ENQGAUGE\DLE\SOH:'\154\197\136\RS\"\n\
    \ envoy.admin.v2alpha.SimpleMetricB6\n\
    \\FSio.envoyproxy.envoy.admin.v3B\fMetricsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\139\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\US\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ETB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\t\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\n\
    \\NULF\n\
    \d\n\
    \\STX\EOT\NUL\DC2\EOT\SI\NUL\US\SOH\SUB: Proto representation of an Envoy Counter or Gauge value.\n\
    \2\FS [#protodoc-title: Metrics]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SI\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DLE\STXb\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DLE\STXb\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\DC2\STX\NAK\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\DC2\a\v\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\DC3\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC3\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\DC3\SO\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\DC4\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC4\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\DC4\f\r\n\
    \.\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STX\DLE\SUB! Type of the metric represented.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\CAN\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\a\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN\SO\SI\n\
    \$\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ESC\STX\DC3\SUB\ETB Current metric value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ESC\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ESC\DC1\DC2\n\
    \\"\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\RS\STX\DC2\SUB\NAK Name of the metric.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\RS\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\RS\DLE\DC1b\ACKproto3"