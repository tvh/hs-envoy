{- This file was auto-generated from envoy/type/matcher/v3/value.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.V3.Value (
        ListMatcher(), ListMatcher'MatchPattern(..), _ListMatcher'OneOf,
        ValueMatcher(), ValueMatcher'MatchPattern(..),
        _ValueMatcher'NullMatch', _ValueMatcher'DoubleMatch,
        _ValueMatcher'StringMatch, _ValueMatcher'BoolMatch,
        _ValueMatcher'PresentMatch, _ValueMatcher'ListMatch,
        ValueMatcher'NullMatch()
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
import qualified Proto.Envoy.Type.Matcher.V3.Number
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.maybe'matchPattern' @:: Lens' ListMatcher (Prelude.Maybe ListMatcher'MatchPattern)@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.maybe'oneOf' @:: Lens' ListMatcher (Prelude.Maybe ValueMatcher)@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.oneOf' @:: Lens' ListMatcher ValueMatcher@ -}
data ListMatcher
  = ListMatcher'_constructor {_ListMatcher'matchPattern :: !(Prelude.Maybe ListMatcher'MatchPattern),
                              _ListMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ListMatcher'MatchPattern
  = ListMatcher'OneOf !ValueMatcher
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ListMatcher "maybe'matchPattern" (Prelude.Maybe ListMatcher'MatchPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListMatcher'matchPattern
           (\ x__ y__ -> x__ {_ListMatcher'matchPattern = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListMatcher "maybe'oneOf" (Prelude.Maybe ValueMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListMatcher'matchPattern
           (\ x__ y__ -> x__ {_ListMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ListMatcher'OneOf x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ListMatcher'OneOf y__))
instance Data.ProtoLens.Field.HasField ListMatcher "oneOf" ValueMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListMatcher'matchPattern
           (\ x__ y__ -> x__ {_ListMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ListMatcher'OneOf x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ListMatcher'OneOf y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ListMatcher where
  messageName _ = Data.Text.pack "envoy.type.matcher.v3.ListMatcher"
  packedMessageDescriptor _
    = "\n\
      \\vListMatcher\DC2<\n\
      \\ACKone_of\CAN\SOH \SOH(\v2#.envoy.type.matcher.v3.ValueMatcherH\NULR\ENQoneOfB\DC4\n\
      \\rmatch_pattern\DC2\ETX\248B\SOH:%\154\197\136\RS \n\
      \\RSenvoy.type.matcher.ListMatcher"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        oneOf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "one_of"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValueMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oneOf")) ::
              Data.ProtoLens.FieldDescriptor ListMatcher
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, oneOf__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListMatcher'_unknownFields
        (\ x__ y__ -> x__ {_ListMatcher'_unknownFields = y__})
  defMessage
    = ListMatcher'_constructor
        {_ListMatcher'matchPattern = Prelude.Nothing,
         _ListMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListMatcher -> Data.ProtoLens.Encoding.Bytes.Parser ListMatcher
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
                                       "one_of"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"oneOf") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ListMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'matchPattern") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ListMatcher'OneOf v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ListMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ListMatcher'matchPattern x__) ())
instance Control.DeepSeq.NFData ListMatcher'MatchPattern where
  rnf (ListMatcher'OneOf x__) = Control.DeepSeq.rnf x__
_ListMatcher'OneOf ::
  Data.ProtoLens.Prism.Prism' ListMatcher'MatchPattern ValueMatcher
_ListMatcher'OneOf
  = Data.ProtoLens.Prism.prism'
      ListMatcher'OneOf
      (\ p__
         -> case p__ of {
              (ListMatcher'OneOf p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.maybe'matchPattern' @:: Lens' ValueMatcher (Prelude.Maybe ValueMatcher'MatchPattern)@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.maybe'nullMatch' @:: Lens' ValueMatcher (Prelude.Maybe ValueMatcher'NullMatch)@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.nullMatch' @:: Lens' ValueMatcher ValueMatcher'NullMatch@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.maybe'doubleMatch' @:: Lens' ValueMatcher (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Number.DoubleMatcher)@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.doubleMatch' @:: Lens' ValueMatcher Proto.Envoy.Type.Matcher.V3.Number.DoubleMatcher@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.maybe'stringMatch' @:: Lens' ValueMatcher (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.stringMatch' @:: Lens' ValueMatcher Proto.Envoy.Type.Matcher.V3.String.StringMatcher@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.maybe'boolMatch' @:: Lens' ValueMatcher (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.boolMatch' @:: Lens' ValueMatcher Prelude.Bool@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.maybe'presentMatch' @:: Lens' ValueMatcher (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.presentMatch' @:: Lens' ValueMatcher Prelude.Bool@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.maybe'listMatch' @:: Lens' ValueMatcher (Prelude.Maybe ListMatcher)@
         * 'Proto.Envoy.Type.Matcher.V3.Value_Fields.listMatch' @:: Lens' ValueMatcher ListMatcher@ -}
data ValueMatcher
  = ValueMatcher'_constructor {_ValueMatcher'matchPattern :: !(Prelude.Maybe ValueMatcher'MatchPattern),
                               _ValueMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValueMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ValueMatcher'MatchPattern
  = ValueMatcher'NullMatch' !ValueMatcher'NullMatch |
    ValueMatcher'DoubleMatch !Proto.Envoy.Type.Matcher.V3.Number.DoubleMatcher |
    ValueMatcher'StringMatch !Proto.Envoy.Type.Matcher.V3.String.StringMatcher |
    ValueMatcher'BoolMatch !Prelude.Bool |
    ValueMatcher'PresentMatch !Prelude.Bool |
    ValueMatcher'ListMatch !ListMatcher
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ValueMatcher "maybe'matchPattern" (Prelude.Maybe ValueMatcher'MatchPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValueMatcher "maybe'nullMatch" (Prelude.Maybe ValueMatcher'NullMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ValueMatcher'NullMatch' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ValueMatcher'NullMatch' y__))
instance Data.ProtoLens.Field.HasField ValueMatcher "nullMatch" ValueMatcher'NullMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ValueMatcher'NullMatch' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ValueMatcher'NullMatch' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ValueMatcher "maybe'doubleMatch" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Number.DoubleMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ValueMatcher'DoubleMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ValueMatcher'DoubleMatch y__))
instance Data.ProtoLens.Field.HasField ValueMatcher "doubleMatch" Proto.Envoy.Type.Matcher.V3.Number.DoubleMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ValueMatcher'DoubleMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ValueMatcher'DoubleMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ValueMatcher "maybe'stringMatch" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ValueMatcher'StringMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ValueMatcher'StringMatch y__))
instance Data.ProtoLens.Field.HasField ValueMatcher "stringMatch" Proto.Envoy.Type.Matcher.V3.String.StringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ValueMatcher'StringMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ValueMatcher'StringMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ValueMatcher "maybe'boolMatch" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ValueMatcher'BoolMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ValueMatcher'BoolMatch y__))
instance Data.ProtoLens.Field.HasField ValueMatcher "boolMatch" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ValueMatcher'BoolMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ValueMatcher'BoolMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ValueMatcher "maybe'presentMatch" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ValueMatcher'PresentMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ValueMatcher'PresentMatch y__))
instance Data.ProtoLens.Field.HasField ValueMatcher "presentMatch" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ValueMatcher'PresentMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ValueMatcher'PresentMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ValueMatcher "maybe'listMatch" (Prelude.Maybe ListMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ValueMatcher'ListMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ValueMatcher'ListMatch y__))
instance Data.ProtoLens.Field.HasField ValueMatcher "listMatch" ListMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueMatcher'matchPattern
           (\ x__ y__ -> x__ {_ValueMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ValueMatcher'ListMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ValueMatcher'ListMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ValueMatcher where
  messageName _ = Data.Text.pack "envoy.type.matcher.v3.ValueMatcher"
  packedMessageDescriptor _
    = "\n\
      \\fValueMatcher\DC2N\n\
      \\n\
      \null_match\CAN\SOH \SOH(\v2-.envoy.type.matcher.v3.ValueMatcher.NullMatchH\NULR\tnullMatch\DC2I\n\
      \\fdouble_match\CAN\STX \SOH(\v2$.envoy.type.matcher.v3.DoubleMatcherH\NULR\vdoubleMatch\DC2I\n\
      \\fstring_match\CAN\ETX \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\vstringMatch\DC2\US\n\
      \\n\
      \bool_match\CAN\EOT \SOH(\bH\NULR\tboolMatch\DC2%\n\
      \\rpresent_match\CAN\ENQ \SOH(\bH\NULR\fpresentMatch\DC2C\n\
      \\n\
      \list_match\CAN\ACK \SOH(\v2\".envoy.type.matcher.v3.ListMatcherH\NULR\tlistMatch\SUB=\n\
      \\tNullMatch:0\154\197\136\RS+\n\
      \)envoy.type.matcher.ValueMatcher.NullMatchB\DC4\n\
      \\rmatch_pattern\DC2\ETX\248B\SOH:&\154\197\136\RS!\n\
      \\USenvoy.type.matcher.ValueMatcher"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nullMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "null_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValueMatcher'NullMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nullMatch")) ::
              Data.ProtoLens.FieldDescriptor ValueMatcher
        doubleMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "double_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Number.DoubleMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'doubleMatch")) ::
              Data.ProtoLens.FieldDescriptor ValueMatcher
        stringMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringMatch")) ::
              Data.ProtoLens.FieldDescriptor ValueMatcher
        boolMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool_match"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'boolMatch")) ::
              Data.ProtoLens.FieldDescriptor ValueMatcher
        presentMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "present_match"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'presentMatch")) ::
              Data.ProtoLens.FieldDescriptor ValueMatcher
        listMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listMatch")) ::
              Data.ProtoLens.FieldDescriptor ValueMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nullMatch__field_descriptor),
           (Data.ProtoLens.Tag 2, doubleMatch__field_descriptor),
           (Data.ProtoLens.Tag 3, stringMatch__field_descriptor),
           (Data.ProtoLens.Tag 4, boolMatch__field_descriptor),
           (Data.ProtoLens.Tag 5, presentMatch__field_descriptor),
           (Data.ProtoLens.Tag 6, listMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValueMatcher'_unknownFields
        (\ x__ y__ -> x__ {_ValueMatcher'_unknownFields = y__})
  defMessage
    = ValueMatcher'_constructor
        {_ValueMatcher'matchPattern = Prelude.Nothing,
         _ValueMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValueMatcher -> Data.ProtoLens.Encoding.Bytes.Parser ValueMatcher
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
                                       "null_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nullMatch") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "double_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doubleMatch") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "string_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringMatch") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bool_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"boolMatch") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "present_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"presentMatch") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listMatch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ValueMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'matchPattern") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ValueMatcher'NullMatch' v))
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
                (Prelude.Just (ValueMatcher'DoubleMatch v))
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
                (Prelude.Just (ValueMatcher'StringMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (ValueMatcher'BoolMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (ValueMatcher'PresentMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (ValueMatcher'ListMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
instance Control.DeepSeq.NFData ValueMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValueMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ValueMatcher'matchPattern x__) ())
instance Control.DeepSeq.NFData ValueMatcher'MatchPattern where
  rnf (ValueMatcher'NullMatch' x__) = Control.DeepSeq.rnf x__
  rnf (ValueMatcher'DoubleMatch x__) = Control.DeepSeq.rnf x__
  rnf (ValueMatcher'StringMatch x__) = Control.DeepSeq.rnf x__
  rnf (ValueMatcher'BoolMatch x__) = Control.DeepSeq.rnf x__
  rnf (ValueMatcher'PresentMatch x__) = Control.DeepSeq.rnf x__
  rnf (ValueMatcher'ListMatch x__) = Control.DeepSeq.rnf x__
_ValueMatcher'NullMatch' ::
  Data.ProtoLens.Prism.Prism' ValueMatcher'MatchPattern ValueMatcher'NullMatch
_ValueMatcher'NullMatch'
  = Data.ProtoLens.Prism.prism'
      ValueMatcher'NullMatch'
      (\ p__
         -> case p__ of
              (ValueMatcher'NullMatch' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ValueMatcher'DoubleMatch ::
  Data.ProtoLens.Prism.Prism' ValueMatcher'MatchPattern Proto.Envoy.Type.Matcher.V3.Number.DoubleMatcher
_ValueMatcher'DoubleMatch
  = Data.ProtoLens.Prism.prism'
      ValueMatcher'DoubleMatch
      (\ p__
         -> case p__ of
              (ValueMatcher'DoubleMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ValueMatcher'StringMatch ::
  Data.ProtoLens.Prism.Prism' ValueMatcher'MatchPattern Proto.Envoy.Type.Matcher.V3.String.StringMatcher
_ValueMatcher'StringMatch
  = Data.ProtoLens.Prism.prism'
      ValueMatcher'StringMatch
      (\ p__
         -> case p__ of
              (ValueMatcher'StringMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ValueMatcher'BoolMatch ::
  Data.ProtoLens.Prism.Prism' ValueMatcher'MatchPattern Prelude.Bool
_ValueMatcher'BoolMatch
  = Data.ProtoLens.Prism.prism'
      ValueMatcher'BoolMatch
      (\ p__
         -> case p__ of
              (ValueMatcher'BoolMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ValueMatcher'PresentMatch ::
  Data.ProtoLens.Prism.Prism' ValueMatcher'MatchPattern Prelude.Bool
_ValueMatcher'PresentMatch
  = Data.ProtoLens.Prism.prism'
      ValueMatcher'PresentMatch
      (\ p__
         -> case p__ of
              (ValueMatcher'PresentMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ValueMatcher'ListMatch ::
  Data.ProtoLens.Prism.Prism' ValueMatcher'MatchPattern ListMatcher
_ValueMatcher'ListMatch
  = Data.ProtoLens.Prism.prism'
      ValueMatcher'ListMatch
      (\ p__
         -> case p__ of
              (ValueMatcher'ListMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data ValueMatcher'NullMatch
  = ValueMatcher'NullMatch'_constructor {_ValueMatcher'NullMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValueMatcher'NullMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ValueMatcher'NullMatch where
  messageName _
    = Data.Text.pack "envoy.type.matcher.v3.ValueMatcher.NullMatch"
  packedMessageDescriptor _
    = "\n\
      \\tNullMatch:0\154\197\136\RS+\n\
      \)envoy.type.matcher.ValueMatcher.NullMatch"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValueMatcher'NullMatch'_unknownFields
        (\ x__ y__ -> x__ {_ValueMatcher'NullMatch'_unknownFields = y__})
  defMessage
    = ValueMatcher'NullMatch'_constructor
        {_ValueMatcher'NullMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValueMatcher'NullMatch
          -> Data.ProtoLens.Encoding.Bytes.Parser ValueMatcher'NullMatch
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NullMatch"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData ValueMatcher'NullMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValueMatcher'NullMatch'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!envoy/type/matcher/v3/value.proto\DC2\NAKenvoy.type.matcher.v3\SUB\"envoy/type/matcher/v3/number.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\254\ETX\n\
    \\fValueMatcher\DC2N\n\
    \\n\
    \null_match\CAN\SOH \SOH(\v2-.envoy.type.matcher.v3.ValueMatcher.NullMatchH\NULR\tnullMatch\DC2I\n\
    \\fdouble_match\CAN\STX \SOH(\v2$.envoy.type.matcher.v3.DoubleMatcherH\NULR\vdoubleMatch\DC2I\n\
    \\fstring_match\CAN\ETX \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\vstringMatch\DC2\US\n\
    \\n\
    \bool_match\CAN\EOT \SOH(\bH\NULR\tboolMatch\DC2%\n\
    \\rpresent_match\CAN\ENQ \SOH(\bH\NULR\fpresentMatch\DC2C\n\
    \\n\
    \list_match\CAN\ACK \SOH(\v2\".envoy.type.matcher.v3.ListMatcherH\NULR\tlistMatch\SUB=\n\
    \\tNullMatch:0\154\197\136\RS+\n\
    \)envoy.type.matcher.ValueMatcher.NullMatchB\DC4\n\
    \\rmatch_pattern\DC2\ETX\248B\SOH:&\154\197\136\RS!\n\
    \\USenvoy.type.matcher.ValueMatcher\"\136\SOH\n\
    \\vListMatcher\DC2<\n\
    \\ACKone_of\CAN\SOH \SOH(\v2#.envoy.type.matcher.v3.ValueMatcherH\NULR\ENQoneOfB\DC4\n\
    \\rmatch_pattern\DC2\ETX\248B\SOH:%\154\197\136\RS \n\
    \\RSenvoy.type.matcher.ListMatcherB;\n\
    \#io.envoyproxy.envoy.type.matcher.v3B\n\
    \ValueProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\235\SI\n\
    \\ACK\DC2\EOT\NUL\NULF\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL,\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\225\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL:\SOH\SUB\176\SOH Specifies the way to match a ProtobufWkt::Value. Primitive values and ListValue are supported.\n\
    \ StructValue is not supported and is always not matched.\n\
    \ [#next-free-field: 7]\n\
    \2\" [#protodoc-title: Value matcher]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SYN\STXa\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\SYN\STXa\n\
    \F\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\EM\STX\FS\ETX\SUB8 NullMatch is an empty message to specify a null value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\EM\n\
    \\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT\SUB\EOT\ESC4\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SUB\EOT\ESC4\n\
    \/\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\US\STX9\ETX\SUB! Specifies how to match a value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\US\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX \EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX \EOT&\n\
    \[\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX#\EOT\GS\SUBN If specified, a match occurs if and only if the target value is a NullValue.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX#\EOT\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX#\SO\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX#\ESC\FS\n\
    \|\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX'\EOT#\SUBo If specified, a match occurs if and only if the target value is a double value and is\n\
    \ matched to this field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX'\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX'\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX'!\"\n\
    \|\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX+\EOT#\SUBo If specified, a match occurs if and only if the target value is a string value and is\n\
    \ matched to this field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX+\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX+\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX+!\"\n\
    \x\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX/\EOT\CAN\SUBk If specified, a match occurs if and only if the target value is a bool value and is equal\n\
    \ to this field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX/\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX/\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX/\SYN\ETB\n\
    \\229\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX4\EOT\ESC\SUB\215\SOH If specified, value match will be performed based on whether the path is referring to a\n\
    \ valid primitive value in the metadata. If the path is referring to a non-primitive value,\n\
    \ the result is always not matched.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX4\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX4\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX4\EM\SUB\n\
    \z\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX8\EOT\US\SUBm If specified, a match occurs if and only if the target value is a list value and\n\
    \ is matched to this field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX8\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX8\DLE\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX8\GS\RS\n\
    \6\n\
    \\STX\EOT\SOH\DC2\EOT=\NULF\SOH\SUB* Specifies the way to match a list value.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX=\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX>\STX`\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX>\STX`\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT@\STXE\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX@\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETXA\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETXA\EOT&\n\
    \c\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXD\EOT\FS\SUBV If specified, at least one of the values in the list must match the value specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXD\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXD\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXD\SUB\ESCb\ACKproto3"