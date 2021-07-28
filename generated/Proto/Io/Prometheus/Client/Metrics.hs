{- This file was auto-generated from io/prometheus/client/metrics.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Io.Prometheus.Client.Metrics (
        Bucket(), Counter(), Exemplar(), Gauge(), Histogram(), LabelPair(),
        Metric(), MetricFamily(), MetricType(..), MetricType(), Quantile(),
        Summary(), Untyped()
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
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.cumulativeCount' @:: Lens' Bucket Data.Word.Word64@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'cumulativeCount' @:: Lens' Bucket (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.upperBound' @:: Lens' Bucket Prelude.Double@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'upperBound' @:: Lens' Bucket (Prelude.Maybe Prelude.Double)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.exemplar' @:: Lens' Bucket Exemplar@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'exemplar' @:: Lens' Bucket (Prelude.Maybe Exemplar)@ -}
data Bucket
  = Bucket'_constructor {_Bucket'cumulativeCount :: !(Prelude.Maybe Data.Word.Word64),
                         _Bucket'upperBound :: !(Prelude.Maybe Prelude.Double),
                         _Bucket'exemplar :: !(Prelude.Maybe Exemplar),
                         _Bucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Bucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Bucket "cumulativeCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bucket'cumulativeCount
           (\ x__ y__ -> x__ {_Bucket'cumulativeCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Bucket "maybe'cumulativeCount" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bucket'cumulativeCount
           (\ x__ y__ -> x__ {_Bucket'cumulativeCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bucket "upperBound" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bucket'upperBound (\ x__ y__ -> x__ {_Bucket'upperBound = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Bucket "maybe'upperBound" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bucket'upperBound (\ x__ y__ -> x__ {_Bucket'upperBound = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bucket "exemplar" Exemplar where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bucket'exemplar (\ x__ y__ -> x__ {_Bucket'exemplar = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bucket "maybe'exemplar" (Prelude.Maybe Exemplar) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bucket'exemplar (\ x__ y__ -> x__ {_Bucket'exemplar = y__}))
        Prelude.id
instance Data.ProtoLens.Message Bucket where
  messageName _ = Data.Text.pack "io.prometheus.client.Bucket"
  packedMessageDescriptor _
    = "\n\
      \\ACKBucket\DC2)\n\
      \\DLEcumulative_count\CAN\SOH \SOH(\EOTR\SIcumulativeCount\DC2\US\n\
      \\vupper_bound\CAN\STX \SOH(\SOHR\n\
      \upperBound\DC2:\n\
      \\bexemplar\CAN\ETX \SOH(\v2\RS.io.prometheus.client.ExemplarR\bexemplar"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cumulativeCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cumulative_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cumulativeCount")) ::
              Data.ProtoLens.FieldDescriptor Bucket
        upperBound__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upper_bound"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upperBound")) ::
              Data.ProtoLens.FieldDescriptor Bucket
        exemplar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exemplar"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Exemplar)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exemplar")) ::
              Data.ProtoLens.FieldDescriptor Bucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cumulativeCount__field_descriptor),
           (Data.ProtoLens.Tag 2, upperBound__field_descriptor),
           (Data.ProtoLens.Tag 3, exemplar__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Bucket'_unknownFields
        (\ x__ y__ -> x__ {_Bucket'_unknownFields = y__})
  defMessage
    = Bucket'_constructor
        {_Bucket'cumulativeCount = Prelude.Nothing,
         _Bucket'upperBound = Prelude.Nothing,
         _Bucket'exemplar = Prelude.Nothing, _Bucket'_unknownFields = []}
  parseMessage
    = let
        loop :: Bucket -> Data.ProtoLens.Encoding.Bytes.Parser Bucket
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cumulative_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cumulativeCount") y x)
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "upper_bound"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"upperBound") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "exemplar"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"exemplar") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Bucket"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'cumulativeCount") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'upperBound") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putFixed64
                             Data.ProtoLens.Encoding.Bytes.doubleToWord
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'exemplar") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Bucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Bucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Bucket'cumulativeCount x__)
                (Control.DeepSeq.deepseq
                   (_Bucket'upperBound x__)
                   (Control.DeepSeq.deepseq (_Bucket'exemplar x__) ())))
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.value' @:: Lens' Counter Prelude.Double@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'value' @:: Lens' Counter (Prelude.Maybe Prelude.Double)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.exemplar' @:: Lens' Counter Exemplar@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'exemplar' @:: Lens' Counter (Prelude.Maybe Exemplar)@ -}
data Counter
  = Counter'_constructor {_Counter'value :: !(Prelude.Maybe Prelude.Double),
                          _Counter'exemplar :: !(Prelude.Maybe Exemplar),
                          _Counter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Counter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Counter "value" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Counter'value (\ x__ y__ -> x__ {_Counter'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Counter "maybe'value" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Counter'value (\ x__ y__ -> x__ {_Counter'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Counter "exemplar" Exemplar where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Counter'exemplar (\ x__ y__ -> x__ {_Counter'exemplar = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Counter "maybe'exemplar" (Prelude.Maybe Exemplar) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Counter'exemplar (\ x__ y__ -> x__ {_Counter'exemplar = y__}))
        Prelude.id
instance Data.ProtoLens.Message Counter where
  messageName _ = Data.Text.pack "io.prometheus.client.Counter"
  packedMessageDescriptor _
    = "\n\
      \\aCounter\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalue\DC2:\n\
      \\bexemplar\CAN\STX \SOH(\v2\RS.io.prometheus.client.ExemplarR\bexemplar"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Counter
        exemplar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exemplar"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Exemplar)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exemplar")) ::
              Data.ProtoLens.FieldDescriptor Counter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, value__field_descriptor),
           (Data.ProtoLens.Tag 2, exemplar__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Counter'_unknownFields
        (\ x__ y__ -> x__ {_Counter'_unknownFields = y__})
  defMessage
    = Counter'_constructor
        {_Counter'value = Prelude.Nothing,
         _Counter'exemplar = Prelude.Nothing, _Counter'_unknownFields = []}
  parseMessage
    = let
        loop :: Counter -> Data.ProtoLens.Encoding.Bytes.Parser Counter
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
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "exemplar"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"exemplar") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Counter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64
                          Data.ProtoLens.Encoding.Bytes.doubleToWord
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'exemplar") _x
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
instance Control.DeepSeq.NFData Counter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Counter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Counter'value x__)
                (Control.DeepSeq.deepseq (_Counter'exemplar x__) ()))
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.label' @:: Lens' Exemplar [LabelPair]@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.vec'label' @:: Lens' Exemplar (Data.Vector.Vector LabelPair)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.value' @:: Lens' Exemplar Prelude.Double@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'value' @:: Lens' Exemplar (Prelude.Maybe Prelude.Double)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.timestamp' @:: Lens' Exemplar Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'timestamp' @:: Lens' Exemplar (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data Exemplar
  = Exemplar'_constructor {_Exemplar'label :: !(Data.Vector.Vector LabelPair),
                           _Exemplar'value :: !(Prelude.Maybe Prelude.Double),
                           _Exemplar'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Exemplar'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Exemplar where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Exemplar "label" [LabelPair] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Exemplar'label (\ x__ y__ -> x__ {_Exemplar'label = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Exemplar "vec'label" (Data.Vector.Vector LabelPair) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Exemplar'label (\ x__ y__ -> x__ {_Exemplar'label = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Exemplar "value" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Exemplar'value (\ x__ y__ -> x__ {_Exemplar'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Exemplar "maybe'value" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Exemplar'value (\ x__ y__ -> x__ {_Exemplar'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Exemplar "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Exemplar'timestamp (\ x__ y__ -> x__ {_Exemplar'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Exemplar "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Exemplar'timestamp (\ x__ y__ -> x__ {_Exemplar'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message Exemplar where
  messageName _ = Data.Text.pack "io.prometheus.client.Exemplar"
  packedMessageDescriptor _
    = "\n\
      \\bExemplar\DC25\n\
      \\ENQlabel\CAN\SOH \ETX(\v2\US.io.prometheus.client.LabelPairR\ENQlabel\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\SOHR\ENQvalue\DC28\n\
      \\ttimestamp\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestamp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        label__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "label"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LabelPair)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"label")) ::
              Data.ProtoLens.FieldDescriptor Exemplar
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Exemplar
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor Exemplar
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, label__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor),
           (Data.ProtoLens.Tag 3, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Exemplar'_unknownFields
        (\ x__ y__ -> x__ {_Exemplar'_unknownFields = y__})
  defMessage
    = Exemplar'_constructor
        {_Exemplar'label = Data.Vector.Generic.empty,
         _Exemplar'value = Prelude.Nothing,
         _Exemplar'timestamp = Prelude.Nothing,
         _Exemplar'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Exemplar
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld LabelPair
             -> Data.ProtoLens.Encoding.Bytes.Parser Exemplar
        loop x mutable'label
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'label <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'label)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'label") frozen'label x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "label"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'label y)
                                loop x v
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                                  mutable'label
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                                  mutable'label
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'label
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'label <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'label)
          "Exemplar"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'label") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putFixed64
                             Data.ProtoLens.Encoding.Bytes.doubleToWord
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'timestamp") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Exemplar where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Exemplar'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Exemplar'label x__)
                (Control.DeepSeq.deepseq
                   (_Exemplar'value x__)
                   (Control.DeepSeq.deepseq (_Exemplar'timestamp x__) ())))
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.value' @:: Lens' Gauge Prelude.Double@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'value' @:: Lens' Gauge (Prelude.Maybe Prelude.Double)@ -}
data Gauge
  = Gauge'_constructor {_Gauge'value :: !(Prelude.Maybe Prelude.Double),
                        _Gauge'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Gauge where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Gauge "value" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gauge'value (\ x__ y__ -> x__ {_Gauge'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Gauge "maybe'value" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gauge'value (\ x__ y__ -> x__ {_Gauge'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Gauge where
  messageName _ = Data.Text.pack "io.prometheus.client.Gauge"
  packedMessageDescriptor _
    = "\n\
      \\ENQGauge\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Gauge
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Gauge'_unknownFields
        (\ x__ y__ -> x__ {_Gauge'_unknownFields = y__})
  defMessage
    = Gauge'_constructor
        {_Gauge'value = Prelude.Nothing, _Gauge'_unknownFields = []}
  parseMessage
    = let
        loop :: Gauge -> Data.ProtoLens.Encoding.Bytes.Parser Gauge
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
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Gauge"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64
                          Data.ProtoLens.Encoding.Bytes.doubleToWord
                          _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Gauge where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Gauge'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Gauge'value x__) ())
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.sampleCount' @:: Lens' Histogram Data.Word.Word64@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'sampleCount' @:: Lens' Histogram (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.sampleSum' @:: Lens' Histogram Prelude.Double@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'sampleSum' @:: Lens' Histogram (Prelude.Maybe Prelude.Double)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.bucket' @:: Lens' Histogram [Bucket]@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.vec'bucket' @:: Lens' Histogram (Data.Vector.Vector Bucket)@ -}
data Histogram
  = Histogram'_constructor {_Histogram'sampleCount :: !(Prelude.Maybe Data.Word.Word64),
                            _Histogram'sampleSum :: !(Prelude.Maybe Prelude.Double),
                            _Histogram'bucket :: !(Data.Vector.Vector Bucket),
                            _Histogram'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Histogram where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Histogram "sampleCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Histogram'sampleCount
           (\ x__ y__ -> x__ {_Histogram'sampleCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Histogram "maybe'sampleCount" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Histogram'sampleCount
           (\ x__ y__ -> x__ {_Histogram'sampleCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Histogram "sampleSum" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Histogram'sampleSum
           (\ x__ y__ -> x__ {_Histogram'sampleSum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Histogram "maybe'sampleSum" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Histogram'sampleSum
           (\ x__ y__ -> x__ {_Histogram'sampleSum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Histogram "bucket" [Bucket] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Histogram'bucket (\ x__ y__ -> x__ {_Histogram'bucket = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Histogram "vec'bucket" (Data.Vector.Vector Bucket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Histogram'bucket (\ x__ y__ -> x__ {_Histogram'bucket = y__}))
        Prelude.id
instance Data.ProtoLens.Message Histogram where
  messageName _ = Data.Text.pack "io.prometheus.client.Histogram"
  packedMessageDescriptor _
    = "\n\
      \\tHistogram\DC2!\n\
      \\fsample_count\CAN\SOH \SOH(\EOTR\vsampleCount\DC2\GS\n\
      \\n\
      \sample_sum\CAN\STX \SOH(\SOHR\tsampleSum\DC24\n\
      \\ACKbucket\CAN\ETX \ETX(\v2\FS.io.prometheus.client.BucketR\ACKbucket"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sampleCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sample_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sampleCount")) ::
              Data.ProtoLens.FieldDescriptor Histogram
        sampleSum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sample_sum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sampleSum")) ::
              Data.ProtoLens.FieldDescriptor Histogram
        bucket__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Bucket)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"bucket")) ::
              Data.ProtoLens.FieldDescriptor Histogram
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sampleCount__field_descriptor),
           (Data.ProtoLens.Tag 2, sampleSum__field_descriptor),
           (Data.ProtoLens.Tag 3, bucket__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Histogram'_unknownFields
        (\ x__ y__ -> x__ {_Histogram'_unknownFields = y__})
  defMessage
    = Histogram'_constructor
        {_Histogram'sampleCount = Prelude.Nothing,
         _Histogram'sampleSum = Prelude.Nothing,
         _Histogram'bucket = Data.Vector.Generic.empty,
         _Histogram'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Histogram
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Bucket
             -> Data.ProtoLens.Encoding.Bytes.Parser Histogram
        loop x mutable'bucket
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'bucket <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'bucket)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'bucket") frozen'bucket x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sample_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sampleCount") y x)
                                  mutable'bucket
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "sample_sum"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sampleSum") y x)
                                  mutable'bucket
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "bucket"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'bucket y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'bucket
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'bucket <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'bucket)
          "Histogram"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'sampleCount") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'sampleSum") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putFixed64
                             Data.ProtoLens.Encoding.Bytes.doubleToWord
                             _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'bucket") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Histogram where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Histogram'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Histogram'sampleCount x__)
                (Control.DeepSeq.deepseq
                   (_Histogram'sampleSum x__)
                   (Control.DeepSeq.deepseq (_Histogram'bucket x__) ())))
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.name' @:: Lens' LabelPair Data.Text.Text@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'name' @:: Lens' LabelPair (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.value' @:: Lens' LabelPair Data.Text.Text@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'value' @:: Lens' LabelPair (Prelude.Maybe Data.Text.Text)@ -}
data LabelPair
  = LabelPair'_constructor {_LabelPair'name :: !(Prelude.Maybe Data.Text.Text),
                            _LabelPair'value :: !(Prelude.Maybe Data.Text.Text),
                            _LabelPair'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LabelPair where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LabelPair "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LabelPair'name (\ x__ y__ -> x__ {_LabelPair'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LabelPair "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LabelPair'name (\ x__ y__ -> x__ {_LabelPair'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LabelPair "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LabelPair'value (\ x__ y__ -> x__ {_LabelPair'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LabelPair "maybe'value" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LabelPair'value (\ x__ y__ -> x__ {_LabelPair'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message LabelPair where
  messageName _ = Data.Text.pack "io.prometheus.client.LabelPair"
  packedMessageDescriptor _
    = "\n\
      \\tLabelPair\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor LabelPair
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor LabelPair
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LabelPair'_unknownFields
        (\ x__ y__ -> x__ {_LabelPair'_unknownFields = y__})
  defMessage
    = LabelPair'_constructor
        {_LabelPair'name = Prelude.Nothing,
         _LabelPair'value = Prelude.Nothing, _LabelPair'_unknownFields = []}
  parseMessage
    = let
        loop :: LabelPair -> Data.ProtoLens.Encoding.Bytes.Parser LabelPair
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LabelPair"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                          Data.Text.Encoding.encodeUtf8
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
                             Data.Text.Encoding.encodeUtf8
                             _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData LabelPair where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LabelPair'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LabelPair'name x__)
                (Control.DeepSeq.deepseq (_LabelPair'value x__) ()))
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.label' @:: Lens' Metric [LabelPair]@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.vec'label' @:: Lens' Metric (Data.Vector.Vector LabelPair)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.gauge' @:: Lens' Metric Gauge@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'gauge' @:: Lens' Metric (Prelude.Maybe Gauge)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.counter' @:: Lens' Metric Counter@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'counter' @:: Lens' Metric (Prelude.Maybe Counter)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.summary' @:: Lens' Metric Summary@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'summary' @:: Lens' Metric (Prelude.Maybe Summary)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.untyped' @:: Lens' Metric Untyped@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'untyped' @:: Lens' Metric (Prelude.Maybe Untyped)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.histogram' @:: Lens' Metric Histogram@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'histogram' @:: Lens' Metric (Prelude.Maybe Histogram)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.timestampMs' @:: Lens' Metric Data.Int.Int64@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'timestampMs' @:: Lens' Metric (Prelude.Maybe Data.Int.Int64)@ -}
data Metric
  = Metric'_constructor {_Metric'label :: !(Data.Vector.Vector LabelPair),
                         _Metric'gauge :: !(Prelude.Maybe Gauge),
                         _Metric'counter :: !(Prelude.Maybe Counter),
                         _Metric'summary :: !(Prelude.Maybe Summary),
                         _Metric'untyped :: !(Prelude.Maybe Untyped),
                         _Metric'histogram :: !(Prelude.Maybe Histogram),
                         _Metric'timestampMs :: !(Prelude.Maybe Data.Int.Int64),
                         _Metric'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Metric where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Metric "label" [LabelPair] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'label (\ x__ y__ -> x__ {_Metric'label = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Metric "vec'label" (Data.Vector.Vector LabelPair) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'label (\ x__ y__ -> x__ {_Metric'label = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metric "gauge" Gauge where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'gauge (\ x__ y__ -> x__ {_Metric'gauge = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Metric "maybe'gauge" (Prelude.Maybe Gauge) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'gauge (\ x__ y__ -> x__ {_Metric'gauge = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metric "counter" Counter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'counter (\ x__ y__ -> x__ {_Metric'counter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Metric "maybe'counter" (Prelude.Maybe Counter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'counter (\ x__ y__ -> x__ {_Metric'counter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metric "summary" Summary where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'summary (\ x__ y__ -> x__ {_Metric'summary = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Metric "maybe'summary" (Prelude.Maybe Summary) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'summary (\ x__ y__ -> x__ {_Metric'summary = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metric "untyped" Untyped where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'untyped (\ x__ y__ -> x__ {_Metric'untyped = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Metric "maybe'untyped" (Prelude.Maybe Untyped) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'untyped (\ x__ y__ -> x__ {_Metric'untyped = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metric "histogram" Histogram where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'histogram (\ x__ y__ -> x__ {_Metric'histogram = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Metric "maybe'histogram" (Prelude.Maybe Histogram) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'histogram (\ x__ y__ -> x__ {_Metric'histogram = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metric "timestampMs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'timestampMs (\ x__ y__ -> x__ {_Metric'timestampMs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Metric "maybe'timestampMs" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metric'timestampMs (\ x__ y__ -> x__ {_Metric'timestampMs = y__}))
        Prelude.id
instance Data.ProtoLens.Message Metric where
  messageName _ = Data.Text.pack "io.prometheus.client.Metric"
  packedMessageDescriptor _
    = "\n\
      \\ACKMetric\DC25\n\
      \\ENQlabel\CAN\SOH \ETX(\v2\US.io.prometheus.client.LabelPairR\ENQlabel\DC21\n\
      \\ENQgauge\CAN\STX \SOH(\v2\ESC.io.prometheus.client.GaugeR\ENQgauge\DC27\n\
      \\acounter\CAN\ETX \SOH(\v2\GS.io.prometheus.client.CounterR\acounter\DC27\n\
      \\asummary\CAN\EOT \SOH(\v2\GS.io.prometheus.client.SummaryR\asummary\DC27\n\
      \\auntyped\CAN\ENQ \SOH(\v2\GS.io.prometheus.client.UntypedR\auntyped\DC2=\n\
      \\thistogram\CAN\a \SOH(\v2\US.io.prometheus.client.HistogramR\thistogram\DC2!\n\
      \\ftimestamp_ms\CAN\ACK \SOH(\ETXR\vtimestampMs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        label__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "label"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LabelPair)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"label")) ::
              Data.ProtoLens.FieldDescriptor Metric
        gauge__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gauge"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Gauge)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gauge")) ::
              Data.ProtoLens.FieldDescriptor Metric
        counter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "counter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Counter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'counter")) ::
              Data.ProtoLens.FieldDescriptor Metric
        summary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "summary"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Summary)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'summary")) ::
              Data.ProtoLens.FieldDescriptor Metric
        untyped__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "untyped"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Untyped)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'untyped")) ::
              Data.ProtoLens.FieldDescriptor Metric
        histogram__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "histogram"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Histogram)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'histogram")) ::
              Data.ProtoLens.FieldDescriptor Metric
        timestampMs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp_ms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestampMs")) ::
              Data.ProtoLens.FieldDescriptor Metric
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, label__field_descriptor),
           (Data.ProtoLens.Tag 2, gauge__field_descriptor),
           (Data.ProtoLens.Tag 3, counter__field_descriptor),
           (Data.ProtoLens.Tag 4, summary__field_descriptor),
           (Data.ProtoLens.Tag 5, untyped__field_descriptor),
           (Data.ProtoLens.Tag 7, histogram__field_descriptor),
           (Data.ProtoLens.Tag 6, timestampMs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Metric'_unknownFields
        (\ x__ y__ -> x__ {_Metric'_unknownFields = y__})
  defMessage
    = Metric'_constructor
        {_Metric'label = Data.Vector.Generic.empty,
         _Metric'gauge = Prelude.Nothing, _Metric'counter = Prelude.Nothing,
         _Metric'summary = Prelude.Nothing,
         _Metric'untyped = Prelude.Nothing,
         _Metric'histogram = Prelude.Nothing,
         _Metric'timestampMs = Prelude.Nothing, _Metric'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Metric
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld LabelPair
             -> Data.ProtoLens.Encoding.Bytes.Parser Metric
        loop x mutable'label
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'label <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'label)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'label") frozen'label x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "label"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'label y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "gauge"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gauge") y x)
                                  mutable'label
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "counter"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"counter") y x)
                                  mutable'label
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "summary"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"summary") y x)
                                  mutable'label
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "untyped"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"untyped") y x)
                                  mutable'label
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "histogram"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"histogram") y x)
                                  mutable'label
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp_ms"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestampMs") y x)
                                  mutable'label
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'label
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'label <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'label)
          "Metric"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'label") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gauge") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'counter") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'summary") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'untyped") _x
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'histogram") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'timestampMs") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral
                                            _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData Metric where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Metric'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Metric'label x__)
                (Control.DeepSeq.deepseq
                   (_Metric'gauge x__)
                   (Control.DeepSeq.deepseq
                      (_Metric'counter x__)
                      (Control.DeepSeq.deepseq
                         (_Metric'summary x__)
                         (Control.DeepSeq.deepseq
                            (_Metric'untyped x__)
                            (Control.DeepSeq.deepseq
                               (_Metric'histogram x__)
                               (Control.DeepSeq.deepseq (_Metric'timestampMs x__) ())))))))
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.name' @:: Lens' MetricFamily Data.Text.Text@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'name' @:: Lens' MetricFamily (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.help' @:: Lens' MetricFamily Data.Text.Text@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'help' @:: Lens' MetricFamily (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.type'' @:: Lens' MetricFamily MetricType@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'type'' @:: Lens' MetricFamily (Prelude.Maybe MetricType)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.metric' @:: Lens' MetricFamily [Metric]@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.vec'metric' @:: Lens' MetricFamily (Data.Vector.Vector Metric)@ -}
data MetricFamily
  = MetricFamily'_constructor {_MetricFamily'name :: !(Prelude.Maybe Data.Text.Text),
                               _MetricFamily'help :: !(Prelude.Maybe Data.Text.Text),
                               _MetricFamily'type' :: !(Prelude.Maybe MetricType),
                               _MetricFamily'metric :: !(Data.Vector.Vector Metric),
                               _MetricFamily'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetricFamily where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MetricFamily "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricFamily'name (\ x__ y__ -> x__ {_MetricFamily'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MetricFamily "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricFamily'name (\ x__ y__ -> x__ {_MetricFamily'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetricFamily "help" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricFamily'help (\ x__ y__ -> x__ {_MetricFamily'help = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MetricFamily "maybe'help" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricFamily'help (\ x__ y__ -> x__ {_MetricFamily'help = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetricFamily "type'" MetricType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricFamily'type' (\ x__ y__ -> x__ {_MetricFamily'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MetricFamily "maybe'type'" (Prelude.Maybe MetricType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricFamily'type' (\ x__ y__ -> x__ {_MetricFamily'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetricFamily "metric" [Metric] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricFamily'metric
           (\ x__ y__ -> x__ {_MetricFamily'metric = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MetricFamily "vec'metric" (Data.Vector.Vector Metric) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricFamily'metric
           (\ x__ y__ -> x__ {_MetricFamily'metric = y__}))
        Prelude.id
instance Data.ProtoLens.Message MetricFamily where
  messageName _ = Data.Text.pack "io.prometheus.client.MetricFamily"
  packedMessageDescriptor _
    = "\n\
      \\fMetricFamily\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC2\n\
      \\EOThelp\CAN\STX \SOH(\tR\EOThelp\DC24\n\
      \\EOTtype\CAN\ETX \SOH(\SO2 .io.prometheus.client.MetricTypeR\EOTtype\DC24\n\
      \\ACKmetric\CAN\EOT \ETX(\v2\FS.io.prometheus.client.MetricR\ACKmetric"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor MetricFamily
        help__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "help"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'help")) ::
              Data.ProtoLens.FieldDescriptor MetricFamily
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor MetricType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor MetricFamily
        metric__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metric"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Metric)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"metric")) ::
              Data.ProtoLens.FieldDescriptor MetricFamily
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, help__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor),
           (Data.ProtoLens.Tag 4, metric__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetricFamily'_unknownFields
        (\ x__ y__ -> x__ {_MetricFamily'_unknownFields = y__})
  defMessage
    = MetricFamily'_constructor
        {_MetricFamily'name = Prelude.Nothing,
         _MetricFamily'help = Prelude.Nothing,
         _MetricFamily'type' = Prelude.Nothing,
         _MetricFamily'metric = Data.Vector.Generic.empty,
         _MetricFamily'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetricFamily
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Metric
             -> Data.ProtoLens.Encoding.Bytes.Parser MetricFamily
        loop x mutable'metric
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'metric <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'metric)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'metric") frozen'metric x))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'metric
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "help"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"help") y x)
                                  mutable'metric
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                                  mutable'metric
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "metric"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'metric y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'metric
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'metric <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'metric)
          "MetricFamily"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                          Data.Text.Encoding.encodeUtf8
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'help") _x
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
                             Data.Text.Encoding.encodeUtf8
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                Prelude.fromEnum
                                _v))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
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
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'metric") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MetricFamily where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetricFamily'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MetricFamily'name x__)
                (Control.DeepSeq.deepseq
                   (_MetricFamily'help x__)
                   (Control.DeepSeq.deepseq
                      (_MetricFamily'type' x__)
                      (Control.DeepSeq.deepseq (_MetricFamily'metric x__) ()))))
data MetricType
  = COUNTER | GAUGE | SUMMARY | UNTYPED | HISTOGRAM
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum MetricType where
  maybeToEnum 0 = Prelude.Just COUNTER
  maybeToEnum 1 = Prelude.Just GAUGE
  maybeToEnum 2 = Prelude.Just SUMMARY
  maybeToEnum 3 = Prelude.Just UNTYPED
  maybeToEnum 4 = Prelude.Just HISTOGRAM
  maybeToEnum _ = Prelude.Nothing
  showEnum COUNTER = "COUNTER"
  showEnum GAUGE = "GAUGE"
  showEnum SUMMARY = "SUMMARY"
  showEnum UNTYPED = "UNTYPED"
  showEnum HISTOGRAM = "HISTOGRAM"
  readEnum k
    | (Prelude.==) k "COUNTER" = Prelude.Just COUNTER
    | (Prelude.==) k "GAUGE" = Prelude.Just GAUGE
    | (Prelude.==) k "SUMMARY" = Prelude.Just SUMMARY
    | (Prelude.==) k "UNTYPED" = Prelude.Just UNTYPED
    | (Prelude.==) k "HISTOGRAM" = Prelude.Just HISTOGRAM
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded MetricType where
  minBound = COUNTER
  maxBound = HISTOGRAM
instance Prelude.Enum MetricType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum MetricType: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum COUNTER = 0
  fromEnum GAUGE = 1
  fromEnum SUMMARY = 2
  fromEnum UNTYPED = 3
  fromEnum HISTOGRAM = 4
  succ HISTOGRAM
    = Prelude.error
        "MetricType.succ: bad argument HISTOGRAM. This value would be out of bounds."
  succ COUNTER = GAUGE
  succ GAUGE = SUMMARY
  succ SUMMARY = UNTYPED
  succ UNTYPED = HISTOGRAM
  pred COUNTER
    = Prelude.error
        "MetricType.pred: bad argument COUNTER. This value would be out of bounds."
  pred GAUGE = COUNTER
  pred SUMMARY = GAUGE
  pred UNTYPED = SUMMARY
  pred HISTOGRAM = UNTYPED
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault MetricType where
  fieldDefault = COUNTER
instance Control.DeepSeq.NFData MetricType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.quantile' @:: Lens' Quantile Prelude.Double@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'quantile' @:: Lens' Quantile (Prelude.Maybe Prelude.Double)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.value' @:: Lens' Quantile Prelude.Double@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'value' @:: Lens' Quantile (Prelude.Maybe Prelude.Double)@ -}
data Quantile
  = Quantile'_constructor {_Quantile'quantile :: !(Prelude.Maybe Prelude.Double),
                           _Quantile'value :: !(Prelude.Maybe Prelude.Double),
                           _Quantile'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Quantile where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Quantile "quantile" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Quantile'quantile (\ x__ y__ -> x__ {_Quantile'quantile = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Quantile "maybe'quantile" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Quantile'quantile (\ x__ y__ -> x__ {_Quantile'quantile = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Quantile "value" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Quantile'value (\ x__ y__ -> x__ {_Quantile'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Quantile "maybe'value" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Quantile'value (\ x__ y__ -> x__ {_Quantile'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Quantile where
  messageName _ = Data.Text.pack "io.prometheus.client.Quantile"
  packedMessageDescriptor _
    = "\n\
      \\bQuantile\DC2\SUB\n\
      \\bquantile\CAN\SOH \SOH(\SOHR\bquantile\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\SOHR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        quantile__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "quantile"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'quantile")) ::
              Data.ProtoLens.FieldDescriptor Quantile
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Quantile
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, quantile__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Quantile'_unknownFields
        (\ x__ y__ -> x__ {_Quantile'_unknownFields = y__})
  defMessage
    = Quantile'_constructor
        {_Quantile'quantile = Prelude.Nothing,
         _Quantile'value = Prelude.Nothing, _Quantile'_unknownFields = []}
  parseMessage
    = let
        loop :: Quantile -> Data.ProtoLens.Encoding.Bytes.Parser Quantile
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
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "quantile"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"quantile") y x)
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Quantile"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'quantile") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64
                          Data.ProtoLens.Encoding.Bytes.doubleToWord
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putFixed64
                             Data.ProtoLens.Encoding.Bytes.doubleToWord
                             _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Quantile where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Quantile'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Quantile'quantile x__)
                (Control.DeepSeq.deepseq (_Quantile'value x__) ()))
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.sampleCount' @:: Lens' Summary Data.Word.Word64@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'sampleCount' @:: Lens' Summary (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.sampleSum' @:: Lens' Summary Prelude.Double@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'sampleSum' @:: Lens' Summary (Prelude.Maybe Prelude.Double)@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.quantile' @:: Lens' Summary [Quantile]@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.vec'quantile' @:: Lens' Summary (Data.Vector.Vector Quantile)@ -}
data Summary
  = Summary'_constructor {_Summary'sampleCount :: !(Prelude.Maybe Data.Word.Word64),
                          _Summary'sampleSum :: !(Prelude.Maybe Prelude.Double),
                          _Summary'quantile :: !(Data.Vector.Vector Quantile),
                          _Summary'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Summary where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Summary "sampleCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Summary'sampleCount
           (\ x__ y__ -> x__ {_Summary'sampleCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Summary "maybe'sampleCount" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Summary'sampleCount
           (\ x__ y__ -> x__ {_Summary'sampleCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Summary "sampleSum" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Summary'sampleSum (\ x__ y__ -> x__ {_Summary'sampleSum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Summary "maybe'sampleSum" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Summary'sampleSum (\ x__ y__ -> x__ {_Summary'sampleSum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Summary "quantile" [Quantile] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Summary'quantile (\ x__ y__ -> x__ {_Summary'quantile = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Summary "vec'quantile" (Data.Vector.Vector Quantile) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Summary'quantile (\ x__ y__ -> x__ {_Summary'quantile = y__}))
        Prelude.id
instance Data.ProtoLens.Message Summary where
  messageName _ = Data.Text.pack "io.prometheus.client.Summary"
  packedMessageDescriptor _
    = "\n\
      \\aSummary\DC2!\n\
      \\fsample_count\CAN\SOH \SOH(\EOTR\vsampleCount\DC2\GS\n\
      \\n\
      \sample_sum\CAN\STX \SOH(\SOHR\tsampleSum\DC2:\n\
      \\bquantile\CAN\ETX \ETX(\v2\RS.io.prometheus.client.QuantileR\bquantile"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sampleCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sample_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sampleCount")) ::
              Data.ProtoLens.FieldDescriptor Summary
        sampleSum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sample_sum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sampleSum")) ::
              Data.ProtoLens.FieldDescriptor Summary
        quantile__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "quantile"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Quantile)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"quantile")) ::
              Data.ProtoLens.FieldDescriptor Summary
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sampleCount__field_descriptor),
           (Data.ProtoLens.Tag 2, sampleSum__field_descriptor),
           (Data.ProtoLens.Tag 3, quantile__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Summary'_unknownFields
        (\ x__ y__ -> x__ {_Summary'_unknownFields = y__})
  defMessage
    = Summary'_constructor
        {_Summary'sampleCount = Prelude.Nothing,
         _Summary'sampleSum = Prelude.Nothing,
         _Summary'quantile = Data.Vector.Generic.empty,
         _Summary'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Summary
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Quantile
             -> Data.ProtoLens.Encoding.Bytes.Parser Summary
        loop x mutable'quantile
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'quantile <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'quantile)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'quantile") frozen'quantile x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sample_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sampleCount") y x)
                                  mutable'quantile
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "sample_sum"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sampleSum") y x)
                                  mutable'quantile
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "quantile"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'quantile y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'quantile
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'quantile <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'quantile)
          "Summary"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'sampleCount") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'sampleSum") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putFixed64
                             Data.ProtoLens.Encoding.Bytes.doubleToWord
                             _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'quantile") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Summary where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Summary'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Summary'sampleCount x__)
                (Control.DeepSeq.deepseq
                   (_Summary'sampleSum x__)
                   (Control.DeepSeq.deepseq (_Summary'quantile x__) ())))
{- | Fields :
     
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.value' @:: Lens' Untyped Prelude.Double@
         * 'Proto.Io.Prometheus.Client.Metrics_Fields.maybe'value' @:: Lens' Untyped (Prelude.Maybe Prelude.Double)@ -}
data Untyped
  = Untyped'_constructor {_Untyped'value :: !(Prelude.Maybe Prelude.Double),
                          _Untyped'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Untyped where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Untyped "value" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Untyped'value (\ x__ y__ -> x__ {_Untyped'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Untyped "maybe'value" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Untyped'value (\ x__ y__ -> x__ {_Untyped'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Untyped where
  messageName _ = Data.Text.pack "io.prometheus.client.Untyped"
  packedMessageDescriptor _
    = "\n\
      \\aUntyped\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Untyped
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Untyped'_unknownFields
        (\ x__ y__ -> x__ {_Untyped'_unknownFields = y__})
  defMessage
    = Untyped'_constructor
        {_Untyped'value = Prelude.Nothing, _Untyped'_unknownFields = []}
  parseMessage
    = let
        loop :: Untyped -> Data.ProtoLens.Encoding.Bytes.Parser Untyped
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
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Untyped"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64
                          Data.ProtoLens.Encoding.Bytes.doubleToWord
                          _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Untyped where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Untyped'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Untyped'value x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"io/prometheus/client/metrics.proto\DC2\DC4io.prometheus.client\SUB\USgoogle/protobuf/timestamp.proto\"5\n\
    \\tLabelPair\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue\"\GS\n\
    \\ENQGauge\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalue\"[\n\
    \\aCounter\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalue\DC2:\n\
    \\bexemplar\CAN\STX \SOH(\v2\RS.io.prometheus.client.ExemplarR\bexemplar\"<\n\
    \\bQuantile\DC2\SUB\n\
    \\bquantile\CAN\SOH \SOH(\SOHR\bquantile\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\SOHR\ENQvalue\"\135\SOH\n\
    \\aSummary\DC2!\n\
    \\fsample_count\CAN\SOH \SOH(\EOTR\vsampleCount\DC2\GS\n\
    \\n\
    \sample_sum\CAN\STX \SOH(\SOHR\tsampleSum\DC2:\n\
    \\bquantile\CAN\ETX \ETX(\v2\RS.io.prometheus.client.QuantileR\bquantile\"\US\n\
    \\aUntyped\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalue\"\131\SOH\n\
    \\tHistogram\DC2!\n\
    \\fsample_count\CAN\SOH \SOH(\EOTR\vsampleCount\DC2\GS\n\
    \\n\
    \sample_sum\CAN\STX \SOH(\SOHR\tsampleSum\DC24\n\
    \\ACKbucket\CAN\ETX \ETX(\v2\FS.io.prometheus.client.BucketR\ACKbucket\"\144\SOH\n\
    \\ACKBucket\DC2)\n\
    \\DLEcumulative_count\CAN\SOH \SOH(\EOTR\SIcumulativeCount\DC2\US\n\
    \\vupper_bound\CAN\STX \SOH(\SOHR\n\
    \upperBound\DC2:\n\
    \\bexemplar\CAN\ETX \SOH(\v2\RS.io.prometheus.client.ExemplarR\bexemplar\"\145\SOH\n\
    \\bExemplar\DC25\n\
    \\ENQlabel\CAN\SOH \ETX(\v2\US.io.prometheus.client.LabelPairR\ENQlabel\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\SOHR\ENQvalue\DC28\n\
    \\ttimestamp\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestamp\"\255\STX\n\
    \\ACKMetric\DC25\n\
    \\ENQlabel\CAN\SOH \ETX(\v2\US.io.prometheus.client.LabelPairR\ENQlabel\DC21\n\
    \\ENQgauge\CAN\STX \SOH(\v2\ESC.io.prometheus.client.GaugeR\ENQgauge\DC27\n\
    \\acounter\CAN\ETX \SOH(\v2\GS.io.prometheus.client.CounterR\acounter\DC27\n\
    \\asummary\CAN\EOT \SOH(\v2\GS.io.prometheus.client.SummaryR\asummary\DC27\n\
    \\auntyped\CAN\ENQ \SOH(\v2\GS.io.prometheus.client.UntypedR\auntyped\DC2=\n\
    \\thistogram\CAN\a \SOH(\v2\US.io.prometheus.client.HistogramR\thistogram\DC2!\n\
    \\ftimestamp_ms\CAN\ACK \SOH(\ETXR\vtimestampMs\"\162\SOH\n\
    \\fMetricFamily\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC2\n\
    \\EOThelp\CAN\STX \SOH(\tR\EOThelp\DC24\n\
    \\EOTtype\CAN\ETX \SOH(\SO2 .io.prometheus.client.MetricTypeR\EOTtype\DC24\n\
    \\ACKmetric\CAN\EOT \ETX(\v2\FS.io.prometheus.client.MetricR\ACKmetric*M\n\
    \\n\
    \MetricType\DC2\v\n\
    \\aCOUNTER\DLE\NUL\DC2\t\n\
    \\ENQGAUGE\DLE\SOH\DC2\v\n\
    \\aSUMMARY\DLE\STX\DC2\v\n\
    \\aUNTYPED\DLE\ETX\DC2\r\n\
    \\tHISTOGRAM\DLE\EOTBR\n\
    \\DC4io.prometheus.clientZ:github.com/prometheus/client_model/go;io_prometheus_clientJ\221\SUB\n\
    \\ACK\DC2\EOT\r\NUL[\SOH\n\
    \\188\EOT\n\
    \\SOH\f\DC2\ETX\r\NUL\DC22\177\EOT Copyright 2013 Prometheus Team\n\
    \ Licensed under the Apache License, Version 2.0 (the \"License\");\n\
    \ you may not use this file except in compliance with the License.\n\
    \ You may obtain a copy of the License at\n\
    \\n\
    \ http://www.apache.org/licenses/LICENSE-2.0\n\
    \\n\
    \ Unless required by applicable law or agreed to in writing, software\n\
    \ distributed under the License is distributed on an \"AS IS\" BASIS,\n\
    \ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
    \ See the License for the specific language governing permissions and\n\
    \ limitations under the License.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SI\NUL\GS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL-\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULQ\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\DC1\NULQ\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\DC3\NUL)\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL\CAN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\DC1\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ETB\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ETB\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ETB\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\ENQ\NUL\DC2\EOT\SUB\NUL \SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\SUB\ENQ\SI\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\ESC\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\ESC\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\ESC\SI\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\FS\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\FS\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\FS\SI\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\GS\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\GS\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\GS\SI\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\RS\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\RS\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\RS\SI\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX\US\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX\US\STX\v\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX\US\SI\DLE\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\"\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\"\b\r\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX#\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX#\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX#\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT&\NUL)\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX&\b\SI\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX'\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX'\DC4\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX'\US \n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX(\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX(\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX(\DC4\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX(\US \n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT+\NUL.\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX+\b\DLE\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX,\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX,\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX,\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX,\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX-\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX-\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX-\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX-\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT0\NUL4\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX0\b\SI\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX1\STX%\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX1\DC4 \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX1#$\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX2\STX%\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX2\DC4\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX2#$\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX3\STX%\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETX3\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX3\DC4\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX3#$\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT6\NUL8\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX6\b\SI\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX7\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX7\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX7\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX7\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT:\NUL>\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX:\b\DC1\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX;\STX#\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX;\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX;!\"\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX<\STX#\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX<\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX<\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX<!\"\n\
    \S\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX=\STX#\"F Ordered in increasing order of upper_bound, +Inf bucket is optional.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\ETX=\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX=\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX=!\"\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT@\NULD\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX@\b\SO\n\
    \.\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXA\STX)\"! Cumulative in increasing order.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETXA\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXA\DC4$\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXA'(\n\
    \\EM\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXB\STX)\"\f Inclusive.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETXB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETXB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXB\DC4\US\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXB'(\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXC\STX)\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\ETXC\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXC\DC4\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXC'(\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOTF\NULJ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXF\b\DLE\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXG\STX3\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\ETXG\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXG%*\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXG12\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXH\STX3\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXH\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXH%*\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXH12\n\
    \!\n\
    \\EOT\EOT\b\STX\STX\DC2\ETXI\STX3\"\DC4 OpenMetrics-style.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\ETXI\v$\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETXI%.\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETXI12\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOTL\NULT\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXL\b\SO\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXM\STX&\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\ETXM\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXM\NAK\SUB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXM$%\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXN\STX&\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\ETXN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXN\NAK\SUB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXN$%\n\
    \\v\n\
    \\EOT\EOT\t\STX\STX\DC2\ETXO\STX&\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ACK\DC2\ETXO\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\ETXO\NAK\FS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\ETXO$%\n\
    \\v\n\
    \\EOT\EOT\t\STX\ETX\DC2\ETXP\STX&\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\ACK\DC2\ETXP\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\ETXP\NAK\FS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\ETXP$%\n\
    \\v\n\
    \\EOT\EOT\t\STX\EOT\DC2\ETXQ\STX&\n\
    \\f\n\
    \\ENQ\EOT\t\STX\EOT\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\EOT\ACK\DC2\ETXQ\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\t\STX\EOT\SOH\DC2\ETXQ\NAK\FS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\EOT\ETX\DC2\ETXQ$%\n\
    \\v\n\
    \\EOT\EOT\t\STX\ENQ\DC2\ETXR\STX&\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ENQ\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ENQ\ACK\DC2\ETXR\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ENQ\SOH\DC2\ETXR\NAK\RS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ENQ\ETX\DC2\ETXR$%\n\
    \\v\n\
    \\EOT\EOT\t\STX\ACK\DC2\ETXS\STX&\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ACK\EOT\DC2\ETXS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ACK\ENQ\DC2\ETXS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ACK\SOH\DC2\ETXS\NAK!\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ACK\ETX\DC2\ETXS$%\n\
    \\n\
    \\n\
    \\STX\EOT\n\
    \\DC2\EOTV\NUL[\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXV\b\DC4\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXW\STX!\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETXW\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXW\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXW\US \n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETXX\STX!\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETXX\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETXX\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETXX\US \n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETXY\STX!\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\EOT\DC2\ETXY\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\ETXY\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETXY\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETXY\US \n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\ETXZ\STX!\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ACK\DC2\ETXZ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\ETXZ\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\ETXZ\US "