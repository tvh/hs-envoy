{- This file was auto-generated from envoy/service/trace/v3/trace_service.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Trace.V3.TraceService (
        TraceService(..), StreamTracesMessage(),
        StreamTracesMessage'Identifier(), StreamTracesResponse()
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
import qualified Proto.Opencensus.Proto.Trace.V1.Trace
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Service.Trace.V3.TraceService_Fields.identifier' @:: Lens' StreamTracesMessage StreamTracesMessage'Identifier@
         * 'Proto.Envoy.Service.Trace.V3.TraceService_Fields.maybe'identifier' @:: Lens' StreamTracesMessage (Prelude.Maybe StreamTracesMessage'Identifier)@
         * 'Proto.Envoy.Service.Trace.V3.TraceService_Fields.spans' @:: Lens' StreamTracesMessage [Proto.Opencensus.Proto.Trace.V1.Trace.Span]@
         * 'Proto.Envoy.Service.Trace.V3.TraceService_Fields.vec'spans' @:: Lens' StreamTracesMessage (Data.Vector.Vector Proto.Opencensus.Proto.Trace.V1.Trace.Span)@ -}
data StreamTracesMessage
  = StreamTracesMessage'_constructor {_StreamTracesMessage'identifier :: !(Prelude.Maybe StreamTracesMessage'Identifier),
                                      _StreamTracesMessage'spans :: !(Data.Vector.Vector Proto.Opencensus.Proto.Trace.V1.Trace.Span),
                                      _StreamTracesMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamTracesMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamTracesMessage "identifier" StreamTracesMessage'Identifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTracesMessage'identifier
           (\ x__ y__ -> x__ {_StreamTracesMessage'identifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamTracesMessage "maybe'identifier" (Prelude.Maybe StreamTracesMessage'Identifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTracesMessage'identifier
           (\ x__ y__ -> x__ {_StreamTracesMessage'identifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamTracesMessage "spans" [Proto.Opencensus.Proto.Trace.V1.Trace.Span] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTracesMessage'spans
           (\ x__ y__ -> x__ {_StreamTracesMessage'spans = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamTracesMessage "vec'spans" (Data.Vector.Vector Proto.Opencensus.Proto.Trace.V1.Trace.Span) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTracesMessage'spans
           (\ x__ y__ -> x__ {_StreamTracesMessage'spans = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamTracesMessage where
  messageName _
    = Data.Text.pack "envoy.service.trace.v3.StreamTracesMessage"
  packedMessageDescriptor _
    = "\n\
      \\DC3StreamTracesMessage\DC2V\n\
      \\n\
      \identifier\CAN\SOH \SOH(\v26.envoy.service.trace.v3.StreamTracesMessage.IdentifierR\n\
      \identifier\DC25\n\
      \\ENQspans\CAN\STX \ETX(\v2\US.opencensus.proto.trace.v1.SpanR\ENQspans\SUB\132\SOH\n\
      \\n\
      \Identifier\DC28\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH:<\154\197\136\RS7\n\
      \5envoy.service.trace.v2.StreamTracesMessage.Identifier:1\154\197\136\RS,\n\
      \*envoy.service.trace.v2.StreamTracesMessage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        identifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StreamTracesMessage'Identifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'identifier")) ::
              Data.ProtoLens.FieldDescriptor StreamTracesMessage
        spans__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "spans"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Opencensus.Proto.Trace.V1.Trace.Span)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"spans")) ::
              Data.ProtoLens.FieldDescriptor StreamTracesMessage
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identifier__field_descriptor),
           (Data.ProtoLens.Tag 2, spans__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamTracesMessage'_unknownFields
        (\ x__ y__ -> x__ {_StreamTracesMessage'_unknownFields = y__})
  defMessage
    = StreamTracesMessage'_constructor
        {_StreamTracesMessage'identifier = Prelude.Nothing,
         _StreamTracesMessage'spans = Data.Vector.Generic.empty,
         _StreamTracesMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamTracesMessage
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Opencensus.Proto.Trace.V1.Trace.Span
             -> Data.ProtoLens.Encoding.Bytes.Parser StreamTracesMessage
        loop x mutable'spans
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'spans <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'spans)
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
                              (Data.ProtoLens.Field.field @"vec'spans") frozen'spans x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "identifier"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identifier") y x)
                                  mutable'spans
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "spans"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'spans y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'spans
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'spans <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'spans)
          "StreamTracesMessage"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'identifier") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'spans") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StreamTracesMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamTracesMessage'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamTracesMessage'identifier x__)
                (Control.DeepSeq.deepseq (_StreamTracesMessage'spans x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Trace.V3.TraceService_Fields.node' @:: Lens' StreamTracesMessage'Identifier Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.Trace.V3.TraceService_Fields.maybe'node' @:: Lens' StreamTracesMessage'Identifier (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@ -}
data StreamTracesMessage'Identifier
  = StreamTracesMessage'Identifier'_constructor {_StreamTracesMessage'Identifier'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                                                 _StreamTracesMessage'Identifier'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamTracesMessage'Identifier where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamTracesMessage'Identifier "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTracesMessage'Identifier'node
           (\ x__ y__ -> x__ {_StreamTracesMessage'Identifier'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamTracesMessage'Identifier "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTracesMessage'Identifier'node
           (\ x__ y__ -> x__ {_StreamTracesMessage'Identifier'node = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamTracesMessage'Identifier where
  messageName _
    = Data.Text.pack
        "envoy.service.trace.v3.StreamTracesMessage.Identifier"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Identifier\DC28\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH:<\154\197\136\RS7\n\
      \5envoy.service.trace.v2.StreamTracesMessage.Identifier"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Node)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor StreamTracesMessage'Identifier
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, node__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamTracesMessage'Identifier'_unknownFields
        (\ x__ y__
           -> x__ {_StreamTracesMessage'Identifier'_unknownFields = y__})
  defMessage
    = StreamTracesMessage'Identifier'_constructor
        {_StreamTracesMessage'Identifier'node = Prelude.Nothing,
         _StreamTracesMessage'Identifier'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamTracesMessage'Identifier
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamTracesMessage'Identifier
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
                                       "node"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Identifier"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
instance Control.DeepSeq.NFData StreamTracesMessage'Identifier where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamTracesMessage'Identifier'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamTracesMessage'Identifier'node x__) ())
{- | Fields :
      -}
data StreamTracesResponse
  = StreamTracesResponse'_constructor {_StreamTracesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamTracesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message StreamTracesResponse where
  messageName _
    = Data.Text.pack "envoy.service.trace.v3.StreamTracesResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4StreamTracesResponse:2\154\197\136\RS-\n\
      \+envoy.service.trace.v2.StreamTracesResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamTracesResponse'_unknownFields
        (\ x__ y__ -> x__ {_StreamTracesResponse'_unknownFields = y__})
  defMessage
    = StreamTracesResponse'_constructor
        {_StreamTracesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamTracesResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamTracesResponse
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
          (do loop Data.ProtoLens.defMessage) "StreamTracesResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData StreamTracesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamTracesResponse'_unknownFields x__) ()
data TraceService = TraceService {}
instance Data.ProtoLens.Service.Types.Service TraceService where
  type ServiceName TraceService = "TraceService"
  type ServicePackage TraceService = "envoy.service.trace.v3"
  type ServiceMethods TraceService = '["streamTraces"]
instance Data.ProtoLens.Service.Types.HasMethodImpl TraceService "streamTraces" where
  type MethodName TraceService "streamTraces" = "StreamTraces"
  type MethodInput TraceService "streamTraces" = StreamTracesMessage
  type MethodOutput TraceService "streamTraces" = StreamTracesResponse
  type MethodStreamingType TraceService "streamTraces" = 'Data.ProtoLens.Service.Types.ClientStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*envoy/service/trace/v3/trace_service.proto\DC2\SYNenvoy.service.trace.v3\SUB\USenvoy/config/core/v3/base.proto\SUB%opencensus/proto/trace/v1/trace.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"J\n\
    \\DC4StreamTracesResponse:2\154\197\136\RS-\n\
    \+envoy.service.trace.v2.StreamTracesResponse\"\222\STX\n\
    \\DC3StreamTracesMessage\DC2V\n\
    \\n\
    \identifier\CAN\SOH \SOH(\v26.envoy.service.trace.v3.StreamTracesMessage.IdentifierR\n\
    \identifier\DC25\n\
    \\ENQspans\CAN\STX \ETX(\v2\US.opencensus.proto.trace.v1.SpanR\ENQspans\SUB\132\SOH\n\
    \\n\
    \Identifier\DC28\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH:<\154\197\136\RS7\n\
    \5envoy.service.trace.v2.StreamTracesMessage.Identifier:1\154\197\136\RS,\n\
    \*envoy.service.trace.v2.StreamTracesMessage2}\n\
    \\fTraceService\DC2m\n\
    \\fStreamTraces\DC2+.envoy.service.trace.v3.StreamTracesMessage\SUB,.envoy.service.trace.v3.StreamTracesResponse\"\NUL(\SOHBF\n\
    \$io.envoyproxy.envoy.service.trace.v3B\DC1TraceServiceProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\246\t\n\
    \\ACK\DC2\EOT\NUL\NUL6\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL/\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL=\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL=\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL2\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL2\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\SI\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\196\SOH\n\
    \\STX\ACK\NUL\DC2\EOT\SYN\NUL\FS\SOH\SUB\147\SOH Service for streaming traces to server that consumes the trace data. It\n\
    \ uses OpenCensus data model as a standard to represent trace information.\n\
    \2\" [#protodoc-title: Trace service]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SYN\b\DC4\n\
    \\176\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\SUB\STX\ESC\ETX\SUB\161\SOH Envoy will connect and send StreamTracesMessage messages forever. It does\n\
    \ not expect any response to be sent as nothing would be done in the case\n\
    \ of failure.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SUB\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\SUB\DC3\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SUB\SUB-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SUB8L\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\RS\NUL!\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\RS\b\FS\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\US\STX 4\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\US\STX 4\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT#\NUL6\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX#\b\ESC\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT$\STX%3\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT$\STX%3\n\
    \\f\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOT'\STX-\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETX'\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\a\DC2\EOT(\EOT)@\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT(\EOT)@\n\
    \J\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETX,\EOTO\SUB; The node sending the access log messages over the stream.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ACK\DC2\ETX,\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETX,\CAN\FS\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETX,\US \n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\b\DC2\ETX,!N\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\NUL\b\175\b\DC1\DC2\ETX,\"M\n\
    \\160\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX2\STX\FS\SUB\146\SOH Identifier data effectively is a structured metadata.\n\
    \ As a performance optimization this will only be sent in the first message\n\
    \ on the stream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX2\STX\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX2\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX2\SUB\ESC\n\
    \%\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX5\STX4\SUB\CAN A list of Span entries\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX5\v)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX5*/\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX523b\ACKproto3"