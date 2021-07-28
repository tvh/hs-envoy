{- This file was auto-generated from envoy/type/matcher/v3/http_inputs.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.V3.HttpInputs (
        HttpRequestHeaderMatchInput(), HttpRequestTrailerMatchInput(),
        HttpResponseHeaderMatchInput(), HttpResponseTrailerMatchInput()
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
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.HttpInputs_Fields.headerName' @:: Lens' HttpRequestHeaderMatchInput Data.Text.Text@ -}
data HttpRequestHeaderMatchInput
  = HttpRequestHeaderMatchInput'_constructor {_HttpRequestHeaderMatchInput'headerName :: !Data.Text.Text,
                                              _HttpRequestHeaderMatchInput'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpRequestHeaderMatchInput where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpRequestHeaderMatchInput "headerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRequestHeaderMatchInput'headerName
           (\ x__ y__ -> x__ {_HttpRequestHeaderMatchInput'headerName = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpRequestHeaderMatchInput where
  messageName _
    = Data.Text.pack
        "envoy.type.matcher.v3.HttpRequestHeaderMatchInput"
  packedMessageDescriptor _
    = "\n\
      \\ESCHttpRequestHeaderMatchInput\DC2,\n\
      \\vheader_name\CAN\SOH \SOH(\tR\n\
      \headerNameB\v\250B\br\ACK\192\SOH\SOH\200\SOH\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"headerName")) ::
              Data.ProtoLens.FieldDescriptor HttpRequestHeaderMatchInput
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headerName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpRequestHeaderMatchInput'_unknownFields
        (\ x__ y__
           -> x__ {_HttpRequestHeaderMatchInput'_unknownFields = y__})
  defMessage
    = HttpRequestHeaderMatchInput'_constructor
        {_HttpRequestHeaderMatchInput'headerName = Data.ProtoLens.fieldDefault,
         _HttpRequestHeaderMatchInput'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpRequestHeaderMatchInput
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpRequestHeaderMatchInput
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
                                       "header_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"headerName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpRequestHeaderMatchInput"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"headerName") _x
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
instance Control.DeepSeq.NFData HttpRequestHeaderMatchInput where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpRequestHeaderMatchInput'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpRequestHeaderMatchInput'headerName x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.HttpInputs_Fields.headerName' @:: Lens' HttpRequestTrailerMatchInput Data.Text.Text@ -}
data HttpRequestTrailerMatchInput
  = HttpRequestTrailerMatchInput'_constructor {_HttpRequestTrailerMatchInput'headerName :: !Data.Text.Text,
                                               _HttpRequestTrailerMatchInput'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpRequestTrailerMatchInput where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpRequestTrailerMatchInput "headerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRequestTrailerMatchInput'headerName
           (\ x__ y__
              -> x__ {_HttpRequestTrailerMatchInput'headerName = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpRequestTrailerMatchInput where
  messageName _
    = Data.Text.pack
        "envoy.type.matcher.v3.HttpRequestTrailerMatchInput"
  packedMessageDescriptor _
    = "\n\
      \\FSHttpRequestTrailerMatchInput\DC2,\n\
      \\vheader_name\CAN\SOH \SOH(\tR\n\
      \headerNameB\v\250B\br\ACK\192\SOH\SOH\200\SOH\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"headerName")) ::
              Data.ProtoLens.FieldDescriptor HttpRequestTrailerMatchInput
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headerName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpRequestTrailerMatchInput'_unknownFields
        (\ x__ y__
           -> x__ {_HttpRequestTrailerMatchInput'_unknownFields = y__})
  defMessage
    = HttpRequestTrailerMatchInput'_constructor
        {_HttpRequestTrailerMatchInput'headerName = Data.ProtoLens.fieldDefault,
         _HttpRequestTrailerMatchInput'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpRequestTrailerMatchInput
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpRequestTrailerMatchInput
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
                                       "header_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"headerName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpRequestTrailerMatchInput"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"headerName") _x
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
instance Control.DeepSeq.NFData HttpRequestTrailerMatchInput where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpRequestTrailerMatchInput'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpRequestTrailerMatchInput'headerName x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.HttpInputs_Fields.headerName' @:: Lens' HttpResponseHeaderMatchInput Data.Text.Text@ -}
data HttpResponseHeaderMatchInput
  = HttpResponseHeaderMatchInput'_constructor {_HttpResponseHeaderMatchInput'headerName :: !Data.Text.Text,
                                               _HttpResponseHeaderMatchInput'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpResponseHeaderMatchInput where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpResponseHeaderMatchInput "headerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpResponseHeaderMatchInput'headerName
           (\ x__ y__
              -> x__ {_HttpResponseHeaderMatchInput'headerName = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpResponseHeaderMatchInput where
  messageName _
    = Data.Text.pack
        "envoy.type.matcher.v3.HttpResponseHeaderMatchInput"
  packedMessageDescriptor _
    = "\n\
      \\FSHttpResponseHeaderMatchInput\DC2,\n\
      \\vheader_name\CAN\SOH \SOH(\tR\n\
      \headerNameB\v\250B\br\ACK\192\SOH\SOH\200\SOH\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"headerName")) ::
              Data.ProtoLens.FieldDescriptor HttpResponseHeaderMatchInput
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headerName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpResponseHeaderMatchInput'_unknownFields
        (\ x__ y__
           -> x__ {_HttpResponseHeaderMatchInput'_unknownFields = y__})
  defMessage
    = HttpResponseHeaderMatchInput'_constructor
        {_HttpResponseHeaderMatchInput'headerName = Data.ProtoLens.fieldDefault,
         _HttpResponseHeaderMatchInput'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpResponseHeaderMatchInput
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpResponseHeaderMatchInput
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
                                       "header_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"headerName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpResponseHeaderMatchInput"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"headerName") _x
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
instance Control.DeepSeq.NFData HttpResponseHeaderMatchInput where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpResponseHeaderMatchInput'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpResponseHeaderMatchInput'headerName x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.HttpInputs_Fields.headerName' @:: Lens' HttpResponseTrailerMatchInput Data.Text.Text@ -}
data HttpResponseTrailerMatchInput
  = HttpResponseTrailerMatchInput'_constructor {_HttpResponseTrailerMatchInput'headerName :: !Data.Text.Text,
                                                _HttpResponseTrailerMatchInput'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpResponseTrailerMatchInput where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpResponseTrailerMatchInput "headerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpResponseTrailerMatchInput'headerName
           (\ x__ y__
              -> x__ {_HttpResponseTrailerMatchInput'headerName = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpResponseTrailerMatchInput where
  messageName _
    = Data.Text.pack
        "envoy.type.matcher.v3.HttpResponseTrailerMatchInput"
  packedMessageDescriptor _
    = "\n\
      \\GSHttpResponseTrailerMatchInput\DC2,\n\
      \\vheader_name\CAN\SOH \SOH(\tR\n\
      \headerNameB\v\250B\br\ACK\192\SOH\SOH\200\SOH\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"headerName")) ::
              Data.ProtoLens.FieldDescriptor HttpResponseTrailerMatchInput
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headerName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpResponseTrailerMatchInput'_unknownFields
        (\ x__ y__
           -> x__ {_HttpResponseTrailerMatchInput'_unknownFields = y__})
  defMessage
    = HttpResponseTrailerMatchInput'_constructor
        {_HttpResponseTrailerMatchInput'headerName = Data.ProtoLens.fieldDefault,
         _HttpResponseTrailerMatchInput'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpResponseTrailerMatchInput
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpResponseTrailerMatchInput
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
                                       "header_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"headerName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpResponseTrailerMatchInput"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"headerName") _x
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
instance Control.DeepSeq.NFData HttpResponseTrailerMatchInput where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpResponseTrailerMatchInput'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpResponseTrailerMatchInput'headerName x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'envoy/type/matcher/v3/http_inputs.proto\DC2\NAKenvoy.type.matcher.v3\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"K\n\
    \\ESCHttpRequestHeaderMatchInput\DC2,\n\
    \\vheader_name\CAN\SOH \SOH(\tR\n\
    \headerNameB\v\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\"L\n\
    \\FSHttpRequestTrailerMatchInput\DC2,\n\
    \\vheader_name\CAN\SOH \SOH(\tR\n\
    \headerNameB\v\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\"L\n\
    \\FSHttpResponseHeaderMatchInput\DC2,\n\
    \\vheader_name\CAN\SOH \SOH(\tR\n\
    \headerNameB\v\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\"M\n\
    \\GSHttpResponseTrailerMatchInput\DC2,\n\
    \\vheader_name\CAN\SOH \SOH(\tR\n\
    \headerNameB\v\250B\br\ACK\192\SOH\SOH\200\SOH\NULB@\n\
    \#io.envoyproxy.envoy.type.matcher.v3B\SIHttpInputsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\213\DLE\n\
    \\ACK\DC2\EOT\NUL\NUL8\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL0\n\
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
    \\134\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\ETB\SOH\SUB\208\STX Match input indicates that matching should be done on a specific request header.\n\
    \ The resulting input string will be all headers for the given key joined by a comma,\n\
    \ e.g. if the request contains two 'foo' headers with value 'bar' and 'baz', the input\n\
    \ string will be 'bar,baz'.\n\
    \ [#comment:TODO(snowp): Link to unified matching docs.]\n\
    \2' [#protodoc-title: Common HTTP Inputs]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b#\n\
    \/\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\NAK\STX\SYNU\SUB! The request header to match on.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SYN\ACKT\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\SYN\aS\n\
    \\222\STX\n\
    \\STX\EOT\SOH\DC2\EOT\RS\NUL\"\SOH\SUB\209\STX Match input indicates that matching should be done on a specific request trailer.\n\
    \ The resulting input string will be all headers for the given key joined by a comma,\n\
    \ e.g. if the request contains two 'foo' headers with value 'bar' and 'baz', the input\n\
    \ string will be 'bar,baz'.\n\
    \ [#comment:TODO(snowp): Link to unified matching docs.]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\RS\b$\n\
    \0\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT \STX!U\SUB\" The request trailer to match on.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX \t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX \ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX!\ACKT\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\SO\DC2\ETX!\aS\n\
    \\224\STX\n\
    \\STX\EOT\STX\DC2\EOT)\NUL-\SOH\SUB\211\STX Match input indicating that matching should be done on a specific response header.\n\
    \ The resulting input string will be all headers for the given key joined by a comma,\n\
    \ e.g. if the response contains two 'foo' headers with value 'bar' and 'baz', the input\n\
    \ string will be 'bar,baz'.\n\
    \ [#comment:TODO(snowp): Link to unified matching docs.]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX)\b$\n\
    \0\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT+\STX,U\SUB\" The response header to match on.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX+\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX+\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX,\ACKT\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\175\b\SO\DC2\ETX,\aS\n\
    \\223\STX\n\
    \\STX\EOT\ETX\DC2\EOT4\NUL8\SOH\SUB\210\STX Match input indicates that matching should be done on a specific response trailer.\n\
    \ The resulting input string will be all headers for the given key joined by a comma,\n\
    \ e.g. if the request contains two 'foo' headers with value 'bar' and 'baz', the input\n\
    \ string will be 'bar,baz'.\n\
    \ [#comment:TODO(snowp): Link to unified matching docs.]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX4\b%\n\
    \1\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT6\STX7U\SUB# The response trailer to match on.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX6\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX6\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX6\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX7\ACKT\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\SO\DC2\ETX7\aSb\ACKproto3"