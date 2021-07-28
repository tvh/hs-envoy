{- This file was auto-generated from envoy/data/tap/v3/transport.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Tap.V3.Transport (
        Connection(), SocketBufferedTrace(), SocketEvent(),
        SocketEvent'EventSelector(..), _SocketEvent'Read',
        _SocketEvent'Write', _SocketEvent'Closed', SocketEvent'Closed(),
        SocketEvent'Read(), SocketEvent'Write(),
        SocketStreamedTraceSegment(),
        SocketStreamedTraceSegment'MessagePiece(..),
        _SocketStreamedTraceSegment'Connection,
        _SocketStreamedTraceSegment'Event
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Data.Tap.V3.Common
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.localAddress' @:: Lens' Connection Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'localAddress' @:: Lens' Connection (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.remoteAddress' @:: Lens' Connection Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'remoteAddress' @:: Lens' Connection (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@ -}
data Connection
  = Connection'_constructor {_Connection'localAddress :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                             _Connection'remoteAddress :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                             _Connection'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Connection where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Connection "localAddress" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Connection'localAddress
           (\ x__ y__ -> x__ {_Connection'localAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Connection "maybe'localAddress" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Connection'localAddress
           (\ x__ y__ -> x__ {_Connection'localAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Connection "remoteAddress" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Connection'remoteAddress
           (\ x__ y__ -> x__ {_Connection'remoteAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Connection "maybe'remoteAddress" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Connection'remoteAddress
           (\ x__ y__ -> x__ {_Connection'remoteAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message Connection where
  messageName _ = Data.Text.pack "envoy.data.tap.v3.Connection"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Connection\DC2B\n\
      \\rlocal_address\CAN\STX \SOH(\v2\GS.envoy.config.core.v3.AddressR\flocalAddress\DC2D\n\
      \\SOremote_address\CAN\ETX \SOH(\v2\GS.envoy.config.core.v3.AddressR\rremoteAddress:(\154\197\136\RS#\n\
      \!envoy.data.tap.v2alpha.Connection"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        localAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localAddress")) ::
              Data.ProtoLens.FieldDescriptor Connection
        remoteAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remote_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'remoteAddress")) ::
              Data.ProtoLens.FieldDescriptor Connection
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, localAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, remoteAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Connection'_unknownFields
        (\ x__ y__ -> x__ {_Connection'_unknownFields = y__})
  defMessage
    = Connection'_constructor
        {_Connection'localAddress = Prelude.Nothing,
         _Connection'remoteAddress = Prelude.Nothing,
         _Connection'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Connection -> Data.ProtoLens.Encoding.Bytes.Parser Connection
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localAddress") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "remote_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"remoteAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Connection"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'localAddress") _x
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
                       (Data.ProtoLens.Field.field @"maybe'remoteAddress") _x
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
instance Control.DeepSeq.NFData Connection where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Connection'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Connection'localAddress x__)
                (Control.DeepSeq.deepseq (_Connection'remoteAddress x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.traceId' @:: Lens' SocketBufferedTrace Data.Word.Word64@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.connection' @:: Lens' SocketBufferedTrace Connection@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'connection' @:: Lens' SocketBufferedTrace (Prelude.Maybe Connection)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.events' @:: Lens' SocketBufferedTrace [SocketEvent]@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.vec'events' @:: Lens' SocketBufferedTrace (Data.Vector.Vector SocketEvent)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.readTruncated' @:: Lens' SocketBufferedTrace Prelude.Bool@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.writeTruncated' @:: Lens' SocketBufferedTrace Prelude.Bool@ -}
data SocketBufferedTrace
  = SocketBufferedTrace'_constructor {_SocketBufferedTrace'traceId :: !Data.Word.Word64,
                                      _SocketBufferedTrace'connection :: !(Prelude.Maybe Connection),
                                      _SocketBufferedTrace'events :: !(Data.Vector.Vector SocketEvent),
                                      _SocketBufferedTrace'readTruncated :: !Prelude.Bool,
                                      _SocketBufferedTrace'writeTruncated :: !Prelude.Bool,
                                      _SocketBufferedTrace'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SocketBufferedTrace where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SocketBufferedTrace "traceId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketBufferedTrace'traceId
           (\ x__ y__ -> x__ {_SocketBufferedTrace'traceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketBufferedTrace "connection" Connection where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketBufferedTrace'connection
           (\ x__ y__ -> x__ {_SocketBufferedTrace'connection = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SocketBufferedTrace "maybe'connection" (Prelude.Maybe Connection) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketBufferedTrace'connection
           (\ x__ y__ -> x__ {_SocketBufferedTrace'connection = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketBufferedTrace "events" [SocketEvent] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketBufferedTrace'events
           (\ x__ y__ -> x__ {_SocketBufferedTrace'events = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SocketBufferedTrace "vec'events" (Data.Vector.Vector SocketEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketBufferedTrace'events
           (\ x__ y__ -> x__ {_SocketBufferedTrace'events = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketBufferedTrace "readTruncated" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketBufferedTrace'readTruncated
           (\ x__ y__ -> x__ {_SocketBufferedTrace'readTruncated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketBufferedTrace "writeTruncated" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketBufferedTrace'writeTruncated
           (\ x__ y__ -> x__ {_SocketBufferedTrace'writeTruncated = y__}))
        Prelude.id
instance Data.ProtoLens.Message SocketBufferedTrace where
  messageName _
    = Data.Text.pack "envoy.data.tap.v3.SocketBufferedTrace"
  packedMessageDescriptor _
    = "\n\
      \\DC3SocketBufferedTrace\DC2\EM\n\
      \\btrace_id\CAN\SOH \SOH(\EOTR\atraceId\DC2=\n\
      \\n\
      \connection\CAN\STX \SOH(\v2\GS.envoy.data.tap.v3.ConnectionR\n\
      \connection\DC26\n\
      \\ACKevents\CAN\ETX \ETX(\v2\RS.envoy.data.tap.v3.SocketEventR\ACKevents\DC2%\n\
      \\SOread_truncated\CAN\EOT \SOH(\bR\rreadTruncated\DC2'\n\
      \\SIwrite_truncated\CAN\ENQ \SOH(\bR\SOwriteTruncated:1\154\197\136\RS,\n\
      \*envoy.data.tap.v2alpha.SocketBufferedTrace"
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
              Data.ProtoLens.FieldDescriptor SocketBufferedTrace
        connection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "connection"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Connection)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'connection")) ::
              Data.ProtoLens.FieldDescriptor SocketBufferedTrace
        events__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SocketEvent)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"events")) ::
              Data.ProtoLens.FieldDescriptor SocketBufferedTrace
        readTruncated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_truncated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"readTruncated")) ::
              Data.ProtoLens.FieldDescriptor SocketBufferedTrace
        writeTruncated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "write_truncated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"writeTruncated")) ::
              Data.ProtoLens.FieldDescriptor SocketBufferedTrace
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, traceId__field_descriptor),
           (Data.ProtoLens.Tag 2, connection__field_descriptor),
           (Data.ProtoLens.Tag 3, events__field_descriptor),
           (Data.ProtoLens.Tag 4, readTruncated__field_descriptor),
           (Data.ProtoLens.Tag 5, writeTruncated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SocketBufferedTrace'_unknownFields
        (\ x__ y__ -> x__ {_SocketBufferedTrace'_unknownFields = y__})
  defMessage
    = SocketBufferedTrace'_constructor
        {_SocketBufferedTrace'traceId = Data.ProtoLens.fieldDefault,
         _SocketBufferedTrace'connection = Prelude.Nothing,
         _SocketBufferedTrace'events = Data.Vector.Generic.empty,
         _SocketBufferedTrace'readTruncated = Data.ProtoLens.fieldDefault,
         _SocketBufferedTrace'writeTruncated = Data.ProtoLens.fieldDefault,
         _SocketBufferedTrace'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SocketBufferedTrace
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SocketEvent
             -> Data.ProtoLens.Encoding.Bytes.Parser SocketBufferedTrace
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "trace_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"traceId") y x)
                                  mutable'events
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "connection"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"connection") y x)
                                  mutable'events
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'events y)
                                loop x v
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "read_truncated"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"readTruncated") y x)
                                  mutable'events
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "write_truncated"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"writeTruncated") y x)
                                  mutable'events
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
          "SocketBufferedTrace"
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
                       (Data.ProtoLens.Field.field @"maybe'connection") _x
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'events") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"readTruncated") _x
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
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"writeTruncated") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0)
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData SocketBufferedTrace where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SocketBufferedTrace'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SocketBufferedTrace'traceId x__)
                (Control.DeepSeq.deepseq
                   (_SocketBufferedTrace'connection x__)
                   (Control.DeepSeq.deepseq
                      (_SocketBufferedTrace'events x__)
                      (Control.DeepSeq.deepseq
                         (_SocketBufferedTrace'readTruncated x__)
                         (Control.DeepSeq.deepseq
                            (_SocketBufferedTrace'writeTruncated x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.timestamp' @:: Lens' SocketEvent Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'timestamp' @:: Lens' SocketEvent (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'eventSelector' @:: Lens' SocketEvent (Prelude.Maybe SocketEvent'EventSelector)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'read' @:: Lens' SocketEvent (Prelude.Maybe SocketEvent'Read)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.read' @:: Lens' SocketEvent SocketEvent'Read@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'write' @:: Lens' SocketEvent (Prelude.Maybe SocketEvent'Write)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.write' @:: Lens' SocketEvent SocketEvent'Write@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'closed' @:: Lens' SocketEvent (Prelude.Maybe SocketEvent'Closed)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.closed' @:: Lens' SocketEvent SocketEvent'Closed@ -}
data SocketEvent
  = SocketEvent'_constructor {_SocketEvent'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                              _SocketEvent'eventSelector :: !(Prelude.Maybe SocketEvent'EventSelector),
                              _SocketEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SocketEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data SocketEvent'EventSelector
  = SocketEvent'Read' !SocketEvent'Read |
    SocketEvent'Write' !SocketEvent'Write |
    SocketEvent'Closed' !SocketEvent'Closed
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SocketEvent "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'timestamp
           (\ x__ y__ -> x__ {_SocketEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SocketEvent "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'timestamp
           (\ x__ y__ -> x__ {_SocketEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketEvent "maybe'eventSelector" (Prelude.Maybe SocketEvent'EventSelector) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'eventSelector
           (\ x__ y__ -> x__ {_SocketEvent'eventSelector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketEvent "maybe'read" (Prelude.Maybe SocketEvent'Read) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'eventSelector
           (\ x__ y__ -> x__ {_SocketEvent'eventSelector = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SocketEvent'Read' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SocketEvent'Read' y__))
instance Data.ProtoLens.Field.HasField SocketEvent "read" SocketEvent'Read where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'eventSelector
           (\ x__ y__ -> x__ {_SocketEvent'eventSelector = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SocketEvent'Read' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SocketEvent'Read' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField SocketEvent "maybe'write" (Prelude.Maybe SocketEvent'Write) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'eventSelector
           (\ x__ y__ -> x__ {_SocketEvent'eventSelector = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SocketEvent'Write' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SocketEvent'Write' y__))
instance Data.ProtoLens.Field.HasField SocketEvent "write" SocketEvent'Write where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'eventSelector
           (\ x__ y__ -> x__ {_SocketEvent'eventSelector = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SocketEvent'Write' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SocketEvent'Write' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField SocketEvent "maybe'closed" (Prelude.Maybe SocketEvent'Closed) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'eventSelector
           (\ x__ y__ -> x__ {_SocketEvent'eventSelector = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SocketEvent'Closed' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SocketEvent'Closed' y__))
instance Data.ProtoLens.Field.HasField SocketEvent "closed" SocketEvent'Closed where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'eventSelector
           (\ x__ y__ -> x__ {_SocketEvent'eventSelector = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SocketEvent'Closed' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SocketEvent'Closed' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message SocketEvent where
  messageName _ = Data.Text.pack "envoy.data.tap.v3.SocketEvent"
  packedMessageDescriptor _
    = "\n\
      \\vSocketEvent\DC28\n\
      \\ttimestamp\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestamp\DC29\n\
      \\EOTread\CAN\STX \SOH(\v2#.envoy.data.tap.v3.SocketEvent.ReadH\NULR\EOTread\DC2<\n\
      \\ENQwrite\CAN\ETX \SOH(\v2$.envoy.data.tap.v3.SocketEvent.WriteH\NULR\ENQwrite\DC2?\n\
      \\ACKclosed\CAN\EOT \SOH(\v2%.envoy.data.tap.v3.SocketEvent.ClosedH\NULR\ACKclosed\SUBc\n\
      \\EOTRead\DC2+\n\
      \\EOTdata\CAN\SOH \SOH(\v2\ETB.envoy.data.tap.v3.BodyR\EOTdata:.\154\197\136\RS)\n\
      \'envoy.data.tap.v2alpha.SocketEvent.Read\SUB\132\SOH\n\
      \\ENQWrite\DC2+\n\
      \\EOTdata\CAN\SOH \SOH(\v2\ETB.envoy.data.tap.v3.BodyR\EOTdata\DC2\GS\n\
      \\n\
      \end_stream\CAN\STX \SOH(\bR\tendStream:/\154\197\136\RS*\n\
      \(envoy.data.tap.v2alpha.SocketEvent.Write\SUB:\n\
      \\ACKClosed:0\154\197\136\RS+\n\
      \)envoy.data.tap.v2alpha.SocketEvent.ClosedB\DLE\n\
      \\SOevent_selector:)\154\197\136\RS$\n\
      \\"envoy.data.tap.v2alpha.SocketEvent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor SocketEvent
        read__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SocketEvent'Read)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'read")) ::
              Data.ProtoLens.FieldDescriptor SocketEvent
        write__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "write"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SocketEvent'Write)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'write")) ::
              Data.ProtoLens.FieldDescriptor SocketEvent
        closed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "closed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SocketEvent'Closed)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'closed")) ::
              Data.ProtoLens.FieldDescriptor SocketEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 2, read__field_descriptor),
           (Data.ProtoLens.Tag 3, write__field_descriptor),
           (Data.ProtoLens.Tag 4, closed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SocketEvent'_unknownFields
        (\ x__ y__ -> x__ {_SocketEvent'_unknownFields = y__})
  defMessage
    = SocketEvent'_constructor
        {_SocketEvent'timestamp = Prelude.Nothing,
         _SocketEvent'eventSelector = Prelude.Nothing,
         _SocketEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SocketEvent -> Data.ProtoLens.Encoding.Bytes.Parser SocketEvent
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
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "read"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"read") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "write"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"write") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "closed"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"closed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SocketEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'timestamp") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'eventSelector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (SocketEvent'Read' v))
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
                   (Prelude.Just (SocketEvent'Write' v))
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
                   (Prelude.Just (SocketEvent'Closed' v))
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
instance Control.DeepSeq.NFData SocketEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SocketEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SocketEvent'timestamp x__)
                (Control.DeepSeq.deepseq (_SocketEvent'eventSelector x__) ()))
instance Control.DeepSeq.NFData SocketEvent'EventSelector where
  rnf (SocketEvent'Read' x__) = Control.DeepSeq.rnf x__
  rnf (SocketEvent'Write' x__) = Control.DeepSeq.rnf x__
  rnf (SocketEvent'Closed' x__) = Control.DeepSeq.rnf x__
_SocketEvent'Read' ::
  Data.ProtoLens.Prism.Prism' SocketEvent'EventSelector SocketEvent'Read
_SocketEvent'Read'
  = Data.ProtoLens.Prism.prism'
      SocketEvent'Read'
      (\ p__
         -> case p__ of
              (SocketEvent'Read' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SocketEvent'Write' ::
  Data.ProtoLens.Prism.Prism' SocketEvent'EventSelector SocketEvent'Write
_SocketEvent'Write'
  = Data.ProtoLens.Prism.prism'
      SocketEvent'Write'
      (\ p__
         -> case p__ of
              (SocketEvent'Write' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SocketEvent'Closed' ::
  Data.ProtoLens.Prism.Prism' SocketEvent'EventSelector SocketEvent'Closed
_SocketEvent'Closed'
  = Data.ProtoLens.Prism.prism'
      SocketEvent'Closed'
      (\ p__
         -> case p__ of
              (SocketEvent'Closed' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data SocketEvent'Closed
  = SocketEvent'Closed'_constructor {_SocketEvent'Closed'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SocketEvent'Closed where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message SocketEvent'Closed where
  messageName _
    = Data.Text.pack "envoy.data.tap.v3.SocketEvent.Closed"
  packedMessageDescriptor _
    = "\n\
      \\ACKClosed:0\154\197\136\RS+\n\
      \)envoy.data.tap.v2alpha.SocketEvent.Closed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SocketEvent'Closed'_unknownFields
        (\ x__ y__ -> x__ {_SocketEvent'Closed'_unknownFields = y__})
  defMessage
    = SocketEvent'Closed'_constructor
        {_SocketEvent'Closed'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SocketEvent'Closed
          -> Data.ProtoLens.Encoding.Bytes.Parser SocketEvent'Closed
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
          (do loop Data.ProtoLens.defMessage) "Closed"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData SocketEvent'Closed where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SocketEvent'Closed'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.data'' @:: Lens' SocketEvent'Read Proto.Envoy.Data.Tap.V3.Common.Body@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'data'' @:: Lens' SocketEvent'Read (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body)@ -}
data SocketEvent'Read
  = SocketEvent'Read'_constructor {_SocketEvent'Read'data' :: !(Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body),
                                   _SocketEvent'Read'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SocketEvent'Read where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SocketEvent'Read "data'" Proto.Envoy.Data.Tap.V3.Common.Body where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'Read'data'
           (\ x__ y__ -> x__ {_SocketEvent'Read'data' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SocketEvent'Read "maybe'data'" (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'Read'data'
           (\ x__ y__ -> x__ {_SocketEvent'Read'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message SocketEvent'Read where
  messageName _ = Data.Text.pack "envoy.data.tap.v3.SocketEvent.Read"
  packedMessageDescriptor _
    = "\n\
      \\EOTRead\DC2+\n\
      \\EOTdata\CAN\SOH \SOH(\v2\ETB.envoy.data.tap.v3.BodyR\EOTdata:.\154\197\136\RS)\n\
      \'envoy.data.tap.v2alpha.SocketEvent.Read"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Tap.V3.Common.Body)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'data'")) ::
              Data.ProtoLens.FieldDescriptor SocketEvent'Read
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SocketEvent'Read'_unknownFields
        (\ x__ y__ -> x__ {_SocketEvent'Read'_unknownFields = y__})
  defMessage
    = SocketEvent'Read'_constructor
        {_SocketEvent'Read'data' = Prelude.Nothing,
         _SocketEvent'Read'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SocketEvent'Read
          -> Data.ProtoLens.Encoding.Bytes.Parser SocketEvent'Read
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
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Read"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'data'") _x
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
instance Control.DeepSeq.NFData SocketEvent'Read where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SocketEvent'Read'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SocketEvent'Read'data' x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.data'' @:: Lens' SocketEvent'Write Proto.Envoy.Data.Tap.V3.Common.Body@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'data'' @:: Lens' SocketEvent'Write (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.endStream' @:: Lens' SocketEvent'Write Prelude.Bool@ -}
data SocketEvent'Write
  = SocketEvent'Write'_constructor {_SocketEvent'Write'data' :: !(Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body),
                                    _SocketEvent'Write'endStream :: !Prelude.Bool,
                                    _SocketEvent'Write'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SocketEvent'Write where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SocketEvent'Write "data'" Proto.Envoy.Data.Tap.V3.Common.Body where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'Write'data'
           (\ x__ y__ -> x__ {_SocketEvent'Write'data' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SocketEvent'Write "maybe'data'" (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Common.Body) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'Write'data'
           (\ x__ y__ -> x__ {_SocketEvent'Write'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketEvent'Write "endStream" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketEvent'Write'endStream
           (\ x__ y__ -> x__ {_SocketEvent'Write'endStream = y__}))
        Prelude.id
instance Data.ProtoLens.Message SocketEvent'Write where
  messageName _
    = Data.Text.pack "envoy.data.tap.v3.SocketEvent.Write"
  packedMessageDescriptor _
    = "\n\
      \\ENQWrite\DC2+\n\
      \\EOTdata\CAN\SOH \SOH(\v2\ETB.envoy.data.tap.v3.BodyR\EOTdata\DC2\GS\n\
      \\n\
      \end_stream\CAN\STX \SOH(\bR\tendStream:/\154\197\136\RS*\n\
      \(envoy.data.tap.v2alpha.SocketEvent.Write"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Tap.V3.Common.Body)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'data'")) ::
              Data.ProtoLens.FieldDescriptor SocketEvent'Write
        endStream__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_stream"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endStream")) ::
              Data.ProtoLens.FieldDescriptor SocketEvent'Write
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, data'__field_descriptor),
           (Data.ProtoLens.Tag 2, endStream__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SocketEvent'Write'_unknownFields
        (\ x__ y__ -> x__ {_SocketEvent'Write'_unknownFields = y__})
  defMessage
    = SocketEvent'Write'_constructor
        {_SocketEvent'Write'data' = Prelude.Nothing,
         _SocketEvent'Write'endStream = Data.ProtoLens.fieldDefault,
         _SocketEvent'Write'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SocketEvent'Write
          -> Data.ProtoLens.Encoding.Bytes.Parser SocketEvent'Write
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
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "end_stream"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endStream") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Write"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'data'") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endStream") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SocketEvent'Write where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SocketEvent'Write'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SocketEvent'Write'data' x__)
                (Control.DeepSeq.deepseq (_SocketEvent'Write'endStream x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.traceId' @:: Lens' SocketStreamedTraceSegment Data.Word.Word64@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'messagePiece' @:: Lens' SocketStreamedTraceSegment (Prelude.Maybe SocketStreamedTraceSegment'MessagePiece)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'connection' @:: Lens' SocketStreamedTraceSegment (Prelude.Maybe Connection)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.connection' @:: Lens' SocketStreamedTraceSegment Connection@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.maybe'event' @:: Lens' SocketStreamedTraceSegment (Prelude.Maybe SocketEvent)@
         * 'Proto.Envoy.Data.Tap.V3.Transport_Fields.event' @:: Lens' SocketStreamedTraceSegment SocketEvent@ -}
data SocketStreamedTraceSegment
  = SocketStreamedTraceSegment'_constructor {_SocketStreamedTraceSegment'traceId :: !Data.Word.Word64,
                                             _SocketStreamedTraceSegment'messagePiece :: !(Prelude.Maybe SocketStreamedTraceSegment'MessagePiece),
                                             _SocketStreamedTraceSegment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SocketStreamedTraceSegment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data SocketStreamedTraceSegment'MessagePiece
  = SocketStreamedTraceSegment'Connection !Connection |
    SocketStreamedTraceSegment'Event !SocketEvent
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SocketStreamedTraceSegment "traceId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketStreamedTraceSegment'traceId
           (\ x__ y__ -> x__ {_SocketStreamedTraceSegment'traceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketStreamedTraceSegment "maybe'messagePiece" (Prelude.Maybe SocketStreamedTraceSegment'MessagePiece) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketStreamedTraceSegment'messagePiece
           (\ x__ y__
              -> x__ {_SocketStreamedTraceSegment'messagePiece = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketStreamedTraceSegment "maybe'connection" (Prelude.Maybe Connection) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketStreamedTraceSegment'messagePiece
           (\ x__ y__
              -> x__ {_SocketStreamedTraceSegment'messagePiece = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SocketStreamedTraceSegment'Connection x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap SocketStreamedTraceSegment'Connection y__))
instance Data.ProtoLens.Field.HasField SocketStreamedTraceSegment "connection" Connection where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketStreamedTraceSegment'messagePiece
           (\ x__ y__
              -> x__ {_SocketStreamedTraceSegment'messagePiece = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SocketStreamedTraceSegment'Connection x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap SocketStreamedTraceSegment'Connection y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField SocketStreamedTraceSegment "maybe'event" (Prelude.Maybe SocketEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketStreamedTraceSegment'messagePiece
           (\ x__ y__
              -> x__ {_SocketStreamedTraceSegment'messagePiece = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SocketStreamedTraceSegment'Event x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SocketStreamedTraceSegment'Event y__))
instance Data.ProtoLens.Field.HasField SocketStreamedTraceSegment "event" SocketEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketStreamedTraceSegment'messagePiece
           (\ x__ y__
              -> x__ {_SocketStreamedTraceSegment'messagePiece = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SocketStreamedTraceSegment'Event x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SocketStreamedTraceSegment'Event y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message SocketStreamedTraceSegment where
  messageName _
    = Data.Text.pack "envoy.data.tap.v3.SocketStreamedTraceSegment"
  packedMessageDescriptor _
    = "\n\
      \\SUBSocketStreamedTraceSegment\DC2\EM\n\
      \\btrace_id\CAN\SOH \SOH(\EOTR\atraceId\DC2?\n\
      \\n\
      \connection\CAN\STX \SOH(\v2\GS.envoy.data.tap.v3.ConnectionH\NULR\n\
      \connection\DC26\n\
      \\ENQevent\CAN\ETX \SOH(\v2\RS.envoy.data.tap.v3.SocketEventH\NULR\ENQeventB\SI\n\
      \\rmessage_piece:8\154\197\136\RS3\n\
      \1envoy.data.tap.v2alpha.SocketStreamedTraceSegment"
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
              Data.ProtoLens.FieldDescriptor SocketStreamedTraceSegment
        connection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "connection"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Connection)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'connection")) ::
              Data.ProtoLens.FieldDescriptor SocketStreamedTraceSegment
        event__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SocketEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'event")) ::
              Data.ProtoLens.FieldDescriptor SocketStreamedTraceSegment
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, traceId__field_descriptor),
           (Data.ProtoLens.Tag 2, connection__field_descriptor),
           (Data.ProtoLens.Tag 3, event__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SocketStreamedTraceSegment'_unknownFields
        (\ x__ y__
           -> x__ {_SocketStreamedTraceSegment'_unknownFields = y__})
  defMessage
    = SocketStreamedTraceSegment'_constructor
        {_SocketStreamedTraceSegment'traceId = Data.ProtoLens.fieldDefault,
         _SocketStreamedTraceSegment'messagePiece = Prelude.Nothing,
         _SocketStreamedTraceSegment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SocketStreamedTraceSegment
          -> Data.ProtoLens.Encoding.Bytes.Parser SocketStreamedTraceSegment
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
                                       "connection"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"connection") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "event"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"event") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SocketStreamedTraceSegment"
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
                   (Prelude.Just (SocketStreamedTraceSegment'Connection v))
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
                   (Prelude.Just (SocketStreamedTraceSegment'Event v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
instance Control.DeepSeq.NFData SocketStreamedTraceSegment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SocketStreamedTraceSegment'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SocketStreamedTraceSegment'traceId x__)
                (Control.DeepSeq.deepseq
                   (_SocketStreamedTraceSegment'messagePiece x__) ()))
instance Control.DeepSeq.NFData SocketStreamedTraceSegment'MessagePiece where
  rnf (SocketStreamedTraceSegment'Connection x__)
    = Control.DeepSeq.rnf x__
  rnf (SocketStreamedTraceSegment'Event x__)
    = Control.DeepSeq.rnf x__
_SocketStreamedTraceSegment'Connection ::
  Data.ProtoLens.Prism.Prism' SocketStreamedTraceSegment'MessagePiece Connection
_SocketStreamedTraceSegment'Connection
  = Data.ProtoLens.Prism.prism'
      SocketStreamedTraceSegment'Connection
      (\ p__
         -> case p__ of
              (SocketStreamedTraceSegment'Connection p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SocketStreamedTraceSegment'Event ::
  Data.ProtoLens.Prism.Prism' SocketStreamedTraceSegment'MessagePiece SocketEvent
_SocketStreamedTraceSegment'Event
  = Data.ProtoLens.Prism.prism'
      SocketStreamedTraceSegment'Event
      (\ p__
         -> case p__ of
              (SocketStreamedTraceSegment'Event p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!envoy/data/tap/v3/transport.proto\DC2\DC1envoy.data.tap.v3\SUB\"envoy/config/core/v3/address.proto\SUB\RSenvoy/data/tap/v3/common.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\192\SOH\n\
    \\n\
    \Connection\DC2B\n\
    \\rlocal_address\CAN\STX \SOH(\v2\GS.envoy.config.core.v3.AddressR\flocalAddress\DC2D\n\
    \\SOremote_address\CAN\ETX \SOH(\v2\GS.envoy.config.core.v3.AddressR\rremoteAddress:(\154\197\136\RS#\n\
    \!envoy.data.tap.v2alpha.Connection\"\230\EOT\n\
    \\vSocketEvent\DC28\n\
    \\ttimestamp\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestamp\DC29\n\
    \\EOTread\CAN\STX \SOH(\v2#.envoy.data.tap.v3.SocketEvent.ReadH\NULR\EOTread\DC2<\n\
    \\ENQwrite\CAN\ETX \SOH(\v2$.envoy.data.tap.v3.SocketEvent.WriteH\NULR\ENQwrite\DC2?\n\
    \\ACKclosed\CAN\EOT \SOH(\v2%.envoy.data.tap.v3.SocketEvent.ClosedH\NULR\ACKclosed\SUBc\n\
    \\EOTRead\DC2+\n\
    \\EOTdata\CAN\SOH \SOH(\v2\ETB.envoy.data.tap.v3.BodyR\EOTdata:.\154\197\136\RS)\n\
    \'envoy.data.tap.v2alpha.SocketEvent.Read\SUB\132\SOH\n\
    \\ENQWrite\DC2+\n\
    \\EOTdata\CAN\SOH \SOH(\v2\ETB.envoy.data.tap.v3.BodyR\EOTdata\DC2\GS\n\
    \\n\
    \end_stream\CAN\STX \SOH(\bR\tendStream:/\154\197\136\RS*\n\
    \(envoy.data.tap.v2alpha.SocketEvent.Write\SUB:\n\
    \\ACKClosed:0\154\197\136\RS+\n\
    \)envoy.data.tap.v2alpha.SocketEvent.ClosedB\DLE\n\
    \\SOevent_selector:)\154\197\136\RS$\n\
    \\"envoy.data.tap.v2alpha.SocketEvent\"\170\STX\n\
    \\DC3SocketBufferedTrace\DC2\EM\n\
    \\btrace_id\CAN\SOH \SOH(\EOTR\atraceId\DC2=\n\
    \\n\
    \connection\CAN\STX \SOH(\v2\GS.envoy.data.tap.v3.ConnectionR\n\
    \connection\DC26\n\
    \\ACKevents\CAN\ETX \ETX(\v2\RS.envoy.data.tap.v3.SocketEventR\ACKevents\DC2%\n\
    \\SOread_truncated\CAN\EOT \SOH(\bR\rreadTruncated\DC2'\n\
    \\SIwrite_truncated\CAN\ENQ \SOH(\bR\SOwriteTruncated:1\154\197\136\RS,\n\
    \*envoy.data.tap.v2alpha.SocketBufferedTrace\"\251\SOH\n\
    \\SUBSocketStreamedTraceSegment\DC2\EM\n\
    \\btrace_id\CAN\SOH \SOH(\EOTR\atraceId\DC2?\n\
    \\n\
    \connection\CAN\STX \SOH(\v2\GS.envoy.data.tap.v3.ConnectionH\NULR\n\
    \connection\DC26\n\
    \\ENQevent\CAN\ETX \SOH(\v2\RS.envoy.data.tap.v3.SocketEventH\NULR\ENQeventB\SI\n\
    \\rmessage_piece:8\154\197\136\RS3\n\
    \1envoy.data.tap.v2alpha.SocketStreamedTraceSegmentB;\n\
    \\USio.envoyproxy.envoy.data.tap.v3B\SOTransportProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\234\CAN\n\
    \\ACK\DC2\EOT\NUL\NULy\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL8\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\189\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NUL\RS\SOH\SUB\CAN Connection properties.\n\
    \2\150\SOH [#protodoc-title: Transport tap data]\n\
    \ Trace format for the tap transport socket extension. This dumps plain text read/write\n\
    \ sequences on a socket.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\ETB\STXc\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\ETB\STXc\n\
    \\GS\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX+\SUB\DLE Local address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SUB\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\EM&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB)*\n\
    \\RS\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\STX,\SUB\DC1 Remote address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\GS\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\EM'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS*+\n\
    \&\n\
    \\STX\EOT\SOH\DC2\EOT!\NULN\SOH\SUB\SUB Event in a socket trace.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX!\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\"\STXd\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX\"\STXd\n\
    \c\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOT%\STX-\ETX\SUB/ Data read by Envoy from the transport socket.\n\
    \\"$ TODO(htuch): Half-close for reads.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETX%\n\
    \\SO\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\a\DC2\EOT(\EOT)2\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT(\EOT)2\n\
    \\"\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETX,\EOT\DC2\SUB\DC3 Binary data read.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ACK\DC2\ETX,\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETX,\t\r\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETX,\DLE\DC1\n\
    \>\n\
    \\EOT\EOT\SOH\ETX\SOH\DC2\EOT0\STX9\ETX\SUB0 Data written by Envoy to the transport socket.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\SOH\SOH\DC2\ETX0\n\
    \\SI\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\SOH\a\DC2\EOT1\EOT23\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOT1\EOT23\n\
    \%\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\NUL\DC2\ETX5\EOT\DC2\SUB\SYN Binary data written.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ACK\DC2\ETX5\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\SOH\DC2\ETX5\t\r\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ETX\DC2\ETX5\DLE\DC1\n\
    \9\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\SOH\DC2\ETX8\EOT\CAN\SUB* Stream was half closed after this write.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ENQ\DC2\ETX8\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\SOH\DC2\ETX8\t\DC3\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ETX\DC2\ETX8\SYN\ETB\n\
    \S\n\
    \\EOT\EOT\SOH\ETX\STX\DC2\EOT<\STXA\ETX\SUB\FS The connection was closed.\n\
    \\"' TODO(mattklein123): Close event type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\STX\SOH\DC2\ETX<\n\
    \\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\STX\a\DC2\EOT?\EOT@4\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\STX\a\211\136\225\ETX\SOH\DC2\EOT?\EOT@4\n\
    \#\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXD\STX*\SUB\SYN Timestamp for event.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXD\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXD\FS%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXD()\n\
    \;\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOTG\STXM\ETX\SUB- Read or write with content as bytes string.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETXG\b\SYN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXH\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXH\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXH\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXH\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXJ\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXJ\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXJ\n\
    \\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXJ\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXL\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETXL\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXL\DC4\NAK\n\
    \p\n\
    \\STX\EOT\STX\DC2\EOTR\NULg\SOH\SUBd Sequence of read/write events that constitute a buffered trace on a socket.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXR\b\ESC\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOTS\STXT3\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOTS\STXT3\n\
    \\183\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXX\STX\SYN\SUB\169\SOH Trace ID unique to the originating Envoy only. Trace IDs can repeat and should not be used\n\
    \ for long term stable uniqueness. Matches connection IDs used in Envoy logs.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXX\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXX\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXX\DC4\NAK\n\
    \%\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX[\STX\FS\SUB\CAN Connection properties.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX[\STX\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX[\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX[\SUB\ESC\n\
    \+\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX^\STX\"\SUB\RS Sequence of observed events.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX^\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX^\ETB\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX^ !\n\
    \\177\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXb\STX\SUB\SUB\163\SOH Set to true if read events were truncated due to the :ref:`max_buffered_rx_bytes\n\
    \ <envoy_v3_api_field_config.tap.v3.OutputConfig.max_buffered_rx_bytes>` setting.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETXb\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXb\a\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXb\CAN\EM\n\
    \\178\SOH\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXf\STX\ESC\SUB\164\SOH Set to true if write events were truncated due to the :ref:`max_buffered_tx_bytes\n\
    \ <envoy_v3_api_field_config.tap.v3.OutputConfig.max_buffered_tx_bytes>` setting.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETXf\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXf\a\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXf\EM\SUB\n\
    \V\n\
    \\STX\EOT\ETX\DC2\EOTj\NULy\SOH\SUBJ A streamed socket trace segment. Multiple segments make up a full trace.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXj\b\"\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOTk\STXl:\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOTk\STXl:\n\
    \\183\SOH\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXp\STX\SYN\SUB\169\SOH Trace ID unique to the originating Envoy only. Trace IDs can repeat and should not be used\n\
    \ for long term stable uniqueness. Matches connection IDs used in Envoy logs.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXp\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXp\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXp\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT\ETX\b\NUL\DC2\EOTr\STXx\ETX\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\ETXr\b\NAK\n\
    \%\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXt\EOT\RS\SUB\CAN Connection properties.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXt\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXt\SI\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXt\FS\GS\n\
    \\FS\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXw\EOT\SUB\SUB\SI Socket event.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETXw\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXw\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXw\CAN\EMb\ACKproto3"