{- This file was auto-generated from envoy/data/tap/v3/wrapper.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Tap.V3.Wrapper (
        TraceWrapper(), TraceWrapper'Trace(..),
        _TraceWrapper'HttpBufferedTrace,
        _TraceWrapper'HttpStreamedTraceSegment,
        _TraceWrapper'SocketBufferedTrace,
        _TraceWrapper'SocketStreamedTraceSegment
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
import qualified Proto.Envoy.Data.Tap.V3.Http
import qualified Proto.Envoy.Data.Tap.V3.Transport
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Wrapper_Fields.maybe'trace' @:: Lens' TraceWrapper (Prelude.Maybe TraceWrapper'Trace)@
         * 'Proto.Envoy.Data.Tap.V3.Wrapper_Fields.maybe'httpBufferedTrace' @:: Lens' TraceWrapper (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Http.HttpBufferedTrace)@
         * 'Proto.Envoy.Data.Tap.V3.Wrapper_Fields.httpBufferedTrace' @:: Lens' TraceWrapper Proto.Envoy.Data.Tap.V3.Http.HttpBufferedTrace@
         * 'Proto.Envoy.Data.Tap.V3.Wrapper_Fields.maybe'httpStreamedTraceSegment' @:: Lens' TraceWrapper (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Http.HttpStreamedTraceSegment)@
         * 'Proto.Envoy.Data.Tap.V3.Wrapper_Fields.httpStreamedTraceSegment' @:: Lens' TraceWrapper Proto.Envoy.Data.Tap.V3.Http.HttpStreamedTraceSegment@
         * 'Proto.Envoy.Data.Tap.V3.Wrapper_Fields.maybe'socketBufferedTrace' @:: Lens' TraceWrapper (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Transport.SocketBufferedTrace)@
         * 'Proto.Envoy.Data.Tap.V3.Wrapper_Fields.socketBufferedTrace' @:: Lens' TraceWrapper Proto.Envoy.Data.Tap.V3.Transport.SocketBufferedTrace@
         * 'Proto.Envoy.Data.Tap.V3.Wrapper_Fields.maybe'socketStreamedTraceSegment' @:: Lens' TraceWrapper (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Transport.SocketStreamedTraceSegment)@
         * 'Proto.Envoy.Data.Tap.V3.Wrapper_Fields.socketStreamedTraceSegment' @:: Lens' TraceWrapper Proto.Envoy.Data.Tap.V3.Transport.SocketStreamedTraceSegment@ -}
data TraceWrapper
  = TraceWrapper'_constructor {_TraceWrapper'trace :: !(Prelude.Maybe TraceWrapper'Trace),
                               _TraceWrapper'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TraceWrapper where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data TraceWrapper'Trace
  = TraceWrapper'HttpBufferedTrace !Proto.Envoy.Data.Tap.V3.Http.HttpBufferedTrace |
    TraceWrapper'HttpStreamedTraceSegment !Proto.Envoy.Data.Tap.V3.Http.HttpStreamedTraceSegment |
    TraceWrapper'SocketBufferedTrace !Proto.Envoy.Data.Tap.V3.Transport.SocketBufferedTrace |
    TraceWrapper'SocketStreamedTraceSegment !Proto.Envoy.Data.Tap.V3.Transport.SocketStreamedTraceSegment
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField TraceWrapper "maybe'trace" (Prelude.Maybe TraceWrapper'Trace) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceWrapper'trace (\ x__ y__ -> x__ {_TraceWrapper'trace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceWrapper "maybe'httpBufferedTrace" (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Http.HttpBufferedTrace) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceWrapper'trace (\ x__ y__ -> x__ {_TraceWrapper'trace = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TraceWrapper'HttpBufferedTrace x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TraceWrapper'HttpBufferedTrace y__))
instance Data.ProtoLens.Field.HasField TraceWrapper "httpBufferedTrace" Proto.Envoy.Data.Tap.V3.Http.HttpBufferedTrace where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceWrapper'trace (\ x__ y__ -> x__ {_TraceWrapper'trace = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TraceWrapper'HttpBufferedTrace x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TraceWrapper'HttpBufferedTrace y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TraceWrapper "maybe'httpStreamedTraceSegment" (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Http.HttpStreamedTraceSegment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceWrapper'trace (\ x__ y__ -> x__ {_TraceWrapper'trace = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TraceWrapper'HttpStreamedTraceSegment x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap TraceWrapper'HttpStreamedTraceSegment y__))
instance Data.ProtoLens.Field.HasField TraceWrapper "httpStreamedTraceSegment" Proto.Envoy.Data.Tap.V3.Http.HttpStreamedTraceSegment where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceWrapper'trace (\ x__ y__ -> x__ {_TraceWrapper'trace = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TraceWrapper'HttpStreamedTraceSegment x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap TraceWrapper'HttpStreamedTraceSegment y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TraceWrapper "maybe'socketBufferedTrace" (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Transport.SocketBufferedTrace) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceWrapper'trace (\ x__ y__ -> x__ {_TraceWrapper'trace = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TraceWrapper'SocketBufferedTrace x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TraceWrapper'SocketBufferedTrace y__))
instance Data.ProtoLens.Field.HasField TraceWrapper "socketBufferedTrace" Proto.Envoy.Data.Tap.V3.Transport.SocketBufferedTrace where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceWrapper'trace (\ x__ y__ -> x__ {_TraceWrapper'trace = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TraceWrapper'SocketBufferedTrace x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TraceWrapper'SocketBufferedTrace y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TraceWrapper "maybe'socketStreamedTraceSegment" (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Transport.SocketStreamedTraceSegment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceWrapper'trace (\ x__ y__ -> x__ {_TraceWrapper'trace = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TraceWrapper'SocketStreamedTraceSegment x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap TraceWrapper'SocketStreamedTraceSegment y__))
instance Data.ProtoLens.Field.HasField TraceWrapper "socketStreamedTraceSegment" Proto.Envoy.Data.Tap.V3.Transport.SocketStreamedTraceSegment where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceWrapper'trace (\ x__ y__ -> x__ {_TraceWrapper'trace = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TraceWrapper'SocketStreamedTraceSegment x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap TraceWrapper'SocketStreamedTraceSegment y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message TraceWrapper where
  messageName _ = Data.Text.pack "envoy.data.tap.v3.TraceWrapper"
  packedMessageDescriptor _
    = "\n\
      \\fTraceWrapper\DC2V\n\
      \\DC3http_buffered_trace\CAN\SOH \SOH(\v2$.envoy.data.tap.v3.HttpBufferedTraceH\NULR\DC1httpBufferedTrace\DC2l\n\
      \\ESChttp_streamed_trace_segment\CAN\STX \SOH(\v2+.envoy.data.tap.v3.HttpStreamedTraceSegmentH\NULR\CANhttpStreamedTraceSegment\DC2\\\n\
      \\NAKsocket_buffered_trace\CAN\ETX \SOH(\v2&.envoy.data.tap.v3.SocketBufferedTraceH\NULR\DC3socketBufferedTrace\DC2r\n\
      \\GSsocket_streamed_trace_segment\CAN\EOT \SOH(\v2-.envoy.data.tap.v3.SocketStreamedTraceSegmentH\NULR\SUBsocketStreamedTraceSegmentB\f\n\
      \\ENQtrace\DC2\ETX\248B\SOH:*\154\197\136\RS%\n\
      \#envoy.data.tap.v2alpha.TraceWrapper"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        httpBufferedTrace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_buffered_trace"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Tap.V3.Http.HttpBufferedTrace)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpBufferedTrace")) ::
              Data.ProtoLens.FieldDescriptor TraceWrapper
        httpStreamedTraceSegment__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_streamed_trace_segment"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Tap.V3.Http.HttpStreamedTraceSegment)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpStreamedTraceSegment")) ::
              Data.ProtoLens.FieldDescriptor TraceWrapper
        socketBufferedTrace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "socket_buffered_trace"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Tap.V3.Transport.SocketBufferedTrace)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'socketBufferedTrace")) ::
              Data.ProtoLens.FieldDescriptor TraceWrapper
        socketStreamedTraceSegment__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "socket_streamed_trace_segment"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Tap.V3.Transport.SocketStreamedTraceSegment)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'socketStreamedTraceSegment")) ::
              Data.ProtoLens.FieldDescriptor TraceWrapper
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, httpBufferedTrace__field_descriptor),
           (Data.ProtoLens.Tag 2, httpStreamedTraceSegment__field_descriptor),
           (Data.ProtoLens.Tag 3, socketBufferedTrace__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            socketStreamedTraceSegment__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TraceWrapper'_unknownFields
        (\ x__ y__ -> x__ {_TraceWrapper'_unknownFields = y__})
  defMessage
    = TraceWrapper'_constructor
        {_TraceWrapper'trace = Prelude.Nothing,
         _TraceWrapper'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TraceWrapper -> Data.ProtoLens.Encoding.Bytes.Parser TraceWrapper
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
                                       "http_buffered_trace"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpBufferedTrace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_streamed_trace_segment"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpStreamedTraceSegment") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "socket_buffered_trace"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"socketBufferedTrace") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "socket_streamed_trace_segment"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"socketStreamedTraceSegment") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TraceWrapper"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'trace") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (TraceWrapper'HttpBufferedTrace v))
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
                (Prelude.Just (TraceWrapper'HttpStreamedTraceSegment v))
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
                (Prelude.Just (TraceWrapper'SocketBufferedTrace v))
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
                (Prelude.Just (TraceWrapper'SocketStreamedTraceSegment v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TraceWrapper where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TraceWrapper'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TraceWrapper'trace x__) ())
instance Control.DeepSeq.NFData TraceWrapper'Trace where
  rnf (TraceWrapper'HttpBufferedTrace x__) = Control.DeepSeq.rnf x__
  rnf (TraceWrapper'HttpStreamedTraceSegment x__)
    = Control.DeepSeq.rnf x__
  rnf (TraceWrapper'SocketBufferedTrace x__)
    = Control.DeepSeq.rnf x__
  rnf (TraceWrapper'SocketStreamedTraceSegment x__)
    = Control.DeepSeq.rnf x__
_TraceWrapper'HttpBufferedTrace ::
  Data.ProtoLens.Prism.Prism' TraceWrapper'Trace Proto.Envoy.Data.Tap.V3.Http.HttpBufferedTrace
_TraceWrapper'HttpBufferedTrace
  = Data.ProtoLens.Prism.prism'
      TraceWrapper'HttpBufferedTrace
      (\ p__
         -> case p__ of
              (TraceWrapper'HttpBufferedTrace p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TraceWrapper'HttpStreamedTraceSegment ::
  Data.ProtoLens.Prism.Prism' TraceWrapper'Trace Proto.Envoy.Data.Tap.V3.Http.HttpStreamedTraceSegment
_TraceWrapper'HttpStreamedTraceSegment
  = Data.ProtoLens.Prism.prism'
      TraceWrapper'HttpStreamedTraceSegment
      (\ p__
         -> case p__ of
              (TraceWrapper'HttpStreamedTraceSegment p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TraceWrapper'SocketBufferedTrace ::
  Data.ProtoLens.Prism.Prism' TraceWrapper'Trace Proto.Envoy.Data.Tap.V3.Transport.SocketBufferedTrace
_TraceWrapper'SocketBufferedTrace
  = Data.ProtoLens.Prism.prism'
      TraceWrapper'SocketBufferedTrace
      (\ p__
         -> case p__ of
              (TraceWrapper'SocketBufferedTrace p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TraceWrapper'SocketStreamedTraceSegment ::
  Data.ProtoLens.Prism.Prism' TraceWrapper'Trace Proto.Envoy.Data.Tap.V3.Transport.SocketStreamedTraceSegment
_TraceWrapper'SocketStreamedTraceSegment
  = Data.ProtoLens.Prism.prism'
      TraceWrapper'SocketStreamedTraceSegment
      (\ p__
         -> case p__ of
              (TraceWrapper'SocketStreamedTraceSegment p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USenvoy/data/tap/v3/wrapper.proto\DC2\DC1envoy.data.tap.v3\SUB\FSenvoy/data/tap/v3/http.proto\SUB!envoy/data/tap/v3/transport.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\224\ETX\n\
    \\fTraceWrapper\DC2V\n\
    \\DC3http_buffered_trace\CAN\SOH \SOH(\v2$.envoy.data.tap.v3.HttpBufferedTraceH\NULR\DC1httpBufferedTrace\DC2l\n\
    \\ESChttp_streamed_trace_segment\CAN\STX \SOH(\v2+.envoy.data.tap.v3.HttpStreamedTraceSegmentH\NULR\CANhttpStreamedTraceSegment\DC2\\\n\
    \\NAKsocket_buffered_trace\CAN\ETX \SOH(\v2&.envoy.data.tap.v3.SocketBufferedTraceH\NULR\DC3socketBufferedTrace\DC2r\n\
    \\GSsocket_streamed_trace_segment\CAN\EOT \SOH(\v2-.envoy.data.tap.v3.SocketStreamedTraceSegmentH\NULR\SUBsocketStreamedTraceSegmentB\f\n\
    \\ENQtrace\DC2\ETX\248B\SOH:*\154\197\136\RS%\n\
    \#envoy.data.tap.v2alpha.TraceWrapperB9\n\
    \\USio.envoyproxy.envoy.data.tap.v3B\fWrapperProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\228\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL'\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL8\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\231\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL'\SOH\SUB\178\SOH Wrapper for all fully buffered and streamed tap traces that Envoy emits. This is required for\n\
    \ sending traces over gRPC APIs or more easily persisting binary messages to files.\n\
    \2& [#protodoc-title: Tap data wrappers]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\DC4\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\NAK\STX\SYN,\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\NAK\STX\SYN,\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\CAN\STX&\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\CAN\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX\EM\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX\EM\EOT&\n\
    \*\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\EOT.\SUB\GS An HTTP buffered tap trace.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\FS\EOT\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\SYN)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS,-\n\
    \2\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\US\EOT=\SUB% An HTTP streamed tap trace segment.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\US\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\GS8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\US;<\n\
    \+\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\"\EOT2\SUB\RS A socket buffered tap trace.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\"\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\"\CAN-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\"01\n\
    \3\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX%\EOTA\SUB& A socket streamed tap trace segment.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX%\EOT\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX%\US<\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX%?@b\ACKproto3"