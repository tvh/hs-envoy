{- This file was auto-generated from envoy/service/event_reporting/v3/event_reporting_service.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.EventReporting.V3.EventReportingService (
        EventReportingService(..), StreamEventsRequest(),
        StreamEventsRequest'Identifier(), StreamEventsResponse()
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Service.EventReporting.V3.EventReportingService_Fields.identifier' @:: Lens' StreamEventsRequest StreamEventsRequest'Identifier@
         * 'Proto.Envoy.Service.EventReporting.V3.EventReportingService_Fields.maybe'identifier' @:: Lens' StreamEventsRequest (Prelude.Maybe StreamEventsRequest'Identifier)@
         * 'Proto.Envoy.Service.EventReporting.V3.EventReportingService_Fields.events' @:: Lens' StreamEventsRequest [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Envoy.Service.EventReporting.V3.EventReportingService_Fields.vec'events' @:: Lens' StreamEventsRequest (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@ -}
data StreamEventsRequest
  = StreamEventsRequest'_constructor {_StreamEventsRequest'identifier :: !(Prelude.Maybe StreamEventsRequest'Identifier),
                                      _StreamEventsRequest'events :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                      _StreamEventsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamEventsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamEventsRequest "identifier" StreamEventsRequest'Identifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamEventsRequest'identifier
           (\ x__ y__ -> x__ {_StreamEventsRequest'identifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamEventsRequest "maybe'identifier" (Prelude.Maybe StreamEventsRequest'Identifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamEventsRequest'identifier
           (\ x__ y__ -> x__ {_StreamEventsRequest'identifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamEventsRequest "events" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamEventsRequest'events
           (\ x__ y__ -> x__ {_StreamEventsRequest'events = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamEventsRequest "vec'events" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamEventsRequest'events
           (\ x__ y__ -> x__ {_StreamEventsRequest'events = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamEventsRequest where
  messageName _
    = Data.Text.pack
        "envoy.service.event_reporting.v3.StreamEventsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3StreamEventsRequest\DC2`\n\
      \\n\
      \identifier\CAN\SOH \SOH(\v2@.envoy.service.event_reporting.v3.StreamEventsRequest.IdentifierR\n\
      \identifier\DC26\n\
      \\ACKevents\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\ACKeventsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\147\SOH\n\
      \\n\
      \Identifier\DC28\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH:K\154\197\136\RSF\n\
      \Denvoy.service.event_reporting.v2alpha.StreamEventsRequest.Identifier:@\154\197\136\RS;\n\
      \9envoy.service.event_reporting.v2alpha.StreamEventsRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        identifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StreamEventsRequest'Identifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'identifier")) ::
              Data.ProtoLens.FieldDescriptor StreamEventsRequest
        events__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"events")) ::
              Data.ProtoLens.FieldDescriptor StreamEventsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identifier__field_descriptor),
           (Data.ProtoLens.Tag 2, events__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamEventsRequest'_unknownFields
        (\ x__ y__ -> x__ {_StreamEventsRequest'_unknownFields = y__})
  defMessage
    = StreamEventsRequest'_constructor
        {_StreamEventsRequest'identifier = Prelude.Nothing,
         _StreamEventsRequest'events = Data.Vector.Generic.empty,
         _StreamEventsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamEventsRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser StreamEventsRequest
        loop x mutable'events
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'events)
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
                              (Data.ProtoLens.Field.field @"vec'events") frozen'events x))
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
                                  mutable'events
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'events y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'events
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'events)
          "StreamEventsRequest"
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'events") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StreamEventsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamEventsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamEventsRequest'identifier x__)
                (Control.DeepSeq.deepseq (_StreamEventsRequest'events x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.EventReporting.V3.EventReportingService_Fields.node' @:: Lens' StreamEventsRequest'Identifier Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.EventReporting.V3.EventReportingService_Fields.maybe'node' @:: Lens' StreamEventsRequest'Identifier (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@ -}
data StreamEventsRequest'Identifier
  = StreamEventsRequest'Identifier'_constructor {_StreamEventsRequest'Identifier'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                                                 _StreamEventsRequest'Identifier'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamEventsRequest'Identifier where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamEventsRequest'Identifier "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamEventsRequest'Identifier'node
           (\ x__ y__ -> x__ {_StreamEventsRequest'Identifier'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamEventsRequest'Identifier "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamEventsRequest'Identifier'node
           (\ x__ y__ -> x__ {_StreamEventsRequest'Identifier'node = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamEventsRequest'Identifier where
  messageName _
    = Data.Text.pack
        "envoy.service.event_reporting.v3.StreamEventsRequest.Identifier"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Identifier\DC28\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH:K\154\197\136\RSF\n\
      \Denvoy.service.event_reporting.v2alpha.StreamEventsRequest.Identifier"
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
              Data.ProtoLens.FieldDescriptor StreamEventsRequest'Identifier
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, node__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamEventsRequest'Identifier'_unknownFields
        (\ x__ y__
           -> x__ {_StreamEventsRequest'Identifier'_unknownFields = y__})
  defMessage
    = StreamEventsRequest'Identifier'_constructor
        {_StreamEventsRequest'Identifier'node = Prelude.Nothing,
         _StreamEventsRequest'Identifier'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamEventsRequest'Identifier
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamEventsRequest'Identifier
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
instance Control.DeepSeq.NFData StreamEventsRequest'Identifier where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamEventsRequest'Identifier'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamEventsRequest'Identifier'node x__) ())
{- | Fields :
      -}
data StreamEventsResponse
  = StreamEventsResponse'_constructor {_StreamEventsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamEventsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message StreamEventsResponse where
  messageName _
    = Data.Text.pack
        "envoy.service.event_reporting.v3.StreamEventsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4StreamEventsResponse:A\154\197\136\RS<\n\
      \:envoy.service.event_reporting.v2alpha.StreamEventsResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamEventsResponse'_unknownFields
        (\ x__ y__ -> x__ {_StreamEventsResponse'_unknownFields = y__})
  defMessage
    = StreamEventsResponse'_constructor
        {_StreamEventsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamEventsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamEventsResponse
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
          (do loop Data.ProtoLens.defMessage) "StreamEventsResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData StreamEventsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamEventsResponse'_unknownFields x__) ()
data EventReportingService = EventReportingService {}
instance Data.ProtoLens.Service.Types.Service EventReportingService where
  type ServiceName EventReportingService = "EventReportingService"
  type ServicePackage EventReportingService = "envoy.service.event_reporting.v3"
  type ServiceMethods EventReportingService = '["streamEvents"]
instance Data.ProtoLens.Service.Types.HasMethodImpl EventReportingService "streamEvents" where
  type MethodName EventReportingService "streamEvents" = "StreamEvents"
  type MethodInput EventReportingService "streamEvents" = StreamEventsRequest
  type MethodOutput EventReportingService "streamEvents" = StreamEventsResponse
  type MethodStreamingType EventReportingService "streamEvents" = 'Data.ProtoLens.Service.Types.BiDiStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \>envoy/service/event_reporting/v3/event_reporting_service.proto\DC2 envoy.service.event_reporting.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\EMgoogle/protobuf/any.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\135\ETX\n\
    \\DC3StreamEventsRequest\DC2`\n\
    \\n\
    \identifier\CAN\SOH \SOH(\v2@.envoy.service.event_reporting.v3.StreamEventsRequest.IdentifierR\n\
    \identifier\DC26\n\
    \\ACKevents\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\ACKeventsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\147\SOH\n\
    \\n\
    \Identifier\DC28\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH:K\154\197\136\RSF\n\
    \Denvoy.service.event_reporting.v2alpha.StreamEventsRequest.Identifier:@\154\197\136\RS;\n\
    \9envoy.service.event_reporting.v2alpha.StreamEventsRequest\"Y\n\
    \\DC4StreamEventsResponse:A\154\197\136\RS<\n\
    \:envoy.service.event_reporting.v2alpha.StreamEventsResponse2\157\SOH\n\
    \\NAKEventReportingService\DC2\131\SOH\n\
    \\fStreamEvents\DC25.envoy.service.event_reporting.v3.StreamEventsRequest\SUB6.envoy.service.event_reporting.v3.StreamEventsResponse\"\NUL(\SOH0\SOHBY\n\
    \.io.envoyproxy.envoy.service.event_reporting.v3B\SUBEventReportingServiceProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\176\DC1\n\
    \\ACK\DC2\EOT\NUL\NULD\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL)\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULG\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULG\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL;\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL;\n\
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
    \\241\SOH\n\
    \\STX\ACK\NUL\DC2\EOT\ETB\NUL\GS\SOH\SUB\177\SOH [#not-implemented-hide:]\n\
    \ Service for streaming different types of events from Envoy to a server. The examples of\n\
    \ such events may be health check or outlier detection events.\n\
    \21 [#protodoc-title: gRPC Event Reporting Service]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\ETB\b\GS\n\
    \\132\STX\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\ESC\STX\FS\ETX\SUB\245\SOH Envoy will connect and send StreamEventsRequest messages forever.\n\
    \ The management server may send StreamEventsResponse to configure event stream. See below.\n\
    \ This API is designed for high throughput with the expectation that it might be lossy.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\ESC\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\ESC\DC3\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\ESC\SUB-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX\ESC8>\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\ESC?S\n\
    \W\n\
    \\STX\EOT\NUL\DC2\EOT!\NUL:\SOH\SUBK [#not-implemented-hide:]\n\
    \ An events envoy sends to the management server.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX!\b\ESC\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\"\STX#B\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\"\STX#B\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT%\STX+\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX%\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT&\EOT'O\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT&\EOT'O\n\
    \E\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX*\EOTO\SUB6 The node sending the event messages over the stream.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX*\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX*\CAN\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX*\US \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX*!N\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\DC1\DC2\ETX*\"M\n\
    \\166\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX/\STX\FS\SUB\152\SOH Identifier data that will only be sent in the first message on the stream. This is effectively\n\
    \ structured metadata and is a performance optimization.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX/\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX/\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX/\SUB\ESC\n\
    \\159\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX9\STXW\SUB\145\ETX Batch of events. When the stream is already active, it will be the events occurred\n\
    \ since the last message had been sent. If the server receives unknown event type, it should\n\
    \ silently ignore it.\n\
    \\n\
    \ The following events are supported:\n\
    \\n\
    \ * :ref:`HealthCheckEvent <envoy_v3_api_msg_data.core.v3.HealthCheckEvent>`\n\
    \ * :ref:`OutlierDetectionEvent <envoy_v3_api_msg_data.cluster.v3.OutlierDetectionEvent>`\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX9\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX9\US%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX9()\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX9*V\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC2\DC2\ETX9+U\n\
    \\204\STX\n\
    \\STX\EOT\SOH\DC2\EOTA\NULD\SOH\SUB\191\STX [#not-implemented-hide:]\n\
    \ The management server may send envoy a StreamEventsResponse to tell which events the server\n\
    \ is interested in. In future, with aggregated event reporting service, this message will\n\
    \ contain, for example, clusters the envoy should send events for, or event types the server\n\
    \ wants to process.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXA\b\FS\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTB\STXCC\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTB\STXCCb\ACKproto3"