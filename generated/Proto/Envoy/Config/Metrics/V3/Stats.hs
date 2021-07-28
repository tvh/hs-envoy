{- This file was auto-generated from envoy/config/metrics/v3/stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Metrics.V3.Stats (
        DogStatsdSink(), DogStatsdSink'DogStatsdSpecifier(..),
        _DogStatsdSink'Address, HistogramBucketSettings(), HystrixSink(),
        StatsConfig(), StatsMatcher(), StatsMatcher'StatsMatcher(..),
        _StatsMatcher'RejectAll, _StatsMatcher'ExclusionList,
        _StatsMatcher'InclusionList, StatsSink(), StatsSink'ConfigType(..),
        _StatsSink'TypedConfig, StatsdSink(),
        StatsdSink'StatsdSpecifier(..), _StatsdSink'Address,
        _StatsdSink'TcpClusterName, TagSpecifier(),
        TagSpecifier'TagValue(..), _TagSpecifier'Regex,
        _TagSpecifier'FixedValue
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.prefix' @:: Lens' DogStatsdSink Data.Text.Text@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maxBytesPerDatagram' @:: Lens' DogStatsdSink Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'maxBytesPerDatagram' @:: Lens' DogStatsdSink (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'dogStatsdSpecifier' @:: Lens' DogStatsdSink (Prelude.Maybe DogStatsdSink'DogStatsdSpecifier)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'address' @:: Lens' DogStatsdSink (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.address' @:: Lens' DogStatsdSink Proto.Envoy.Config.Core.V3.Address.Address@ -}
data DogStatsdSink
  = DogStatsdSink'_constructor {_DogStatsdSink'prefix :: !Data.Text.Text,
                                _DogStatsdSink'maxBytesPerDatagram :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                                _DogStatsdSink'dogStatsdSpecifier :: !(Prelude.Maybe DogStatsdSink'DogStatsdSpecifier),
                                _DogStatsdSink'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DogStatsdSink where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DogStatsdSink'DogStatsdSpecifier
  = DogStatsdSink'Address !Proto.Envoy.Config.Core.V3.Address.Address
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DogStatsdSink "prefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DogStatsdSink'prefix
           (\ x__ y__ -> x__ {_DogStatsdSink'prefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DogStatsdSink "maxBytesPerDatagram" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DogStatsdSink'maxBytesPerDatagram
           (\ x__ y__ -> x__ {_DogStatsdSink'maxBytesPerDatagram = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DogStatsdSink "maybe'maxBytesPerDatagram" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DogStatsdSink'maxBytesPerDatagram
           (\ x__ y__ -> x__ {_DogStatsdSink'maxBytesPerDatagram = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DogStatsdSink "maybe'dogStatsdSpecifier" (Prelude.Maybe DogStatsdSink'DogStatsdSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DogStatsdSink'dogStatsdSpecifier
           (\ x__ y__ -> x__ {_DogStatsdSink'dogStatsdSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DogStatsdSink "maybe'address" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DogStatsdSink'dogStatsdSpecifier
           (\ x__ y__ -> x__ {_DogStatsdSink'dogStatsdSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DogStatsdSink'Address x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DogStatsdSink'Address y__))
instance Data.ProtoLens.Field.HasField DogStatsdSink "address" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DogStatsdSink'dogStatsdSpecifier
           (\ x__ y__ -> x__ {_DogStatsdSink'dogStatsdSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DogStatsdSink'Address x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DogStatsdSink'Address y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message DogStatsdSink where
  messageName _
    = Data.Text.pack "envoy.config.metrics.v3.DogStatsdSink"
  packedMessageDescriptor _
    = "\n\
      \\rDogStatsdSink\DC29\n\
      \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressH\NULR\aaddress\DC2\SYN\n\
      \\ACKprefix\CAN\ETX \SOH(\tR\ACKprefix\DC2Z\n\
      \\SYNmax_bytes_per_datagram\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt64ValueR\DC3maxBytesPerDatagramB\a\250B\EOT2\STX \NULB\ESC\n\
      \\DC4dog_statsd_specifier\DC2\ETX\248B\SOH:,\154\197\136\RS'\n\
      \%envoy.config.metrics.v2.DogStatsdSinkJ\EOT\b\STX\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"prefix")) ::
              Data.ProtoLens.FieldDescriptor DogStatsdSink
        maxBytesPerDatagram__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_bytes_per_datagram"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxBytesPerDatagram")) ::
              Data.ProtoLens.FieldDescriptor DogStatsdSink
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor DogStatsdSink
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, prefix__field_descriptor),
           (Data.ProtoLens.Tag 4, maxBytesPerDatagram__field_descriptor),
           (Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DogStatsdSink'_unknownFields
        (\ x__ y__ -> x__ {_DogStatsdSink'_unknownFields = y__})
  defMessage
    = DogStatsdSink'_constructor
        {_DogStatsdSink'prefix = Data.ProtoLens.fieldDefault,
         _DogStatsdSink'maxBytesPerDatagram = Prelude.Nothing,
         _DogStatsdSink'dogStatsdSpecifier = Prelude.Nothing,
         _DogStatsdSink'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DogStatsdSink -> Data.ProtoLens.Encoding.Bytes.Parser DogStatsdSink
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
                                       "prefix"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prefix") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_bytes_per_datagram"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxBytesPerDatagram") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DogStatsdSink"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"prefix") _x
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'maxBytesPerDatagram") _x
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
                          (Data.ProtoLens.Field.field @"maybe'dogStatsdSpecifier") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (DogStatsdSink'Address v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DogStatsdSink where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DogStatsdSink'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DogStatsdSink'prefix x__)
                (Control.DeepSeq.deepseq
                   (_DogStatsdSink'maxBytesPerDatagram x__)
                   (Control.DeepSeq.deepseq
                      (_DogStatsdSink'dogStatsdSpecifier x__) ())))
instance Control.DeepSeq.NFData DogStatsdSink'DogStatsdSpecifier where
  rnf (DogStatsdSink'Address x__) = Control.DeepSeq.rnf x__
_DogStatsdSink'Address ::
  Data.ProtoLens.Prism.Prism' DogStatsdSink'DogStatsdSpecifier Proto.Envoy.Config.Core.V3.Address.Address
_DogStatsdSink'Address
  = Data.ProtoLens.Prism.prism'
      DogStatsdSink'Address
      (\ p__
         -> case p__ of {
              (DogStatsdSink'Address p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.match' @:: Lens' HistogramBucketSettings Proto.Envoy.Type.Matcher.V3.String.StringMatcher@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'match' @:: Lens' HistogramBucketSettings (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.buckets' @:: Lens' HistogramBucketSettings [Prelude.Double]@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.vec'buckets' @:: Lens' HistogramBucketSettings (Data.Vector.Unboxed.Vector Prelude.Double)@ -}
data HistogramBucketSettings
  = HistogramBucketSettings'_constructor {_HistogramBucketSettings'match :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher),
                                          _HistogramBucketSettings'buckets :: !(Data.Vector.Unboxed.Vector Prelude.Double),
                                          _HistogramBucketSettings'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HistogramBucketSettings where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HistogramBucketSettings "match" Proto.Envoy.Type.Matcher.V3.String.StringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HistogramBucketSettings'match
           (\ x__ y__ -> x__ {_HistogramBucketSettings'match = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HistogramBucketSettings "maybe'match" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HistogramBucketSettings'match
           (\ x__ y__ -> x__ {_HistogramBucketSettings'match = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HistogramBucketSettings "buckets" [Prelude.Double] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HistogramBucketSettings'buckets
           (\ x__ y__ -> x__ {_HistogramBucketSettings'buckets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HistogramBucketSettings "vec'buckets" (Data.Vector.Unboxed.Vector Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HistogramBucketSettings'buckets
           (\ x__ y__ -> x__ {_HistogramBucketSettings'buckets = y__}))
        Prelude.id
instance Data.ProtoLens.Message HistogramBucketSettings where
  messageName _
    = Data.Text.pack "envoy.config.metrics.v3.HistogramBucketSettings"
  packedMessageDescriptor _
    = "\n\
      \\ETBHistogramBucketSettings\DC2D\n\
      \\ENQmatch\CAN\SOH \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\ENQmatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC21\n\
      \\abuckets\CAN\STX \ETX(\SOHR\abucketsB\ETB\250B\DC4\146\SOH\DC1\b\SOH\CAN\SOH\"\v\DC2\t!\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        match__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'match")) ::
              Data.ProtoLens.FieldDescriptor HistogramBucketSettings
        buckets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buckets"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"buckets")) ::
              Data.ProtoLens.FieldDescriptor HistogramBucketSettings
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, match__field_descriptor),
           (Data.ProtoLens.Tag 2, buckets__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HistogramBucketSettings'_unknownFields
        (\ x__ y__ -> x__ {_HistogramBucketSettings'_unknownFields = y__})
  defMessage
    = HistogramBucketSettings'_constructor
        {_HistogramBucketSettings'match = Prelude.Nothing,
         _HistogramBucketSettings'buckets = Data.Vector.Generic.empty,
         _HistogramBucketSettings'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HistogramBucketSettings
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Double
             -> Data.ProtoLens.Encoding.Bytes.Parser HistogramBucketSettings
        loop x mutable'buckets
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'buckets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'buckets)
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
                              (Data.ProtoLens.Field.field @"vec'buckets") frozen'buckets x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"match") y x)
                                  mutable'buckets
                        17
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToDouble
                                           Data.ProtoLens.Encoding.Bytes.getFixed64)
                                        "buckets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'buckets y)
                                loop x v
                        18
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToDouble
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed64)
                                                                    "buckets"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'buckets)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'buckets
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'buckets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'buckets)
          "HistogramBucketSettings"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'match") _x
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
                (let
                   p = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'buckets") _x
                 in
                   if Data.Vector.Generic.null p then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            (Data.ProtoLens.Encoding.Bytes.runBuilder
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putFixed64
                                     Data.ProtoLens.Encoding.Bytes.doubleToWord)
                                  p))))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HistogramBucketSettings where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HistogramBucketSettings'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HistogramBucketSettings'match x__)
                (Control.DeepSeq.deepseq
                   (_HistogramBucketSettings'buckets x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.numBuckets' @:: Lens' HystrixSink Data.Int.Int64@ -}
data HystrixSink
  = HystrixSink'_constructor {_HystrixSink'numBuckets :: !Data.Int.Int64,
                              _HystrixSink'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HystrixSink where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HystrixSink "numBuckets" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HystrixSink'numBuckets
           (\ x__ y__ -> x__ {_HystrixSink'numBuckets = y__}))
        Prelude.id
instance Data.ProtoLens.Message HystrixSink where
  messageName _
    = Data.Text.pack "envoy.config.metrics.v3.HystrixSink"
  packedMessageDescriptor _
    = "\n\
      \\vHystrixSink\DC2\US\n\
      \\vnum_buckets\CAN\SOH \SOH(\ETXR\n\
      \numBuckets:*\154\197\136\RS%\n\
      \#envoy.config.metrics.v2.HystrixSink"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        numBuckets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_buckets"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"numBuckets")) ::
              Data.ProtoLens.FieldDescriptor HystrixSink
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, numBuckets__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HystrixSink'_unknownFields
        (\ x__ y__ -> x__ {_HystrixSink'_unknownFields = y__})
  defMessage
    = HystrixSink'_constructor
        {_HystrixSink'numBuckets = Data.ProtoLens.fieldDefault,
         _HystrixSink'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HystrixSink -> Data.ProtoLens.Encoding.Bytes.Parser HystrixSink
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "num_buckets"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numBuckets") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HystrixSink"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"numBuckets") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HystrixSink where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HystrixSink'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HystrixSink'numBuckets x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.statsTags' @:: Lens' StatsConfig [TagSpecifier]@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.vec'statsTags' @:: Lens' StatsConfig (Data.Vector.Vector TagSpecifier)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.useAllDefaultTags' @:: Lens' StatsConfig Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'useAllDefaultTags' @:: Lens' StatsConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.statsMatcher' @:: Lens' StatsConfig StatsMatcher@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'statsMatcher' @:: Lens' StatsConfig (Prelude.Maybe StatsMatcher)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.histogramBucketSettings' @:: Lens' StatsConfig [HistogramBucketSettings]@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.vec'histogramBucketSettings' @:: Lens' StatsConfig (Data.Vector.Vector HistogramBucketSettings)@ -}
data StatsConfig
  = StatsConfig'_constructor {_StatsConfig'statsTags :: !(Data.Vector.Vector TagSpecifier),
                              _StatsConfig'useAllDefaultTags :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                              _StatsConfig'statsMatcher :: !(Prelude.Maybe StatsMatcher),
                              _StatsConfig'histogramBucketSettings :: !(Data.Vector.Vector HistogramBucketSettings),
                              _StatsConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatsConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StatsConfig "statsTags" [TagSpecifier] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsConfig'statsTags
           (\ x__ y__ -> x__ {_StatsConfig'statsTags = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StatsConfig "vec'statsTags" (Data.Vector.Vector TagSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsConfig'statsTags
           (\ x__ y__ -> x__ {_StatsConfig'statsTags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatsConfig "useAllDefaultTags" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsConfig'useAllDefaultTags
           (\ x__ y__ -> x__ {_StatsConfig'useAllDefaultTags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StatsConfig "maybe'useAllDefaultTags" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsConfig'useAllDefaultTags
           (\ x__ y__ -> x__ {_StatsConfig'useAllDefaultTags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatsConfig "statsMatcher" StatsMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsConfig'statsMatcher
           (\ x__ y__ -> x__ {_StatsConfig'statsMatcher = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StatsConfig "maybe'statsMatcher" (Prelude.Maybe StatsMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsConfig'statsMatcher
           (\ x__ y__ -> x__ {_StatsConfig'statsMatcher = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatsConfig "histogramBucketSettings" [HistogramBucketSettings] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsConfig'histogramBucketSettings
           (\ x__ y__ -> x__ {_StatsConfig'histogramBucketSettings = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StatsConfig "vec'histogramBucketSettings" (Data.Vector.Vector HistogramBucketSettings) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsConfig'histogramBucketSettings
           (\ x__ y__ -> x__ {_StatsConfig'histogramBucketSettings = y__}))
        Prelude.id
instance Data.ProtoLens.Message StatsConfig where
  messageName _
    = Data.Text.pack "envoy.config.metrics.v3.StatsConfig"
  packedMessageDescriptor _
    = "\n\
      \\vStatsConfig\DC2D\n\
      \\n\
      \stats_tags\CAN\SOH \ETX(\v2%.envoy.config.metrics.v3.TagSpecifierR\tstatsTags\DC2K\n\
      \\DC4use_all_default_tags\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\DC1useAllDefaultTags\DC2J\n\
      \\rstats_matcher\CAN\ETX \SOH(\v2%.envoy.config.metrics.v3.StatsMatcherR\fstatsMatcher\DC2l\n\
      \\EMhistogram_bucket_settings\CAN\EOT \ETX(\v20.envoy.config.metrics.v3.HistogramBucketSettingsR\ETBhistogramBucketSettings:*\154\197\136\RS%\n\
      \#envoy.config.metrics.v2.StatsConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statsTags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats_tags"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TagSpecifier)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"statsTags")) ::
              Data.ProtoLens.FieldDescriptor StatsConfig
        useAllDefaultTags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_all_default_tags"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'useAllDefaultTags")) ::
              Data.ProtoLens.FieldDescriptor StatsConfig
        statsMatcher__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats_matcher"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StatsMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'statsMatcher")) ::
              Data.ProtoLens.FieldDescriptor StatsConfig
        histogramBucketSettings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "histogram_bucket_settings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HistogramBucketSettings)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"histogramBucketSettings")) ::
              Data.ProtoLens.FieldDescriptor StatsConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statsTags__field_descriptor),
           (Data.ProtoLens.Tag 2, useAllDefaultTags__field_descriptor),
           (Data.ProtoLens.Tag 3, statsMatcher__field_descriptor),
           (Data.ProtoLens.Tag 4, histogramBucketSettings__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StatsConfig'_unknownFields
        (\ x__ y__ -> x__ {_StatsConfig'_unknownFields = y__})
  defMessage
    = StatsConfig'_constructor
        {_StatsConfig'statsTags = Data.Vector.Generic.empty,
         _StatsConfig'useAllDefaultTags = Prelude.Nothing,
         _StatsConfig'statsMatcher = Prelude.Nothing,
         _StatsConfig'histogramBucketSettings = Data.Vector.Generic.empty,
         _StatsConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StatsConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HistogramBucketSettings
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TagSpecifier
                -> Data.ProtoLens.Encoding.Bytes.Parser StatsConfig
        loop x mutable'histogramBucketSettings mutable'statsTags
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'histogramBucketSettings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                             mutable'histogramBucketSettings)
                      frozen'statsTags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'statsTags)
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
                              (Data.ProtoLens.Field.field @"vec'histogramBucketSettings")
                              frozen'histogramBucketSettings
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'statsTags") frozen'statsTags x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "stats_tags"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'statsTags y)
                                loop x mutable'histogramBucketSettings v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "use_all_default_tags"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useAllDefaultTags") y x)
                                  mutable'histogramBucketSettings
                                  mutable'statsTags
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stats_matcher"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"statsMatcher") y x)
                                  mutable'histogramBucketSettings
                                  mutable'statsTags
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "histogram_bucket_settings"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'histogramBucketSettings y)
                                loop x v mutable'statsTags
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'histogramBucketSettings
                                  mutable'statsTags
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'histogramBucketSettings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   Data.ProtoLens.Encoding.Growing.new
              mutable'statsTags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'histogramBucketSettings
                mutable'statsTags)
          "StatsConfig"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'statsTags") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'useAllDefaultTags") _x
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
                          (Data.ProtoLens.Field.field @"maybe'statsMatcher") _x
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
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'histogramBucketSettings") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData StatsConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StatsConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StatsConfig'statsTags x__)
                (Control.DeepSeq.deepseq
                   (_StatsConfig'useAllDefaultTags x__)
                   (Control.DeepSeq.deepseq
                      (_StatsConfig'statsMatcher x__)
                      (Control.DeepSeq.deepseq
                         (_StatsConfig'histogramBucketSettings x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'statsMatcher' @:: Lens' StatsMatcher (Prelude.Maybe StatsMatcher'StatsMatcher)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'rejectAll' @:: Lens' StatsMatcher (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.rejectAll' @:: Lens' StatsMatcher Prelude.Bool@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'exclusionList' @:: Lens' StatsMatcher (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.exclusionList' @:: Lens' StatsMatcher Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'inclusionList' @:: Lens' StatsMatcher (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.inclusionList' @:: Lens' StatsMatcher Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher@ -}
data StatsMatcher
  = StatsMatcher'_constructor {_StatsMatcher'statsMatcher :: !(Prelude.Maybe StatsMatcher'StatsMatcher),
                               _StatsMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatsMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StatsMatcher'StatsMatcher
  = StatsMatcher'RejectAll !Prelude.Bool |
    StatsMatcher'ExclusionList !Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher |
    StatsMatcher'InclusionList !Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StatsMatcher "maybe'statsMatcher" (Prelude.Maybe StatsMatcher'StatsMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsMatcher'statsMatcher
           (\ x__ y__ -> x__ {_StatsMatcher'statsMatcher = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatsMatcher "maybe'rejectAll" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsMatcher'statsMatcher
           (\ x__ y__ -> x__ {_StatsMatcher'statsMatcher = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StatsMatcher'RejectAll x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StatsMatcher'RejectAll y__))
instance Data.ProtoLens.Field.HasField StatsMatcher "rejectAll" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsMatcher'statsMatcher
           (\ x__ y__ -> x__ {_StatsMatcher'statsMatcher = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StatsMatcher'RejectAll x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StatsMatcher'RejectAll y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StatsMatcher "maybe'exclusionList" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsMatcher'statsMatcher
           (\ x__ y__ -> x__ {_StatsMatcher'statsMatcher = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StatsMatcher'ExclusionList x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StatsMatcher'ExclusionList y__))
instance Data.ProtoLens.Field.HasField StatsMatcher "exclusionList" Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsMatcher'statsMatcher
           (\ x__ y__ -> x__ {_StatsMatcher'statsMatcher = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StatsMatcher'ExclusionList x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StatsMatcher'ExclusionList y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StatsMatcher "maybe'inclusionList" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsMatcher'statsMatcher
           (\ x__ y__ -> x__ {_StatsMatcher'statsMatcher = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StatsMatcher'InclusionList x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StatsMatcher'InclusionList y__))
instance Data.ProtoLens.Field.HasField StatsMatcher "inclusionList" Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsMatcher'statsMatcher
           (\ x__ y__ -> x__ {_StatsMatcher'statsMatcher = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StatsMatcher'InclusionList x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StatsMatcher'InclusionList y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message StatsMatcher where
  messageName _
    = Data.Text.pack "envoy.config.metrics.v3.StatsMatcher"
  packedMessageDescriptor _
    = "\n\
      \\fStatsMatcher\DC2\US\n\
      \\n\
      \reject_all\CAN\SOH \SOH(\bH\NULR\trejectAll\DC2Q\n\
      \\SOexclusion_list\CAN\STX \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherH\NULR\rexclusionList\DC2Q\n\
      \\SOinclusion_list\CAN\ETX \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherH\NULR\rinclusionListB\DC4\n\
      \\rstats_matcher\DC2\ETX\248B\SOH:+\154\197\136\RS&\n\
      \$envoy.config.metrics.v2.StatsMatcher"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rejectAll__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reject_all"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rejectAll")) ::
              Data.ProtoLens.FieldDescriptor StatsMatcher
        exclusionList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exclusion_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exclusionList")) ::
              Data.ProtoLens.FieldDescriptor StatsMatcher
        inclusionList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inclusion_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inclusionList")) ::
              Data.ProtoLens.FieldDescriptor StatsMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rejectAll__field_descriptor),
           (Data.ProtoLens.Tag 2, exclusionList__field_descriptor),
           (Data.ProtoLens.Tag 3, inclusionList__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StatsMatcher'_unknownFields
        (\ x__ y__ -> x__ {_StatsMatcher'_unknownFields = y__})
  defMessage
    = StatsMatcher'_constructor
        {_StatsMatcher'statsMatcher = Prelude.Nothing,
         _StatsMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StatsMatcher -> Data.ProtoLens.Encoding.Bytes.Parser StatsMatcher
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
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reject_all"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rejectAll") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "exclusion_list"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"exclusionList") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "inclusion_list"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inclusionList") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StatsMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'statsMatcher") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (StatsMatcher'RejectAll v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (StatsMatcher'ExclusionList v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (StatsMatcher'InclusionList v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData StatsMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StatsMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq (_StatsMatcher'statsMatcher x__) ())
instance Control.DeepSeq.NFData StatsMatcher'StatsMatcher where
  rnf (StatsMatcher'RejectAll x__) = Control.DeepSeq.rnf x__
  rnf (StatsMatcher'ExclusionList x__) = Control.DeepSeq.rnf x__
  rnf (StatsMatcher'InclusionList x__) = Control.DeepSeq.rnf x__
_StatsMatcher'RejectAll ::
  Data.ProtoLens.Prism.Prism' StatsMatcher'StatsMatcher Prelude.Bool
_StatsMatcher'RejectAll
  = Data.ProtoLens.Prism.prism'
      StatsMatcher'RejectAll
      (\ p__
         -> case p__ of
              (StatsMatcher'RejectAll p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StatsMatcher'ExclusionList ::
  Data.ProtoLens.Prism.Prism' StatsMatcher'StatsMatcher Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher
_StatsMatcher'ExclusionList
  = Data.ProtoLens.Prism.prism'
      StatsMatcher'ExclusionList
      (\ p__
         -> case p__ of
              (StatsMatcher'ExclusionList p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StatsMatcher'InclusionList ::
  Data.ProtoLens.Prism.Prism' StatsMatcher'StatsMatcher Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher
_StatsMatcher'InclusionList
  = Data.ProtoLens.Prism.prism'
      StatsMatcher'InclusionList
      (\ p__
         -> case p__ of
              (StatsMatcher'InclusionList p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.name' @:: Lens' StatsSink Data.Text.Text@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'configType' @:: Lens' StatsSink (Prelude.Maybe StatsSink'ConfigType)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'typedConfig' @:: Lens' StatsSink (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.typedConfig' @:: Lens' StatsSink Proto.Google.Protobuf.Any.Any@ -}
data StatsSink
  = StatsSink'_constructor {_StatsSink'name :: !Data.Text.Text,
                            _StatsSink'configType :: !(Prelude.Maybe StatsSink'ConfigType),
                            _StatsSink'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatsSink where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StatsSink'ConfigType
  = StatsSink'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StatsSink "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsSink'name (\ x__ y__ -> x__ {_StatsSink'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatsSink "maybe'configType" (Prelude.Maybe StatsSink'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsSink'configType
           (\ x__ y__ -> x__ {_StatsSink'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatsSink "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsSink'configType
           (\ x__ y__ -> x__ {_StatsSink'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StatsSink'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StatsSink'TypedConfig y__))
instance Data.ProtoLens.Field.HasField StatsSink "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsSink'configType
           (\ x__ y__ -> x__ {_StatsSink'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StatsSink'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StatsSink'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message StatsSink where
  messageName _ = Data.Text.pack "envoy.config.metrics.v3.StatsSink"
  packedMessageDescriptor _
    = "\n\
      \\tStatsSink\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:(\154\197\136\RS#\n\
      \!envoy.config.metrics.v2.StatsSinkJ\EOT\b\STX\DLE\ETXR\ACKconfig"
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
              Data.ProtoLens.FieldDescriptor StatsSink
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor StatsSink
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StatsSink'_unknownFields
        (\ x__ y__ -> x__ {_StatsSink'_unknownFields = y__})
  defMessage
    = StatsSink'_constructor
        {_StatsSink'name = Data.ProtoLens.fieldDefault,
         _StatsSink'configType = Prelude.Nothing,
         _StatsSink'_unknownFields = []}
  parseMessage
    = let
        loop :: StatsSink -> Data.ProtoLens.Encoding.Bytes.Parser StatsSink
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StatsSink"
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'configType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (StatsSink'TypedConfig v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StatsSink where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StatsSink'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StatsSink'name x__)
                (Control.DeepSeq.deepseq (_StatsSink'configType x__) ()))
instance Control.DeepSeq.NFData StatsSink'ConfigType where
  rnf (StatsSink'TypedConfig x__) = Control.DeepSeq.rnf x__
_StatsSink'TypedConfig ::
  Data.ProtoLens.Prism.Prism' StatsSink'ConfigType Proto.Google.Protobuf.Any.Any
_StatsSink'TypedConfig
  = Data.ProtoLens.Prism.prism'
      StatsSink'TypedConfig
      (\ p__
         -> case p__ of {
              (StatsSink'TypedConfig p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.prefix' @:: Lens' StatsdSink Data.Text.Text@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'statsdSpecifier' @:: Lens' StatsdSink (Prelude.Maybe StatsdSink'StatsdSpecifier)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'address' @:: Lens' StatsdSink (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.address' @:: Lens' StatsdSink Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'tcpClusterName' @:: Lens' StatsdSink (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.tcpClusterName' @:: Lens' StatsdSink Data.Text.Text@ -}
data StatsdSink
  = StatsdSink'_constructor {_StatsdSink'prefix :: !Data.Text.Text,
                             _StatsdSink'statsdSpecifier :: !(Prelude.Maybe StatsdSink'StatsdSpecifier),
                             _StatsdSink'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatsdSink where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StatsdSink'StatsdSpecifier
  = StatsdSink'Address !Proto.Envoy.Config.Core.V3.Address.Address |
    StatsdSink'TcpClusterName !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StatsdSink "prefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsdSink'prefix (\ x__ y__ -> x__ {_StatsdSink'prefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatsdSink "maybe'statsdSpecifier" (Prelude.Maybe StatsdSink'StatsdSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsdSink'statsdSpecifier
           (\ x__ y__ -> x__ {_StatsdSink'statsdSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatsdSink "maybe'address" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsdSink'statsdSpecifier
           (\ x__ y__ -> x__ {_StatsdSink'statsdSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StatsdSink'Address x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StatsdSink'Address y__))
instance Data.ProtoLens.Field.HasField StatsdSink "address" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsdSink'statsdSpecifier
           (\ x__ y__ -> x__ {_StatsdSink'statsdSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StatsdSink'Address x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StatsdSink'Address y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StatsdSink "maybe'tcpClusterName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsdSink'statsdSpecifier
           (\ x__ y__ -> x__ {_StatsdSink'statsdSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StatsdSink'TcpClusterName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StatsdSink'TcpClusterName y__))
instance Data.ProtoLens.Field.HasField StatsdSink "tcpClusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatsdSink'statsdSpecifier
           (\ x__ y__ -> x__ {_StatsdSink'statsdSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StatsdSink'TcpClusterName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StatsdSink'TcpClusterName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message StatsdSink where
  messageName _ = Data.Text.pack "envoy.config.metrics.v3.StatsdSink"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \StatsdSink\DC29\n\
      \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressH\NULR\aaddress\DC2*\n\
      \\DLEtcp_cluster_name\CAN\STX \SOH(\tH\NULR\SOtcpClusterName\DC2\SYN\n\
      \\ACKprefix\CAN\ETX \SOH(\tR\ACKprefixB\ETB\n\
      \\DLEstatsd_specifier\DC2\ETX\248B\SOH:)\154\197\136\RS$\n\
      \\"envoy.config.metrics.v2.StatsdSink"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"prefix")) ::
              Data.ProtoLens.FieldDescriptor StatsdSink
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor StatsdSink
        tcpClusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tcp_cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tcpClusterName")) ::
              Data.ProtoLens.FieldDescriptor StatsdSink
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, prefix__field_descriptor),
           (Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, tcpClusterName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StatsdSink'_unknownFields
        (\ x__ y__ -> x__ {_StatsdSink'_unknownFields = y__})
  defMessage
    = StatsdSink'_constructor
        {_StatsdSink'prefix = Data.ProtoLens.fieldDefault,
         _StatsdSink'statsdSpecifier = Prelude.Nothing,
         _StatsdSink'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StatsdSink -> Data.ProtoLens.Encoding.Bytes.Parser StatsdSink
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
                                       "prefix"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prefix") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
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
                                       "tcp_cluster_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tcpClusterName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StatsdSink"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"prefix") _x
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'statsdSpecifier") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (StatsdSink'Address v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (StatsdSink'TcpClusterName v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8
                             v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StatsdSink where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StatsdSink'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StatsdSink'prefix x__)
                (Control.DeepSeq.deepseq (_StatsdSink'statsdSpecifier x__) ()))
instance Control.DeepSeq.NFData StatsdSink'StatsdSpecifier where
  rnf (StatsdSink'Address x__) = Control.DeepSeq.rnf x__
  rnf (StatsdSink'TcpClusterName x__) = Control.DeepSeq.rnf x__
_StatsdSink'Address ::
  Data.ProtoLens.Prism.Prism' StatsdSink'StatsdSpecifier Proto.Envoy.Config.Core.V3.Address.Address
_StatsdSink'Address
  = Data.ProtoLens.Prism.prism'
      StatsdSink'Address
      (\ p__
         -> case p__ of
              (StatsdSink'Address p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StatsdSink'TcpClusterName ::
  Data.ProtoLens.Prism.Prism' StatsdSink'StatsdSpecifier Data.Text.Text
_StatsdSink'TcpClusterName
  = Data.ProtoLens.Prism.prism'
      StatsdSink'TcpClusterName
      (\ p__
         -> case p__ of
              (StatsdSink'TcpClusterName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.tagName' @:: Lens' TagSpecifier Data.Text.Text@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'tagValue' @:: Lens' TagSpecifier (Prelude.Maybe TagSpecifier'TagValue)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'regex' @:: Lens' TagSpecifier (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.regex' @:: Lens' TagSpecifier Data.Text.Text@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.maybe'fixedValue' @:: Lens' TagSpecifier (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Metrics.V3.Stats_Fields.fixedValue' @:: Lens' TagSpecifier Data.Text.Text@ -}
data TagSpecifier
  = TagSpecifier'_constructor {_TagSpecifier'tagName :: !Data.Text.Text,
                               _TagSpecifier'tagValue :: !(Prelude.Maybe TagSpecifier'TagValue),
                               _TagSpecifier'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TagSpecifier where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data TagSpecifier'TagValue
  = TagSpecifier'Regex !Data.Text.Text |
    TagSpecifier'FixedValue !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField TagSpecifier "tagName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TagSpecifier'tagName
           (\ x__ y__ -> x__ {_TagSpecifier'tagName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TagSpecifier "maybe'tagValue" (Prelude.Maybe TagSpecifier'TagValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TagSpecifier'tagValue
           (\ x__ y__ -> x__ {_TagSpecifier'tagValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TagSpecifier "maybe'regex" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TagSpecifier'tagValue
           (\ x__ y__ -> x__ {_TagSpecifier'tagValue = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TagSpecifier'Regex x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TagSpecifier'Regex y__))
instance Data.ProtoLens.Field.HasField TagSpecifier "regex" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TagSpecifier'tagValue
           (\ x__ y__ -> x__ {_TagSpecifier'tagValue = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TagSpecifier'Regex x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TagSpecifier'Regex y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TagSpecifier "maybe'fixedValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TagSpecifier'tagValue
           (\ x__ y__ -> x__ {_TagSpecifier'tagValue = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TagSpecifier'FixedValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TagSpecifier'FixedValue y__))
instance Data.ProtoLens.Field.HasField TagSpecifier "fixedValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TagSpecifier'tagValue
           (\ x__ y__ -> x__ {_TagSpecifier'tagValue = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TagSpecifier'FixedValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TagSpecifier'FixedValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message TagSpecifier where
  messageName _
    = Data.Text.pack "envoy.config.metrics.v3.TagSpecifier"
  packedMessageDescriptor _
    = "\n\
      \\fTagSpecifier\DC2\EM\n\
      \\btag_name\CAN\SOH \SOH(\tR\atagName\DC2 \n\
      \\ENQregex\CAN\STX \SOH(\tH\NULR\ENQregexB\b\250B\ENQr\ETX(\128\b\DC2!\n\
      \\vfixed_value\CAN\ETX \SOH(\tH\NULR\n\
      \fixedValueB\v\n\
      \\ttag_value:+\154\197\136\RS&\n\
      \$envoy.config.metrics.v2.TagSpecifier"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tagName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tag_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tagName")) ::
              Data.ProtoLens.FieldDescriptor TagSpecifier
        regex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "regex"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'regex")) ::
              Data.ProtoLens.FieldDescriptor TagSpecifier
        fixedValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fixed_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fixedValue")) ::
              Data.ProtoLens.FieldDescriptor TagSpecifier
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tagName__field_descriptor),
           (Data.ProtoLens.Tag 2, regex__field_descriptor),
           (Data.ProtoLens.Tag 3, fixedValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TagSpecifier'_unknownFields
        (\ x__ y__ -> x__ {_TagSpecifier'_unknownFields = y__})
  defMessage
    = TagSpecifier'_constructor
        {_TagSpecifier'tagName = Data.ProtoLens.fieldDefault,
         _TagSpecifier'tagValue = Prelude.Nothing,
         _TagSpecifier'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TagSpecifier -> Data.ProtoLens.Encoding.Bytes.Parser TagSpecifier
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
                                       "tag_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tagName") y x)
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
                                       "regex"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"regex") y x)
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
                                       "fixed_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fixedValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TagSpecifier"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tagName") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tagValue") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (TagSpecifier'Regex v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8
                             v)
                   (Prelude.Just (TagSpecifier'FixedValue v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8
                             v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TagSpecifier where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TagSpecifier'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TagSpecifier'tagName x__)
                (Control.DeepSeq.deepseq (_TagSpecifier'tagValue x__) ()))
instance Control.DeepSeq.NFData TagSpecifier'TagValue where
  rnf (TagSpecifier'Regex x__) = Control.DeepSeq.rnf x__
  rnf (TagSpecifier'FixedValue x__) = Control.DeepSeq.rnf x__
_TagSpecifier'Regex ::
  Data.ProtoLens.Prism.Prism' TagSpecifier'TagValue Data.Text.Text
_TagSpecifier'Regex
  = Data.ProtoLens.Prism.prism'
      TagSpecifier'Regex
      (\ p__
         -> case p__ of
              (TagSpecifier'Regex p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TagSpecifier'FixedValue ::
  Data.ProtoLens.Prism.Prism' TagSpecifier'TagValue Data.Text.Text
_TagSpecifier'FixedValue
  = Data.ProtoLens.Prism.prism'
      TagSpecifier'FixedValue
      (\ p__
         -> case p__ of
              (TagSpecifier'FixedValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#envoy/config/metrics/v3/stats.proto\DC2\ETBenvoy.config.metrics.v3\SUB\"envoy/config/core/v3/address.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\161\SOH\n\
    \\tStatsSink\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC29\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
    \\vconfig_type:(\154\197\136\RS#\n\
    \!envoy.config.metrics.v2.StatsSinkJ\EOT\b\STX\DLE\ETXR\ACKconfig\"\134\ETX\n\
    \\vStatsConfig\DC2D\n\
    \\n\
    \stats_tags\CAN\SOH \ETX(\v2%.envoy.config.metrics.v3.TagSpecifierR\tstatsTags\DC2K\n\
    \\DC4use_all_default_tags\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\DC1useAllDefaultTags\DC2J\n\
    \\rstats_matcher\CAN\ETX \SOH(\v2%.envoy.config.metrics.v3.StatsMatcherR\fstatsMatcher\DC2l\n\
    \\EMhistogram_bucket_settings\CAN\EOT \ETX(\v20.envoy.config.metrics.v3.HistogramBucketSettingsR\ETBhistogramBucketSettings:*\154\197\136\RS%\n\
    \#envoy.config.metrics.v2.StatsConfig\"\152\STX\n\
    \\fStatsMatcher\DC2\US\n\
    \\n\
    \reject_all\CAN\SOH \SOH(\bH\NULR\trejectAll\DC2Q\n\
    \\SOexclusion_list\CAN\STX \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherH\NULR\rexclusionList\DC2Q\n\
    \\SOinclusion_list\CAN\ETX \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherH\NULR\rinclusionListB\DC4\n\
    \\rstats_matcher\DC2\ETX\248B\SOH:+\154\197\136\RS&\n\
    \$envoy.config.metrics.v2.StatsMatcher\"\168\SOH\n\
    \\fTagSpecifier\DC2\EM\n\
    \\btag_name\CAN\SOH \SOH(\tR\atagName\DC2 \n\
    \\ENQregex\CAN\STX \SOH(\tH\NULR\ENQregexB\b\250B\ENQr\ETX(\128\b\DC2!\n\
    \\vfixed_value\CAN\ETX \SOH(\tH\NULR\n\
    \fixedValueB\v\n\
    \\ttag_value:+\154\197\136\RS&\n\
    \$envoy.config.metrics.v2.TagSpecifier\"\146\SOH\n\
    \\ETBHistogramBucketSettings\DC2D\n\
    \\ENQmatch\CAN\SOH \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\ENQmatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC21\n\
    \\abuckets\CAN\STX \ETX(\SOHR\abucketsB\ETB\250B\DC4\146\SOH\DC1\b\SOH\CAN\SOH\"\v\DC2\t!\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL\"\207\SOH\n\
    \\n\
    \StatsdSink\DC29\n\
    \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressH\NULR\aaddress\DC2*\n\
    \\DLEtcp_cluster_name\CAN\STX \SOH(\tH\NULR\SOtcpClusterName\DC2\SYN\n\
    \\ACKprefix\CAN\ETX \SOH(\tR\ACKprefixB\ETB\n\
    \\DLEstatsd_specifier\DC2\ETX\248B\SOH:)\154\197\136\RS$\n\
    \\"envoy.config.metrics.v2.StatsdSink\"\143\STX\n\
    \\rDogStatsdSink\DC29\n\
    \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressH\NULR\aaddress\DC2\SYN\n\
    \\ACKprefix\CAN\ETX \SOH(\tR\ACKprefix\DC2Z\n\
    \\SYNmax_bytes_per_datagram\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt64ValueR\DC3maxBytesPerDatagramB\a\250B\EOT2\STX \NULB\ESC\n\
    \\DC4dog_statsd_specifier\DC2\ETX\248B\SOH:,\154\197\136\RS'\n\
    \%envoy.config.metrics.v2.DogStatsdSinkJ\EOT\b\STX\DLE\ETX\"Z\n\
    \\vHystrixSink\DC2\US\n\
    \\vnum_buckets\CAN\SOH \SOH(\ETXR\n\
    \numBuckets:*\154\197\136\RS%\n\
    \#envoy.config.metrics.v2.HystrixSinkB=\n\
    \%io.envoyproxy.envoy.config.metrics.v3B\n\
    \StatsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\241j\n\
    \\a\DC2\ENQ\NUL\NUL\151\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL,\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL>\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\151\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL*\SOH\SUB* Configuration for pluggable stats sinks.\n\
    \2_ [#protodoc-title: Stats]\n\
    \ Statistics :ref:`architecture overview <arch_overview_statistics>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\CAN\STXc\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\CAN\STXc\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX\SUB\STX\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\SUB\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\SUB\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\SUB\v\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\n\
    \\DC2\ETX\FS\STX\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETX\FS\v\DC3\n\
    \\179\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\"\STX\DC2\SUB\165\STX The name of the stats sink to instantiate. The name must match a supported\n\
    \ stats sink.\n\
    \ See the :ref:`extensions listed in typed_config below <extension_category_envoy.stats_sinks>` for the default list of available stats sink.\n\
    \ Sinks optionally support tagged/multiple dimensional metrics.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\"\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\"\DLE\DC1\n\
    \\225\SOH\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT'\STX)\ETX\SUB\210\SOH Stats sink specific configuration which depends on the sink being instantiated. See\n\
    \ :ref:`StatsdSink <envoy_v3_api_msg_config.metrics.v3.StatsdSink>` for an example.\n\
    \ [#extension-category: envoy.stats_sinks]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX'\b\DC3\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX(\EOT)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX(\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX(\CAN$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX('(\n\
    \7\n\
    \\STX\EOT\SOH\DC2\EOT-\NULm\SOH\SUB+ Statistics configuration such as tagging.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX-\b\DC3\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT.\STX/,\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT.\STX/,\n\
    \\157\STX\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX5\STX'\SUB\143\STX Each stat name is iteratively processed through these tag specifiers.\n\
    \ When a tag is matched, the first capture group is removed from the name so\n\
    \ later :ref:`TagSpecifiers <envoy_v3_api_msg_config.metrics.v3.TagSpecifier>` cannot match that\n\
    \ same portion of the match.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX5\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX5\CAN\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX5%&\n\
    \\130\EOT\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXE\STX5\SUB\244\ETX Use all default tag regexes specified in Envoy. These can be combined with\n\
    \ custom tags specified in :ref:`stats_tags\n\
    \ <envoy_v3_api_field_config.metrics.v3.StatsConfig.stats_tags>`. They will be processed before\n\
    \ the custom tags.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   If any default tags are specified twice, the config will be considered\n\
    \   invalid.\n\
    \\n\
    \ See :repo:`well_known_names.h <source/common/config/well_known_names.h>` for a list of the\n\
    \ default tags in Envoy.\n\
    \\n\
    \ If not provided, the value is assumed to be true.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXE\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXE\FS0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXE34\n\
    \\141\EOT\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXO\STX!\SUB\255\ETX Inclusion/exclusion matcher for stat name creation. If not provided, all stats are instantiated\n\
    \ as normal. Preventing the instantiation of certain families of stats can improve memory\n\
    \ performance for Envoys running especially large configs.\n\
    \\n\
    \ .. warning::\n\
    \   Excluding stats may affect Envoy's behavior in undocumented ways. See\n\
    \   `issue #8771 <https://github.com/envoyproxy/envoy/issues/8771>`_ for more information.\n\
    \   If any unexpected behavior changes are observed, please open a new issue immediately.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXO\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXO\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXO\US \n\
    \\242\ETX\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXl\STXA\SUB\228\ETX Defines rules for setting the histogram buckets. Rules are evaluated in order, and the first\n\
    \ match is applied. If no match is found (or if no rules are set), the following default buckets\n\
    \ are used:\n\
    \\n\
    \   .. code-block:: json\n\
    \\n\
    \     [\n\
    \       0.5,\n\
    \       1,\n\
    \       5,\n\
    \       10,\n\
    \       25,\n\
    \       50,\n\
    \       100,\n\
    \       250,\n\
    \       500,\n\
    \       1000,\n\
    \       2500,\n\
    \       5000,\n\
    \       10000,\n\
    \       30000,\n\
    \       60000,\n\
    \       300000,\n\
    \       600000,\n\
    \       1800000,\n\
    \       3600000\n\
    \     ]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETXl\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETXl\v\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXl#<\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXl?@\n\
    \\213\SO\n\
    \\STX\EOT\STX\DC2\ENQp\NUL\199\SOH\SOH\SUB1 Configuration for disabling stat instantiation.\n\
    \\"\148\SO The instantiation of stats is unrestricted by default. If the goal is to configure Envoy to\n\
    \ instantiate all stats, there is no need to construct a StatsMatcher.\n\
    \\n\
    \ However, StatsMatcher can be used to limit the creation of families of stats in order to\n\
    \ conserve memory. Stats can either be disabled entirely, or they can be\n\
    \ limited by either an exclusion or an inclusion list of :ref:`StringMatcher\n\
    \ <envoy_v3_api_msg_type.matcher.v3.StringMatcher>` protos:\n\
    \\n\
    \ * If `reject_all` is set to `true`, no stats will be instantiated. If `reject_all` is set to\n\
    \   `false`, all stats will be instantiated.\n\
    \\n\
    \ * If an exclusion list is supplied, any stat name matching *any* of the StringMatchers in the\n\
    \   list will not instantiate.\n\
    \\n\
    \ * If an inclusion list is supplied, no stats will instantiate, except those matching *any* of\n\
    \   the StringMatchers in the list.\n\
    \\n\
    \\n\
    \ A StringMatcher can be used to match against an exact string, a suffix / prefix, or a regex.\n\
    \ **NB:** For performance reasons, it is highly recommended to use a prefix- or suffix-based\n\
    \ matcher rather than a regex-based matcher.\n\
    \\n\
    \ Example 1. Excluding all stats.\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \   {\n\
    \     \"statsMatcher\": {\n\
    \       \"rejectAll\": \"true\"\n\
    \     }\n\
    \   }\n\
    \\n\
    \ Example 2. Excluding all cluster-specific stats, but not cluster-manager stats:\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \   {\n\
    \     \"statsMatcher\": {\n\
    \       \"exclusionList\": {\n\
    \         \"patterns\": [\n\
    \           {\n\
    \             \"prefix\": \"cluster.\"\n\
    \           }\n\
    \         ]\n\
    \       }\n\
    \     }\n\
    \   }\n\
    \\n\
    \ Example 3. Including only manager-related stats:\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \   {\n\
    \     \"statsMatcher\": {\n\
    \       \"inclusionList\": {\n\
    \         \"patterns\": [\n\
    \           {\n\
    \             \"prefix\": \"cluster_manager.\"\n\
    \           },\n\
    \           {\n\
    \             \"prefix\": \"listener_manager.\"\n\
    \           }\n\
    \         ]\n\
    \       }\n\
    \     }\n\
    \   }\n\
    \\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXp\b\DC4\n\
    \\r\n\
    \\ETX\EOT\STX\a\DC2\ACK\181\SOH\STX\182\SOH-\n\
    \\DC2\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\ACK\181\SOH\STX\182\SOH-\n\
    \\SO\n\
    \\EOT\EOT\STX\b\NUL\DC2\ACK\184\SOH\STX\198\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\EOT\184\SOH\b\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\b\NUL\STX\DC2\EOT\185\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\STX\b\NUL\STX\175\b\DC2\EOT\185\SOH\EOT&\n\
    \|\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\189\SOH\EOT\CAN\SUBn If `reject_all` is true, then all stats are disabled. If `reject_all` is false, then all\n\
    \ stats are enabled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\189\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\189\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\189\SOH\SYN\ETB\n\
    \{\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\193\SOH\EOT9\SUBm Exclusive match. All stats are enabled except for those matching one of the supplied\n\
    \ StringMatcher protos.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\193\SOH\EOT%\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\193\SOH&4\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\193\SOH78\n\
    \z\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\197\SOH\EOT9\SUBl Inclusive match. No stats are enabled except for those matching one of the supplied\n\
    \ StringMatcher protos.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\197\SOH\EOT%\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\197\SOH&4\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\197\SOH78\n\
    \\162\STX\n\
    \\STX\EOT\ETX\DC2\ACK\205\SOH\NUL\155\STX\SOH\SUB\147\STX Designates a tag name and value pair. The value may be either a fixed value\n\
    \ or a regex providing the value via capture groups. The specified tag will be\n\
    \ unconditionally set if a fixed value, otherwise it will only be set if one\n\
    \ or more capture groups in the regex match.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\205\SOH\b\DC4\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\206\SOH\STX\207\SOH-\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\206\SOH\STX\207\SOH-\n\
    \\134\ACK\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\221\SOH\STX\SYN\SUB\247\ENQ Attaches an identifier to the tag values to identify the tag being in the\n\
    \ sink. Envoy has a set of default names and regexes to extract dynamic\n\
    \ portions of existing stats, which can be found in :repo:`well_known_names.h\n\
    \ <source/common/config/well_known_names.h>` in the Envoy repository. If a :ref:`tag_name\n\
    \ <envoy_v3_api_field_config.metrics.v3.TagSpecifier.tag_name>` is provided in the config and\n\
    \ neither :ref:`regex <envoy_v3_api_field_config.metrics.v3.TagSpecifier.regex>` or\n\
    \ :ref:`fixed_value <envoy_v3_api_field_config.metrics.v3.TagSpecifier.fixed_value>` were specified,\n\
    \ Envoy will attempt to find that name in its set of defaults and use the accompanying regex.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   It is invalid to specify the same tag name twice in a config.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\221\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\221\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\221\SOH\DC4\NAK\n\
    \\SO\n\
    \\EOT\EOT\ETX\b\NUL\DC2\ACK\223\SOH\STX\154\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\EOT\223\SOH\b\DC1\n\
    \\143\DLE\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\150\STX\EOTC\SUB\128\DLE Designates a tag to strip from the tag extracted name and provide as a named\n\
    \ tag value for all statistics. This will only occur if any part of the name\n\
    \ matches the regex provided with one or more capture groups.\n\
    \\n\
    \ The first capture group identifies the portion of the name to remove. The\n\
    \ second capture group (which will normally be nested inside the first) will\n\
    \ designate the value of the tag for the statistic. If no second capture\n\
    \ group is provided, the first will also be used to set the value of the tag.\n\
    \ All other capture groups will be ignored.\n\
    \\n\
    \ Example 1. a stat name ``cluster.foo_cluster.upstream_rq_timeout`` and\n\
    \ one tag specifier:\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \   {\n\
    \     \"tag_name\": \"envoy.cluster_name\",\n\
    \     \"regex\": \"^cluster\\\\.((.+?)\\\\.)\"\n\
    \   }\n\
    \\n\
    \ Note that the regex will remove ``foo_cluster.`` making the tag extracted\n\
    \ name ``cluster.upstream_rq_timeout`` and the tag value for\n\
    \ ``envoy.cluster_name`` will be ``foo_cluster`` (note: there will be no\n\
    \ ``.`` character because of the second capture group).\n\
    \\n\
    \ Example 2. a stat name\n\
    \ ``http.connection_manager_1.user_agent.ios.downstream_cx_total`` and two\n\
    \ tag specifiers:\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \   [\n\
    \     {\n\
    \       \"tag_name\": \"envoy.http_user_agent\",\n\
    \       \"regex\": \"^http(?=\\\\.).*?\\\\.user_agent\\\\.((.+?)\\\\.)\\\\w+?$\"\n\
    \     },\n\
    \     {\n\
    \       \"tag_name\": \"envoy.http_conn_manager_prefix\",\n\
    \       \"regex\": \"^http\\\\.((.*?)\\\\.)\"\n\
    \     }\n\
    \   ]\n\
    \\n\
    \ The two regexes of the specifiers will be processed in the definition order.\n\
    \\n\
    \ The first regex will remove ``ios.``, leaving the tag extracted name\n\
    \ ``http.connection_manager_1.user_agent.downstream_cx_total``. The tag\n\
    \ ``envoy.http_user_agent`` will be added with tag value ``ios``.\n\
    \\n\
    \ The second regex will remove ``connection_manager_1.`` from the tag\n\
    \ extracted name produced by the first regex\n\
    \ ``http.connection_manager_1.user_agent.downstream_cx_total``, leaving\n\
    \ ``http.user_agent.downstream_cx_total`` as the tag extracted name. The tag\n\
    \ ``envoy.http_conn_manager_prefix`` will be added with the tag value\n\
    \ ``connection_manager_1``.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\150\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\150\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\150\STX\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\EOT\150\STX\NAKB\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\SOH\b\175\b\SO\DC2\EOT\150\STX\SYNA\n\
    \A\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\153\STX\EOT\ESC\SUB3 Specifies a fixed tag value for the ``tag_name``.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\EOT\153\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\153\STX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\153\STX\EM\SUB\n\
    \]\n\
    \\STX\EOT\EOT\DC2\ACK\158\STX\NUL\170\STX\SOH\SUBO Specifies a matcher for stats and the buckets that matching stats should use.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\158\STX\b\US\n\
    \\188\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\161\STX\STXX\SUB\173\SOH The stats that this rule applies to. The match is applied to the original stat name\n\
    \ before tag-extraction, for example `cluster.exampleclustername.upstream_cx_length_ms`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\161\STX\STX\US\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\161\STX %\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\161\STX()\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOT\161\STX*W\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\175\b\DC1\DC2\EOT\161\STX+V\n\
    \\151\SOH\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ACK\165\STX\STX\169\STX\ENQ\SUB\134\SOH Each value is the upper bound of a bucket. Each bucket must be greater than 0 and unique.\n\
    \ The order of the buckets does not matter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\EOT\165\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\165\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\165\STX\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\165\STX\FS\GS\n\
    \\SI\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ACK\165\STX\RS\169\STX\EOT\n\
    \\DC2\n\
    \\b\EOT\EOT\STX\SOH\b\175\b\DC2\DC2\ACK\165\STX\US\169\STX\ETX\n\
    \\177\SOH\n\
    \\STX\EOT\ENQ\DC2\ACK\175\STX\NUL\219\STX\SOH\SUB\162\SOH Stats configuration proto schema for built-in *envoy.stat_sinks.statsd* sink. This sink does not support\n\
    \ tagged metrics.\n\
    \ [#extension: envoy.stat_sinks.statsd]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\175\STX\b\DC2\n\
    \\v\n\
    \\ETX\EOT\ENQ\a\DC2\EOT\176\STX\STXd\n\
    \\DLE\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\EOT\176\STX\STXd\n\
    \\SO\n\
    \\EOT\EOT\ENQ\b\NUL\DC2\ACK\178\STX\STX\190\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\SOH\DC2\EOT\178\STX\b\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\STX\DC2\EOT\179\STX\EOT&\n\
    \\SI\n\
    \\a\EOT\ENQ\b\NUL\STX\175\b\DC2\EOT\179\STX\EOT&\n\
    \\168\SOH\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\184\STX\EOT \SUB\153\SOH The UDP address of a running `statsd <https://github.com/etsy/statsd>`_\n\
    \ compliant listener. If specified, statistics will be flushed to this\n\
    \ address.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\184\STX\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\184\STX\DC4\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\184\STX\RS\US\n\
    \\195\SOH\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\189\STX\EOT \SUB\180\SOH The name of a cluster that is running a TCP `statsd\n\
    \ <https://github.com/etsy/statsd>`_ compliant listener. If specified,\n\
    \ Envoy will connect to this cluster to flush statistics.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\189\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\189\STX\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\189\STX\RS\US\n\
    \\233\ETX\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\218\STX\STX\DC4\SUB\218\ETX Optional custom prefix for StatsdSink. If\n\
    \ specified, this will override the default prefix.\n\
    \ For example:\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \   {\n\
    \     \"prefix\" : \"envoy-prod\"\n\
    \   }\n\
    \\n\
    \ will change emitted stats to\n\
    \\n\
    \ .. code-block:: cpp\n\
    \\n\
    \   envoy-prod.test_counter:1|c\n\
    \   envoy-prod.test_timer:5|ms\n\
    \\n\
    \ Note that the default prefix, \"envoy\", will be used if a prefix is not\n\
    \ specified.\n\
    \\n\
    \ Stats with default prefix:\n\
    \\n\
    \ .. code-block:: cpp\n\
    \\n\
    \   envoy.test_counter:1|c\n\
    \   envoy.test_timer:5|ms\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\EOT\218\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\218\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\218\STX\DC2\DC3\n\
    \\214\STX\n\
    \\STX\EOT\ACK\DC2\ACK\226\STX\NUL\251\STX\SOH\SUB\199\STX Stats configuration proto schema for built-in *envoy.stat_sinks.dog_statsd* sink.\n\
    \ The sink emits stats with `DogStatsD <https://docs.datadoghq.com/guides/dogstatsd/>`_\n\
    \ compatible tags. Tags are configurable via :ref:`StatsConfig\n\
    \ <envoy_v3_api_msg_config.metrics.v3.StatsConfig>`.\n\
    \ [#extension: envoy.stat_sinks.dog_statsd]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\226\STX\b\NAK\n\
    \\r\n\
    \\ETX\EOT\ACK\a\DC2\ACK\227\STX\STX\228\STX.\n\
    \\DC2\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\ACK\227\STX\STX\228\STX.\n\
    \\v\n\
    \\ETX\EOT\ACK\t\DC2\EOT\230\STX\STX\r\n\
    \\f\n\
    \\EOT\EOT\ACK\t\NUL\DC2\EOT\230\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\ACK\t\NUL\SOH\DC2\EOT\230\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\ACK\t\NUL\STX\DC2\EOT\230\STX\v\f\n\
    \\SO\n\
    \\EOT\EOT\ACK\b\NUL\DC2\ACK\232\STX\STX\238\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ACK\b\NUL\SOH\DC2\EOT\232\STX\b\FS\n\
    \\r\n\
    \\ENQ\EOT\ACK\b\NUL\STX\DC2\EOT\233\STX\EOT&\n\
    \\SI\n\
    \\a\EOT\ACK\b\NUL\STX\175\b\DC2\EOT\233\STX\EOT&\n\
    \\133\SOH\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\237\STX\EOT \SUBw The UDP address of a running DogStatsD compliant listener. If specified,\n\
    \ statistics will be flushed to this address.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\237\STX\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\237\STX\DC4\ESC\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\237\STX\RS\US\n\
    \\165\SOH\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\242\STX\STX\DC4\SUB\150\SOH Optional custom metric name prefix. See :ref:`StatsdSink's prefix field\n\
    \ <envoy_v3_api_field_config.metrics.v3.StatsdSink.prefix>` for more details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\242\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\242\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\242\STX\DC2\DC3\n\
    \\249\STX\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\250\STX\STX]\SUB\234\STX Optional max datagram size to use when sending UDP messages. By default Envoy\n\
    \ will emit one metric per datagram. By specifying a max-size larger than a single\n\
    \ metric, Envoy will emit multiple, new-line separated metrics. The max datagram\n\
    \ size should not exceed your network's MTU.\n\
    \\n\
    \ Note that this value may not be respected if smaller than a single metric.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\EOT\250\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\250\STX\RS4\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\250\STX78\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\b\DC2\EOT\250\STX9\\\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\STX\b\175\b\ACK\DC2\EOT\250\STX:[\n\
    \\152\EOT\n\
    \\STX\EOT\a\DC2\ACK\135\ETX\NUL\151\ETX\SOH\SUB\137\EOT Stats configuration proto schema for built-in *envoy.stat_sinks.hystrix* sink.\n\
    \ The sink emits stats in `text/event-stream\n\
    \ <https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events>`_\n\
    \ formatted stream for use by `Hystrix dashboard\n\
    \ <https://github.com/Netflix-Skunkworks/hystrix-dashboard/wiki>`_.\n\
    \\n\
    \ Note that only a single HystrixSink should be configured.\n\
    \\n\
    \ Streaming is started through an admin endpoint :http:get:`/hystrix_event_stream`.\n\
    \ [#extension: envoy.stat_sinks.hystrix]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\135\ETX\b\DC3\n\
    \\r\n\
    \\ETX\EOT\a\a\DC2\ACK\136\ETX\STX\137\ETX,\n\
    \\DC2\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\ACK\136\ETX\STX\137\ETX,\n\
    \\190\EOT\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\150\ETX\STX\CAN\SUB\175\EOT The number of buckets the rolling statistical window is divided into.\n\
    \\n\
    \ Each time the sink is flushed, all relevant Envoy statistics are sampled and\n\
    \ added to the rolling window (removing the oldest samples in the window\n\
    \ in the process). The sink then outputs the aggregate statistics across the\n\
    \ current rolling window to the event stream(s).\n\
    \\n\
    \ rolling_window(ms) = stats_flush_interval(ms) * num_of_buckets\n\
    \\n\
    \ More detailed explanation can be found in `Hystrix wiki\n\
    \ <https://github.com/Netflix/Hystrix/wiki/Metrics-and-Monitoring#hystrixrollingnumber>`_.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\150\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\150\ETX\b\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\150\ETX\SYN\ETBb\ACKproto3"