{- This file was auto-generated from envoy/type/matcher/struct.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.Struct (
        StructMatcher(), StructMatcher'PathSegment(),
        StructMatcher'PathSegment'Segment(..),
        _StructMatcher'PathSegment'Key
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
import qualified Proto.Envoy.Type.Matcher.Value
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.Struct_Fields.path' @:: Lens' StructMatcher [StructMatcher'PathSegment]@
         * 'Proto.Envoy.Type.Matcher.Struct_Fields.vec'path' @:: Lens' StructMatcher (Data.Vector.Vector StructMatcher'PathSegment)@
         * 'Proto.Envoy.Type.Matcher.Struct_Fields.value' @:: Lens' StructMatcher Proto.Envoy.Type.Matcher.Value.ValueMatcher@
         * 'Proto.Envoy.Type.Matcher.Struct_Fields.maybe'value' @:: Lens' StructMatcher (Prelude.Maybe Proto.Envoy.Type.Matcher.Value.ValueMatcher)@ -}
data StructMatcher
  = StructMatcher'_constructor {_StructMatcher'path :: !(Data.Vector.Vector StructMatcher'PathSegment),
                                _StructMatcher'value :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.Value.ValueMatcher),
                                _StructMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StructMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StructMatcher "path" [StructMatcher'PathSegment] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructMatcher'path (\ x__ y__ -> x__ {_StructMatcher'path = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StructMatcher "vec'path" (Data.Vector.Vector StructMatcher'PathSegment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructMatcher'path (\ x__ y__ -> x__ {_StructMatcher'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StructMatcher "value" Proto.Envoy.Type.Matcher.Value.ValueMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructMatcher'value
           (\ x__ y__ -> x__ {_StructMatcher'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StructMatcher "maybe'value" (Prelude.Maybe Proto.Envoy.Type.Matcher.Value.ValueMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructMatcher'value
           (\ x__ y__ -> x__ {_StructMatcher'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message StructMatcher where
  messageName _ = Data.Text.pack "envoy.type.matcher.StructMatcher"
  packedMessageDescriptor _
    = "\n\
      \\rStructMatcher\DC2K\n\
      \\EOTpath\CAN\STX \ETX(\v2-.envoy.type.matcher.StructMatcher.PathSegmentR\EOTpathB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2@\n\
      \\ENQvalue\CAN\ETX \SOH(\v2 .envoy.type.matcher.ValueMatcherR\ENQvalueB\b\250B\ENQ\138\SOH\STX\DLE\SOH\SUB:\n\
      \\vPathSegment\DC2\ESC\n\
      \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\SO\n\
      \\asegment\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StructMatcher'PathSegment)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor StructMatcher
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.Value.ValueMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor StructMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, path__field_descriptor),
           (Data.ProtoLens.Tag 3, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StructMatcher'_unknownFields
        (\ x__ y__ -> x__ {_StructMatcher'_unknownFields = y__})
  defMessage
    = StructMatcher'_constructor
        {_StructMatcher'path = Data.Vector.Generic.empty,
         _StructMatcher'value = Prelude.Nothing,
         _StructMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StructMatcher
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld StructMatcher'PathSegment
             -> Data.ProtoLens.Encoding.Bytes.Parser StructMatcher
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
          "StructMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StructMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StructMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StructMatcher'path x__)
                (Control.DeepSeq.deepseq (_StructMatcher'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.Struct_Fields.maybe'segment' @:: Lens' StructMatcher'PathSegment (Prelude.Maybe StructMatcher'PathSegment'Segment)@
         * 'Proto.Envoy.Type.Matcher.Struct_Fields.maybe'key' @:: Lens' StructMatcher'PathSegment (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Type.Matcher.Struct_Fields.key' @:: Lens' StructMatcher'PathSegment Data.Text.Text@ -}
data StructMatcher'PathSegment
  = StructMatcher'PathSegment'_constructor {_StructMatcher'PathSegment'segment :: !(Prelude.Maybe StructMatcher'PathSegment'Segment),
                                            _StructMatcher'PathSegment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StructMatcher'PathSegment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StructMatcher'PathSegment'Segment
  = StructMatcher'PathSegment'Key !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StructMatcher'PathSegment "maybe'segment" (Prelude.Maybe StructMatcher'PathSegment'Segment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructMatcher'PathSegment'segment
           (\ x__ y__ -> x__ {_StructMatcher'PathSegment'segment = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StructMatcher'PathSegment "maybe'key" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructMatcher'PathSegment'segment
           (\ x__ y__ -> x__ {_StructMatcher'PathSegment'segment = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StructMatcher'PathSegment'Key x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StructMatcher'PathSegment'Key y__))
instance Data.ProtoLens.Field.HasField StructMatcher'PathSegment "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructMatcher'PathSegment'segment
           (\ x__ y__ -> x__ {_StructMatcher'PathSegment'segment = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StructMatcher'PathSegment'Key x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StructMatcher'PathSegment'Key y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message StructMatcher'PathSegment where
  messageName _
    = Data.Text.pack "envoy.type.matcher.StructMatcher.PathSegment"
  packedMessageDescriptor _
    = "\n\
      \\vPathSegment\DC2\ESC\n\
      \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\SO\n\
      \\asegment\DC2\ETX\248B\SOH"
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
              Data.ProtoLens.FieldDescriptor StructMatcher'PathSegment
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StructMatcher'PathSegment'_unknownFields
        (\ x__ y__
           -> x__ {_StructMatcher'PathSegment'_unknownFields = y__})
  defMessage
    = StructMatcher'PathSegment'_constructor
        {_StructMatcher'PathSegment'segment = Prelude.Nothing,
         _StructMatcher'PathSegment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StructMatcher'PathSegment
          -> Data.ProtoLens.Encoding.Bytes.Parser StructMatcher'PathSegment
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
                (Prelude.Just (StructMatcher'PathSegment'Key v))
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
instance Control.DeepSeq.NFData StructMatcher'PathSegment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StructMatcher'PathSegment'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StructMatcher'PathSegment'segment x__) ())
instance Control.DeepSeq.NFData StructMatcher'PathSegment'Segment where
  rnf (StructMatcher'PathSegment'Key x__) = Control.DeepSeq.rnf x__
_StructMatcher'PathSegment'Key ::
  Data.ProtoLens.Prism.Prism' StructMatcher'PathSegment'Segment Data.Text.Text
_StructMatcher'PathSegment'Key
  = Data.ProtoLens.Prism.prism'
      StructMatcher'PathSegment'Key
      (\ p__
         -> case p__ of {
              (StructMatcher'PathSegment'Key p__val) -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USenvoy/type/matcher/struct.proto\DC2\DC2envoy.type.matcher\SUB\RSenvoy/type/matcher/value.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\218\SOH\n\
    \\rStructMatcher\DC2K\n\
    \\EOTpath\CAN\STX \ETX(\v2-.envoy.type.matcher.StructMatcher.PathSegmentR\EOTpathB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2@\n\
    \\ENQvalue\CAN\ETX \SOH(\v2 .envoy.type.matcher.ValueMatcherR\ENQvalueB\b\250B\ENQ\138\SOH\STX\DLE\SOH\SUB:\n\
    \\vPathSegment\DC2\ESC\n\
    \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\SO\n\
    \\asegment\DC2\ETX\248B\SOHB9\n\
    \ io.envoyproxy.envoy.type.matcherB\vStructProtoP\SOH\186\128\200\209\ACK\STX\DLE\SOHJ\245\DLE\n\
    \\ACK\DC2\EOT\NUL\NULS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL9\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NUL9\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\201\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOTC\NULS\SOH\SUB\151\n\
    \ StructMatcher provides a general interface to check if a given value is matched in\n\
    \ google.protobuf.Struct. It uses `path` to retrieve the value\n\
    \ from the struct and then check if it's matched to the specified value.\n\
    \\n\
    \ For example, for the following Struct:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
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
    \    path:\n\
    \    - key: a\n\
    \    - key: b\n\
    \    - key: c\n\
    \    value:\n\
    \      string_match:\n\
    \        prefix: pr\n\
    \\n\
    \ The following StructMatcher is matched as the code will match one of the string values in the\n\
    \ list at the path [a, t].\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    path:\n\
    \    - key: a\n\
    \    - key: t\n\
    \    value:\n\
    \      list_match:\n\
    \        one_of:\n\
    \          string_match:\n\
    \            exact: m\n\
    \\n\
    \ An example use of StructMatcher is to match metadata in envoy.v*.core.Node.\n\
    \2# [#protodoc-title: Struct matcher]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXC\b\NAK\n\
    \N\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOTE\STXL\ETX\SUB@ Specifies the segment in a path to retrieve value from Struct.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETXE\n\
    \\NAK\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOTF\EOTK\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETXF\n\
    \\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\STX\DC2\ETXG\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETXG\ACK(\n\
    \M\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXJ\ACK>\SUB> If specified, use the key to retrieve the value in a Struct.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETXJ\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXJ\r\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXJ\DC3\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETXJ\NAK=\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETXJ\SYN<\n\
    \>\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXO\STXM\SUB1 The path to retrieve the Value from the Struct.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXO\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXO\ETB\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXO\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXO L\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC2\DC2\ETXO!K\n\
    \d\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXR\STXG\SUBW The StructMatcher is matched if the value retrieved by path is matched to this value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXR\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXR\SI\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXR\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETXR\EMF\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\ETXR\SUBEb\ACKproto3"