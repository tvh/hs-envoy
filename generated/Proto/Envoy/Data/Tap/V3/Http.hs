{- This file was auto-generated from envoy/data/tap/v3/http.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Tap.V3.Http (
        HttpBufferedTrace(), HttpBufferedTrace'Message(),
        HttpStreamedTraceSegment(),
        HttpStreamedTraceSegment'MessagePiece(..),
        _HttpStreamedTraceSegment'RequestHeaders,
        _HttpStreamedTraceSegment'RequestBodyChunk,
        _HttpStreamedTraceSegment'RequestTrailers,
        _HttpStreamedTraceSegment'ResponseHeaders,
        _HttpStreamedTraceSegment'ResponseBodyChunk,
        _HttpStreamedTraceSegment'ResponseTrailers
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Data.Tap.V3.Common
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.request' @:: Lens' HttpBufferedTrace HttpBufferedTrace'Message@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.maybe'request' @:: Lens' HttpBufferedTrace (Prelude.Maybe HttpBufferedTrace'Message)@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.response' @:: Lens' HttpBufferedTrace HttpBufferedTrace'Message@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.maybe'response' @:: Lens' HttpBufferedTrace (Prelude.Maybe HttpBufferedTrace'Message)@ -}
data HttpBufferedTrace
  = HttpBufferedTrace'_constructor {_HttpBufferedTrace'request :: !(Prelude.Maybe HttpBufferedTrace'Message),
                                    _HttpBufferedTrace'response :: !(Prelude.Maybe HttpBufferedTrace'Message),
                                    _HttpBufferedTrace'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpBufferedTrace where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpBufferedTrace "request" HttpBufferedTrace'Message where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBufferedTrace'request
           (\ x__ y__ -> x__ {_HttpBufferedTrace'request = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpBufferedTrace "maybe'request" (Prelude.Maybe HttpBufferedTrace'Message) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBufferedTrace'request
           (\ x__ y__ -> x__ {_HttpBufferedTrace'request = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpBufferedTrace "response" HttpBufferedTrace'Message where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBufferedTrace'response
           (\ x__ y__ -> x__ {_HttpBufferedTrace'response = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpBufferedTrace "maybe'response" (Prelude.Maybe HttpBufferedTrace'Message) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBufferedTrace'response
           (\ x__ y__ -> x__ {_HttpBufferedTrace'response = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpBufferedTrace where
  messageName _
    = Data.Text.pack "envoy.data.tap.v3.HttpBufferedTrace"
  packedMessageDescriptor _
    = "\n\
      \\DC1HttpBufferedTrace\DC2F\n\
      \\arequest\CAN\SOH \SOH(\v2,.envoy.data.tap.v3.HttpBufferedTrace.MessageR\arequest\DC2H\n\
      \\bresponse\CAN\STX \SOH(\v2,.envoy.data.tap.v3.HttpBufferedTrace.MessageR\bresponse\SUB\235\SOH\n\
      \\aMessage\DC2;\n\
      \\aheaders\CAN\SOH \ETX(\v2!.envoy.config.core.v3.HeaderValueR\aheaders\DC2+\n\
      \\EOTbody\CAN\STX \SOH(\v2\ETB.envoy.data.tap.v3.BodyR\EOTbody\DC2=\n\
      \\btrailers\CAN\ETX \ETX(\v2!.envoy.config.core.v3.HeaderValueR\btrailers:7\154\197\136\RS2\n\
      \0envoy.data.tap.v2alpha.HttpBufferedTrace.Message:/\154\197\136\RS*\n\
      \(envoy.data.tap.v2alpha.HttpBufferedTrace"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        request__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpBufferedTrace'Message)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'request")) ::
              Data.ProtoLens.FieldDescriptor HttpBufferedTrace
        response__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpBufferedTrace'Message)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'response")) ::
              Data.ProtoLens.FieldDescriptor HttpBufferedTrace
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, request__field_descriptor),
           (Data.ProtoLens.Tag 2, response__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpBufferedTrace'_unknownFields
        (\ x__ y__ -> x__ {_HttpBufferedTrace'_unknownFields = y__})
  defMessage
    = HttpBufferedTrace'_constructor
        {_HttpBufferedTrace'request = Prelude.Nothing,
         _HttpBufferedTrace'response = Prelude.Nothing,
         _HttpBufferedTrace'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpBufferedTrace
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpBufferedTrace
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
                                       "request"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"request") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"response") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpBufferedTrace"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'request") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'response") _x
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
instance Control.DeepSeq.NFData HttpBufferedTrace where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpBufferedTrace'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpBufferedTrace'request x__)
                (Control.DeepSeq.deepseq (_HttpBufferedTrace'response x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.headers' @:: Lens' HttpBufferedTrace'Message [Proto.Envoy.Config.Core.V3.Base.HeaderValue]@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.vec'headers' @:: Lens' HttpBufferedTrace'Message (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue)@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.body' @:: Lens' HttpBufferedTrace'Message Proto.Envoy.Data.Tap.V3.Common.Body@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.maybe'body' @:: Lens' HttpBufferedTrace'Message (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body)@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.trailers' @:: Lens' HttpBufferedTrace'Message [Proto.Envoy.Config.Core.V3.Base.HeaderValue]@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.vec'trailers' @:: Lens' HttpBufferedTrace'Message (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue)@ -}
data HttpBufferedTrace'Message
  = HttpBufferedTrace'Message'_constructor {_HttpBufferedTrace'Message'headers :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue),
                                            _HttpBufferedTrace'Message'body :: !(Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body),
                                            _HttpBufferedTrace'Message'trailers :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue),
                                            _HttpBufferedTrace'Message'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpBufferedTrace'Message where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpBufferedTrace'Message "headers" [Proto.Envoy.Config.Core.V3.Base.HeaderValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBufferedTrace'Message'headers
           (\ x__ y__ -> x__ {_HttpBufferedTrace'Message'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpBufferedTrace'Message "vec'headers" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBufferedTrace'Message'headers
           (\ x__ y__ -> x__ {_HttpBufferedTrace'Message'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpBufferedTrace'Message "body" Proto.Envoy.Data.Tap.V3.Common.Body where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBufferedTrace'Message'body
           (\ x__ y__ -> x__ {_HttpBufferedTrace'Message'body = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpBufferedTrace'Message "maybe'body" (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBufferedTrace'Message'body
           (\ x__ y__ -> x__ {_HttpBufferedTrace'Message'body = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpBufferedTrace'Message "trailers" [Proto.Envoy.Config.Core.V3.Base.HeaderValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBufferedTrace'Message'trailers
           (\ x__ y__ -> x__ {_HttpBufferedTrace'Message'trailers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpBufferedTrace'Message "vec'trailers" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBufferedTrace'Message'trailers
           (\ x__ y__ -> x__ {_HttpBufferedTrace'Message'trailers = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpBufferedTrace'Message where
  messageName _
    = Data.Text.pack "envoy.data.tap.v3.HttpBufferedTrace.Message"
  packedMessageDescriptor _
    = "\n\
      \\aMessage\DC2;\n\
      \\aheaders\CAN\SOH \ETX(\v2!.envoy.config.core.v3.HeaderValueR\aheaders\DC2+\n\
      \\EOTbody\CAN\STX \SOH(\v2\ETB.envoy.data.tap.v3.BodyR\EOTbody\DC2=\n\
      \\btrailers\CAN\ETX \ETX(\v2!.envoy.config.core.v3.HeaderValueR\btrailers:7\154\197\136\RS2\n\
      \0envoy.data.tap.v2alpha.HttpBufferedTrace.Message"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor HttpBufferedTrace'Message
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Tap.V3.Common.Body)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'body")) ::
              Data.ProtoLens.FieldDescriptor HttpBufferedTrace'Message
        trailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trailers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"trailers")) ::
              Data.ProtoLens.FieldDescriptor HttpBufferedTrace'Message
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headers__field_descriptor),
           (Data.ProtoLens.Tag 2, body__field_descriptor),
           (Data.ProtoLens.Tag 3, trailers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpBufferedTrace'Message'_unknownFields
        (\ x__ y__
           -> x__ {_HttpBufferedTrace'Message'_unknownFields = y__})
  defMessage
    = HttpBufferedTrace'Message'_constructor
        {_HttpBufferedTrace'Message'headers = Data.Vector.Generic.empty,
         _HttpBufferedTrace'Message'body = Prelude.Nothing,
         _HttpBufferedTrace'Message'trailers = Data.Vector.Generic.empty,
         _HttpBufferedTrace'Message'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpBufferedTrace'Message
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValue
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValue
                -> Data.ProtoLens.Encoding.Bytes.Parser HttpBufferedTrace'Message
        loop x mutable'headers mutable'trailers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'headers)
                      frozen'trailers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'trailers)
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
                              (Data.ProtoLens.Field.field @"vec'headers")
                              frozen'headers
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'trailers") frozen'trailers x)))
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
                                loop x v mutable'trailers
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "body"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                                  mutable'headers
                                  mutable'trailers
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "trailers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'trailers y)
                                loop x mutable'headers v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'headers
                                  mutable'trailers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'trailers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'headers mutable'trailers)
          "Message"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'body") _x
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
                         (Data.ProtoLens.Field.field @"vec'trailers") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData HttpBufferedTrace'Message where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpBufferedTrace'Message'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpBufferedTrace'Message'headers x__)
                (Control.DeepSeq.deepseq
                   (_HttpBufferedTrace'Message'body x__)
                   (Control.DeepSeq.deepseq
                      (_HttpBufferedTrace'Message'trailers x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.traceId' @:: Lens' HttpStreamedTraceSegment Data.Word.Word64@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.maybe'messagePiece' @:: Lens' HttpStreamedTraceSegment (Prelude.Maybe HttpStreamedTraceSegment'MessagePiece)@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.maybe'requestHeaders' @:: Lens' HttpStreamedTraceSegment (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap)@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.requestHeaders' @:: Lens' HttpStreamedTraceSegment Proto.Envoy.Config.Core.V3.Base.HeaderMap@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.maybe'requestBodyChunk' @:: Lens' HttpStreamedTraceSegment (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body)@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.requestBodyChunk' @:: Lens' HttpStreamedTraceSegment Proto.Envoy.Data.Tap.V3.Common.Body@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.maybe'requestTrailers' @:: Lens' HttpStreamedTraceSegment (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap)@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.requestTrailers' @:: Lens' HttpStreamedTraceSegment Proto.Envoy.Config.Core.V3.Base.HeaderMap@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.maybe'responseHeaders' @:: Lens' HttpStreamedTraceSegment (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap)@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.responseHeaders' @:: Lens' HttpStreamedTraceSegment Proto.Envoy.Config.Core.V3.Base.HeaderMap@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.maybe'responseBodyChunk' @:: Lens' HttpStreamedTraceSegment (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body)@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.responseBodyChunk' @:: Lens' HttpStreamedTraceSegment Proto.Envoy.Data.Tap.V3.Common.Body@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.maybe'responseTrailers' @:: Lens' HttpStreamedTraceSegment (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap)@
         * 'Proto.Envoy.Data.Tap.V3.Http_Fields.responseTrailers' @:: Lens' HttpStreamedTraceSegment Proto.Envoy.Config.Core.V3.Base.HeaderMap@ -}
data HttpStreamedTraceSegment
  = HttpStreamedTraceSegment'_constructor {_HttpStreamedTraceSegment'traceId :: !Data.Word.Word64,
                                           _HttpStreamedTraceSegment'messagePiece :: !(Prelude.Maybe HttpStreamedTraceSegment'MessagePiece),
                                           _HttpStreamedTraceSegment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpStreamedTraceSegment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HttpStreamedTraceSegment'MessagePiece
  = HttpStreamedTraceSegment'RequestHeaders !Proto.Envoy.Config.Core.V3.Base.HeaderMap |
    HttpStreamedTraceSegment'RequestBodyChunk !Proto.Envoy.Data.Tap.V3.Common.Body |
    HttpStreamedTraceSegment'RequestTrailers !Proto.Envoy.Config.Core.V3.Base.HeaderMap |
    HttpStreamedTraceSegment'ResponseHeaders !Proto.Envoy.Config.Core.V3.Base.HeaderMap |
    HttpStreamedTraceSegment'ResponseBodyChunk !Proto.Envoy.Data.Tap.V3.Common.Body |
    HttpStreamedTraceSegment'ResponseTrailers !Proto.Envoy.Config.Core.V3.Base.HeaderMap
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "traceId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'traceId
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'traceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "maybe'messagePiece" (Prelude.Maybe HttpStreamedTraceSegment'MessagePiece) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "maybe'requestHeaders" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpStreamedTraceSegment'RequestHeaders x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HttpStreamedTraceSegment'RequestHeaders y__))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "requestHeaders" Proto.Envoy.Config.Core.V3.Base.HeaderMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpStreamedTraceSegment'RequestHeaders x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HttpStreamedTraceSegment'RequestHeaders y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "maybe'requestBodyChunk" (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpStreamedTraceSegment'RequestBodyChunk x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HttpStreamedTraceSegment'RequestBodyChunk y__))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "requestBodyChunk" Proto.Envoy.Data.Tap.V3.Common.Body where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpStreamedTraceSegment'RequestBodyChunk x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HttpStreamedTraceSegment'RequestBodyChunk y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "maybe'requestTrailers" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpStreamedTraceSegment'RequestTrailers x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HttpStreamedTraceSegment'RequestTrailers y__))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "requestTrailers" Proto.Envoy.Config.Core.V3.Base.HeaderMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpStreamedTraceSegment'RequestTrailers x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HttpStreamedTraceSegment'RequestTrailers y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "maybe'responseHeaders" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpStreamedTraceSegment'ResponseHeaders x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HttpStreamedTraceSegment'ResponseHeaders y__))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "responseHeaders" Proto.Envoy.Config.Core.V3.Base.HeaderMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpStreamedTraceSegment'ResponseHeaders x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HttpStreamedTraceSegment'ResponseHeaders y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "maybe'responseBodyChunk" (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpStreamedTraceSegment'ResponseBodyChunk x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HttpStreamedTraceSegment'ResponseBodyChunk y__))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "responseBodyChunk" Proto.Envoy.Data.Tap.V3.Common.Body where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpStreamedTraceSegment'ResponseBodyChunk x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HttpStreamedTraceSegment'ResponseBodyChunk y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "maybe'responseTrailers" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpStreamedTraceSegment'ResponseTrailers x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HttpStreamedTraceSegment'ResponseTrailers y__))
instance Data.ProtoLens.Field.HasField HttpStreamedTraceSegment "responseTrailers" Proto.Envoy.Config.Core.V3.Base.HeaderMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStreamedTraceSegment'messagePiece
           (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'messagePiece = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpStreamedTraceSegment'ResponseTrailers x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HttpStreamedTraceSegment'ResponseTrailers y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HttpStreamedTraceSegment where
  messageName _
    = Data.Text.pack "envoy.data.tap.v3.HttpStreamedTraceSegment"
  packedMessageDescriptor _
    = "\n\
      \\CANHttpStreamedTraceSegment\DC2\EM\n\
      \\btrace_id\CAN\SOH \SOH(\EOTR\atraceId\DC2J\n\
      \\SIrequest_headers\CAN\STX \SOH(\v2\US.envoy.config.core.v3.HeaderMapH\NULR\SOrequestHeaders\DC2G\n\
      \\DC2request_body_chunk\CAN\ETX \SOH(\v2\ETB.envoy.data.tap.v3.BodyH\NULR\DLErequestBodyChunk\DC2L\n\
      \\DLErequest_trailers\CAN\EOT \SOH(\v2\US.envoy.config.core.v3.HeaderMapH\NULR\SIrequestTrailers\DC2L\n\
      \\DLEresponse_headers\CAN\ENQ \SOH(\v2\US.envoy.config.core.v3.HeaderMapH\NULR\SIresponseHeaders\DC2I\n\
      \\DC3response_body_chunk\CAN\ACK \SOH(\v2\ETB.envoy.data.tap.v3.BodyH\NULR\DC1responseBodyChunk\DC2N\n\
      \\DC1response_trailers\CAN\a \SOH(\v2\US.envoy.config.core.v3.HeaderMapH\NULR\DLEresponseTrailersB\SI\n\
      \\rmessage_piece:6\154\197\136\RS1\n\
      \/envoy.data.tap.v2alpha.HttpStreamedTraceSegment"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        traceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"traceId")) ::
              Data.ProtoLens.FieldDescriptor HttpStreamedTraceSegment
        requestHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestHeaders")) ::
              Data.ProtoLens.FieldDescriptor HttpStreamedTraceSegment
        requestBodyChunk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_body_chunk"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Tap.V3.Common.Body)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestBodyChunk")) ::
              Data.ProtoLens.FieldDescriptor HttpStreamedTraceSegment
        requestTrailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_trailers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestTrailers")) ::
              Data.ProtoLens.FieldDescriptor HttpStreamedTraceSegment
        responseHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseHeaders")) ::
              Data.ProtoLens.FieldDescriptor HttpStreamedTraceSegment
        responseBodyChunk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_body_chunk"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Tap.V3.Common.Body)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseBodyChunk")) ::
              Data.ProtoLens.FieldDescriptor HttpStreamedTraceSegment
        responseTrailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_trailers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseTrailers")) ::
              Data.ProtoLens.FieldDescriptor HttpStreamedTraceSegment
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, traceId__field_descriptor),
           (Data.ProtoLens.Tag 2, requestHeaders__field_descriptor),
           (Data.ProtoLens.Tag 3, requestBodyChunk__field_descriptor),
           (Data.ProtoLens.Tag 4, requestTrailers__field_descriptor),
           (Data.ProtoLens.Tag 5, responseHeaders__field_descriptor),
           (Data.ProtoLens.Tag 6, responseBodyChunk__field_descriptor),
           (Data.ProtoLens.Tag 7, responseTrailers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpStreamedTraceSegment'_unknownFields
        (\ x__ y__ -> x__ {_HttpStreamedTraceSegment'_unknownFields = y__})
  defMessage
    = HttpStreamedTraceSegment'_constructor
        {_HttpStreamedTraceSegment'traceId = Data.ProtoLens.fieldDefault,
         _HttpStreamedTraceSegment'messagePiece = Prelude.Nothing,
         _HttpStreamedTraceSegment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpStreamedTraceSegment
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpStreamedTraceSegment
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "trace_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"traceId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestHeaders") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_body_chunk"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestBodyChunk") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_trailers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestTrailers") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseHeaders") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_body_chunk"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseBodyChunk") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_trailers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseTrailers") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpStreamedTraceSegment"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"traceId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'messagePiece") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (HttpStreamedTraceSegment'RequestHeaders v))
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
                   (Prelude.Just (HttpStreamedTraceSegment'RequestBodyChunk v))
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
                   (Prelude.Just (HttpStreamedTraceSegment'RequestTrailers v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (HttpStreamedTraceSegment'ResponseHeaders v))
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
                   (Prelude.Just (HttpStreamedTraceSegment'ResponseBodyChunk v))
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
                   (Prelude.Just (HttpStreamedTraceSegment'ResponseTrailers v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
instance Control.DeepSeq.NFData HttpStreamedTraceSegment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpStreamedTraceSegment'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpStreamedTraceSegment'traceId x__)
                (Control.DeepSeq.deepseq
                   (_HttpStreamedTraceSegment'messagePiece x__) ()))
instance Control.DeepSeq.NFData HttpStreamedTraceSegment'MessagePiece where
  rnf (HttpStreamedTraceSegment'RequestHeaders x__)
    = Control.DeepSeq.rnf x__
  rnf (HttpStreamedTraceSegment'RequestBodyChunk x__)
    = Control.DeepSeq.rnf x__
  rnf (HttpStreamedTraceSegment'RequestTrailers x__)
    = Control.DeepSeq.rnf x__
  rnf (HttpStreamedTraceSegment'ResponseHeaders x__)
    = Control.DeepSeq.rnf x__
  rnf (HttpStreamedTraceSegment'ResponseBodyChunk x__)
    = Control.DeepSeq.rnf x__
  rnf (HttpStreamedTraceSegment'ResponseTrailers x__)
    = Control.DeepSeq.rnf x__
_HttpStreamedTraceSegment'RequestHeaders ::
  Data.ProtoLens.Prism.Prism' HttpStreamedTraceSegment'MessagePiece Proto.Envoy.Config.Core.V3.Base.HeaderMap
_HttpStreamedTraceSegment'RequestHeaders
  = Data.ProtoLens.Prism.prism'
      HttpStreamedTraceSegment'RequestHeaders
      (\ p__
         -> case p__ of
              (HttpStreamedTraceSegment'RequestHeaders p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpStreamedTraceSegment'RequestBodyChunk ::
  Data.ProtoLens.Prism.Prism' HttpStreamedTraceSegment'MessagePiece Proto.Envoy.Data.Tap.V3.Common.Body
_HttpStreamedTraceSegment'RequestBodyChunk
  = Data.ProtoLens.Prism.prism'
      HttpStreamedTraceSegment'RequestBodyChunk
      (\ p__
         -> case p__ of
              (HttpStreamedTraceSegment'RequestBodyChunk p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpStreamedTraceSegment'RequestTrailers ::
  Data.ProtoLens.Prism.Prism' HttpStreamedTraceSegment'MessagePiece Proto.Envoy.Config.Core.V3.Base.HeaderMap
_HttpStreamedTraceSegment'RequestTrailers
  = Data.ProtoLens.Prism.prism'
      HttpStreamedTraceSegment'RequestTrailers
      (\ p__
         -> case p__ of
              (HttpStreamedTraceSegment'RequestTrailers p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpStreamedTraceSegment'ResponseHeaders ::
  Data.ProtoLens.Prism.Prism' HttpStreamedTraceSegment'MessagePiece Proto.Envoy.Config.Core.V3.Base.HeaderMap
_HttpStreamedTraceSegment'ResponseHeaders
  = Data.ProtoLens.Prism.prism'
      HttpStreamedTraceSegment'ResponseHeaders
      (\ p__
         -> case p__ of
              (HttpStreamedTraceSegment'ResponseHeaders p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpStreamedTraceSegment'ResponseBodyChunk ::
  Data.ProtoLens.Prism.Prism' HttpStreamedTraceSegment'MessagePiece Proto.Envoy.Data.Tap.V3.Common.Body
_HttpStreamedTraceSegment'ResponseBodyChunk
  = Data.ProtoLens.Prism.prism'
      HttpStreamedTraceSegment'ResponseBodyChunk
      (\ p__
         -> case p__ of
              (HttpStreamedTraceSegment'ResponseBodyChunk p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpStreamedTraceSegment'ResponseTrailers ::
  Data.ProtoLens.Prism.Prism' HttpStreamedTraceSegment'MessagePiece Proto.Envoy.Config.Core.V3.Base.HeaderMap
_HttpStreamedTraceSegment'ResponseTrailers
  = Data.ProtoLens.Prism.prism'
      HttpStreamedTraceSegment'ResponseTrailers
      (\ p__
         -> case p__ of
              (HttpStreamedTraceSegment'ResponseTrailers p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FSenvoy/data/tap/v3/http.proto\DC2\DC1envoy.data.tap.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\RSenvoy/data/tap/v3/common.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\196\ETX\n\
    \\DC1HttpBufferedTrace\DC2F\n\
    \\arequest\CAN\SOH \SOH(\v2,.envoy.data.tap.v3.HttpBufferedTrace.MessageR\arequest\DC2H\n\
    \\bresponse\CAN\STX \SOH(\v2,.envoy.data.tap.v3.HttpBufferedTrace.MessageR\bresponse\SUB\235\SOH\n\
    \\aMessage\DC2;\n\
    \\aheaders\CAN\SOH \ETX(\v2!.envoy.config.core.v3.HeaderValueR\aheaders\DC2+\n\
    \\EOTbody\CAN\STX \SOH(\v2\ETB.envoy.data.tap.v3.BodyR\EOTbody\DC2=\n\
    \\btrailers\CAN\ETX \ETX(\v2!.envoy.config.core.v3.HeaderValueR\btrailers:7\154\197\136\RS2\n\
    \0envoy.data.tap.v2alpha.HttpBufferedTrace.Message:/\154\197\136\RS*\n\
    \(envoy.data.tap.v2alpha.HttpBufferedTrace\"\202\EOT\n\
    \\CANHttpStreamedTraceSegment\DC2\EM\n\
    \\btrace_id\CAN\SOH \SOH(\EOTR\atraceId\DC2J\n\
    \\SIrequest_headers\CAN\STX \SOH(\v2\US.envoy.config.core.v3.HeaderMapH\NULR\SOrequestHeaders\DC2G\n\
    \\DC2request_body_chunk\CAN\ETX \SOH(\v2\ETB.envoy.data.tap.v3.BodyH\NULR\DLErequestBodyChunk\DC2L\n\
    \\DLErequest_trailers\CAN\EOT \SOH(\v2\US.envoy.config.core.v3.HeaderMapH\NULR\SIrequestTrailers\DC2L\n\
    \\DLEresponse_headers\CAN\ENQ \SOH(\v2\US.envoy.config.core.v3.HeaderMapH\NULR\SIresponseHeaders\DC2I\n\
    \\DC3response_body_chunk\CAN\ACK \SOH(\v2\ETB.envoy.data.tap.v3.BodyH\NULR\DC1responseBodyChunk\DC2N\n\
    \\DC1response_trailers\CAN\a \SOH(\v2\US.envoy.config.core.v3.HeaderMapH\NULR\DLEresponseTrailersB\SI\n\
    \\rmessage_piece:6\154\197\136\RS1\n\
    \/envoy.data.tap.v2alpha.HttpStreamedTraceSegmentB6\n\
    \\USio.envoyproxy.envoy.data.tap.v3B\tHttpProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\226\f\n\
    \\ACK\DC2\EOT\NUL\NULI\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL8\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \V\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL*\SOH\SUB& A fully buffered HTTP trace message.\n\
    \2\" [#protodoc-title: HTTP tap data]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\EM\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC3\STX\DC41\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC3\STX\DC41\n\
    \%\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\ETB\STX#\ETX\SUB\ETB HTTP message wrapper.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\ETB\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT\CAN\EOT\EM;\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT\CAN\EOT\EM;\n\
    \!\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\FS\EOT4\SUB\DC2 Message headers.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\FS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX\FS\r'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\FS(/\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\FS23\n\
    \\RS\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\US\EOT\DC2\SUB\SI Message body.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX\US\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\US\t\r\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\US\DLE\DC1\n\
    \\"\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX\"\EOT5\SUB\DC3 Message trailers.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX\"\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETX\"\r'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX\"(0\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX\"34\n\
    \\US\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX&\STX\SYN\SUB\DC2 Request message.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX&\STX\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX&\n\
    \\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX&\DC4\NAK\n\
    \ \n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX)\STX\ETB\SUB\DC3 Response message.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX)\STX\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX)\n\
    \\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX)\NAK\SYN\n\
    \k\n\
    \\STX\EOT\SOH\DC2\EOT.\NULI\SOH\SUB_ A streamed HTTP trace segment. Multiple segments make up a full trace.\n\
    \ [#next-free-field: 8]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX.\b \n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT/\STX08\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT/\STX08\n\
    \\139\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX4\STX\SYN\SUB~ Trace ID unique to the originating Envoy only. Trace IDs can repeat and should not be used\n\
    \ for long term stable uniqueness.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX4\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX4\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT6\STXH\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX6\b\NAK\n\
    \\US\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX8\EOT1\SUB\DC2 Request headers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX8\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX8\GS,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX8/0\n\
    \\"\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX;\EOT \SUB\NAK Request body chunk.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX;\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX;\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX;\RS\US\n\
    \ \n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX>\EOT2\SUB\DC3 Request trailers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX>\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX>\GS-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX>01\n\
    \ \n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXA\EOT2\SUB\DC3 Response headers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETXA\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXA\GS-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXA01\n\
    \#\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXD\EOT!\SUB\SYN Response body chunk.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETXD\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXD\t\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXD\US \n\
    \!\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXG\EOT3\SUB\DC4 Response trailers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETXG\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXG\GS.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXG12b\ACKproto3"