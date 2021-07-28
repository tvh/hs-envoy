{- This file was auto-generated from envoy/extensions/access_loggers/stream/v3/stream.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.AccessLoggers.Stream.V3.Stream (
        StderrAccessLog(), StderrAccessLog'AccessLogFormat(..),
        _StderrAccessLog'LogFormat, StdoutAccessLog(),
        StdoutAccessLog'AccessLogFormat(..), _StdoutAccessLog'LogFormat
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
import qualified Proto.Envoy.Config.Core.V3.SubstitutionFormatString
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.AccessLoggers.Stream.V3.Stream_Fields.maybe'accessLogFormat' @:: Lens' StderrAccessLog (Prelude.Maybe StderrAccessLog'AccessLogFormat)@
         * 'Proto.Envoy.Extensions.AccessLoggers.Stream.V3.Stream_Fields.maybe'logFormat' @:: Lens' StderrAccessLog (Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString)@
         * 'Proto.Envoy.Extensions.AccessLoggers.Stream.V3.Stream_Fields.logFormat' @:: Lens' StderrAccessLog Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString@ -}
data StderrAccessLog
  = StderrAccessLog'_constructor {_StderrAccessLog'accessLogFormat :: !(Prelude.Maybe StderrAccessLog'AccessLogFormat),
                                  _StderrAccessLog'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StderrAccessLog where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StderrAccessLog'AccessLogFormat
  = StderrAccessLog'LogFormat !Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StderrAccessLog "maybe'accessLogFormat" (Prelude.Maybe StderrAccessLog'AccessLogFormat) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StderrAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_StderrAccessLog'accessLogFormat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StderrAccessLog "maybe'logFormat" (Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StderrAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_StderrAccessLog'accessLogFormat = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StderrAccessLog'LogFormat x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StderrAccessLog'LogFormat y__))
instance Data.ProtoLens.Field.HasField StderrAccessLog "logFormat" Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StderrAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_StderrAccessLog'accessLogFormat = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StderrAccessLog'LogFormat x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StderrAccessLog'LogFormat y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message StderrAccessLog where
  messageName _
    = Data.Text.pack
        "envoy.extensions.access_loggers.stream.v3.StderrAccessLog"
  packedMessageDescriptor _
    = "\n\
      \\SIStderrAccessLog\DC2Y\n\
      \\n\
      \log_format\CAN\SOH \SOH(\v2..envoy.config.core.v3.SubstitutionFormatStringH\NULR\tlogFormatB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\DC3\n\
      \\DC1access_log_format"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        logFormat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_format"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'logFormat")) ::
              Data.ProtoLens.FieldDescriptor StderrAccessLog
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, logFormat__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StderrAccessLog'_unknownFields
        (\ x__ y__ -> x__ {_StderrAccessLog'_unknownFields = y__})
  defMessage
    = StderrAccessLog'_constructor
        {_StderrAccessLog'accessLogFormat = Prelude.Nothing,
         _StderrAccessLog'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StderrAccessLog
          -> Data.ProtoLens.Encoding.Bytes.Parser StderrAccessLog
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
                                       "log_format"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"logFormat") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StderrAccessLog"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'accessLogFormat") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (StderrAccessLog'LogFormat v))
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
instance Control.DeepSeq.NFData StderrAccessLog where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StderrAccessLog'_unknownFields x__)
             (Control.DeepSeq.deepseq (_StderrAccessLog'accessLogFormat x__) ())
instance Control.DeepSeq.NFData StderrAccessLog'AccessLogFormat where
  rnf (StderrAccessLog'LogFormat x__) = Control.DeepSeq.rnf x__
_StderrAccessLog'LogFormat ::
  Data.ProtoLens.Prism.Prism' StderrAccessLog'AccessLogFormat Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString
_StderrAccessLog'LogFormat
  = Data.ProtoLens.Prism.prism'
      StderrAccessLog'LogFormat
      (\ p__
         -> case p__ of {
              (StderrAccessLog'LogFormat p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Extensions.AccessLoggers.Stream.V3.Stream_Fields.maybe'accessLogFormat' @:: Lens' StdoutAccessLog (Prelude.Maybe StdoutAccessLog'AccessLogFormat)@
         * 'Proto.Envoy.Extensions.AccessLoggers.Stream.V3.Stream_Fields.maybe'logFormat' @:: Lens' StdoutAccessLog (Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString)@
         * 'Proto.Envoy.Extensions.AccessLoggers.Stream.V3.Stream_Fields.logFormat' @:: Lens' StdoutAccessLog Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString@ -}
data StdoutAccessLog
  = StdoutAccessLog'_constructor {_StdoutAccessLog'accessLogFormat :: !(Prelude.Maybe StdoutAccessLog'AccessLogFormat),
                                  _StdoutAccessLog'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StdoutAccessLog where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StdoutAccessLog'AccessLogFormat
  = StdoutAccessLog'LogFormat !Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StdoutAccessLog "maybe'accessLogFormat" (Prelude.Maybe StdoutAccessLog'AccessLogFormat) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StdoutAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_StdoutAccessLog'accessLogFormat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StdoutAccessLog "maybe'logFormat" (Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StdoutAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_StdoutAccessLog'accessLogFormat = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StdoutAccessLog'LogFormat x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StdoutAccessLog'LogFormat y__))
instance Data.ProtoLens.Field.HasField StdoutAccessLog "logFormat" Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StdoutAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_StdoutAccessLog'accessLogFormat = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StdoutAccessLog'LogFormat x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StdoutAccessLog'LogFormat y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message StdoutAccessLog where
  messageName _
    = Data.Text.pack
        "envoy.extensions.access_loggers.stream.v3.StdoutAccessLog"
  packedMessageDescriptor _
    = "\n\
      \\SIStdoutAccessLog\DC2Y\n\
      \\n\
      \log_format\CAN\SOH \SOH(\v2..envoy.config.core.v3.SubstitutionFormatStringH\NULR\tlogFormatB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\DC3\n\
      \\DC1access_log_format"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        logFormat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_format"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'logFormat")) ::
              Data.ProtoLens.FieldDescriptor StdoutAccessLog
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, logFormat__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StdoutAccessLog'_unknownFields
        (\ x__ y__ -> x__ {_StdoutAccessLog'_unknownFields = y__})
  defMessage
    = StdoutAccessLog'_constructor
        {_StdoutAccessLog'accessLogFormat = Prelude.Nothing,
         _StdoutAccessLog'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StdoutAccessLog
          -> Data.ProtoLens.Encoding.Bytes.Parser StdoutAccessLog
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
                                       "log_format"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"logFormat") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StdoutAccessLog"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'accessLogFormat") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (StdoutAccessLog'LogFormat v))
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
instance Control.DeepSeq.NFData StdoutAccessLog where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StdoutAccessLog'_unknownFields x__)
             (Control.DeepSeq.deepseq (_StdoutAccessLog'accessLogFormat x__) ())
instance Control.DeepSeq.NFData StdoutAccessLog'AccessLogFormat where
  rnf (StdoutAccessLog'LogFormat x__) = Control.DeepSeq.rnf x__
_StdoutAccessLog'LogFormat ::
  Data.ProtoLens.Prism.Prism' StdoutAccessLog'AccessLogFormat Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString
_StdoutAccessLog'LogFormat
  = Data.ProtoLens.Prism.prism'
      StdoutAccessLog'LogFormat
      (\ p__
         -> case p__ of {
              (StdoutAccessLog'LogFormat p__val) -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \6envoy/extensions/access_loggers/stream/v3/stream.proto\DC2)envoy.extensions.access_loggers.stream.v3\SUB5envoy/config/core/v3/substitution_format_string.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\129\SOH\n\
    \\SIStdoutAccessLog\DC2Y\n\
    \\n\
    \log_format\CAN\SOH \SOH(\v2..envoy.config.core.v3.SubstitutionFormatStringH\NULR\tlogFormatB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\DC3\n\
    \\DC1access_log_format\"\129\SOH\n\
    \\SIStderrAccessLog\DC2Y\n\
    \\n\
    \log_format\CAN\SOH \SOH(\v2..envoy.config.core.v3.SubstitutionFormatStringH\NULR\tlogFormatB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\DC3\n\
    \\DC1access_log_formatBP\n\
    \7io.envoyproxy.envoy.extensions.access_loggers.stream.v3B\vStreamProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\251\b\n\
    \\ACK\DC2\EOT\NUL\NUL%\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL2\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL?\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULP\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULP\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\154\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\SUB\SOH\SUB\172\SOH Custom configuration for an :ref:`AccessLog <envoy_v3_api_msg_config.accesslog.v3.AccessLog>`\n\
    \ that writes log entries directly to the operating system's standard output.\n\
    \2_ [#protodoc-title: Standard Streams Access loggers]\n\
    \ [#extension: envoy.access_loggers.stream]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\ETB\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\DC4\STX\EM\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\DC4\b\EM\n\
    \\147\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\ETB\EOT\CAN6\SUB\132\SOH Configuration to form access log data and format.\n\
    \ If not specified, use :ref:`default format <config_access_log_default_format>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ETB\EOT+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB,6\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB9:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\CAN\b5\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\CAN\t4\n\
    \\184\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\RS\NUL%\SOH\SUB\171\SOH Custom configuration for an :ref:`AccessLog <envoy_v3_api_msg_config.accesslog.v3.AccessLog>`\n\
    \ that writes log entries directly to the operating system's standard error.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\RS\b\ETB\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT\US\STX$\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX\US\b\EM\n\
    \\147\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\"\EOT#6\SUB\132\SOH Configuration to form access log data and format.\n\
    \ If not specified, use :ref:`default format <config_access_log_default_format>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\"\EOT+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\",6\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\"9:\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX#\b5\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC1\DC2\ETX#\t4b\ACKproto3"