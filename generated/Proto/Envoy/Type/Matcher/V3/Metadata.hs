{- This file was auto-generated from envoy/type/matcher/v3/metadata.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.V3.Metadata (
        MetadataMatcher(), MetadataMatcher'PathSegment(),
        MetadataMatcher'PathSegment'Segment(..),
        _MetadataMatcher'PathSegment'Key
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
import qualified Proto.Envoy.Type.Matcher.V3.Value
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.Metadata_Fields.filter' @:: Lens' MetadataMatcher Data.Text.Text@
         * 'Proto.Envoy.Type.Matcher.V3.Metadata_Fields.path' @:: Lens' MetadataMatcher [MetadataMatcher'PathSegment]@
         * 'Proto.Envoy.Type.Matcher.V3.Metadata_Fields.vec'path' @:: Lens' MetadataMatcher (Data.Vector.Vector MetadataMatcher'PathSegment)@
         * 'Proto.Envoy.Type.Matcher.V3.Metadata_Fields.value' @:: Lens' MetadataMatcher Proto.Envoy.Type.Matcher.V3.Value.ValueMatcher@
         * 'Proto.Envoy.Type.Matcher.V3.Metadata_Fields.maybe'value' @:: Lens' MetadataMatcher (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Value.ValueMatcher)@ -}
data MetadataMatcher
  = MetadataMatcher'_constructor {_MetadataMatcher'filter :: !Data.Text.Text,
                                  _MetadataMatcher'path :: !(Data.Vector.Vector MetadataMatcher'PathSegment),
                                  _MetadataMatcher'value :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Value.ValueMatcher),
                                  _MetadataMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadataMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MetadataMatcher "filter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataMatcher'filter
           (\ x__ y__ -> x__ {_MetadataMatcher'filter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetadataMatcher "path" [MetadataMatcher'PathSegment] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataMatcher'path
           (\ x__ y__ -> x__ {_MetadataMatcher'path = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MetadataMatcher "vec'path" (Data.Vector.Vector MetadataMatcher'PathSegment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataMatcher'path
           (\ x__ y__ -> x__ {_MetadataMatcher'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetadataMatcher "value" Proto.Envoy.Type.Matcher.V3.Value.ValueMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataMatcher'value
           (\ x__ y__ -> x__ {_MetadataMatcher'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MetadataMatcher "maybe'value" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Value.ValueMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataMatcher'value
           (\ x__ y__ -> x__ {_MetadataMatcher'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message MetadataMatcher where
  messageName _
    = Data.Text.pack "envoy.type.matcher.v3.MetadataMatcher"
  packedMessageDescriptor _
    = "\n\
      \\SIMetadataMatcher\DC2\US\n\
      \\ACKfilter\CAN\SOH \SOH(\tR\ACKfilterB\a\250B\EOTr\STX\DLE\SOH\DC2P\n\
      \\EOTpath\CAN\STX \ETX(\v22.envoy.type.matcher.v3.MetadataMatcher.PathSegmentR\EOTpathB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2C\n\
      \\ENQvalue\CAN\ETX \SOH(\v2#.envoy.type.matcher.v3.ValueMatcherR\ENQvalueB\b\250B\ENQ\138\SOH\STX\DLE\SOH\SUBq\n\
      \\vPathSegment\DC2\ESC\n\
      \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\SO\n\
      \\asegment\DC2\ETX\248B\SOH:5\154\197\136\RS0\n\
      \.envoy.type.matcher.MetadataMatcher.PathSegment:)\154\197\136\RS$\n\
      \\"envoy.type.matcher.MetadataMatcher"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        filter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"filter")) ::
              Data.ProtoLens.FieldDescriptor MetadataMatcher
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MetadataMatcher'PathSegment)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor MetadataMatcher
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Value.ValueMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor MetadataMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, filter__field_descriptor),
           (Data.ProtoLens.Tag 2, path__field_descriptor),
           (Data.ProtoLens.Tag 3, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadataMatcher'_unknownFields
        (\ x__ y__ -> x__ {_MetadataMatcher'_unknownFields = y__})
  defMessage
    = MetadataMatcher'_constructor
        {_MetadataMatcher'filter = Data.ProtoLens.fieldDefault,
         _MetadataMatcher'path = Data.Vector.Generic.empty,
         _MetadataMatcher'value = Prelude.Nothing,
         _MetadataMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadataMatcher
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MetadataMatcher'PathSegment
             -> Data.ProtoLens.Encoding.Bytes.Parser MetadataMatcher
        loop x mutable'path
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'path <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'path)
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
                              (Data.ProtoLens.Field.field @"vec'path") frozen'path x))
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
                                       "filter"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"filter") y x)
                                  mutable'path
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "path"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'path y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                                  mutable'path
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'path
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'path <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'path)
          "MetadataMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"filter") _x
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'path") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData MetadataMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadataMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MetadataMatcher'filter x__)
                (Control.DeepSeq.deepseq
                   (_MetadataMatcher'path x__)
                   (Control.DeepSeq.deepseq (_MetadataMatcher'value x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.Metadata_Fields.maybe'segment' @:: Lens' MetadataMatcher'PathSegment (Prelude.Maybe MetadataMatcher'PathSegment'Segment)@
         * 'Proto.Envoy.Type.Matcher.V3.Metadata_Fields.maybe'key' @:: Lens' MetadataMatcher'PathSegment (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Type.Matcher.V3.Metadata_Fields.key' @:: Lens' MetadataMatcher'PathSegment Data.Text.Text@ -}
data MetadataMatcher'PathSegment
  = MetadataMatcher'PathSegment'_constructor {_MetadataMatcher'PathSegment'segment :: !(Prelude.Maybe MetadataMatcher'PathSegment'Segment),
                                              _MetadataMatcher'PathSegment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadataMatcher'PathSegment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data MetadataMatcher'PathSegment'Segment
  = MetadataMatcher'PathSegment'Key !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField MetadataMatcher'PathSegment "maybe'segment" (Prelude.Maybe MetadataMatcher'PathSegment'Segment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataMatcher'PathSegment'segment
           (\ x__ y__ -> x__ {_MetadataMatcher'PathSegment'segment = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetadataMatcher'PathSegment "maybe'key" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataMatcher'PathSegment'segment
           (\ x__ y__ -> x__ {_MetadataMatcher'PathSegment'segment = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MetadataMatcher'PathSegment'Key x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MetadataMatcher'PathSegment'Key y__))
instance Data.ProtoLens.Field.HasField MetadataMatcher'PathSegment "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataMatcher'PathSegment'segment
           (\ x__ y__ -> x__ {_MetadataMatcher'PathSegment'segment = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MetadataMatcher'PathSegment'Key x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MetadataMatcher'PathSegment'Key y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message MetadataMatcher'PathSegment where
  messageName _
    = Data.Text.pack
        "envoy.type.matcher.v3.MetadataMatcher.PathSegment"
  packedMessageDescriptor _
    = "\n\
      \\vPathSegment\DC2\ESC\n\
      \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\SO\n\
      \\asegment\DC2\ETX\248B\SOH:5\154\197\136\RS0\n\
      \.envoy.type.matcher.MetadataMatcher.PathSegment"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'key")) ::
              Data.ProtoLens.FieldDescriptor MetadataMatcher'PathSegment
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadataMatcher'PathSegment'_unknownFields
        (\ x__ y__
           -> x__ {_MetadataMatcher'PathSegment'_unknownFields = y__})
  defMessage
    = MetadataMatcher'PathSegment'_constructor
        {_MetadataMatcher'PathSegment'segment = Prelude.Nothing,
         _MetadataMatcher'PathSegment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadataMatcher'PathSegment
          -> Data.ProtoLens.Encoding.Bytes.Parser MetadataMatcher'PathSegment
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PathSegment"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'segment") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (MetadataMatcher'PathSegment'Key v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MetadataMatcher'PathSegment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadataMatcher'PathSegment'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MetadataMatcher'PathSegment'segment x__) ())
instance Control.DeepSeq.NFData MetadataMatcher'PathSegment'Segment where
  rnf (MetadataMatcher'PathSegment'Key x__) = Control.DeepSeq.rnf x__
_MetadataMatcher'PathSegment'Key ::
  Data.ProtoLens.Prism.Prism' MetadataMatcher'PathSegment'Segment Data.Text.Text
_MetadataMatcher'PathSegment'Key
  = Data.ProtoLens.Prism.prism'
      MetadataMatcher'PathSegment'Key
      (\ p__
         -> case p__ of {
              (MetadataMatcher'PathSegment'Key p__val) -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$envoy/type/matcher/v3/metadata.proto\DC2\NAKenvoy.type.matcher.v3\SUB!envoy/type/matcher/v3/value.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\231\STX\n\
    \\SIMetadataMatcher\DC2\US\n\
    \\ACKfilter\CAN\SOH \SOH(\tR\ACKfilterB\a\250B\EOTr\STX\DLE\SOH\DC2P\n\
    \\EOTpath\CAN\STX \ETX(\v22.envoy.type.matcher.v3.MetadataMatcher.PathSegmentR\EOTpathB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2C\n\
    \\ENQvalue\CAN\ETX \SOH(\v2#.envoy.type.matcher.v3.ValueMatcherR\ENQvalueB\b\250B\ENQ\138\SOH\STX\DLE\SOH\SUBq\n\
    \\vPathSegment\DC2\ESC\n\
    \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\SO\n\
    \\asegment\DC2\ETX\248B\SOH:5\154\197\136\RS0\n\
    \.envoy.type.matcher.MetadataMatcher.PathSegment:)\154\197\136\RS$\n\
    \\"envoy.type.matcher.MetadataMatcherB>\n\
    \#io.envoyproxy.envoy.type.matcher.v3B\rMetadataProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\224\ETB\n\
    \\ACK\DC2\EOT\NUL\NULg\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL+\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL<\n\
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
    \\160\SO\n\
    \\STX\EOT\NUL\DC2\EOTM\NULg\SOH\SUBA [#next-major-version: MetadataMatcher should use StructMatcher]\n\
    \2% [#protodoc-title: Metadata matcher]\n\
    \2\169\r MetadataMatcher provides a general interface to check if a given value is matched in\n\
    \ :ref:`Metadata <envoy_v3_api_msg_config.core.v3.Metadata>`. It uses `filter` and `path` to retrieve the value\n\
    \ from the Metadata and then check if it's matched to the specified value.\n\
    \\n\
    \ For example, for the following Metadata:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    filter_metadata:\n\
    \      envoy.filters.http.rbac:\n\
    \        fields:\n\
    \          a:\n\
    \            struct_value:\n\
    \              fields:\n\
    \                b:\n\
    \                  struct_value:\n\
    \                    fields:\n\
    \                      c:\n\
    \                        string_value: pro\n\
    \                t:\n\
    \                  list_value:\n\
    \                    values:\n\
    \                      - string_value: m\n\
    \                      - string_value: n\n\
    \\n\
    \ The following MetadataMatcher is matched as the path [a, b, c] will retrieve a string value \"pro\"\n\
    \ from the Metadata which is matched to the specified prefix match.\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    filter: envoy.filters.http.rbac\n\
    \    path:\n\
    \    - key: a\n\
    \    - key: b\n\
    \    - key: c\n\
    \    value:\n\
    \      string_match:\n\
    \        prefix: pr\n\
    \\n\
    \ The following MetadataMatcher is matched as the code will match one of the string values in the\n\
    \ list at the path [a, t].\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    filter: envoy.filters.http.rbac\n\
    \    path:\n\
    \    - key: a\n\
    \    - key: t\n\
    \    value:\n\
    \      list_match:\n\
    \        one_of:\n\
    \          string_match:\n\
    \            exact: m\n\
    \\n\
    \ An example use of MetadataMatcher is specifying additional metadata in envoy.filters.http.rbac to\n\
    \ enforce access control based on dynamic metadata in a request. See :ref:`Permission\n\
    \ <envoy_v3_api_msg_config.rbac.v3.Permission>` and :ref:`Principal\n\
    \ <envoy_v3_api_msg_config.rbac.v3.Principal>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXM\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETXN\STXd\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETXN\STXd\n\
    \\129\STX\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOTS\STX]\ETX\SUB\242\SOH Specifies the segment in a path to retrieve value from Metadata.\n\
    \ Note: Currently it's not supported to retrieve a value from a list in Metadata. This means that\n\
    \ if the segment key refers to a list, it has to be the last segment in a path.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETXS\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOTT\EOTU9\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTT\EOTU9\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOTW\EOT\\\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETXW\n\
    \\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\STX\DC2\ETXX\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETXX\ACK(\n\
    \M\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX[\ACK>\SUB> If specified, use the key to retrieve the value in a Struct.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX[\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX[\r\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX[\DC3\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX[\NAK=\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETX[\SYN<\n\
    \H\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX`\STX=\SUB; The filter name to retrieve the Struct from the Metadata.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX`\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX`\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX`\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX`\DC4<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX`\NAK;\n\
    \>\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXc\STXM\SUB1 The path to retrieve the Value from the Struct.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXc\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXc\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXc\ETB\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXc\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETXc L\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC2\DC2\ETXc!K\n\
    \f\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXf\STXG\SUBY The MetadataMatcher is matched if the value retrieved by path is matched to this value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXf\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXf\SI\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXf\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETXf\EMF\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DC1\DC2\ETXf\SUBEb\ACKproto3"