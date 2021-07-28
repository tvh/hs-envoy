{- This file was auto-generated from envoy/config/tap/v3/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Tap.V3.Common (
        FilePerTapSink(), HttpGenericBodyMatch(),
        HttpGenericBodyMatch'GenericTextMatch(),
        HttpGenericBodyMatch'GenericTextMatch'Rule(..),
        _HttpGenericBodyMatch'GenericTextMatch'StringMatch,
        _HttpGenericBodyMatch'GenericTextMatch'BinaryMatch,
        HttpHeadersMatch(), MatchPredicate(), MatchPredicate'Rule(..),
        _MatchPredicate'OrMatch, _MatchPredicate'AndMatch,
        _MatchPredicate'NotMatch, _MatchPredicate'AnyMatch,
        _MatchPredicate'HttpRequestHeadersMatch,
        _MatchPredicate'HttpRequestTrailersMatch,
        _MatchPredicate'HttpResponseHeadersMatch,
        _MatchPredicate'HttpResponseTrailersMatch,
        _MatchPredicate'HttpRequestGenericBodyMatch,
        _MatchPredicate'HttpResponseGenericBodyMatch,
        MatchPredicate'MatchSet(), OutputConfig(), OutputSink(),
        OutputSink'OutputSinkType(..), _OutputSink'StreamingAdmin,
        _OutputSink'FilePerTap, _OutputSink'StreamingGrpc,
        OutputSink'Format(..), OutputSink'Format(),
        OutputSink'Format'UnrecognizedValue, StreamingAdminSink(),
        StreamingGrpcSink(), TapConfig()
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
import qualified Proto.Envoy.Config.Common.Matcher.V3.Matcher
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.pathPrefix' @:: Lens' FilePerTapSink Data.Text.Text@ -}
data FilePerTapSink
  = FilePerTapSink'_constructor {_FilePerTapSink'pathPrefix :: !Data.Text.Text,
                                 _FilePerTapSink'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilePerTapSink where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilePerTapSink "pathPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilePerTapSink'pathPrefix
           (\ x__ y__ -> x__ {_FilePerTapSink'pathPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilePerTapSink where
  messageName _ = Data.Text.pack "envoy.config.tap.v3.FilePerTapSink"
  packedMessageDescriptor _
    = "\n\
      \\SOFilePerTapSink\DC2(\n\
      \\vpath_prefix\CAN\SOH \SOH(\tR\n\
      \pathPrefixB\a\250B\EOTr\STX\DLE\SOH:/\154\197\136\RS*\n\
      \(envoy.service.tap.v2alpha.FilePerTapSink"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pathPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pathPrefix")) ::
              Data.ProtoLens.FieldDescriptor FilePerTapSink
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pathPrefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilePerTapSink'_unknownFields
        (\ x__ y__ -> x__ {_FilePerTapSink'_unknownFields = y__})
  defMessage
    = FilePerTapSink'_constructor
        {_FilePerTapSink'pathPrefix = Data.ProtoLens.fieldDefault,
         _FilePerTapSink'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilePerTapSink
          -> Data.ProtoLens.Encoding.Bytes.Parser FilePerTapSink
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
                                       "path_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pathPrefix") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FilePerTapSink"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"pathPrefix") _x
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
instance Control.DeepSeq.NFData FilePerTapSink where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilePerTapSink'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FilePerTapSink'pathPrefix x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.bytesLimit' @:: Lens' HttpGenericBodyMatch Data.Word.Word32@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.patterns' @:: Lens' HttpGenericBodyMatch [HttpGenericBodyMatch'GenericTextMatch]@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.vec'patterns' @:: Lens' HttpGenericBodyMatch (Data.Vector.Vector HttpGenericBodyMatch'GenericTextMatch)@ -}
data HttpGenericBodyMatch
  = HttpGenericBodyMatch'_constructor {_HttpGenericBodyMatch'bytesLimit :: !Data.Word.Word32,
                                       _HttpGenericBodyMatch'patterns :: !(Data.Vector.Vector HttpGenericBodyMatch'GenericTextMatch),
                                       _HttpGenericBodyMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpGenericBodyMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch "bytesLimit" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'bytesLimit
           (\ x__ y__ -> x__ {_HttpGenericBodyMatch'bytesLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch "patterns" [HttpGenericBodyMatch'GenericTextMatch] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'patterns
           (\ x__ y__ -> x__ {_HttpGenericBodyMatch'patterns = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch "vec'patterns" (Data.Vector.Vector HttpGenericBodyMatch'GenericTextMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'patterns
           (\ x__ y__ -> x__ {_HttpGenericBodyMatch'patterns = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpGenericBodyMatch where
  messageName _
    = Data.Text.pack "envoy.config.tap.v3.HttpGenericBodyMatch"
  packedMessageDescriptor _
    = "\n\
      \\DC4HttpGenericBodyMatch\DC2\US\n\
      \\vbytes_limit\CAN\SOH \SOH(\rR\n\
      \bytesLimit\DC2`\n\
      \\bpatterns\CAN\STX \ETX(\v2:.envoy.config.tap.v3.HttpGenericBodyMatch.GenericTextMatchR\bpatternsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB{\n\
      \\DLEGenericTextMatch\DC2,\n\
      \\fstring_match\CAN\SOH \SOH(\tH\NULR\vstringMatchB\a\250B\EOTr\STX\DLE\SOH\DC2,\n\
      \\fbinary_match\CAN\STX \SOH(\fH\NULR\vbinaryMatchB\a\250B\EOTz\STX\DLE\SOHB\v\n\
      \\EOTrule\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytesLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bytesLimit")) ::
              Data.ProtoLens.FieldDescriptor HttpGenericBodyMatch
        patterns__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "patterns"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpGenericBodyMatch'GenericTextMatch)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"patterns")) ::
              Data.ProtoLens.FieldDescriptor HttpGenericBodyMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytesLimit__field_descriptor),
           (Data.ProtoLens.Tag 2, patterns__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpGenericBodyMatch'_unknownFields
        (\ x__ y__ -> x__ {_HttpGenericBodyMatch'_unknownFields = y__})
  defMessage
    = HttpGenericBodyMatch'_constructor
        {_HttpGenericBodyMatch'bytesLimit = Data.ProtoLens.fieldDefault,
         _HttpGenericBodyMatch'patterns = Data.Vector.Generic.empty,
         _HttpGenericBodyMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpGenericBodyMatch
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HttpGenericBodyMatch'GenericTextMatch
             -> Data.ProtoLens.Encoding.Bytes.Parser HttpGenericBodyMatch
        loop x mutable'patterns
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'patterns <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'patterns)
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
                              (Data.ProtoLens.Field.field @"vec'patterns") frozen'patterns x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bytes_limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesLimit") y x)
                                  mutable'patterns
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "patterns"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'patterns y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'patterns
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'patterns <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'patterns)
          "HttpGenericBodyMatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"bytesLimit") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'patterns") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HttpGenericBodyMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpGenericBodyMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpGenericBodyMatch'bytesLimit x__)
                (Control.DeepSeq.deepseq (_HttpGenericBodyMatch'patterns x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'rule' @:: Lens' HttpGenericBodyMatch'GenericTextMatch (Prelude.Maybe HttpGenericBodyMatch'GenericTextMatch'Rule)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'stringMatch' @:: Lens' HttpGenericBodyMatch'GenericTextMatch (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.stringMatch' @:: Lens' HttpGenericBodyMatch'GenericTextMatch Data.Text.Text@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'binaryMatch' @:: Lens' HttpGenericBodyMatch'GenericTextMatch (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.binaryMatch' @:: Lens' HttpGenericBodyMatch'GenericTextMatch Data.ByteString.ByteString@ -}
data HttpGenericBodyMatch'GenericTextMatch
  = HttpGenericBodyMatch'GenericTextMatch'_constructor {_HttpGenericBodyMatch'GenericTextMatch'rule :: !(Prelude.Maybe HttpGenericBodyMatch'GenericTextMatch'Rule),
                                                        _HttpGenericBodyMatch'GenericTextMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpGenericBodyMatch'GenericTextMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HttpGenericBodyMatch'GenericTextMatch'Rule
  = HttpGenericBodyMatch'GenericTextMatch'StringMatch !Data.Text.Text |
    HttpGenericBodyMatch'GenericTextMatch'BinaryMatch !Data.ByteString.ByteString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch'GenericTextMatch "maybe'rule" (Prelude.Maybe HttpGenericBodyMatch'GenericTextMatch'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'GenericTextMatch'rule
           (\ x__ y__
              -> x__ {_HttpGenericBodyMatch'GenericTextMatch'rule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch'GenericTextMatch "maybe'stringMatch" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'GenericTextMatch'rule
           (\ x__ y__
              -> x__ {_HttpGenericBodyMatch'GenericTextMatch'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'StringMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   HttpGenericBodyMatch'GenericTextMatch'StringMatch y__))
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch'GenericTextMatch "stringMatch" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'GenericTextMatch'rule
           (\ x__ y__
              -> x__ {_HttpGenericBodyMatch'GenericTextMatch'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'StringMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      HttpGenericBodyMatch'GenericTextMatch'StringMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch'GenericTextMatch "maybe'binaryMatch" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'GenericTextMatch'rule
           (\ x__ y__
              -> x__ {_HttpGenericBodyMatch'GenericTextMatch'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'BinaryMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   HttpGenericBodyMatch'GenericTextMatch'BinaryMatch y__))
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch'GenericTextMatch "binaryMatch" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'GenericTextMatch'rule
           (\ x__ y__
              -> x__ {_HttpGenericBodyMatch'GenericTextMatch'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'BinaryMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      HttpGenericBodyMatch'GenericTextMatch'BinaryMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message HttpGenericBodyMatch'GenericTextMatch where
  messageName _
    = Data.Text.pack
        "envoy.config.tap.v3.HttpGenericBodyMatch.GenericTextMatch"
  packedMessageDescriptor _
    = "\n\
      \\DLEGenericTextMatch\DC2,\n\
      \\fstring_match\CAN\SOH \SOH(\tH\NULR\vstringMatchB\a\250B\EOTr\STX\DLE\SOH\DC2,\n\
      \\fbinary_match\CAN\STX \SOH(\fH\NULR\vbinaryMatchB\a\250B\EOTz\STX\DLE\SOHB\v\n\
      \\EOTrule\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stringMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_match"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringMatch")) ::
              Data.ProtoLens.FieldDescriptor HttpGenericBodyMatch'GenericTextMatch
        binaryMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "binary_match"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'binaryMatch")) ::
              Data.ProtoLens.FieldDescriptor HttpGenericBodyMatch'GenericTextMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stringMatch__field_descriptor),
           (Data.ProtoLens.Tag 2, binaryMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpGenericBodyMatch'GenericTextMatch'_unknownFields
        (\ x__ y__
           -> x__
                {_HttpGenericBodyMatch'GenericTextMatch'_unknownFields = y__})
  defMessage
    = HttpGenericBodyMatch'GenericTextMatch'_constructor
        {_HttpGenericBodyMatch'GenericTextMatch'rule = Prelude.Nothing,
         _HttpGenericBodyMatch'GenericTextMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpGenericBodyMatch'GenericTextMatch
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpGenericBodyMatch'GenericTextMatch
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
                                       "string_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringMatch") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "binary_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"binaryMatch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GenericTextMatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rule") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'StringMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'BinaryMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HttpGenericBodyMatch'GenericTextMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpGenericBodyMatch'GenericTextMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpGenericBodyMatch'GenericTextMatch'rule x__) ())
instance Control.DeepSeq.NFData HttpGenericBodyMatch'GenericTextMatch'Rule where
  rnf (HttpGenericBodyMatch'GenericTextMatch'StringMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (HttpGenericBodyMatch'GenericTextMatch'BinaryMatch x__)
    = Control.DeepSeq.rnf x__
_HttpGenericBodyMatch'GenericTextMatch'StringMatch ::
  Data.ProtoLens.Prism.Prism' HttpGenericBodyMatch'GenericTextMatch'Rule Data.Text.Text
_HttpGenericBodyMatch'GenericTextMatch'StringMatch
  = Data.ProtoLens.Prism.prism'
      HttpGenericBodyMatch'GenericTextMatch'StringMatch
      (\ p__
         -> case p__ of
              (HttpGenericBodyMatch'GenericTextMatch'StringMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpGenericBodyMatch'GenericTextMatch'BinaryMatch ::
  Data.ProtoLens.Prism.Prism' HttpGenericBodyMatch'GenericTextMatch'Rule Data.ByteString.ByteString
_HttpGenericBodyMatch'GenericTextMatch'BinaryMatch
  = Data.ProtoLens.Prism.prism'
      HttpGenericBodyMatch'GenericTextMatch'BinaryMatch
      (\ p__
         -> case p__ of
              (HttpGenericBodyMatch'GenericTextMatch'BinaryMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.headers' @:: Lens' HttpHeadersMatch [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher]@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.vec'headers' @:: Lens' HttpHeadersMatch (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@ -}
data HttpHeadersMatch
  = HttpHeadersMatch'_constructor {_HttpHeadersMatch'headers :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher),
                                   _HttpHeadersMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpHeadersMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpHeadersMatch "headers" [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeadersMatch'headers
           (\ x__ y__ -> x__ {_HttpHeadersMatch'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpHeadersMatch "vec'headers" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeadersMatch'headers
           (\ x__ y__ -> x__ {_HttpHeadersMatch'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpHeadersMatch where
  messageName _
    = Data.Text.pack "envoy.config.tap.v3.HttpHeadersMatch"
  packedMessageDescriptor _
    = "\n\
      \\DLEHttpHeadersMatch\DC2>\n\
      \\aheaders\CAN\SOH \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders:1\154\197\136\RS,\n\
      \*envoy.service.tap.v2alpha.HttpHeadersMatch"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor HttpHeadersMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpHeadersMatch'_unknownFields
        (\ x__ y__ -> x__ {_HttpHeadersMatch'_unknownFields = y__})
  defMessage
    = HttpHeadersMatch'_constructor
        {_HttpHeadersMatch'headers = Data.Vector.Generic.empty,
         _HttpHeadersMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpHeadersMatch
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser HttpHeadersMatch
        loop x mutable'headers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'headers)
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
                              (Data.ProtoLens.Field.field @"vec'headers") frozen'headers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'headers y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'headers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'headers)
          "HttpHeadersMatch"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'headers") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HttpHeadersMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpHeadersMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HttpHeadersMatch'headers x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'rule' @:: Lens' MatchPredicate (Prelude.Maybe MatchPredicate'Rule)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'orMatch' @:: Lens' MatchPredicate (Prelude.Maybe MatchPredicate'MatchSet)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.orMatch' @:: Lens' MatchPredicate MatchPredicate'MatchSet@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'andMatch' @:: Lens' MatchPredicate (Prelude.Maybe MatchPredicate'MatchSet)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.andMatch' @:: Lens' MatchPredicate MatchPredicate'MatchSet@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'notMatch' @:: Lens' MatchPredicate (Prelude.Maybe MatchPredicate)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.notMatch' @:: Lens' MatchPredicate MatchPredicate@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'anyMatch' @:: Lens' MatchPredicate (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.anyMatch' @:: Lens' MatchPredicate Prelude.Bool@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'httpRequestHeadersMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpHeadersMatch)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.httpRequestHeadersMatch' @:: Lens' MatchPredicate HttpHeadersMatch@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'httpRequestTrailersMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpHeadersMatch)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.httpRequestTrailersMatch' @:: Lens' MatchPredicate HttpHeadersMatch@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'httpResponseHeadersMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpHeadersMatch)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.httpResponseHeadersMatch' @:: Lens' MatchPredicate HttpHeadersMatch@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'httpResponseTrailersMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpHeadersMatch)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.httpResponseTrailersMatch' @:: Lens' MatchPredicate HttpHeadersMatch@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'httpRequestGenericBodyMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpGenericBodyMatch)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.httpRequestGenericBodyMatch' @:: Lens' MatchPredicate HttpGenericBodyMatch@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'httpResponseGenericBodyMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpGenericBodyMatch)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.httpResponseGenericBodyMatch' @:: Lens' MatchPredicate HttpGenericBodyMatch@ -}
data MatchPredicate
  = MatchPredicate'_constructor {_MatchPredicate'rule :: !(Prelude.Maybe MatchPredicate'Rule),
                                 _MatchPredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MatchPredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data MatchPredicate'Rule
  = MatchPredicate'OrMatch !MatchPredicate'MatchSet |
    MatchPredicate'AndMatch !MatchPredicate'MatchSet |
    MatchPredicate'NotMatch !MatchPredicate |
    MatchPredicate'AnyMatch !Prelude.Bool |
    MatchPredicate'HttpRequestHeadersMatch !HttpHeadersMatch |
    MatchPredicate'HttpRequestTrailersMatch !HttpHeadersMatch |
    MatchPredicate'HttpResponseHeadersMatch !HttpHeadersMatch |
    MatchPredicate'HttpResponseTrailersMatch !HttpHeadersMatch |
    MatchPredicate'HttpRequestGenericBodyMatch !HttpGenericBodyMatch |
    MatchPredicate'HttpResponseGenericBodyMatch !HttpGenericBodyMatch
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'rule" (Prelude.Maybe MatchPredicate'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'orMatch" (Prelude.Maybe MatchPredicate'MatchSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'OrMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MatchPredicate'OrMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "orMatch" MatchPredicate'MatchSet where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'OrMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MatchPredicate'OrMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'andMatch" (Prelude.Maybe MatchPredicate'MatchSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'AndMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MatchPredicate'AndMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "andMatch" MatchPredicate'MatchSet where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'AndMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MatchPredicate'AndMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'notMatch" (Prelude.Maybe MatchPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'NotMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MatchPredicate'NotMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "notMatch" MatchPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'NotMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MatchPredicate'NotMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'anyMatch" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'AnyMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MatchPredicate'AnyMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "anyMatch" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'AnyMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MatchPredicate'AnyMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpRequestHeadersMatch" (Prelude.Maybe HttpHeadersMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpRequestHeadersMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpRequestHeadersMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpRequestHeadersMatch" HttpHeadersMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpRequestHeadersMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpRequestHeadersMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpRequestTrailersMatch" (Prelude.Maybe HttpHeadersMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpRequestTrailersMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpRequestTrailersMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpRequestTrailersMatch" HttpHeadersMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpRequestTrailersMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpRequestTrailersMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpResponseHeadersMatch" (Prelude.Maybe HttpHeadersMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpResponseHeadersMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpResponseHeadersMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpResponseHeadersMatch" HttpHeadersMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpResponseHeadersMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpResponseHeadersMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpResponseTrailersMatch" (Prelude.Maybe HttpHeadersMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpResponseTrailersMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpResponseTrailersMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpResponseTrailersMatch" HttpHeadersMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpResponseTrailersMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpResponseTrailersMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpRequestGenericBodyMatch" (Prelude.Maybe HttpGenericBodyMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpRequestGenericBodyMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpRequestGenericBodyMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpRequestGenericBodyMatch" HttpGenericBodyMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpRequestGenericBodyMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpRequestGenericBodyMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpResponseGenericBodyMatch" (Prelude.Maybe HttpGenericBodyMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpResponseGenericBodyMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpResponseGenericBodyMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpResponseGenericBodyMatch" HttpGenericBodyMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpResponseGenericBodyMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpResponseGenericBodyMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message MatchPredicate where
  messageName _ = Data.Text.pack "envoy.config.tap.v3.MatchPredicate"
  packedMessageDescriptor _
    = "\n\
      \\SOMatchPredicate\DC2I\n\
      \\bor_match\CAN\SOH \SOH(\v2,.envoy.config.tap.v3.MatchPredicate.MatchSetH\NULR\aorMatch\DC2K\n\
      \\tand_match\CAN\STX \SOH(\v2,.envoy.config.tap.v3.MatchPredicate.MatchSetH\NULR\bandMatch\DC2B\n\
      \\tnot_match\CAN\ETX \SOH(\v2#.envoy.config.tap.v3.MatchPredicateH\NULR\bnotMatch\DC2&\n\
      \\tany_match\CAN\EOT \SOH(\bH\NULR\banyMatchB\a\250B\EOTj\STX\b\SOH\DC2d\n\
      \\SUBhttp_request_headers_match\CAN\ENQ \SOH(\v2%.envoy.config.tap.v3.HttpHeadersMatchH\NULR\ETBhttpRequestHeadersMatch\DC2f\n\
      \\ESChttp_request_trailers_match\CAN\ACK \SOH(\v2%.envoy.config.tap.v3.HttpHeadersMatchH\NULR\CANhttpRequestTrailersMatch\DC2f\n\
      \\ESChttp_response_headers_match\CAN\a \SOH(\v2%.envoy.config.tap.v3.HttpHeadersMatchH\NULR\CANhttpResponseHeadersMatch\DC2h\n\
      \\FShttp_response_trailers_match\CAN\b \SOH(\v2%.envoy.config.tap.v3.HttpHeadersMatchH\NULR\EMhttpResponseTrailersMatch\DC2q\n\
      \\UShttp_request_generic_body_match\CAN\t \SOH(\v2).envoy.config.tap.v3.HttpGenericBodyMatchH\NULR\ESChttpRequestGenericBodyMatch\DC2s\n\
      \ http_response_generic_body_match\CAN\n\
      \ \SOH(\v2).envoy.config.tap.v3.HttpGenericBodyMatchH\NULR\FShttpResponseGenericBodyMatch\SUB\137\SOH\n\
      \\bMatchSet\DC2C\n\
      \\ENQrules\CAN\SOH \ETX(\v2#.envoy.config.tap.v3.MatchPredicateR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\STX:8\154\197\136\RS3\n\
      \1envoy.service.tap.v2alpha.MatchPredicate.MatchSetB\v\n\
      \\EOTrule\DC2\ETX\248B\SOH:/\154\197\136\RS*\n\
      \(envoy.service.tap.v2alpha.MatchPredicate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        orMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "or_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MatchPredicate'MatchSet)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'orMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        andMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "and_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MatchPredicate'MatchSet)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'andMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        notMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MatchPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'notMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        anyMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any_match"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'anyMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpRequestHeadersMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_request_headers_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeadersMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpRequestHeadersMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpRequestTrailersMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_request_trailers_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeadersMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpRequestTrailersMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpResponseHeadersMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_response_headers_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeadersMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpResponseHeadersMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpResponseTrailersMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_response_trailers_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeadersMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpResponseTrailersMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpRequestGenericBodyMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_request_generic_body_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpGenericBodyMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'httpRequestGenericBodyMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpResponseGenericBodyMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_response_generic_body_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpGenericBodyMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'httpResponseGenericBodyMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, orMatch__field_descriptor),
           (Data.ProtoLens.Tag 2, andMatch__field_descriptor),
           (Data.ProtoLens.Tag 3, notMatch__field_descriptor),
           (Data.ProtoLens.Tag 4, anyMatch__field_descriptor),
           (Data.ProtoLens.Tag 5, httpRequestHeadersMatch__field_descriptor),
           (Data.ProtoLens.Tag 6, httpRequestTrailersMatch__field_descriptor),
           (Data.ProtoLens.Tag 7, httpResponseHeadersMatch__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            httpResponseTrailersMatch__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            httpRequestGenericBodyMatch__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            httpResponseGenericBodyMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MatchPredicate'_unknownFields
        (\ x__ y__ -> x__ {_MatchPredicate'_unknownFields = y__})
  defMessage
    = MatchPredicate'_constructor
        {_MatchPredicate'rule = Prelude.Nothing,
         _MatchPredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MatchPredicate
          -> Data.ProtoLens.Encoding.Bytes.Parser MatchPredicate
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
                                       "or_match"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"orMatch") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "and_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"andMatch") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "not_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"notMatch") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "any_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"anyMatch") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_request_headers_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpRequestHeadersMatch") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_request_trailers_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpRequestTrailersMatch") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_response_headers_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpResponseHeadersMatch") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_response_trailers_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpResponseTrailersMatch") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_request_generic_body_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpRequestGenericBodyMatch")
                                     y
                                     x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_response_generic_body_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpResponseGenericBodyMatch")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MatchPredicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rule") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (MatchPredicate'OrMatch v))
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
                (Prelude.Just (MatchPredicate'AndMatch v))
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
                (Prelude.Just (MatchPredicate'NotMatch v))
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
                (Prelude.Just (MatchPredicate'AnyMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (MatchPredicate'HttpRequestHeadersMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MatchPredicate'HttpRequestTrailersMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MatchPredicate'HttpResponseHeadersMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MatchPredicate'HttpResponseTrailersMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MatchPredicate'HttpRequestGenericBodyMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MatchPredicate'HttpResponseGenericBodyMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
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
instance Control.DeepSeq.NFData MatchPredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MatchPredicate'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MatchPredicate'rule x__) ())
instance Control.DeepSeq.NFData MatchPredicate'Rule where
  rnf (MatchPredicate'OrMatch x__) = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'AndMatch x__) = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'NotMatch x__) = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'AnyMatch x__) = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpRequestHeadersMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpRequestTrailersMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpResponseHeadersMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpResponseTrailersMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpRequestGenericBodyMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpResponseGenericBodyMatch x__)
    = Control.DeepSeq.rnf x__
_MatchPredicate'OrMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule MatchPredicate'MatchSet
_MatchPredicate'OrMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'OrMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'OrMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'AndMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule MatchPredicate'MatchSet
_MatchPredicate'AndMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'AndMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'AndMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'NotMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule MatchPredicate
_MatchPredicate'NotMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'NotMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'NotMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'AnyMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule Prelude.Bool
_MatchPredicate'AnyMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'AnyMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'AnyMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpRequestHeadersMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpHeadersMatch
_MatchPredicate'HttpRequestHeadersMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpRequestHeadersMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpRequestHeadersMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpRequestTrailersMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpHeadersMatch
_MatchPredicate'HttpRequestTrailersMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpRequestTrailersMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpRequestTrailersMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpResponseHeadersMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpHeadersMatch
_MatchPredicate'HttpResponseHeadersMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpResponseHeadersMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpResponseHeadersMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpResponseTrailersMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpHeadersMatch
_MatchPredicate'HttpResponseTrailersMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpResponseTrailersMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpResponseTrailersMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpRequestGenericBodyMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpGenericBodyMatch
_MatchPredicate'HttpRequestGenericBodyMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpRequestGenericBodyMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpRequestGenericBodyMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpResponseGenericBodyMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpGenericBodyMatch
_MatchPredicate'HttpResponseGenericBodyMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpResponseGenericBodyMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpResponseGenericBodyMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.rules' @:: Lens' MatchPredicate'MatchSet [MatchPredicate]@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.vec'rules' @:: Lens' MatchPredicate'MatchSet (Data.Vector.Vector MatchPredicate)@ -}
data MatchPredicate'MatchSet
  = MatchPredicate'MatchSet'_constructor {_MatchPredicate'MatchSet'rules :: !(Data.Vector.Vector MatchPredicate),
                                          _MatchPredicate'MatchSet'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MatchPredicate'MatchSet where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MatchPredicate'MatchSet "rules" [MatchPredicate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'MatchSet'rules
           (\ x__ y__ -> x__ {_MatchPredicate'MatchSet'rules = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MatchPredicate'MatchSet "vec'rules" (Data.Vector.Vector MatchPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'MatchSet'rules
           (\ x__ y__ -> x__ {_MatchPredicate'MatchSet'rules = y__}))
        Prelude.id
instance Data.ProtoLens.Message MatchPredicate'MatchSet where
  messageName _
    = Data.Text.pack "envoy.config.tap.v3.MatchPredicate.MatchSet"
  packedMessageDescriptor _
    = "\n\
      \\bMatchSet\DC2C\n\
      \\ENQrules\CAN\SOH \ETX(\v2#.envoy.config.tap.v3.MatchPredicateR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\STX:8\154\197\136\RS3\n\
      \1envoy.service.tap.v2alpha.MatchPredicate.MatchSet"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MatchPredicate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rules")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate'MatchSet
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, rules__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MatchPredicate'MatchSet'_unknownFields
        (\ x__ y__ -> x__ {_MatchPredicate'MatchSet'_unknownFields = y__})
  defMessage
    = MatchPredicate'MatchSet'_constructor
        {_MatchPredicate'MatchSet'rules = Data.Vector.Generic.empty,
         _MatchPredicate'MatchSet'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MatchPredicate'MatchSet
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MatchPredicate
             -> Data.ProtoLens.Encoding.Bytes.Parser MatchPredicate'MatchSet
        loop x mutable'rules
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'rules)
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
                              (Data.ProtoLens.Field.field @"vec'rules") frozen'rules x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rules"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rules y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rules
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rules)
          "MatchSet"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rules") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MatchPredicate'MatchSet where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MatchPredicate'MatchSet'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MatchPredicate'MatchSet'rules x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.sinks' @:: Lens' OutputConfig [OutputSink]@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.vec'sinks' @:: Lens' OutputConfig (Data.Vector.Vector OutputSink)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maxBufferedRxBytes' @:: Lens' OutputConfig Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'maxBufferedRxBytes' @:: Lens' OutputConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maxBufferedTxBytes' @:: Lens' OutputConfig Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'maxBufferedTxBytes' @:: Lens' OutputConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.streaming' @:: Lens' OutputConfig Prelude.Bool@ -}
data OutputConfig
  = OutputConfig'_constructor {_OutputConfig'sinks :: !(Data.Vector.Vector OutputSink),
                               _OutputConfig'maxBufferedRxBytes :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                               _OutputConfig'maxBufferedTxBytes :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                               _OutputConfig'streaming :: !Prelude.Bool,
                               _OutputConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OutputConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OutputConfig "sinks" [OutputSink] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputConfig'sinks (\ x__ y__ -> x__ {_OutputConfig'sinks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OutputConfig "vec'sinks" (Data.Vector.Vector OutputSink) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputConfig'sinks (\ x__ y__ -> x__ {_OutputConfig'sinks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutputConfig "maxBufferedRxBytes" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputConfig'maxBufferedRxBytes
           (\ x__ y__ -> x__ {_OutputConfig'maxBufferedRxBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutputConfig "maybe'maxBufferedRxBytes" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputConfig'maxBufferedRxBytes
           (\ x__ y__ -> x__ {_OutputConfig'maxBufferedRxBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutputConfig "maxBufferedTxBytes" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputConfig'maxBufferedTxBytes
           (\ x__ y__ -> x__ {_OutputConfig'maxBufferedTxBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutputConfig "maybe'maxBufferedTxBytes" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputConfig'maxBufferedTxBytes
           (\ x__ y__ -> x__ {_OutputConfig'maxBufferedTxBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutputConfig "streaming" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputConfig'streaming
           (\ x__ y__ -> x__ {_OutputConfig'streaming = y__}))
        Prelude.id
instance Data.ProtoLens.Message OutputConfig where
  messageName _ = Data.Text.pack "envoy.config.tap.v3.OutputConfig"
  packedMessageDescriptor _
    = "\n\
      \\fOutputConfig\DC2A\n\
      \\ENQsinks\CAN\SOH \ETX(\v2\US.envoy.config.tap.v3.OutputSinkR\ENQsinksB\n\
      \\250B\a\146\SOH\EOT\b\SOH\DLE\SOH\DC2O\n\
      \\NAKmax_buffered_rx_bytes\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxBufferedRxBytes\DC2O\n\
      \\NAKmax_buffered_tx_bytes\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxBufferedTxBytes\DC2\FS\n\
      \\tstreaming\CAN\EOT \SOH(\bR\tstreaming:-\154\197\136\RS(\n\
      \&envoy.service.tap.v2alpha.OutputConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sinks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sinks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OutputSink)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"sinks")) ::
              Data.ProtoLens.FieldDescriptor OutputConfig
        maxBufferedRxBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_buffered_rx_bytes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxBufferedRxBytes")) ::
              Data.ProtoLens.FieldDescriptor OutputConfig
        maxBufferedTxBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_buffered_tx_bytes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxBufferedTxBytes")) ::
              Data.ProtoLens.FieldDescriptor OutputConfig
        streaming__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "streaming"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"streaming")) ::
              Data.ProtoLens.FieldDescriptor OutputConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sinks__field_descriptor),
           (Data.ProtoLens.Tag 2, maxBufferedRxBytes__field_descriptor),
           (Data.ProtoLens.Tag 3, maxBufferedTxBytes__field_descriptor),
           (Data.ProtoLens.Tag 4, streaming__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OutputConfig'_unknownFields
        (\ x__ y__ -> x__ {_OutputConfig'_unknownFields = y__})
  defMessage
    = OutputConfig'_constructor
        {_OutputConfig'sinks = Data.Vector.Generic.empty,
         _OutputConfig'maxBufferedRxBytes = Prelude.Nothing,
         _OutputConfig'maxBufferedTxBytes = Prelude.Nothing,
         _OutputConfig'streaming = Data.ProtoLens.fieldDefault,
         _OutputConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OutputConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld OutputSink
             -> Data.ProtoLens.Encoding.Bytes.Parser OutputConfig
        loop x mutable'sinks
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'sinks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'sinks)
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
                              (Data.ProtoLens.Field.field @"vec'sinks") frozen'sinks x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "sinks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'sinks y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_buffered_rx_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxBufferedRxBytes") y x)
                                  mutable'sinks
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_buffered_tx_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxBufferedTxBytes") y x)
                                  mutable'sinks
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "streaming"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"streaming") y x)
                                  mutable'sinks
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'sinks
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'sinks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'sinks)
          "OutputConfig"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'sinks") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'maxBufferedRxBytes") _x
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
                          (Data.ProtoLens.Field.field @"maybe'maxBufferedTxBytes") _x
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"streaming") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData OutputConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OutputConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OutputConfig'sinks x__)
                (Control.DeepSeq.deepseq
                   (_OutputConfig'maxBufferedRxBytes x__)
                   (Control.DeepSeq.deepseq
                      (_OutputConfig'maxBufferedTxBytes x__)
                      (Control.DeepSeq.deepseq (_OutputConfig'streaming x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.format' @:: Lens' OutputSink OutputSink'Format@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'outputSinkType' @:: Lens' OutputSink (Prelude.Maybe OutputSink'OutputSinkType)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'streamingAdmin' @:: Lens' OutputSink (Prelude.Maybe StreamingAdminSink)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.streamingAdmin' @:: Lens' OutputSink StreamingAdminSink@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'filePerTap' @:: Lens' OutputSink (Prelude.Maybe FilePerTapSink)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.filePerTap' @:: Lens' OutputSink FilePerTapSink@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'streamingGrpc' @:: Lens' OutputSink (Prelude.Maybe StreamingGrpcSink)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.streamingGrpc' @:: Lens' OutputSink StreamingGrpcSink@ -}
data OutputSink
  = OutputSink'_constructor {_OutputSink'format :: !OutputSink'Format,
                             _OutputSink'outputSinkType :: !(Prelude.Maybe OutputSink'OutputSinkType),
                             _OutputSink'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OutputSink where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data OutputSink'OutputSinkType
  = OutputSink'StreamingAdmin !StreamingAdminSink |
    OutputSink'FilePerTap !FilePerTapSink |
    OutputSink'StreamingGrpc !StreamingGrpcSink
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField OutputSink "format" OutputSink'Format where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputSink'format (\ x__ y__ -> x__ {_OutputSink'format = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutputSink "maybe'outputSinkType" (Prelude.Maybe OutputSink'OutputSinkType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputSink'outputSinkType
           (\ x__ y__ -> x__ {_OutputSink'outputSinkType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutputSink "maybe'streamingAdmin" (Prelude.Maybe StreamingAdminSink) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputSink'outputSinkType
           (\ x__ y__ -> x__ {_OutputSink'outputSinkType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (OutputSink'StreamingAdmin x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap OutputSink'StreamingAdmin y__))
instance Data.ProtoLens.Field.HasField OutputSink "streamingAdmin" StreamingAdminSink where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputSink'outputSinkType
           (\ x__ y__ -> x__ {_OutputSink'outputSinkType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (OutputSink'StreamingAdmin x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap OutputSink'StreamingAdmin y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField OutputSink "maybe'filePerTap" (Prelude.Maybe FilePerTapSink) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputSink'outputSinkType
           (\ x__ y__ -> x__ {_OutputSink'outputSinkType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (OutputSink'FilePerTap x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap OutputSink'FilePerTap y__))
instance Data.ProtoLens.Field.HasField OutputSink "filePerTap" FilePerTapSink where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputSink'outputSinkType
           (\ x__ y__ -> x__ {_OutputSink'outputSinkType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (OutputSink'FilePerTap x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap OutputSink'FilePerTap y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField OutputSink "maybe'streamingGrpc" (Prelude.Maybe StreamingGrpcSink) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputSink'outputSinkType
           (\ x__ y__ -> x__ {_OutputSink'outputSinkType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (OutputSink'StreamingGrpc x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap OutputSink'StreamingGrpc y__))
instance Data.ProtoLens.Field.HasField OutputSink "streamingGrpc" StreamingGrpcSink where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutputSink'outputSinkType
           (\ x__ y__ -> x__ {_OutputSink'outputSinkType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (OutputSink'StreamingGrpc x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap OutputSink'StreamingGrpc y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message OutputSink where
  messageName _ = Data.Text.pack "envoy.config.tap.v3.OutputSink"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \OutputSink\DC2H\n\
      \\ACKformat\CAN\SOH \SOH(\SO2&.envoy.config.tap.v3.OutputSink.FormatR\ACKformatB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2R\n\
      \\SIstreaming_admin\CAN\STX \SOH(\v2'.envoy.config.tap.v3.StreamingAdminSinkH\NULR\SOstreamingAdmin\DC2G\n\
      \\ffile_per_tap\CAN\ETX \SOH(\v2#.envoy.config.tap.v3.FilePerTapSinkH\NULR\n\
      \filePerTap\DC2O\n\
      \\SOstreaming_grpc\CAN\EOT \SOH(\v2&.envoy.config.tap.v3.StreamingGrpcSinkH\NULR\rstreamingGrpc\"~\n\
      \\ACKFormat\DC2\SYN\n\
      \\DC2JSON_BODY_AS_BYTES\DLE\NUL\DC2\ETB\n\
      \\DC3JSON_BODY_AS_STRING\DLE\SOH\DC2\DLE\n\
      \\fPROTO_BINARY\DLE\STX\DC2!\n\
      \\GSPROTO_BINARY_LENGTH_DELIMITED\DLE\ETX\DC2\SO\n\
      \\n\
      \PROTO_TEXT\DLE\EOTB\ETB\n\
      \\DLEoutput_sink_type\DC2\ETX\248B\SOH:+\154\197\136\RS&\n\
      \$envoy.service.tap.v2alpha.OutputSink"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        format__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "format"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor OutputSink'Format)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"format")) ::
              Data.ProtoLens.FieldDescriptor OutputSink
        streamingAdmin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "streaming_admin"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StreamingAdminSink)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamingAdmin")) ::
              Data.ProtoLens.FieldDescriptor OutputSink
        filePerTap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "file_per_tap"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FilePerTapSink)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filePerTap")) ::
              Data.ProtoLens.FieldDescriptor OutputSink
        streamingGrpc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "streaming_grpc"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StreamingGrpcSink)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamingGrpc")) ::
              Data.ProtoLens.FieldDescriptor OutputSink
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, format__field_descriptor),
           (Data.ProtoLens.Tag 2, streamingAdmin__field_descriptor),
           (Data.ProtoLens.Tag 3, filePerTap__field_descriptor),
           (Data.ProtoLens.Tag 4, streamingGrpc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OutputSink'_unknownFields
        (\ x__ y__ -> x__ {_OutputSink'_unknownFields = y__})
  defMessage
    = OutputSink'_constructor
        {_OutputSink'format = Data.ProtoLens.fieldDefault,
         _OutputSink'outputSinkType = Prelude.Nothing,
         _OutputSink'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OutputSink -> Data.ProtoLens.Encoding.Bytes.Parser OutputSink
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
                                       "format"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"format") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "streaming_admin"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamingAdmin") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "file_per_tap"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"filePerTap") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "streaming_grpc"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamingGrpc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OutputSink"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"format") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'outputSinkType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (OutputSink'StreamingAdmin v))
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
                   (Prelude.Just (OutputSink'FilePerTap v))
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
                   (Prelude.Just (OutputSink'StreamingGrpc v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
instance Control.DeepSeq.NFData OutputSink where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OutputSink'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OutputSink'format x__)
                (Control.DeepSeq.deepseq (_OutputSink'outputSinkType x__) ()))
instance Control.DeepSeq.NFData OutputSink'OutputSinkType where
  rnf (OutputSink'StreamingAdmin x__) = Control.DeepSeq.rnf x__
  rnf (OutputSink'FilePerTap x__) = Control.DeepSeq.rnf x__
  rnf (OutputSink'StreamingGrpc x__) = Control.DeepSeq.rnf x__
_OutputSink'StreamingAdmin ::
  Data.ProtoLens.Prism.Prism' OutputSink'OutputSinkType StreamingAdminSink
_OutputSink'StreamingAdmin
  = Data.ProtoLens.Prism.prism'
      OutputSink'StreamingAdmin
      (\ p__
         -> case p__ of
              (OutputSink'StreamingAdmin p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_OutputSink'FilePerTap ::
  Data.ProtoLens.Prism.Prism' OutputSink'OutputSinkType FilePerTapSink
_OutputSink'FilePerTap
  = Data.ProtoLens.Prism.prism'
      OutputSink'FilePerTap
      (\ p__
         -> case p__ of
              (OutputSink'FilePerTap p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_OutputSink'StreamingGrpc ::
  Data.ProtoLens.Prism.Prism' OutputSink'OutputSinkType StreamingGrpcSink
_OutputSink'StreamingGrpc
  = Data.ProtoLens.Prism.prism'
      OutputSink'StreamingGrpc
      (\ p__
         -> case p__ of
              (OutputSink'StreamingGrpc p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
newtype OutputSink'Format'UnrecognizedValue
  = OutputSink'Format'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data OutputSink'Format
  = OutputSink'JSON_BODY_AS_BYTES |
    OutputSink'JSON_BODY_AS_STRING |
    OutputSink'PROTO_BINARY |
    OutputSink'PROTO_BINARY_LENGTH_DELIMITED |
    OutputSink'PROTO_TEXT |
    OutputSink'Format'Unrecognized !OutputSink'Format'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum OutputSink'Format where
  maybeToEnum 0 = Prelude.Just OutputSink'JSON_BODY_AS_BYTES
  maybeToEnum 1 = Prelude.Just OutputSink'JSON_BODY_AS_STRING
  maybeToEnum 2 = Prelude.Just OutputSink'PROTO_BINARY
  maybeToEnum 3
    = Prelude.Just OutputSink'PROTO_BINARY_LENGTH_DELIMITED
  maybeToEnum 4 = Prelude.Just OutputSink'PROTO_TEXT
  maybeToEnum k
    = Prelude.Just
        (OutputSink'Format'Unrecognized
           (OutputSink'Format'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum OutputSink'JSON_BODY_AS_BYTES = "JSON_BODY_AS_BYTES"
  showEnum OutputSink'JSON_BODY_AS_STRING = "JSON_BODY_AS_STRING"
  showEnum OutputSink'PROTO_BINARY = "PROTO_BINARY"
  showEnum OutputSink'PROTO_BINARY_LENGTH_DELIMITED
    = "PROTO_BINARY_LENGTH_DELIMITED"
  showEnum OutputSink'PROTO_TEXT = "PROTO_TEXT"
  showEnum
    (OutputSink'Format'Unrecognized (OutputSink'Format'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "JSON_BODY_AS_BYTES"
    = Prelude.Just OutputSink'JSON_BODY_AS_BYTES
    | (Prelude.==) k "JSON_BODY_AS_STRING"
    = Prelude.Just OutputSink'JSON_BODY_AS_STRING
    | (Prelude.==) k "PROTO_BINARY"
    = Prelude.Just OutputSink'PROTO_BINARY
    | (Prelude.==) k "PROTO_BINARY_LENGTH_DELIMITED"
    = Prelude.Just OutputSink'PROTO_BINARY_LENGTH_DELIMITED
    | (Prelude.==) k "PROTO_TEXT" = Prelude.Just OutputSink'PROTO_TEXT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded OutputSink'Format where
  minBound = OutputSink'JSON_BODY_AS_BYTES
  maxBound = OutputSink'PROTO_TEXT
instance Prelude.Enum OutputSink'Format where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Format: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum OutputSink'JSON_BODY_AS_BYTES = 0
  fromEnum OutputSink'JSON_BODY_AS_STRING = 1
  fromEnum OutputSink'PROTO_BINARY = 2
  fromEnum OutputSink'PROTO_BINARY_LENGTH_DELIMITED = 3
  fromEnum OutputSink'PROTO_TEXT = 4
  fromEnum
    (OutputSink'Format'Unrecognized (OutputSink'Format'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ OutputSink'PROTO_TEXT
    = Prelude.error
        "OutputSink'Format.succ: bad argument OutputSink'PROTO_TEXT. This value would be out of bounds."
  succ OutputSink'JSON_BODY_AS_BYTES = OutputSink'JSON_BODY_AS_STRING
  succ OutputSink'JSON_BODY_AS_STRING = OutputSink'PROTO_BINARY
  succ OutputSink'PROTO_BINARY
    = OutputSink'PROTO_BINARY_LENGTH_DELIMITED
  succ OutputSink'PROTO_BINARY_LENGTH_DELIMITED
    = OutputSink'PROTO_TEXT
  succ (OutputSink'Format'Unrecognized _)
    = Prelude.error
        "OutputSink'Format.succ: bad argument: unrecognized value"
  pred OutputSink'JSON_BODY_AS_BYTES
    = Prelude.error
        "OutputSink'Format.pred: bad argument OutputSink'JSON_BODY_AS_BYTES. This value would be out of bounds."
  pred OutputSink'JSON_BODY_AS_STRING = OutputSink'JSON_BODY_AS_BYTES
  pred OutputSink'PROTO_BINARY = OutputSink'JSON_BODY_AS_STRING
  pred OutputSink'PROTO_BINARY_LENGTH_DELIMITED
    = OutputSink'PROTO_BINARY
  pred OutputSink'PROTO_TEXT
    = OutputSink'PROTO_BINARY_LENGTH_DELIMITED
  pred (OutputSink'Format'Unrecognized _)
    = Prelude.error
        "OutputSink'Format.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault OutputSink'Format where
  fieldDefault = OutputSink'JSON_BODY_AS_BYTES
instance Control.DeepSeq.NFData OutputSink'Format where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
      -}
data StreamingAdminSink
  = StreamingAdminSink'_constructor {_StreamingAdminSink'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamingAdminSink where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message StreamingAdminSink where
  messageName _
    = Data.Text.pack "envoy.config.tap.v3.StreamingAdminSink"
  packedMessageDescriptor _
    = "\n\
      \\DC2StreamingAdminSink:3\154\197\136\RS.\n\
      \,envoy.service.tap.v2alpha.StreamingAdminSink"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamingAdminSink'_unknownFields
        (\ x__ y__ -> x__ {_StreamingAdminSink'_unknownFields = y__})
  defMessage
    = StreamingAdminSink'_constructor
        {_StreamingAdminSink'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamingAdminSink
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamingAdminSink
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
          (do loop Data.ProtoLens.defMessage) "StreamingAdminSink"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData StreamingAdminSink where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamingAdminSink'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.tapId' @:: Lens' StreamingGrpcSink Data.Text.Text@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.grpcService' @:: Lens' StreamingGrpcSink Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'grpcService' @:: Lens' StreamingGrpcSink (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@ -}
data StreamingGrpcSink
  = StreamingGrpcSink'_constructor {_StreamingGrpcSink'tapId :: !Data.Text.Text,
                                    _StreamingGrpcSink'grpcService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                                    _StreamingGrpcSink'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamingGrpcSink where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamingGrpcSink "tapId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingGrpcSink'tapId
           (\ x__ y__ -> x__ {_StreamingGrpcSink'tapId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamingGrpcSink "grpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingGrpcSink'grpcService
           (\ x__ y__ -> x__ {_StreamingGrpcSink'grpcService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamingGrpcSink "maybe'grpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingGrpcSink'grpcService
           (\ x__ y__ -> x__ {_StreamingGrpcSink'grpcService = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamingGrpcSink where
  messageName _
    = Data.Text.pack "envoy.config.tap.v3.StreamingGrpcSink"
  packedMessageDescriptor _
    = "\n\
      \\DC1StreamingGrpcSink\DC2\NAK\n\
      \\ACKtap_id\CAN\SOH \SOH(\tR\ENQtapId\DC2N\n\
      \\fgrpc_service\CAN\STX \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH:2\154\197\136\RS-\n\
      \+envoy.service.tap.v2alpha.StreamingGrpcSink"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tapId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tap_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tapId")) ::
              Data.ProtoLens.FieldDescriptor StreamingGrpcSink
        grpcService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcService")) ::
              Data.ProtoLens.FieldDescriptor StreamingGrpcSink
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tapId__field_descriptor),
           (Data.ProtoLens.Tag 2, grpcService__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamingGrpcSink'_unknownFields
        (\ x__ y__ -> x__ {_StreamingGrpcSink'_unknownFields = y__})
  defMessage
    = StreamingGrpcSink'_constructor
        {_StreamingGrpcSink'tapId = Data.ProtoLens.fieldDefault,
         _StreamingGrpcSink'grpcService = Prelude.Nothing,
         _StreamingGrpcSink'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamingGrpcSink
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamingGrpcSink
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
                                       "tap_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tapId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grpc_service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grpcService") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StreamingGrpcSink"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tapId") _x
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
                       (Data.ProtoLens.Field.field @"maybe'grpcService") _x
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
instance Control.DeepSeq.NFData StreamingGrpcSink where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamingGrpcSink'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamingGrpcSink'tapId x__)
                (Control.DeepSeq.deepseq (_StreamingGrpcSink'grpcService x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.matchConfig' @:: Lens' TapConfig MatchPredicate@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'matchConfig' @:: Lens' TapConfig (Prelude.Maybe MatchPredicate)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.match' @:: Lens' TapConfig Proto.Envoy.Config.Common.Matcher.V3.Matcher.MatchPredicate@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'match' @:: Lens' TapConfig (Prelude.Maybe Proto.Envoy.Config.Common.Matcher.V3.Matcher.MatchPredicate)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.outputConfig' @:: Lens' TapConfig OutputConfig@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'outputConfig' @:: Lens' TapConfig (Prelude.Maybe OutputConfig)@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.tapEnabled' @:: Lens' TapConfig Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent@
         * 'Proto.Envoy.Config.Tap.V3.Common_Fields.maybe'tapEnabled' @:: Lens' TapConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)@ -}
data TapConfig
  = TapConfig'_constructor {_TapConfig'matchConfig :: !(Prelude.Maybe MatchPredicate),
                            _TapConfig'match :: !(Prelude.Maybe Proto.Envoy.Config.Common.Matcher.V3.Matcher.MatchPredicate),
                            _TapConfig'outputConfig :: !(Prelude.Maybe OutputConfig),
                            _TapConfig'tapEnabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent),
                            _TapConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TapConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TapConfig "matchConfig" MatchPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapConfig'matchConfig
           (\ x__ y__ -> x__ {_TapConfig'matchConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TapConfig "maybe'matchConfig" (Prelude.Maybe MatchPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapConfig'matchConfig
           (\ x__ y__ -> x__ {_TapConfig'matchConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TapConfig "match" Proto.Envoy.Config.Common.Matcher.V3.Matcher.MatchPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapConfig'match (\ x__ y__ -> x__ {_TapConfig'match = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TapConfig "maybe'match" (Prelude.Maybe Proto.Envoy.Config.Common.Matcher.V3.Matcher.MatchPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapConfig'match (\ x__ y__ -> x__ {_TapConfig'match = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TapConfig "outputConfig" OutputConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapConfig'outputConfig
           (\ x__ y__ -> x__ {_TapConfig'outputConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TapConfig "maybe'outputConfig" (Prelude.Maybe OutputConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapConfig'outputConfig
           (\ x__ y__ -> x__ {_TapConfig'outputConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TapConfig "tapEnabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapConfig'tapEnabled
           (\ x__ y__ -> x__ {_TapConfig'tapEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TapConfig "maybe'tapEnabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapConfig'tapEnabled
           (\ x__ y__ -> x__ {_TapConfig'tapEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message TapConfig where
  messageName _ = Data.Text.pack "envoy.config.tap.v3.TapConfig"
  packedMessageDescriptor _
    = "\n\
      \\tTapConfig\DC2S\n\
      \\fmatch_config\CAN\SOH \SOH(\v2#.envoy.config.tap.v3.MatchPredicateR\vmatchConfigB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2D\n\
      \\ENQmatch\CAN\EOT \SOH(\v2..envoy.config.common.matcher.v3.MatchPredicateR\ENQmatch\DC2P\n\
      \\routput_config\CAN\STX \SOH(\v2!.envoy.config.tap.v3.OutputConfigR\foutputConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2O\n\
      \\vtap_enabled\CAN\ETX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\n\
      \tapEnabled:*\154\197\136\RS%\n\
      \#envoy.service.tap.v2alpha.TapConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        matchConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MatchPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'matchConfig")) ::
              Data.ProtoLens.FieldDescriptor TapConfig
        match__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Common.Matcher.V3.Matcher.MatchPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'match")) ::
              Data.ProtoLens.FieldDescriptor TapConfig
        outputConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "output_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OutputConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'outputConfig")) ::
              Data.ProtoLens.FieldDescriptor TapConfig
        tapEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tap_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tapEnabled")) ::
              Data.ProtoLens.FieldDescriptor TapConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, matchConfig__field_descriptor),
           (Data.ProtoLens.Tag 4, match__field_descriptor),
           (Data.ProtoLens.Tag 2, outputConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, tapEnabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TapConfig'_unknownFields
        (\ x__ y__ -> x__ {_TapConfig'_unknownFields = y__})
  defMessage
    = TapConfig'_constructor
        {_TapConfig'matchConfig = Prelude.Nothing,
         _TapConfig'match = Prelude.Nothing,
         _TapConfig'outputConfig = Prelude.Nothing,
         _TapConfig'tapEnabled = Prelude.Nothing,
         _TapConfig'_unknownFields = []}
  parseMessage
    = let
        loop :: TapConfig -> Data.ProtoLens.Encoding.Bytes.Parser TapConfig
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
                                       "match_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchConfig") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "match"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"match") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "output_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"outputConfig") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tap_enabled"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tapEnabled") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TapConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'matchConfig") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'match") _x
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
                          (Data.ProtoLens.Field.field @"maybe'outputConfig") _x
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
                             (Data.ProtoLens.Field.field @"maybe'tapEnabled") _x
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
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TapConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TapConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TapConfig'matchConfig x__)
                (Control.DeepSeq.deepseq
                   (_TapConfig'match x__)
                   (Control.DeepSeq.deepseq
                      (_TapConfig'outputConfig x__)
                      (Control.DeepSeq.deepseq (_TapConfig'tapEnabled x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ envoy/config/tap/v3/common.proto\DC2\DC3envoy.config.tap.v3\SUB,envoy/config/common/matcher/v3/matcher.proto\SUB\USenvoy/config/core/v3/base.proto\SUB'envoy/config/core/v3/grpc_service.proto\SUB,envoy/config/route/v3/route_components.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\245\STX\n\
    \\tTapConfig\DC2S\n\
    \\fmatch_config\CAN\SOH \SOH(\v2#.envoy.config.tap.v3.MatchPredicateR\vmatchConfigB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2D\n\
    \\ENQmatch\CAN\EOT \SOH(\v2..envoy.config.common.matcher.v3.MatchPredicateR\ENQmatch\DC2P\n\
    \\routput_config\CAN\STX \SOH(\v2!.envoy.config.tap.v3.OutputConfigR\foutputConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2O\n\
    \\vtap_enabled\CAN\ETX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\n\
    \tapEnabled:*\154\197\136\RS%\n\
    \#envoy.service.tap.v2alpha.TapConfig\"\230\b\n\
    \\SOMatchPredicate\DC2I\n\
    \\bor_match\CAN\SOH \SOH(\v2,.envoy.config.tap.v3.MatchPredicate.MatchSetH\NULR\aorMatch\DC2K\n\
    \\tand_match\CAN\STX \SOH(\v2,.envoy.config.tap.v3.MatchPredicate.MatchSetH\NULR\bandMatch\DC2B\n\
    \\tnot_match\CAN\ETX \SOH(\v2#.envoy.config.tap.v3.MatchPredicateH\NULR\bnotMatch\DC2&\n\
    \\tany_match\CAN\EOT \SOH(\bH\NULR\banyMatchB\a\250B\EOTj\STX\b\SOH\DC2d\n\
    \\SUBhttp_request_headers_match\CAN\ENQ \SOH(\v2%.envoy.config.tap.v3.HttpHeadersMatchH\NULR\ETBhttpRequestHeadersMatch\DC2f\n\
    \\ESChttp_request_trailers_match\CAN\ACK \SOH(\v2%.envoy.config.tap.v3.HttpHeadersMatchH\NULR\CANhttpRequestTrailersMatch\DC2f\n\
    \\ESChttp_response_headers_match\CAN\a \SOH(\v2%.envoy.config.tap.v3.HttpHeadersMatchH\NULR\CANhttpResponseHeadersMatch\DC2h\n\
    \\FShttp_response_trailers_match\CAN\b \SOH(\v2%.envoy.config.tap.v3.HttpHeadersMatchH\NULR\EMhttpResponseTrailersMatch\DC2q\n\
    \\UShttp_request_generic_body_match\CAN\t \SOH(\v2).envoy.config.tap.v3.HttpGenericBodyMatchH\NULR\ESChttpRequestGenericBodyMatch\DC2s\n\
    \ http_response_generic_body_match\CAN\n\
    \ \SOH(\v2).envoy.config.tap.v3.HttpGenericBodyMatchH\NULR\FShttpResponseGenericBodyMatch\SUB\137\SOH\n\
    \\bMatchSet\DC2C\n\
    \\ENQrules\CAN\SOH \ETX(\v2#.envoy.config.tap.v3.MatchPredicateR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\STX:8\154\197\136\RS3\n\
    \1envoy.service.tap.v2alpha.MatchPredicate.MatchSetB\v\n\
    \\EOTrule\DC2\ETX\248B\SOH:/\154\197\136\RS*\n\
    \(envoy.service.tap.v2alpha.MatchPredicate\"\133\SOH\n\
    \\DLEHttpHeadersMatch\DC2>\n\
    \\aheaders\CAN\SOH \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders:1\154\197\136\RS,\n\
    \*envoy.service.tap.v2alpha.HttpHeadersMatch\"\150\STX\n\
    \\DC4HttpGenericBodyMatch\DC2\US\n\
    \\vbytes_limit\CAN\SOH \SOH(\rR\n\
    \bytesLimit\DC2`\n\
    \\bpatterns\CAN\STX \ETX(\v2:.envoy.config.tap.v3.HttpGenericBodyMatch.GenericTextMatchR\bpatternsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB{\n\
    \\DLEGenericTextMatch\DC2,\n\
    \\fstring_match\CAN\SOH \SOH(\tH\NULR\vstringMatchB\a\250B\EOTr\STX\DLE\SOH\DC2,\n\
    \\fbinary_match\CAN\STX \SOH(\fH\NULR\vbinaryMatchB\a\250B\EOTz\STX\DLE\SOHB\v\n\
    \\EOTrule\DC2\ETX\248B\SOH\"\192\STX\n\
    \\fOutputConfig\DC2A\n\
    \\ENQsinks\CAN\SOH \ETX(\v2\US.envoy.config.tap.v3.OutputSinkR\ENQsinksB\n\
    \\250B\a\146\SOH\EOT\b\SOH\DLE\SOH\DC2O\n\
    \\NAKmax_buffered_rx_bytes\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxBufferedRxBytes\DC2O\n\
    \\NAKmax_buffered_tx_bytes\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxBufferedTxBytes\DC2\FS\n\
    \\tstreaming\CAN\EOT \SOH(\bR\tstreaming:-\154\197\136\RS(\n\
    \&envoy.service.tap.v2alpha.OutputConfig\"\138\EOT\n\
    \\n\
    \OutputSink\DC2H\n\
    \\ACKformat\CAN\SOH \SOH(\SO2&.envoy.config.tap.v3.OutputSink.FormatR\ACKformatB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2R\n\
    \\SIstreaming_admin\CAN\STX \SOH(\v2'.envoy.config.tap.v3.StreamingAdminSinkH\NULR\SOstreamingAdmin\DC2G\n\
    \\ffile_per_tap\CAN\ETX \SOH(\v2#.envoy.config.tap.v3.FilePerTapSinkH\NULR\n\
    \filePerTap\DC2O\n\
    \\SOstreaming_grpc\CAN\EOT \SOH(\v2&.envoy.config.tap.v3.StreamingGrpcSinkH\NULR\rstreamingGrpc\"~\n\
    \\ACKFormat\DC2\SYN\n\
    \\DC2JSON_BODY_AS_BYTES\DLE\NUL\DC2\ETB\n\
    \\DC3JSON_BODY_AS_STRING\DLE\SOH\DC2\DLE\n\
    \\fPROTO_BINARY\DLE\STX\DC2!\n\
    \\GSPROTO_BINARY_LENGTH_DELIMITED\DLE\ETX\DC2\SO\n\
    \\n\
    \PROTO_TEXT\DLE\EOTB\ETB\n\
    \\DLEoutput_sink_type\DC2\ETX\248B\SOH:+\154\197\136\RS&\n\
    \$envoy.service.tap.v2alpha.OutputSink\"I\n\
    \\DC2StreamingAdminSink:3\154\197\136\RS.\n\
    \,envoy.service.tap.v2alpha.StreamingAdminSink\"k\n\
    \\SOFilePerTapSink\DC2(\n\
    \\vpath_prefix\CAN\SOH \SOH(\tR\n\
    \pathPrefixB\a\250B\EOTr\STX\DLE\SOH:/\154\197\136\RS*\n\
    \(envoy.service.tap.v2alpha.FilePerTapSink\"\174\SOH\n\
    \\DC1StreamingGrpcSink\DC2\NAK\n\
    \\ACKtap_id\CAN\SOH \SOH(\tR\ENQtapId\DC2N\n\
    \\fgrpc_service\CAN\STX \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH:2\154\197\136\RS-\n\
    \+envoy.service.tap.v2alpha.StreamingGrpcSinkB:\n\
    \!io.envoyproxy.envoy.config.tap.v3B\vCommonProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\197W\n\
    \\a\DC2\ENQ\NUL\NUL\151\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL6\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL1\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL6\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL-\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL'\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL:\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NUL:\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC2\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC3\NULF\n\
    \\DEL\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL:\SOH\SUB\DC4 Tap configuration.\n\
    \\". [#comment:TODO(mattklein123): Rate limiting]\n\
    \2- [#protodoc-title: Common tap configuration]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\DC1\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\ESC\STX\FS,\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ESC\STX\FS,\n\
    \\189\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT#\STX$S\SUB\174\ETX The match configuration. If the configuration matches the data source being tapped, a tap will\n\
    \ occur, with the result written to the configured output.\n\
    \ Exactly one of :ref:`match <envoy_v3_api_field_config.tap.v3.TapConfig.match>` and\n\
    \ :ref:`match_config <envoy_v3_api_field_config.tap.v3.TapConfig.match_config>` must be set. If both\n\
    \ are set, the :ref:`match <envoy_v3_api_field_config.tap.v3.TapConfig.match>` will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX#\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX#\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX# !\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX$\ACKR\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\NUL\b\ETX\DC2\ETX$\a\CAN\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\242\232\128K\DC2\ETX$\SUBQ\n\
    \\188\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX+\STX-\SUB\174\ETX The match configuration. If the configuration matches the data source being tapped, a tap will\n\
    \ occur, with the result written to the configured output.\n\
    \ Exactly one of :ref:`match <envoy_v3_api_field_config.tap.v3.TapConfig.match>` and\n\
    \ :ref:`match_config <envoy_v3_api_field_config.tap.v3.TapConfig.match_config>` must be set. If both\n\
    \ are set, the :ref:`match <envoy_v3_api_field_config.tap.v3.TapConfig.match>` will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX+\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX+#(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX++,\n\
    \\179\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX/\STXO\SUB\165\SOH The tap output configuration. If a match configuration matches a data source being tapped,\n\
    \ a tap will occur and the data will be written to the configured output.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX/\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX/\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX/\US \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX/!N\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DC1\DC2\ETX/\"M\n\
    \\206\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX9\STX3\SUB\192\STX [#not-implemented-hide:] Specify if Tap matching is enabled. The % of requests\\connections for\n\
    \ which the tap matching is enabled. When not enabled, the request\\connection will not be\n\
    \ recorded.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   This field defaults to 100/:ref:`HUNDRED\n\
    \   <envoy_v3_api_enum_type.v3.FractionalPercent.DenominatorType>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX9\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX9#.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX912\n\
    \\188\SOH\n\
    \\STX\EOT\SOH\DC2\EOT?\NULo\SOH\SUB\175\SOH Tap match configuration. This is a recursive structure which allows complex nested match\n\
    \ configurations to be built using various logical operators.\n\
    \ [#next-free-field: 11]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX?\b\SYN\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT@\STXA1\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT@\STXA1\n\
    \J\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOTD\STXJ\ETX\SUB< A set of match configurations used for logical operations.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETXD\n\
    \\DC2\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\a\DC2\EOTE\EOTF<\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTE\EOTF<\n\
    \8\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETXI\EOTS\SUB) The list of rules that make up the set.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\EOT\DC2\ETXI\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ACK\DC2\ETXI\r\ESC\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETXI\FS!\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETXI$%\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\b\DC2\ETXI&R\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\NUL\b\175\b\DC2\DC2\ETXI'Q\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOTL\STXn\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETXL\b\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETXM\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETXM\EOT&\n\
    \u\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXQ\EOT\SUB\SUBh A set that describes a logical OR. If any member of the set matches, the match configuration\n\
    \ matches.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXQ\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXQ\r\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXQ\CAN\EM\n\
    \u\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXU\EOT\ESC\SUBh A set that describes a logical AND. If all members of the set match, the match configuration\n\
    \ matches.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXU\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXU\r\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXU\EM\SUB\n\
    \k\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXX\EOT!\SUB^ A negation match. The match configuration will match if the negated match condition matches.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXX\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXX\DC3\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXX\US \n\
    \9\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX[\EOT?\SUB, The match configuration will always match.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX[\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX[\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX[\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\ETX[\ETB>\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\175\b\r\DC2\ETX[\CAN=\n\
    \8\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX^\EOT4\SUB+ HTTP request headers match configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETX^\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX^\NAK/\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX^23\n\
    \9\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXa\EOT5\SUB, HTTP request trailers match configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETXa\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXa\NAK0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXa34\n\
    \9\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXd\EOT5\SUB, HTTP response headers match configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETXd\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXd\NAK0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXd34\n\
    \:\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETXg\EOT6\SUB- HTTP response trailers match configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\ETXg\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETXg\NAK1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETXg45\n\
    \=\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETXj\EOT=\SUB0 HTTP request generic body match configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\ETXj\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETXj\EM8\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETXj;<\n\
    \>\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETXm\EOT?\SUB1 HTTP response generic body match configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ACK\DC2\ETXm\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETXm\EM9\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETXm<>\n\
    \/\n\
    \\STX\EOT\STX\DC2\EOTr\NULx\SOH\SUB# HTTP headers match configuration.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXr\b\CAN\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOTs\STXt3\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOTs\STXt3\n\
    \%\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXw\STX.\SUB\CAN HTTP headers to match.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETXw\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXw\v!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXw\")\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXw,-\n\
    \\245\EOT\n\
    \\STX\EOT\ETX\DC2\ACK\132\SOH\NUL\150\SOH\SOH\SUB\230\EOT HTTP generic body match configuration.\n\
    \ List of text strings and hex strings to be located in HTTP body.\n\
    \ All specified strings must be found in the HTTP body for positive match.\n\
    \ The search may be limited to specified number of bytes from the body start.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   Searching for patterns in HTTP body is potentially cpu intensive. For each specified pattern, http body is scanned byte by byte to find a match.\n\
    \   If multiple patterns are specified, the process is repeated for each pattern. If location of a pattern is known, ``bytes_limit`` should be specified\n\
    \   to scan only part of the http body.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\132\SOH\b\FS\n\
    \\SO\n\
    \\EOT\EOT\ETX\ETX\NUL\DC2\ACK\133\SOH\STX\143\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\NUL\SOH\DC2\EOT\133\SOH\n\
    \\SUB\n\
    \\DLE\n\
    \\ACK\EOT\ETX\ETX\NUL\b\NUL\DC2\ACK\134\SOH\EOT\142\SOH\ENQ\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\b\NUL\SOH\DC2\EOT\134\SOH\n\
    \\SO\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\b\NUL\STX\DC2\EOT\135\SOH\ACK(\n\
    \\DC1\n\
    \\t\EOT\ETX\ETX\NUL\b\NUL\STX\175\b\DC2\EOT\135\SOH\ACK(\n\
    \9\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\NUL\DC2\EOT\138\SOH\ACKG\SUB) Text string to be located in HTTP body.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ENQ\DC2\EOT\138\SOH\ACK\f\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\SOH\DC2\EOT\138\SOH\r\EM\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ETX\DC2\EOT\138\SOH\FS\GS\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\b\DC2\EOT\138\SOH\RSF\n\
    \\DC2\n\
    \\n\
    \\EOT\ETX\ETX\NUL\STX\NUL\b\175\b\SO\DC2\EOT\138\SOH\USE\n\
    \?\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\SOH\DC2\EOT\141\SOH\ACKE\SUB/ Sequence of bytes to be located in HTTP body.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ENQ\DC2\EOT\141\SOH\ACK\v\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\SOH\DC2\EOT\141\SOH\f\CAN\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ETX\DC2\EOT\141\SOH\ESC\FS\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\b\DC2\EOT\141\SOH\GSD\n\
    \\DC2\n\
    \\n\
    \\EOT\ETX\ETX\NUL\STX\SOH\b\175\b\SI\DC2\EOT\141\SOH\RSC\n\
    \t\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\146\SOH\STX\EM\SUBf Limits search to specified number of bytes - default zero (no limit - match entire captured buffer).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\146\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\146\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\146\SOH\ETB\CAN\n\
    \*\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\149\SOH\STXV\SUB\FS List of patterns to match.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\EOT\149\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\EOT\149\SOH\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\149\SOH\FS$\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\149\SOH'(\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\EOT\149\SOH)U\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\SOH\b\175\b\DC2\DC2\EOT\149\SOH*T\n\
    \)\n\
    \\STX\EOT\EOT\DC2\ACK\153\SOH\NUL\180\SOH\SOH\SUB\ESC Tap output configuration.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\153\SOH\b\DC4\n\
    \\r\n\
    \\ETX\EOT\EOT\a\DC2\ACK\154\SOH\STX\155\SOH/\n\
    \\DC2\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ACK\154\SOH\STX\155\SOH/\n\
    \\164\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\159\SOH\STXZ\SUB\149\SOH Output sinks for tap data. Currently a single sink is allowed in the list. Once multiple\n\
    \ sink types are supported this constraint will be relaxed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\EOT\159\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\159\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\159\SOH\SYN\ESC\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\159\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOT\159\SOH Y\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\175\b\DC2\DC2\EOT\159\SOH!X\n\
    \\141\STX\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\165\SOH\STX8\SUB\254\SOH For buffered tapping, the maximum amount of received body that will be buffered prior to\n\
    \ truncation. If truncation occurs, the :ref:`truncated\n\
    \ <envoy_v3_api_field_data.tap.v3.Body.truncated>` field will be set. If not specified, the\n\
    \ default is 1KiB.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\165\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\165\SOH\RS3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\165\SOH67\n\
    \\144\STX\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\171\SOH\STX8\SUB\129\STX For buffered tapping, the maximum amount of transmitted body that will be buffered prior to\n\
    \ truncation. If truncation occurs, the :ref:`truncated\n\
    \ <envoy_v3_api_field_data.tap.v3.Body.truncated>` field will be set. If not specified, the\n\
    \ default is 1KiB.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\171\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\171\SOH\RS3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\171\SOH67\n\
    \\224\ETX\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\179\SOH\STX\NAK\SUB\209\ETX Indicates whether taps produce a single buffered message per tap, or multiple streamed\n\
    \ messages per tap in the emitted :ref:`TraceWrapper\n\
    \ <envoy_v3_api_msg_data.tap.v3.TraceWrapper>` messages. Note that streamed tapping does not\n\
    \ mean that no buffering takes place. Buffering may be required if data is processed before a\n\
    \ match can be determined. See the HTTP tap filter :ref:`streaming\n\
    \ <config_http_filters_tap_streaming>` documentation for more information.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\EOT\179\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\179\SOH\a\DLE\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\179\SOH\DC3\DC4\n\
    \.\n\
    \\STX\EOT\ENQ\DC2\ACK\183\SOH\NUL\249\SOH\SOH\SUB  Tap output sink configuration.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\183\SOH\b\DC2\n\
    \\r\n\
    \\ETX\EOT\ENQ\a\DC2\ACK\184\SOH\STX\185\SOH-\n\
    \\DC2\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\184\SOH\STX\185\SOH-\n\
    \\190\STX\n\
    \\EOT\EOT\ENQ\EOT\NUL\DC2\ACK\191\SOH\STX\223\SOH\ETX\SUB\173\STX Output format. All output is in the form of one or more :ref:`TraceWrapper\n\
    \ <envoy_v3_api_msg_data.tap.v3.TraceWrapper>` messages. This enumeration indicates\n\
    \ how those messages are written. Note that not all sinks support all output formats. See\n\
    \ individual sink documentation for more information.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\EOT\NUL\SOH\DC2\EOT\191\SOH\a\r\n\
    \\233\STX\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\NUL\DC2\EOT\197\SOH\EOT\ESC\SUB\216\STX Each message will be written as JSON. Any :ref:`body <envoy_v3_api_msg_data.tap.v3.Body>`\n\
    \ data will be present in the :ref:`as_bytes\n\
    \ <envoy_v3_api_field_data.tap.v3.Body.as_bytes>` field. This means that body data will be\n\
    \ base64 encoded as per the `proto3 JSON mappings\n\
    \ <https://developers.google.com/protocol-buffers/docs/proto3#json>`_.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\197\SOH\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\NUL\STX\DC2\EOT\197\SOH\EM\SUB\n\
    \\169\EOT\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\SOH\DC2\EOT\206\SOH\EOT\FS\SUB\152\EOT Each message will be written as JSON. Any :ref:`body <envoy_v3_api_msg_data.tap.v3.Body>`\n\
    \ data will be present in the :ref:`as_string\n\
    \ <envoy_v3_api_field_data.tap.v3.Body.as_string>` field. This means that body data will be\n\
    \ string encoded as per the `proto3 JSON mappings\n\
    \ <https://developers.google.com/protocol-buffers/docs/proto3#json>`_. This format type is\n\
    \ useful when it is known that that body is human readable (e.g., JSON over HTTP) and the\n\
    \ user wishes to view it directly without being forced to base64 decode the body.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\206\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SOH\STX\DC2\EOT\206\SOH\SUB\ESC\n\
    \\197\STX\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\STX\DC2\EOT\212\SOH\EOT\NAK\SUB\180\STX Binary proto format. Note that binary proto is not self-delimiting. If a sink writes\n\
    \ multiple binary messages without any length information the data stream will not be\n\
    \ useful. However, for certain sinks that are self-delimiting (e.g., one message per file)\n\
    \ this output format makes consumption simpler.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\212\SOH\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\STX\STX\DC2\EOT\212\SOH\DC3\DC4\n\
    \\160\ETX\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\ETX\DC2\EOT\219\SOH\EOT&\SUB\143\ETX Messages are written as a sequence tuples, where each tuple is the message length encoded\n\
    \ as a `protobuf 32-bit varint\n\
    \ <https://developers.google.com/protocol-buffers/docs/reference/cpp/google.protobuf.io.coded_stream>`_\n\
    \ followed by the binary message. The messages can be read back using the language specific\n\
    \ protobuf coded stream implementation to obtain the message length and the message.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\219\SOH\EOT!\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ETX\STX\DC2\EOT\219\SOH$%\n\
    \$\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\EOT\DC2\EOT\222\SOH\EOT\DC3\SUB\DC4 Text proto format.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\222\SOH\EOT\SO\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\EOT\STX\DC2\EOT\222\SOH\DC1\DC2\n\
    \#\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\226\SOH\STXC\SUB\NAK Sink output format.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\226\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\226\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\226\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\226\SOH\DC4B\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\175\b\DLE\DC2\EOT\226\SOH\NAKA\n\
    \\SO\n\
    \\EOT\EOT\ENQ\b\NUL\DC2\ACK\228\SOH\STX\248\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\SOH\DC2\EOT\228\SOH\b\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\STX\DC2\EOT\229\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\ENQ\b\NUL\STX\175\b\DC2\EOT\229\SOH\EOT&\n\
    \\176\ETX\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\239\SOH\EOT+\SUB\161\ETX Tap output will be streamed out the :http:post:`/tap` admin endpoint.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   It is only allowed to specify the streaming admin output sink if the tap is being\n\
    \   configured from the :http:post:`/tap` admin endpoint. Thus, if an extension has\n\
    \   been configured to receive tap configuration from some other source (e.g., static\n\
    \   file, XDS, etc.) configuring the streaming admin output type will fail.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\239\SOH\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\239\SOH\ETB&\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\239\SOH)*\n\
    \B\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\242\SOH\EOT$\SUB4 Tap output will be written to a file per tap sink.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\EOT\242\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\242\SOH\DC3\US\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\242\SOH\"#\n\
    \\201\SOH\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\247\SOH\EOT)\SUB\186\SOH [#not-implemented-hide:]\n\
    \ GrpcService to stream data to. The format argument must be PROTO_BINARY.\n\
    \ [#comment: TODO(samflattery): remove cleanup in uber_per_filter.cc once implemented]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\EOT\247\SOH\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\247\SOH\SYN$\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\247\SOH'(\n\
    \3\n\
    \\STX\EOT\ACK\DC2\ACK\252\SOH\NUL\255\SOH\SOH\SUB% Streaming admin sink configuration.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\252\SOH\b\SUB\n\
    \\r\n\
    \\ETX\EOT\ACK\a\DC2\ACK\253\SOH\STX\254\SOH5\n\
    \\DC2\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\ACK\253\SOH\STX\254\SOH5\n\
    \V\n\
    \\STX\EOT\a\DC2\ACK\130\STX\NUL\138\STX\SOH\SUBH The file per tap sink outputs a discrete file for every tapped stream.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\130\STX\b\SYN\n\
    \\r\n\
    \\ETX\EOT\a\a\DC2\ACK\131\STX\STX\132\STX1\n\
    \\DC2\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\ACK\131\STX\STX\132\STX1\n\
    \\222\SOH\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\137\STX\STXB\SUB\207\SOH Path prefix. The output file will be of the form <path_prefix>_<id>.pb, where <id> is an\n\
    \ identifier distinguishing the recorded trace for stream instances (the Envoy\n\
    \ connection ID, HTTP stream ID, etc.).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\137\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\137\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\137\STX\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\137\STX\EMA\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\175\b\SO\DC2\EOT\137\STX\SUB@\n\
    \v\n\
    \\STX\EOT\b\DC2\ACK\142\STX\NUL\151\STX\SOH\SUBh [#not-implemented-hide:] Streaming gRPC sink configuration sends the taps to an external gRPC\n\
    \ server.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\142\STX\b\EM\n\
    \\r\n\
    \\ETX\EOT\b\a\DC2\ACK\143\STX\STX\144\STX4\n\
    \\DC2\n\
    \\b\EOT\b\a\211\136\225\ETX\SOH\DC2\ACK\143\STX\STX\144\STX4\n\
    \W\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\147\STX\STX\DC4\SUBI Opaque identifier, that will be sent back to the streaming grpc server.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\147\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\147\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\147\STX\DC2\DC3\n\
    \@\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\150\STX\STXU\SUB2 The gRPC server that hosts the Tap Sink Service.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\150\STX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\150\STX\SYN\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\150\STX%&\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\EOT\150\STX'T\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\175\b\DC1\DC2\EOT\150\STX(Sb\ACKproto3"