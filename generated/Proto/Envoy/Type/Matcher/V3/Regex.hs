{- This file was auto-generated from envoy/type/matcher/v3/regex.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.V3.Regex (
        RegexMatchAndSubstitute(), RegexMatcher(),
        RegexMatcher'EngineType(..), _RegexMatcher'GoogleRe2,
        RegexMatcher'GoogleRE2()
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
import qualified Proto.Envoy.Annotations.Deprecation
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.Regex_Fields.pattern'' @:: Lens' RegexMatchAndSubstitute RegexMatcher@
         * 'Proto.Envoy.Type.Matcher.V3.Regex_Fields.maybe'pattern'' @:: Lens' RegexMatchAndSubstitute (Prelude.Maybe RegexMatcher)@
         * 'Proto.Envoy.Type.Matcher.V3.Regex_Fields.substitution' @:: Lens' RegexMatchAndSubstitute Data.Text.Text@ -}
data RegexMatchAndSubstitute
  = RegexMatchAndSubstitute'_constructor {_RegexMatchAndSubstitute'pattern' :: !(Prelude.Maybe RegexMatcher),
                                          _RegexMatchAndSubstitute'substitution :: !Data.Text.Text,
                                          _RegexMatchAndSubstitute'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RegexMatchAndSubstitute where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RegexMatchAndSubstitute "pattern'" RegexMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegexMatchAndSubstitute'pattern'
           (\ x__ y__ -> x__ {_RegexMatchAndSubstitute'pattern' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RegexMatchAndSubstitute "maybe'pattern'" (Prelude.Maybe RegexMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegexMatchAndSubstitute'pattern'
           (\ x__ y__ -> x__ {_RegexMatchAndSubstitute'pattern' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RegexMatchAndSubstitute "substitution" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegexMatchAndSubstitute'substitution
           (\ x__ y__ -> x__ {_RegexMatchAndSubstitute'substitution = y__}))
        Prelude.id
instance Data.ProtoLens.Message RegexMatchAndSubstitute where
  messageName _
    = Data.Text.pack "envoy.type.matcher.v3.RegexMatchAndSubstitute"
  packedMessageDescriptor _
    = "\n\
      \\ETBRegexMatchAndSubstitute\DC2G\n\
      \\apattern\CAN\SOH \SOH(\v2#.envoy.type.matcher.v3.RegexMatcherR\apatternB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\"\n\
      \\fsubstitution\CAN\STX \SOH(\tR\fsubstitution:1\154\197\136\RS,\n\
      \*envoy.type.matcher.RegexMatchAndSubstitute"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pattern'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pattern"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RegexMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pattern'")) ::
              Data.ProtoLens.FieldDescriptor RegexMatchAndSubstitute
        substitution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "substitution"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"substitution")) ::
              Data.ProtoLens.FieldDescriptor RegexMatchAndSubstitute
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pattern'__field_descriptor),
           (Data.ProtoLens.Tag 2, substitution__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RegexMatchAndSubstitute'_unknownFields
        (\ x__ y__ -> x__ {_RegexMatchAndSubstitute'_unknownFields = y__})
  defMessage
    = RegexMatchAndSubstitute'_constructor
        {_RegexMatchAndSubstitute'pattern' = Prelude.Nothing,
         _RegexMatchAndSubstitute'substitution = Data.ProtoLens.fieldDefault,
         _RegexMatchAndSubstitute'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RegexMatchAndSubstitute
          -> Data.ProtoLens.Encoding.Bytes.Parser RegexMatchAndSubstitute
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
                                       "pattern"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pattern'") y x)
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
                                       "substitution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"substitution") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RegexMatchAndSubstitute"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pattern'") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"substitution") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
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
instance Control.DeepSeq.NFData RegexMatchAndSubstitute where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RegexMatchAndSubstitute'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RegexMatchAndSubstitute'pattern' x__)
                (Control.DeepSeq.deepseq
                   (_RegexMatchAndSubstitute'substitution x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.Regex_Fields.regex' @:: Lens' RegexMatcher Data.Text.Text@
         * 'Proto.Envoy.Type.Matcher.V3.Regex_Fields.maybe'engineType' @:: Lens' RegexMatcher (Prelude.Maybe RegexMatcher'EngineType)@
         * 'Proto.Envoy.Type.Matcher.V3.Regex_Fields.maybe'googleRe2' @:: Lens' RegexMatcher (Prelude.Maybe RegexMatcher'GoogleRE2)@
         * 'Proto.Envoy.Type.Matcher.V3.Regex_Fields.googleRe2' @:: Lens' RegexMatcher RegexMatcher'GoogleRE2@ -}
data RegexMatcher
  = RegexMatcher'_constructor {_RegexMatcher'regex :: !Data.Text.Text,
                               _RegexMatcher'engineType :: !(Prelude.Maybe RegexMatcher'EngineType),
                               _RegexMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RegexMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data RegexMatcher'EngineType
  = RegexMatcher'GoogleRe2 !RegexMatcher'GoogleRE2
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField RegexMatcher "regex" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegexMatcher'regex (\ x__ y__ -> x__ {_RegexMatcher'regex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RegexMatcher "maybe'engineType" (Prelude.Maybe RegexMatcher'EngineType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegexMatcher'engineType
           (\ x__ y__ -> x__ {_RegexMatcher'engineType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RegexMatcher "maybe'googleRe2" (Prelude.Maybe RegexMatcher'GoogleRE2) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegexMatcher'engineType
           (\ x__ y__ -> x__ {_RegexMatcher'engineType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RegexMatcher'GoogleRe2 x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RegexMatcher'GoogleRe2 y__))
instance Data.ProtoLens.Field.HasField RegexMatcher "googleRe2" RegexMatcher'GoogleRE2 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegexMatcher'engineType
           (\ x__ y__ -> x__ {_RegexMatcher'engineType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RegexMatcher'GoogleRe2 x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RegexMatcher'GoogleRe2 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message RegexMatcher where
  messageName _ = Data.Text.pack "envoy.type.matcher.v3.RegexMatcher"
  packedMessageDescriptor _
    = "\n\
      \\fRegexMatcher\DC2X\n\
      \\n\
      \google_re2\CAN\SOH \SOH(\v2-.envoy.type.matcher.v3.RegexMatcher.GoogleRE2H\NULR\tgoogleRe2B\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\GS\n\
      \\ENQregex\CAN\STX \SOH(\tR\ENQregexB\a\250B\EOTr\STX\DLE\SOH\SUB\146\SOH\n\
      \\tGoogleRE2\DC2S\n\
      \\DLEmax_program_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOmaxProgramSizeB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0:0\154\197\136\RS+\n\
      \)envoy.type.matcher.RegexMatcher.GoogleRE2B\DC2\n\
      \\vengine_type\DC2\ETX\248B\SOH:&\154\197\136\RS!\n\
      \\USenvoy.type.matcher.RegexMatcher"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        regex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "regex"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"regex")) ::
              Data.ProtoLens.FieldDescriptor RegexMatcher
        googleRe2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "google_re2"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RegexMatcher'GoogleRE2)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'googleRe2")) ::
              Data.ProtoLens.FieldDescriptor RegexMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, regex__field_descriptor),
           (Data.ProtoLens.Tag 1, googleRe2__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RegexMatcher'_unknownFields
        (\ x__ y__ -> x__ {_RegexMatcher'_unknownFields = y__})
  defMessage
    = RegexMatcher'_constructor
        {_RegexMatcher'regex = Data.ProtoLens.fieldDefault,
         _RegexMatcher'engineType = Prelude.Nothing,
         _RegexMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RegexMatcher -> Data.ProtoLens.Encoding.Bytes.Parser RegexMatcher
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
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "google_re2"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"googleRe2") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RegexMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"regex") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'engineType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (RegexMatcher'GoogleRe2 v))
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RegexMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RegexMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RegexMatcher'regex x__)
                (Control.DeepSeq.deepseq (_RegexMatcher'engineType x__) ()))
instance Control.DeepSeq.NFData RegexMatcher'EngineType where
  rnf (RegexMatcher'GoogleRe2 x__) = Control.DeepSeq.rnf x__
_RegexMatcher'GoogleRe2 ::
  Data.ProtoLens.Prism.Prism' RegexMatcher'EngineType RegexMatcher'GoogleRE2
_RegexMatcher'GoogleRe2
  = Data.ProtoLens.Prism.prism'
      RegexMatcher'GoogleRe2
      (\ p__
         -> case p__ of {
              (RegexMatcher'GoogleRe2 p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.Regex_Fields.maxProgramSize' @:: Lens' RegexMatcher'GoogleRE2 Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Type.Matcher.V3.Regex_Fields.maybe'maxProgramSize' @:: Lens' RegexMatcher'GoogleRE2 (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data RegexMatcher'GoogleRE2
  = RegexMatcher'GoogleRE2'_constructor {_RegexMatcher'GoogleRE2'maxProgramSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                         _RegexMatcher'GoogleRE2'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RegexMatcher'GoogleRE2 where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RegexMatcher'GoogleRE2 "maxProgramSize" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegexMatcher'GoogleRE2'maxProgramSize
           (\ x__ y__ -> x__ {_RegexMatcher'GoogleRE2'maxProgramSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RegexMatcher'GoogleRE2 "maybe'maxProgramSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegexMatcher'GoogleRE2'maxProgramSize
           (\ x__ y__ -> x__ {_RegexMatcher'GoogleRE2'maxProgramSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message RegexMatcher'GoogleRE2 where
  messageName _
    = Data.Text.pack "envoy.type.matcher.v3.RegexMatcher.GoogleRE2"
  packedMessageDescriptor _
    = "\n\
      \\tGoogleRE2\DC2S\n\
      \\DLEmax_program_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOmaxProgramSizeB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0:0\154\197\136\RS+\n\
      \)envoy.type.matcher.RegexMatcher.GoogleRE2"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxProgramSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_program_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxProgramSize")) ::
              Data.ProtoLens.FieldDescriptor RegexMatcher'GoogleRE2
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxProgramSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RegexMatcher'GoogleRE2'_unknownFields
        (\ x__ y__ -> x__ {_RegexMatcher'GoogleRE2'_unknownFields = y__})
  defMessage
    = RegexMatcher'GoogleRE2'_constructor
        {_RegexMatcher'GoogleRE2'maxProgramSize = Prelude.Nothing,
         _RegexMatcher'GoogleRE2'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RegexMatcher'GoogleRE2
          -> Data.ProtoLens.Encoding.Bytes.Parser RegexMatcher'GoogleRE2
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
                                       "max_program_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxProgramSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GoogleRE2"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxProgramSize") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RegexMatcher'GoogleRE2 where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RegexMatcher'GoogleRE2'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RegexMatcher'GoogleRE2'maxProgramSize x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!envoy/type/matcher/v3/regex.proto\DC2\NAKenvoy.type.matcher.v3\SUB\RSgoogle/protobuf/wrappers.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\216\STX\n\
    \\fRegexMatcher\DC2X\n\
    \\n\
    \google_re2\CAN\SOH \SOH(\v2-.envoy.type.matcher.v3.RegexMatcher.GoogleRE2H\NULR\tgoogleRe2B\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\GS\n\
    \\ENQregex\CAN\STX \SOH(\tR\ENQregexB\a\250B\EOTr\STX\DLE\SOH\SUB\146\SOH\n\
    \\tGoogleRE2\DC2S\n\
    \\DLEmax_program_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOmaxProgramSizeB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0:0\154\197\136\RS+\n\
    \)envoy.type.matcher.RegexMatcher.GoogleRE2B\DC2\n\
    \\vengine_type\DC2\ETX\248B\SOH:&\154\197\136\RS!\n\
    \\USenvoy.type.matcher.RegexMatcher\"\185\SOH\n\
    \\ETBRegexMatchAndSubstitute\DC2G\n\
    \\apattern\CAN\SOH \SOH(\v2#.envoy.type.matcher.v3.RegexMatcherR\apatternB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\"\n\
    \\fsubstitution\CAN\STX \SOH(\tR\fsubstitution:1\154\197\136\RS,\n\
    \*envoy.type.matcher.RegexMatchAndSubstituteB;\n\
    \#io.envoyproxy.envoy.type.matcher.v3B\n\
    \RegexProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\154\RS\n\
    \\ACK\DC2\EOT\NUL\NULX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL-\n\
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
    \u\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL;\SOH\SUBE A regex matcher designed for safety when used with untrusted input.\n\
    \2\" [#protodoc-title: Regex matcher]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC4\STXa\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC4\STXa\n\
    \\233\a\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT#\STX0\ETX\SUB\218\a Google's `RE2 <https://github.com/google/re2>`_ regex engine. The regex string must adhere to\n\
    \ the documented `syntax <https://github.com/google/re2/wiki/Syntax>`_. The engine is designed\n\
    \ to complete execution in linear time as well as limit the amount of memory used.\n\
    \\n\
    \ Envoy supports program size checking via runtime. The runtime keys `re2.max_program_size.error_level`\n\
    \ and `re2.max_program_size.warn_level` can be set to integers as the maximum program size or\n\
    \ complexity that a compiled regex can have before an exception is thrown or a warning is\n\
    \ logged, respectively. `re2.max_program_size.error_level` defaults to 100, and\n\
    \ `re2.max_program_size.warn_level` has no default if unset (will not check/log a warning).\n\
    \\n\
    \ Envoy emits two stats for tracking the program size of regexes: the histogram `re2.program_size`,\n\
    \ which records the program size, and the counter `re2.exceeded_warn_level`, which is incremented\n\
    \ each time the program size exceeds the warn level threshold.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX#\n\
    \\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT$\EOT%4\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT$\EOT%4\n\
    \\244\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\EOT.\EOT/U\SUB\227\ETX This field controls the RE2 \"program size\" which is a rough estimate of how complex a\n\
    \ compiled regex is to evaluate. A regex that has a program size greater than the configured\n\
    \ value will fail to compile. In this case, the configured max program size can be increased\n\
    \ or the regex can be simplified. If not specified, the default is 100.\n\
    \\n\
    \ This field is deprecated; regexp validation should be performed on the management server\n\
    \ instead of being done by each individual client.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX.\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX. 0\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX.34\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX/\bT\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\NUL\b\ETX\DC2\ETX/\t\SUB\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\NUL\STX\NUL\b\242\232\128K\DC2\ETX/\FSS\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT2\STX7\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX2\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX3\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX3\EOT&\n\
    \)\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX6\EOTK\SUB\FS Google's RE2 regex engine.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX6\EOT\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX6\SO\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX6\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX6\GSJ\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX6\RSI\n\
    \]\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX:\STX<\SUBP The regex match string. The string must be supported by the configured engine.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX:\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX:\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX:\DC3;\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX:\DC4:\n\
    \\130\SOH\n\
    \\STX\EOT\SOH\DC2\EOT?\NULX\SOH\SUBv Describes how to match a string and then produce a new string using a regular\n\
    \ expression and a substitution string.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX?\b\US\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT@\STXA3\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT@\STXA3\n\
    \\131\ENQ\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXL\STXI\SUB\245\EOT The regular expression used to find portions of a string (hereafter called\n\
    \ the \"subject string\") that should be replaced. When a new string is\n\
    \ produced during the substitution operation, the new string is initially\n\
    \ the same as the subject string, but then all matches in the subject string\n\
    \ are replaced by the substitution string. If replacing all matches isn't\n\
    \ desired, regular expression anchors can be used to ensure a single match,\n\
    \ so as to replace just one occurrence of a pattern. Capture groups can be\n\
    \ used in the pattern to extract portions of the subject string, and then\n\
    \ referenced in the substitution string.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXL\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXL\SI\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXL\EM\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXL\ESCH\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC1\DC2\ETXL\FSG\n\
    \\212\EOT\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXW\STX\SUB\SUB\198\EOT The string that should be substituted into matching portions of the\n\
    \ subject string during a substitution operation to produce a new string.\n\
    \ Capture groups in the pattern can be referenced in the substitution\n\
    \ string. Note, however, that the syntax for referring to capture groups is\n\
    \ defined by the chosen regular expression engine. Google's `RE2\n\
    \ <https://github.com/google/re2>`_ regular expression engine uses a\n\
    \ backslash followed by the capture group number to denote a numbered\n\
    \ capture group. E.g., ``\\1`` refers to capture group 1, and ``\\2`` refers\n\
    \ to capture group 2.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXW\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXW\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXW\CAN\EMb\ACKproto3"