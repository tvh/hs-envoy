{- This file was auto-generated from envoy/service/accesslog/v3/als.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Accesslog.V3.Als (
        AccessLogService(..), StreamAccessLogsMessage(),
        StreamAccessLogsMessage'LogEntries(..),
        _StreamAccessLogsMessage'HttpLogs,
        _StreamAccessLogsMessage'TcpLogs,
        StreamAccessLogsMessage'HTTPAccessLogEntries(),
        StreamAccessLogsMessage'Identifier(),
        StreamAccessLogsMessage'TCPAccessLogEntries(),
        StreamAccessLogsResponse()
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
import qualified Proto.Envoy.Data.Accesslog.V3.Accesslog
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.identifier' @:: Lens' StreamAccessLogsMessage StreamAccessLogsMessage'Identifier@
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.maybe'identifier' @:: Lens' StreamAccessLogsMessage (Prelude.Maybe StreamAccessLogsMessage'Identifier)@
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.maybe'logEntries' @:: Lens' StreamAccessLogsMessage (Prelude.Maybe StreamAccessLogsMessage'LogEntries)@
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.maybe'httpLogs' @:: Lens' StreamAccessLogsMessage (Prelude.Maybe StreamAccessLogsMessage'HTTPAccessLogEntries)@
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.httpLogs' @:: Lens' StreamAccessLogsMessage StreamAccessLogsMessage'HTTPAccessLogEntries@
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.maybe'tcpLogs' @:: Lens' StreamAccessLogsMessage (Prelude.Maybe StreamAccessLogsMessage'TCPAccessLogEntries)@
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.tcpLogs' @:: Lens' StreamAccessLogsMessage StreamAccessLogsMessage'TCPAccessLogEntries@ -}
data StreamAccessLogsMessage
  = StreamAccessLogsMessage'_constructor {_StreamAccessLogsMessage'identifier :: !(Prelude.Maybe StreamAccessLogsMessage'Identifier),
                                          _StreamAccessLogsMessage'logEntries :: !(Prelude.Maybe StreamAccessLogsMessage'LogEntries),
                                          _StreamAccessLogsMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamAccessLogsMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StreamAccessLogsMessage'LogEntries
  = StreamAccessLogsMessage'HttpLogs !StreamAccessLogsMessage'HTTPAccessLogEntries |
    StreamAccessLogsMessage'TcpLogs !StreamAccessLogsMessage'TCPAccessLogEntries
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage "identifier" StreamAccessLogsMessage'Identifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'identifier
           (\ x__ y__ -> x__ {_StreamAccessLogsMessage'identifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage "maybe'identifier" (Prelude.Maybe StreamAccessLogsMessage'Identifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'identifier
           (\ x__ y__ -> x__ {_StreamAccessLogsMessage'identifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage "maybe'logEntries" (Prelude.Maybe StreamAccessLogsMessage'LogEntries) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'logEntries
           (\ x__ y__ -> x__ {_StreamAccessLogsMessage'logEntries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage "maybe'httpLogs" (Prelude.Maybe StreamAccessLogsMessage'HTTPAccessLogEntries) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'logEntries
           (\ x__ y__ -> x__ {_StreamAccessLogsMessage'logEntries = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StreamAccessLogsMessage'HttpLogs x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StreamAccessLogsMessage'HttpLogs y__))
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage "httpLogs" StreamAccessLogsMessage'HTTPAccessLogEntries where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'logEntries
           (\ x__ y__ -> x__ {_StreamAccessLogsMessage'logEntries = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StreamAccessLogsMessage'HttpLogs x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StreamAccessLogsMessage'HttpLogs y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage "maybe'tcpLogs" (Prelude.Maybe StreamAccessLogsMessage'TCPAccessLogEntries) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'logEntries
           (\ x__ y__ -> x__ {_StreamAccessLogsMessage'logEntries = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StreamAccessLogsMessage'TcpLogs x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StreamAccessLogsMessage'TcpLogs y__))
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage "tcpLogs" StreamAccessLogsMessage'TCPAccessLogEntries where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'logEntries
           (\ x__ y__ -> x__ {_StreamAccessLogsMessage'logEntries = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StreamAccessLogsMessage'TcpLogs x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StreamAccessLogsMessage'TcpLogs y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message StreamAccessLogsMessage where
  messageName _
    = Data.Text.pack
        "envoy.service.accesslog.v3.StreamAccessLogsMessage"
  packedMessageDescriptor _
    = "\n\
      \\ETBStreamAccessLogsMessage\DC2^\n\
      \\n\
      \identifier\CAN\SOH \SOH(\v2>.envoy.service.accesslog.v3.StreamAccessLogsMessage.IdentifierR\n\
      \identifier\DC2g\n\
      \\thttp_logs\CAN\STX \SOH(\v2H.envoy.service.accesslog.v3.StreamAccessLogsMessage.HTTPAccessLogEntriesH\NULR\bhttpLogs\DC2d\n\
      \\btcp_logs\CAN\ETX \SOH(\v2G.envoy.service.accesslog.v3.StreamAccessLogsMessage.TCPAccessLogEntriesH\NULR\atcpLogs\SUB\176\SOH\n\
      \\n\
      \Identifier\DC28\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\"\n\
      \\blog_name\CAN\STX \SOH(\tR\alogNameB\a\250B\EOTr\STX\DLE\SOH:D\154\197\136\RS?\n\
      \=envoy.service.accesslog.v2.StreamAccessLogsMessage.Identifier\SUB\186\SOH\n\
      \\DC4HTTPAccessLogEntries\DC2R\n\
      \\tlog_entry\CAN\SOH \ETX(\v2+.envoy.data.accesslog.v3.HTTPAccessLogEntryR\blogEntryB\b\250B\ENQ\146\SOH\STX\b\SOH:N\154\197\136\RSI\n\
      \Genvoy.service.accesslog.v2.StreamAccessLogsMessage.HTTPAccessLogEntries\SUB\183\SOH\n\
      \\DC3TCPAccessLogEntries\DC2Q\n\
      \\tlog_entry\CAN\SOH \ETX(\v2*.envoy.data.accesslog.v3.TCPAccessLogEntryR\blogEntryB\b\250B\ENQ\146\SOH\STX\b\SOH:M\154\197\136\RSH\n\
      \Fenvoy.service.accesslog.v2.StreamAccessLogsMessage.TCPAccessLogEntriesB\DC2\n\
      \\vlog_entries\DC2\ETX\248B\SOH:9\154\197\136\RS4\n\
      \2envoy.service.accesslog.v2.StreamAccessLogsMessage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        identifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StreamAccessLogsMessage'Identifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'identifier")) ::
              Data.ProtoLens.FieldDescriptor StreamAccessLogsMessage
        httpLogs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_logs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StreamAccessLogsMessage'HTTPAccessLogEntries)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpLogs")) ::
              Data.ProtoLens.FieldDescriptor StreamAccessLogsMessage
        tcpLogs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tcp_logs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StreamAccessLogsMessage'TCPAccessLogEntries)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tcpLogs")) ::
              Data.ProtoLens.FieldDescriptor StreamAccessLogsMessage
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identifier__field_descriptor),
           (Data.ProtoLens.Tag 2, httpLogs__field_descriptor),
           (Data.ProtoLens.Tag 3, tcpLogs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamAccessLogsMessage'_unknownFields
        (\ x__ y__ -> x__ {_StreamAccessLogsMessage'_unknownFields = y__})
  defMessage
    = StreamAccessLogsMessage'_constructor
        {_StreamAccessLogsMessage'identifier = Prelude.Nothing,
         _StreamAccessLogsMessage'logEntries = Prelude.Nothing,
         _StreamAccessLogsMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamAccessLogsMessage
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamAccessLogsMessage
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
                                       "identifier"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identifier") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_logs"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"httpLogs") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tcp_logs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tcpLogs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StreamAccessLogsMessage"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'logEntries") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (StreamAccessLogsMessage'HttpLogs v))
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
                   (Prelude.Just (StreamAccessLogsMessage'TcpLogs v))
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
instance Control.DeepSeq.NFData StreamAccessLogsMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamAccessLogsMessage'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamAccessLogsMessage'identifier x__)
                (Control.DeepSeq.deepseq
                   (_StreamAccessLogsMessage'logEntries x__) ()))
instance Control.DeepSeq.NFData StreamAccessLogsMessage'LogEntries where
  rnf (StreamAccessLogsMessage'HttpLogs x__)
    = Control.DeepSeq.rnf x__
  rnf (StreamAccessLogsMessage'TcpLogs x__) = Control.DeepSeq.rnf x__
_StreamAccessLogsMessage'HttpLogs ::
  Data.ProtoLens.Prism.Prism' StreamAccessLogsMessage'LogEntries StreamAccessLogsMessage'HTTPAccessLogEntries
_StreamAccessLogsMessage'HttpLogs
  = Data.ProtoLens.Prism.prism'
      StreamAccessLogsMessage'HttpLogs
      (\ p__
         -> case p__ of
              (StreamAccessLogsMessage'HttpLogs p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StreamAccessLogsMessage'TcpLogs ::
  Data.ProtoLens.Prism.Prism' StreamAccessLogsMessage'LogEntries StreamAccessLogsMessage'TCPAccessLogEntries
_StreamAccessLogsMessage'TcpLogs
  = Data.ProtoLens.Prism.prism'
      StreamAccessLogsMessage'TcpLogs
      (\ p__
         -> case p__ of
              (StreamAccessLogsMessage'TcpLogs p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.logEntry' @:: Lens' StreamAccessLogsMessage'HTTPAccessLogEntries [Proto.Envoy.Data.Accesslog.V3.Accesslog.HTTPAccessLogEntry]@
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.vec'logEntry' @:: Lens' StreamAccessLogsMessage'HTTPAccessLogEntries (Data.Vector.Vector Proto.Envoy.Data.Accesslog.V3.Accesslog.HTTPAccessLogEntry)@ -}
data StreamAccessLogsMessage'HTTPAccessLogEntries
  = StreamAccessLogsMessage'HTTPAccessLogEntries'_constructor {_StreamAccessLogsMessage'HTTPAccessLogEntries'logEntry :: !(Data.Vector.Vector Proto.Envoy.Data.Accesslog.V3.Accesslog.HTTPAccessLogEntry),
                                                               _StreamAccessLogsMessage'HTTPAccessLogEntries'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamAccessLogsMessage'HTTPAccessLogEntries where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage'HTTPAccessLogEntries "logEntry" [Proto.Envoy.Data.Accesslog.V3.Accesslog.HTTPAccessLogEntry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'HTTPAccessLogEntries'logEntry
           (\ x__ y__
              -> x__
                   {_StreamAccessLogsMessage'HTTPAccessLogEntries'logEntry = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage'HTTPAccessLogEntries "vec'logEntry" (Data.Vector.Vector Proto.Envoy.Data.Accesslog.V3.Accesslog.HTTPAccessLogEntry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'HTTPAccessLogEntries'logEntry
           (\ x__ y__
              -> x__
                   {_StreamAccessLogsMessage'HTTPAccessLogEntries'logEntry = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamAccessLogsMessage'HTTPAccessLogEntries where
  messageName _
    = Data.Text.pack
        "envoy.service.accesslog.v3.StreamAccessLogsMessage.HTTPAccessLogEntries"
  packedMessageDescriptor _
    = "\n\
      \\DC4HTTPAccessLogEntries\DC2R\n\
      \\tlog_entry\CAN\SOH \ETX(\v2+.envoy.data.accesslog.v3.HTTPAccessLogEntryR\blogEntryB\b\250B\ENQ\146\SOH\STX\b\SOH:N\154\197\136\RSI\n\
      \Genvoy.service.accesslog.v2.StreamAccessLogsMessage.HTTPAccessLogEntries"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        logEntry__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_entry"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Accesslog.V3.Accesslog.HTTPAccessLogEntry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"logEntry")) ::
              Data.ProtoLens.FieldDescriptor StreamAccessLogsMessage'HTTPAccessLogEntries
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, logEntry__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamAccessLogsMessage'HTTPAccessLogEntries'_unknownFields
        (\ x__ y__
           -> x__
                {_StreamAccessLogsMessage'HTTPAccessLogEntries'_unknownFields = y__})
  defMessage
    = StreamAccessLogsMessage'HTTPAccessLogEntries'_constructor
        {_StreamAccessLogsMessage'HTTPAccessLogEntries'logEntry = Data.Vector.Generic.empty,
         _StreamAccessLogsMessage'HTTPAccessLogEntries'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamAccessLogsMessage'HTTPAccessLogEntries
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Data.Accesslog.V3.Accesslog.HTTPAccessLogEntry
             -> Data.ProtoLens.Encoding.Bytes.Parser StreamAccessLogsMessage'HTTPAccessLogEntries
        loop x mutable'logEntry
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'logEntry <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'logEntry)
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
                              (Data.ProtoLens.Field.field @"vec'logEntry") frozen'logEntry x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "log_entry"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'logEntry y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'logEntry
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'logEntry <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'logEntry)
          "HTTPAccessLogEntries"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'logEntry") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData StreamAccessLogsMessage'HTTPAccessLogEntries where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamAccessLogsMessage'HTTPAccessLogEntries'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamAccessLogsMessage'HTTPAccessLogEntries'logEntry x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.node' @:: Lens' StreamAccessLogsMessage'Identifier Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.maybe'node' @:: Lens' StreamAccessLogsMessage'Identifier (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.logName' @:: Lens' StreamAccessLogsMessage'Identifier Data.Text.Text@ -}
data StreamAccessLogsMessage'Identifier
  = StreamAccessLogsMessage'Identifier'_constructor {_StreamAccessLogsMessage'Identifier'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                                                     _StreamAccessLogsMessage'Identifier'logName :: !Data.Text.Text,
                                                     _StreamAccessLogsMessage'Identifier'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamAccessLogsMessage'Identifier where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage'Identifier "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'Identifier'node
           (\ x__ y__
              -> x__ {_StreamAccessLogsMessage'Identifier'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage'Identifier "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'Identifier'node
           (\ x__ y__
              -> x__ {_StreamAccessLogsMessage'Identifier'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage'Identifier "logName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'Identifier'logName
           (\ x__ y__
              -> x__ {_StreamAccessLogsMessage'Identifier'logName = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamAccessLogsMessage'Identifier where
  messageName _
    = Data.Text.pack
        "envoy.service.accesslog.v3.StreamAccessLogsMessage.Identifier"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Identifier\DC28\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\"\n\
      \\blog_name\CAN\STX \SOH(\tR\alogNameB\a\250B\EOTr\STX\DLE\SOH:D\154\197\136\RS?\n\
      \=envoy.service.accesslog.v2.StreamAccessLogsMessage.Identifier"
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
              Data.ProtoLens.FieldDescriptor StreamAccessLogsMessage'Identifier
        logName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"logName")) ::
              Data.ProtoLens.FieldDescriptor StreamAccessLogsMessage'Identifier
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, node__field_descriptor),
           (Data.ProtoLens.Tag 2, logName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamAccessLogsMessage'Identifier'_unknownFields
        (\ x__ y__
           -> x__ {_StreamAccessLogsMessage'Identifier'_unknownFields = y__})
  defMessage
    = StreamAccessLogsMessage'Identifier'_constructor
        {_StreamAccessLogsMessage'Identifier'node = Prelude.Nothing,
         _StreamAccessLogsMessage'Identifier'logName = Data.ProtoLens.fieldDefault,
         _StreamAccessLogsMessage'Identifier'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamAccessLogsMessage'Identifier
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamAccessLogsMessage'Identifier
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
                                       "log_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"logName") y x)
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"logName") _x
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
instance Control.DeepSeq.NFData StreamAccessLogsMessage'Identifier where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamAccessLogsMessage'Identifier'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamAccessLogsMessage'Identifier'node x__)
                (Control.DeepSeq.deepseq
                   (_StreamAccessLogsMessage'Identifier'logName x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.logEntry' @:: Lens' StreamAccessLogsMessage'TCPAccessLogEntries [Proto.Envoy.Data.Accesslog.V3.Accesslog.TCPAccessLogEntry]@
         * 'Proto.Envoy.Service.Accesslog.V3.Als_Fields.vec'logEntry' @:: Lens' StreamAccessLogsMessage'TCPAccessLogEntries (Data.Vector.Vector Proto.Envoy.Data.Accesslog.V3.Accesslog.TCPAccessLogEntry)@ -}
data StreamAccessLogsMessage'TCPAccessLogEntries
  = StreamAccessLogsMessage'TCPAccessLogEntries'_constructor {_StreamAccessLogsMessage'TCPAccessLogEntries'logEntry :: !(Data.Vector.Vector Proto.Envoy.Data.Accesslog.V3.Accesslog.TCPAccessLogEntry),
                                                              _StreamAccessLogsMessage'TCPAccessLogEntries'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamAccessLogsMessage'TCPAccessLogEntries where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage'TCPAccessLogEntries "logEntry" [Proto.Envoy.Data.Accesslog.V3.Accesslog.TCPAccessLogEntry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'TCPAccessLogEntries'logEntry
           (\ x__ y__
              -> x__
                   {_StreamAccessLogsMessage'TCPAccessLogEntries'logEntry = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamAccessLogsMessage'TCPAccessLogEntries "vec'logEntry" (Data.Vector.Vector Proto.Envoy.Data.Accesslog.V3.Accesslog.TCPAccessLogEntry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamAccessLogsMessage'TCPAccessLogEntries'logEntry
           (\ x__ y__
              -> x__
                   {_StreamAccessLogsMessage'TCPAccessLogEntries'logEntry = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamAccessLogsMessage'TCPAccessLogEntries where
  messageName _
    = Data.Text.pack
        "envoy.service.accesslog.v3.StreamAccessLogsMessage.TCPAccessLogEntries"
  packedMessageDescriptor _
    = "\n\
      \\DC3TCPAccessLogEntries\DC2Q\n\
      \\tlog_entry\CAN\SOH \ETX(\v2*.envoy.data.accesslog.v3.TCPAccessLogEntryR\blogEntryB\b\250B\ENQ\146\SOH\STX\b\SOH:M\154\197\136\RSH\n\
      \Fenvoy.service.accesslog.v2.StreamAccessLogsMessage.TCPAccessLogEntries"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        logEntry__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_entry"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Accesslog.V3.Accesslog.TCPAccessLogEntry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"logEntry")) ::
              Data.ProtoLens.FieldDescriptor StreamAccessLogsMessage'TCPAccessLogEntries
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, logEntry__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamAccessLogsMessage'TCPAccessLogEntries'_unknownFields
        (\ x__ y__
           -> x__
                {_StreamAccessLogsMessage'TCPAccessLogEntries'_unknownFields = y__})
  defMessage
    = StreamAccessLogsMessage'TCPAccessLogEntries'_constructor
        {_StreamAccessLogsMessage'TCPAccessLogEntries'logEntry = Data.Vector.Generic.empty,
         _StreamAccessLogsMessage'TCPAccessLogEntries'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamAccessLogsMessage'TCPAccessLogEntries
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Data.Accesslog.V3.Accesslog.TCPAccessLogEntry
             -> Data.ProtoLens.Encoding.Bytes.Parser StreamAccessLogsMessage'TCPAccessLogEntries
        loop x mutable'logEntry
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'logEntry <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'logEntry)
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
                              (Data.ProtoLens.Field.field @"vec'logEntry") frozen'logEntry x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "log_entry"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'logEntry y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'logEntry
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'logEntry <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'logEntry)
          "TCPAccessLogEntries"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'logEntry") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData StreamAccessLogsMessage'TCPAccessLogEntries where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamAccessLogsMessage'TCPAccessLogEntries'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamAccessLogsMessage'TCPAccessLogEntries'logEntry x__) ())
{- | Fields :
      -}
data StreamAccessLogsResponse
  = StreamAccessLogsResponse'_constructor {_StreamAccessLogsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamAccessLogsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message StreamAccessLogsResponse where
  messageName _
    = Data.Text.pack
        "envoy.service.accesslog.v3.StreamAccessLogsResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANStreamAccessLogsResponse::\154\197\136\RS5\n\
      \3envoy.service.accesslog.v2.StreamAccessLogsResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamAccessLogsResponse'_unknownFields
        (\ x__ y__ -> x__ {_StreamAccessLogsResponse'_unknownFields = y__})
  defMessage
    = StreamAccessLogsResponse'_constructor
        {_StreamAccessLogsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamAccessLogsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamAccessLogsResponse
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
          (do loop Data.ProtoLens.defMessage) "StreamAccessLogsResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData StreamAccessLogsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamAccessLogsResponse'_unknownFields x__) ()
data AccessLogService = AccessLogService {}
instance Data.ProtoLens.Service.Types.Service AccessLogService where
  type ServiceName AccessLogService = "AccessLogService"
  type ServicePackage AccessLogService = "envoy.service.accesslog.v3"
  type ServiceMethods AccessLogService = '["streamAccessLogs"]
instance Data.ProtoLens.Service.Types.HasMethodImpl AccessLogService "streamAccessLogs" where
  type MethodName AccessLogService "streamAccessLogs" = "StreamAccessLogs"
  type MethodInput AccessLogService "streamAccessLogs" = StreamAccessLogsMessage
  type MethodOutput AccessLogService "streamAccessLogs" = StreamAccessLogsResponse
  type MethodStreamingType AccessLogService "streamAccessLogs" = 'Data.ProtoLens.Service.Types.ClientStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$envoy/service/accesslog/v3/als.proto\DC2\SUBenvoy.service.accesslog.v3\SUB\USenvoy/config/core/v3/base.proto\SUB'envoy/data/accesslog/v3/accesslog.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"V\n\
    \\CANStreamAccessLogsResponse::\154\197\136\RS5\n\
    \3envoy.service.accesslog.v2.StreamAccessLogsResponse\"\193\a\n\
    \\ETBStreamAccessLogsMessage\DC2^\n\
    \\n\
    \identifier\CAN\SOH \SOH(\v2>.envoy.service.accesslog.v3.StreamAccessLogsMessage.IdentifierR\n\
    \identifier\DC2g\n\
    \\thttp_logs\CAN\STX \SOH(\v2H.envoy.service.accesslog.v3.StreamAccessLogsMessage.HTTPAccessLogEntriesH\NULR\bhttpLogs\DC2d\n\
    \\btcp_logs\CAN\ETX \SOH(\v2G.envoy.service.accesslog.v3.StreamAccessLogsMessage.TCPAccessLogEntriesH\NULR\atcpLogs\SUB\176\SOH\n\
    \\n\
    \Identifier\DC28\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\"\n\
    \\blog_name\CAN\STX \SOH(\tR\alogNameB\a\250B\EOTr\STX\DLE\SOH:D\154\197\136\RS?\n\
    \=envoy.service.accesslog.v2.StreamAccessLogsMessage.Identifier\SUB\186\SOH\n\
    \\DC4HTTPAccessLogEntries\DC2R\n\
    \\tlog_entry\CAN\SOH \ETX(\v2+.envoy.data.accesslog.v3.HTTPAccessLogEntryR\blogEntryB\b\250B\ENQ\146\SOH\STX\b\SOH:N\154\197\136\RSI\n\
    \Genvoy.service.accesslog.v2.StreamAccessLogsMessage.HTTPAccessLogEntries\SUB\183\SOH\n\
    \\DC3TCPAccessLogEntries\DC2Q\n\
    \\tlog_entry\CAN\SOH \ETX(\v2*.envoy.data.accesslog.v3.TCPAccessLogEntryR\blogEntryB\b\250B\ENQ\146\SOH\STX\b\SOH:M\154\197\136\RSH\n\
    \Fenvoy.service.accesslog.v2.StreamAccessLogsMessage.TCPAccessLogEntriesB\DC2\n\
    \\vlog_entries\DC2\ETX\248B\SOH:9\154\197\136\RS4\n\
    \2envoy.service.accesslog.v2.StreamAccessLogsMessage2\150\SOH\n\
    \\DLEAccessLogService\DC2\129\SOH\n\
    \\DLEStreamAccessLogs\DC23.envoy.service.accesslog.v3.StreamAccessLogsMessage\SUB4.envoy.service.accesslog.v3.StreamAccessLogsResponse\"\NUL(\SOHBA\n\
    \(io.envoyproxy.envoy.service.accesslog.v3B\bAlsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\143\NAK\n\
    \\ACK\DC2\EOT\NUL\NULV\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL#\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL1\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULA\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULA\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\SO\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\135\SOH\n\
    \\STX\ACK\NUL\DC2\EOT\DC4\NUL\GS\SOH\SUBG Service for streaming access logs from Envoy to an access log server.\n\
    \22 [#protodoc-title: gRPC Access Log Service (ALS)]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DC4\b\CAN\n\
    \\134\EOT\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\ESC\STX\FS\ETX\SUB\247\ETX Envoy will connect and send StreamAccessLogsMessage messages forever. It does not expect any\n\
    \ response to be sent as nothing would be done in the case of failure. The server should\n\
    \ disconnect if it expects Envoy to reconnect. In the future we may decide to add a different\n\
    \ API for \"critical\" access logs in which Envoy will buffer access logs for some period of time\n\
    \ until it gets an ACK so it could then retry. This API is designed for high throughput with the\n\
    \ expectation that it might be lossy.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\ESC\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\ESC\ETB\GS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\ESC\RS5\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\ESC@X\n\
    \Y\n\
    \\STX\EOT\NUL\DC2\EOT \NUL#\SOH\SUBM Empty response for the StreamAccessLogs API. Will never be sent. See below.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX \b \n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT!\STX\"<\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT!\STX\"<\n\
    \\157\SOH\n\
    \\STX\EOT\SOH\DC2\EOT'\NULV\SOH\SUB\144\SOH Stream message for the StreamAccessLogs API. Envoy will open a stream to the server and stream\n\
    \ access logs without ever expecting a response.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX'\b\US\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT(\STX);\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT(\STX);\n\
    \\f\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOT+\STX5\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETX+\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\a\DC2\EOT,\EOT-H\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT,\EOT-H\n\
    \J\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETX0\EOTO\SUB; The node sending the access log messages over the stream.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ACK\DC2\ETX0\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETX0\CAN\FS\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETX0\US \n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\b\DC2\ETX0!N\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\NUL\b\175\b\DC1\DC2\ETX0\"M\n\
    \\174\SOH\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\SOH\DC2\ETX4\EOTA\SUB\158\SOH The friendly name of the log configured in :ref:`CommonGrpcAccessLogConfig\n\
    \ <envoy_v3_api_msg_extensions.access_loggers.grpc.v3.CommonGrpcAccessLogConfig>`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ENQ\DC2\ETX4\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\SOH\DC2\ETX4\v\DC3\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ETX\DC2\ETX4\SYN\ETB\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\b\DC2\ETX4\CAN@\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\SOH\b\175\b\SO\DC2\ETX4\EM?\n\
    \?\n\
    \\EOT\EOT\SOH\ETX\SOH\DC2\EOT8\STX>\ETX\SUB1 Wrapper for batches of HTTP access log entries.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\SOH\SOH\DC2\ETX8\n\
    \\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\SOH\a\DC2\EOT9\EOT:R\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOT9\EOT:R\n\
    \\SO\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\NUL\DC2\EOT<\EOT=5\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\EOT\DC2\ETX<\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ACK\DC2\ETX<\r1\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\SOH\DC2\ETX<2;\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ETX\DC2\ETX<>?\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\b\DC2\ETX=\b4\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\SOH\STX\NUL\b\175\b\DC2\DC2\ETX=\t3\n\
    \>\n\
    \\EOT\EOT\SOH\ETX\STX\DC2\EOTA\STXG\ETX\SUB0 Wrapper for batches of TCP access log entries.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\STX\SOH\DC2\ETXA\n\
    \\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\STX\a\DC2\EOTB\EOTCQ\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\STX\a\211\136\225\ETX\SOH\DC2\EOTB\EOTCQ\n\
    \\SO\n\
    \\ACK\EOT\SOH\ETX\STX\STX\NUL\DC2\EOTE\EOTF5\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\EOT\DC2\ETXE\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ACK\DC2\ETXE\r0\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\SOH\DC2\ETXE1:\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ETX\DC2\ETXE=>\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\b\DC2\ETXF\b4\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\STX\STX\NUL\b\175\b\DC2\DC2\ETXF\t3\n\
    \\166\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXK\STX\FS\SUB\152\SOH Identifier data that will only be sent in the first message on the stream. This is effectively\n\
    \ structured metadata and is a performance optimization.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXK\STX\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXK\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXK\SUB\ESC\n\
    \\140\SOH\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOTO\STXU\ETX\SUB~ Batches of log entries of a single type. Generally speaking, a given stream should only\n\
    \ ever include one type of log entry.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETXO\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETXP\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETXP\EOT&\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXR\EOT'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXR\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXR\EM\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXR%&\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXT\EOT%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXT\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXT\CAN \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXT#$b\ACKproto3"