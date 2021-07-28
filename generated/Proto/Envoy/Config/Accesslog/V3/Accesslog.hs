{- This file was auto-generated from envoy/config/accesslog/v3/accesslog.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Accesslog.V3.Accesslog (
        AccessLog(), AccessLog'ConfigType(..), _AccessLog'TypedConfig,
        AccessLogFilter(), AccessLogFilter'FilterSpecifier(..),
        _AccessLogFilter'StatusCodeFilter, _AccessLogFilter'DurationFilter,
        _AccessLogFilter'NotHealthCheckFilter,
        _AccessLogFilter'TraceableFilter, _AccessLogFilter'RuntimeFilter,
        _AccessLogFilter'AndFilter, _AccessLogFilter'OrFilter,
        _AccessLogFilter'HeaderFilter, _AccessLogFilter'ResponseFlagFilter,
        _AccessLogFilter'GrpcStatusFilter,
        _AccessLogFilter'ExtensionFilter, _AccessLogFilter'MetadataFilter,
        AndFilter(), ComparisonFilter(), ComparisonFilter'Op(..),
        ComparisonFilter'Op(), ComparisonFilter'Op'UnrecognizedValue,
        DurationFilter(), ExtensionFilter(),
        ExtensionFilter'ConfigType(..), _ExtensionFilter'TypedConfig,
        GrpcStatusFilter(), GrpcStatusFilter'Status(..),
        GrpcStatusFilter'Status(),
        GrpcStatusFilter'Status'UnrecognizedValue, HeaderFilter(),
        MetadataFilter(), NotHealthCheckFilter(), OrFilter(),
        ResponseFlagFilter(), RuntimeFilter(), StatusCodeFilter(),
        TraceableFilter()
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
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Type.Matcher.V3.Metadata
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.name' @:: Lens' AccessLog Data.Text.Text@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.filter' @:: Lens' AccessLog AccessLogFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'filter' @:: Lens' AccessLog (Prelude.Maybe AccessLogFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'configType' @:: Lens' AccessLog (Prelude.Maybe AccessLog'ConfigType)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'typedConfig' @:: Lens' AccessLog (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.typedConfig' @:: Lens' AccessLog Proto.Google.Protobuf.Any.Any@ -}
data AccessLog
  = AccessLog'_constructor {_AccessLog'name :: !Data.Text.Text,
                            _AccessLog'filter :: !(Prelude.Maybe AccessLogFilter),
                            _AccessLog'configType :: !(Prelude.Maybe AccessLog'ConfigType),
                            _AccessLog'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AccessLog where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AccessLog'ConfigType
  = AccessLog'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AccessLog "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLog'name (\ x__ y__ -> x__ {_AccessLog'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLog "filter" AccessLogFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLog'filter (\ x__ y__ -> x__ {_AccessLog'filter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLog "maybe'filter" (Prelude.Maybe AccessLogFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLog'filter (\ x__ y__ -> x__ {_AccessLog'filter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLog "maybe'configType" (Prelude.Maybe AccessLog'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLog'configType
           (\ x__ y__ -> x__ {_AccessLog'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLog "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLog'configType
           (\ x__ y__ -> x__ {_AccessLog'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLog'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLog'TypedConfig y__))
instance Data.ProtoLens.Field.HasField AccessLog "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLog'configType
           (\ x__ y__ -> x__ {_AccessLog'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLog'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLog'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message AccessLog where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.AccessLog"
  packedMessageDescriptor _
    = "\n\
      \\tAccessLog\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2B\n\
      \\ACKfilter\CAN\STX \SOH(\v2*.envoy.config.accesslog.v3.AccessLogFilterR\ACKfilter\DC29\n\
      \\ftyped_config\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:1\154\197\136\RS,\n\
      \*envoy.config.filter.accesslog.v2.AccessLogJ\EOT\b\ETX\DLE\EOTR\ACKconfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor AccessLog
        filter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AccessLogFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filter")) ::
              Data.ProtoLens.FieldDescriptor AccessLog
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor AccessLog
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, filter__field_descriptor),
           (Data.ProtoLens.Tag 4, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AccessLog'_unknownFields
        (\ x__ y__ -> x__ {_AccessLog'_unknownFields = y__})
  defMessage
    = AccessLog'_constructor
        {_AccessLog'name = Data.ProtoLens.fieldDefault,
         _AccessLog'filter = Prelude.Nothing,
         _AccessLog'configType = Prelude.Nothing,
         _AccessLog'_unknownFields = []}
  parseMessage
    = let
        loop :: AccessLog -> Data.ProtoLens.Encoding.Bytes.Parser AccessLog
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"filter") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AccessLog"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'filter") _x
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
                          (Data.ProtoLens.Field.field @"maybe'configType") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (AccessLog'TypedConfig v))
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData AccessLog where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AccessLog'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AccessLog'name x__)
                (Control.DeepSeq.deepseq
                   (_AccessLog'filter x__)
                   (Control.DeepSeq.deepseq (_AccessLog'configType x__) ())))
instance Control.DeepSeq.NFData AccessLog'ConfigType where
  rnf (AccessLog'TypedConfig x__) = Control.DeepSeq.rnf x__
_AccessLog'TypedConfig ::
  Data.ProtoLens.Prism.Prism' AccessLog'ConfigType Proto.Google.Protobuf.Any.Any
_AccessLog'TypedConfig
  = Data.ProtoLens.Prism.prism'
      AccessLog'TypedConfig
      (\ p__
         -> case p__ of {
              (AccessLog'TypedConfig p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'filterSpecifier' @:: Lens' AccessLogFilter (Prelude.Maybe AccessLogFilter'FilterSpecifier)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'statusCodeFilter' @:: Lens' AccessLogFilter (Prelude.Maybe StatusCodeFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.statusCodeFilter' @:: Lens' AccessLogFilter StatusCodeFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'durationFilter' @:: Lens' AccessLogFilter (Prelude.Maybe DurationFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.durationFilter' @:: Lens' AccessLogFilter DurationFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'notHealthCheckFilter' @:: Lens' AccessLogFilter (Prelude.Maybe NotHealthCheckFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.notHealthCheckFilter' @:: Lens' AccessLogFilter NotHealthCheckFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'traceableFilter' @:: Lens' AccessLogFilter (Prelude.Maybe TraceableFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.traceableFilter' @:: Lens' AccessLogFilter TraceableFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'runtimeFilter' @:: Lens' AccessLogFilter (Prelude.Maybe RuntimeFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.runtimeFilter' @:: Lens' AccessLogFilter RuntimeFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'andFilter' @:: Lens' AccessLogFilter (Prelude.Maybe AndFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.andFilter' @:: Lens' AccessLogFilter AndFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'orFilter' @:: Lens' AccessLogFilter (Prelude.Maybe OrFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.orFilter' @:: Lens' AccessLogFilter OrFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'headerFilter' @:: Lens' AccessLogFilter (Prelude.Maybe HeaderFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.headerFilter' @:: Lens' AccessLogFilter HeaderFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'responseFlagFilter' @:: Lens' AccessLogFilter (Prelude.Maybe ResponseFlagFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.responseFlagFilter' @:: Lens' AccessLogFilter ResponseFlagFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'grpcStatusFilter' @:: Lens' AccessLogFilter (Prelude.Maybe GrpcStatusFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.grpcStatusFilter' @:: Lens' AccessLogFilter GrpcStatusFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'extensionFilter' @:: Lens' AccessLogFilter (Prelude.Maybe ExtensionFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.extensionFilter' @:: Lens' AccessLogFilter ExtensionFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'metadataFilter' @:: Lens' AccessLogFilter (Prelude.Maybe MetadataFilter)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.metadataFilter' @:: Lens' AccessLogFilter MetadataFilter@ -}
data AccessLogFilter
  = AccessLogFilter'_constructor {_AccessLogFilter'filterSpecifier :: !(Prelude.Maybe AccessLogFilter'FilterSpecifier),
                                  _AccessLogFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AccessLogFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AccessLogFilter'FilterSpecifier
  = AccessLogFilter'StatusCodeFilter !StatusCodeFilter |
    AccessLogFilter'DurationFilter !DurationFilter |
    AccessLogFilter'NotHealthCheckFilter !NotHealthCheckFilter |
    AccessLogFilter'TraceableFilter !TraceableFilter |
    AccessLogFilter'RuntimeFilter !RuntimeFilter |
    AccessLogFilter'AndFilter !AndFilter |
    AccessLogFilter'OrFilter !OrFilter |
    AccessLogFilter'HeaderFilter !HeaderFilter |
    AccessLogFilter'ResponseFlagFilter !ResponseFlagFilter |
    AccessLogFilter'GrpcStatusFilter !GrpcStatusFilter |
    AccessLogFilter'ExtensionFilter !ExtensionFilter |
    AccessLogFilter'MetadataFilter !MetadataFilter
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'filterSpecifier" (Prelude.Maybe AccessLogFilter'FilterSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'statusCodeFilter" (Prelude.Maybe StatusCodeFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'StatusCodeFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'StatusCodeFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "statusCodeFilter" StatusCodeFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'StatusCodeFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'StatusCodeFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'durationFilter" (Prelude.Maybe DurationFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'DurationFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'DurationFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "durationFilter" DurationFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'DurationFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'DurationFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'notHealthCheckFilter" (Prelude.Maybe NotHealthCheckFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'NotHealthCheckFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'NotHealthCheckFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "notHealthCheckFilter" NotHealthCheckFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'NotHealthCheckFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'NotHealthCheckFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'traceableFilter" (Prelude.Maybe TraceableFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'TraceableFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'TraceableFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "traceableFilter" TraceableFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'TraceableFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'TraceableFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'runtimeFilter" (Prelude.Maybe RuntimeFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'RuntimeFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'RuntimeFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "runtimeFilter" RuntimeFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'RuntimeFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'RuntimeFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'andFilter" (Prelude.Maybe AndFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'AndFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'AndFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "andFilter" AndFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'AndFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'AndFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'orFilter" (Prelude.Maybe OrFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'OrFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'OrFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "orFilter" OrFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'OrFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'OrFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'headerFilter" (Prelude.Maybe HeaderFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'HeaderFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'HeaderFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "headerFilter" HeaderFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'HeaderFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'HeaderFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'responseFlagFilter" (Prelude.Maybe ResponseFlagFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'ResponseFlagFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'ResponseFlagFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "responseFlagFilter" ResponseFlagFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'ResponseFlagFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'ResponseFlagFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'grpcStatusFilter" (Prelude.Maybe GrpcStatusFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'GrpcStatusFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'GrpcStatusFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "grpcStatusFilter" GrpcStatusFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'GrpcStatusFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'GrpcStatusFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'extensionFilter" (Prelude.Maybe ExtensionFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'ExtensionFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'ExtensionFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "extensionFilter" ExtensionFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'ExtensionFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'ExtensionFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AccessLogFilter "maybe'metadataFilter" (Prelude.Maybe MetadataFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AccessLogFilter'MetadataFilter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AccessLogFilter'MetadataFilter y__))
instance Data.ProtoLens.Field.HasField AccessLogFilter "metadataFilter" MetadataFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogFilter'filterSpecifier
           (\ x__ y__ -> x__ {_AccessLogFilter'filterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AccessLogFilter'MetadataFilter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AccessLogFilter'MetadataFilter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message AccessLogFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.AccessLogFilter"
  packedMessageDescriptor _
    = "\n\
      \\SIAccessLogFilter\DC2[\n\
      \\DC2status_code_filter\CAN\SOH \SOH(\v2+.envoy.config.accesslog.v3.StatusCodeFilterH\NULR\DLEstatusCodeFilter\DC2T\n\
      \\SIduration_filter\CAN\STX \SOH(\v2).envoy.config.accesslog.v3.DurationFilterH\NULR\SOdurationFilter\DC2h\n\
      \\ETBnot_health_check_filter\CAN\ETX \SOH(\v2/.envoy.config.accesslog.v3.NotHealthCheckFilterH\NULR\DC4notHealthCheckFilter\DC2W\n\
      \\DLEtraceable_filter\CAN\EOT \SOH(\v2*.envoy.config.accesslog.v3.TraceableFilterH\NULR\SItraceableFilter\DC2Q\n\
      \\SOruntime_filter\CAN\ENQ \SOH(\v2(.envoy.config.accesslog.v3.RuntimeFilterH\NULR\rruntimeFilter\DC2E\n\
      \\n\
      \and_filter\CAN\ACK \SOH(\v2$.envoy.config.accesslog.v3.AndFilterH\NULR\tandFilter\DC2B\n\
      \\tor_filter\CAN\a \SOH(\v2#.envoy.config.accesslog.v3.OrFilterH\NULR\borFilter\DC2N\n\
      \\rheader_filter\CAN\b \SOH(\v2'.envoy.config.accesslog.v3.HeaderFilterH\NULR\fheaderFilter\DC2a\n\
      \\DC4response_flag_filter\CAN\t \SOH(\v2-.envoy.config.accesslog.v3.ResponseFlagFilterH\NULR\DC2responseFlagFilter\DC2[\n\
      \\DC2grpc_status_filter\CAN\n\
      \ \SOH(\v2+.envoy.config.accesslog.v3.GrpcStatusFilterH\NULR\DLEgrpcStatusFilter\DC2W\n\
      \\DLEextension_filter\CAN\v \SOH(\v2*.envoy.config.accesslog.v3.ExtensionFilterH\NULR\SIextensionFilter\DC2T\n\
      \\SImetadata_filter\CAN\f \SOH(\v2).envoy.config.accesslog.v3.MetadataFilterH\NULR\SOmetadataFilterB\ETB\n\
      \\DLEfilter_specifier\DC2\ETX\248B\SOH:7\154\197\136\RS2\n\
      \0envoy.config.filter.accesslog.v2.AccessLogFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statusCodeFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status_code_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StatusCodeFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'statusCodeFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        durationFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "duration_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DurationFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'durationFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        notHealthCheckFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_health_check_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NotHealthCheckFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'notHealthCheckFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        traceableFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "traceable_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TraceableFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceableFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        runtimeFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RuntimeFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'runtimeFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        andFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "and_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AndFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'andFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        orFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "or_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OrFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'orFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        headerFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HeaderFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'headerFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        responseFlagFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_flag_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseFlagFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseFlagFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        grpcStatusFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_status_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcStatusFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcStatusFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        extensionFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ExtensionFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extensionFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
        metadataFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MetadataFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadataFilter")) ::
              Data.ProtoLens.FieldDescriptor AccessLogFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statusCodeFilter__field_descriptor),
           (Data.ProtoLens.Tag 2, durationFilter__field_descriptor),
           (Data.ProtoLens.Tag 3, notHealthCheckFilter__field_descriptor),
           (Data.ProtoLens.Tag 4, traceableFilter__field_descriptor),
           (Data.ProtoLens.Tag 5, runtimeFilter__field_descriptor),
           (Data.ProtoLens.Tag 6, andFilter__field_descriptor),
           (Data.ProtoLens.Tag 7, orFilter__field_descriptor),
           (Data.ProtoLens.Tag 8, headerFilter__field_descriptor),
           (Data.ProtoLens.Tag 9, responseFlagFilter__field_descriptor),
           (Data.ProtoLens.Tag 10, grpcStatusFilter__field_descriptor),
           (Data.ProtoLens.Tag 11, extensionFilter__field_descriptor),
           (Data.ProtoLens.Tag 12, metadataFilter__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AccessLogFilter'_unknownFields
        (\ x__ y__ -> x__ {_AccessLogFilter'_unknownFields = y__})
  defMessage
    = AccessLogFilter'_constructor
        {_AccessLogFilter'filterSpecifier = Prelude.Nothing,
         _AccessLogFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AccessLogFilter
          -> Data.ProtoLens.Encoding.Bytes.Parser AccessLogFilter
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
                                       "status_code_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"statusCodeFilter") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "duration_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"durationFilter") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "not_health_check_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"notHealthCheckFilter") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "traceable_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"traceableFilter") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "runtime_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"runtimeFilter") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "and_filter"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"andFilter") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "or_filter"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"orFilter") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"headerFilter") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_flag_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseFlagFilter") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grpc_status_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"grpcStatusFilter") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "extension_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extensionFilter") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"metadataFilter") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AccessLogFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'filterSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (AccessLogFilter'StatusCodeFilter v))
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
                (Prelude.Just (AccessLogFilter'DurationFilter v))
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
                (Prelude.Just (AccessLogFilter'NotHealthCheckFilter v))
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
                (Prelude.Just (AccessLogFilter'TraceableFilter v))
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
                (Prelude.Just (AccessLogFilter'RuntimeFilter v))
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
                (Prelude.Just (AccessLogFilter'AndFilter v))
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
                (Prelude.Just (AccessLogFilter'OrFilter v))
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
                (Prelude.Just (AccessLogFilter'HeaderFilter v))
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
                (Prelude.Just (AccessLogFilter'ResponseFlagFilter v))
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
                (Prelude.Just (AccessLogFilter'GrpcStatusFilter v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (AccessLogFilter'ExtensionFilter v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (AccessLogFilter'MetadataFilter v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
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
instance Control.DeepSeq.NFData AccessLogFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AccessLogFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AccessLogFilter'filterSpecifier x__) ())
instance Control.DeepSeq.NFData AccessLogFilter'FilterSpecifier where
  rnf (AccessLogFilter'StatusCodeFilter x__)
    = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'DurationFilter x__) = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'NotHealthCheckFilter x__)
    = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'TraceableFilter x__) = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'RuntimeFilter x__) = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'AndFilter x__) = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'OrFilter x__) = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'HeaderFilter x__) = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'ResponseFlagFilter x__)
    = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'GrpcStatusFilter x__)
    = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'ExtensionFilter x__) = Control.DeepSeq.rnf x__
  rnf (AccessLogFilter'MetadataFilter x__) = Control.DeepSeq.rnf x__
_AccessLogFilter'StatusCodeFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier StatusCodeFilter
_AccessLogFilter'StatusCodeFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'StatusCodeFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'StatusCodeFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'DurationFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier DurationFilter
_AccessLogFilter'DurationFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'DurationFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'DurationFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'NotHealthCheckFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier NotHealthCheckFilter
_AccessLogFilter'NotHealthCheckFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'NotHealthCheckFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'NotHealthCheckFilter p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'TraceableFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier TraceableFilter
_AccessLogFilter'TraceableFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'TraceableFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'TraceableFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'RuntimeFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier RuntimeFilter
_AccessLogFilter'RuntimeFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'RuntimeFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'RuntimeFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'AndFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier AndFilter
_AccessLogFilter'AndFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'AndFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'AndFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'OrFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier OrFilter
_AccessLogFilter'OrFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'OrFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'OrFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'HeaderFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier HeaderFilter
_AccessLogFilter'HeaderFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'HeaderFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'HeaderFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'ResponseFlagFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier ResponseFlagFilter
_AccessLogFilter'ResponseFlagFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'ResponseFlagFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'ResponseFlagFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'GrpcStatusFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier GrpcStatusFilter
_AccessLogFilter'GrpcStatusFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'GrpcStatusFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'GrpcStatusFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'ExtensionFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier ExtensionFilter
_AccessLogFilter'ExtensionFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'ExtensionFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'ExtensionFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AccessLogFilter'MetadataFilter ::
  Data.ProtoLens.Prism.Prism' AccessLogFilter'FilterSpecifier MetadataFilter
_AccessLogFilter'MetadataFilter
  = Data.ProtoLens.Prism.prism'
      AccessLogFilter'MetadataFilter
      (\ p__
         -> case p__ of
              (AccessLogFilter'MetadataFilter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.filters' @:: Lens' AndFilter [AccessLogFilter]@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.vec'filters' @:: Lens' AndFilter (Data.Vector.Vector AccessLogFilter)@ -}
data AndFilter
  = AndFilter'_constructor {_AndFilter'filters :: !(Data.Vector.Vector AccessLogFilter),
                            _AndFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AndFilter "filters" [AccessLogFilter] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndFilter'filters (\ x__ y__ -> x__ {_AndFilter'filters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AndFilter "vec'filters" (Data.Vector.Vector AccessLogFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndFilter'filters (\ x__ y__ -> x__ {_AndFilter'filters = y__}))
        Prelude.id
instance Data.ProtoLens.Message AndFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.AndFilter"
  packedMessageDescriptor _
    = "\n\
      \\tAndFilter\DC2N\n\
      \\afilters\CAN\SOH \ETX(\v2*.envoy.config.accesslog.v3.AccessLogFilterR\afiltersB\b\250B\ENQ\146\SOH\STX\b\STX:1\154\197\136\RS,\n\
      \*envoy.config.filter.accesslog.v2.AndFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        filters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AccessLogFilter)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"filters")) ::
              Data.ProtoLens.FieldDescriptor AndFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, filters__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndFilter'_unknownFields
        (\ x__ y__ -> x__ {_AndFilter'_unknownFields = y__})
  defMessage
    = AndFilter'_constructor
        {_AndFilter'filters = Data.Vector.Generic.empty,
         _AndFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndFilter
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AccessLogFilter
             -> Data.ProtoLens.Encoding.Bytes.Parser AndFilter
        loop x mutable'filters
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'filters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'filters)
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
                              (Data.ProtoLens.Field.field @"vec'filters") frozen'filters x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "filters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'filters y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'filters
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'filters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'filters)
          "AndFilter"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'filters") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AndFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AndFilter'filters x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.op' @:: Lens' ComparisonFilter ComparisonFilter'Op@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.value' @:: Lens' ComparisonFilter Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'value' @:: Lens' ComparisonFilter (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32)@ -}
data ComparisonFilter
  = ComparisonFilter'_constructor {_ComparisonFilter'op :: !ComparisonFilter'Op,
                                   _ComparisonFilter'value :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32),
                                   _ComparisonFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComparisonFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComparisonFilter "op" ComparisonFilter'Op where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComparisonFilter'op
           (\ x__ y__ -> x__ {_ComparisonFilter'op = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComparisonFilter "value" Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComparisonFilter'value
           (\ x__ y__ -> x__ {_ComparisonFilter'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComparisonFilter "maybe'value" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComparisonFilter'value
           (\ x__ y__ -> x__ {_ComparisonFilter'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComparisonFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.ComparisonFilter"
  packedMessageDescriptor _
    = "\n\
      \\DLEComparisonFilter\DC2H\n\
      \\STXop\CAN\SOH \SOH(\SO2..envoy.config.accesslog.v3.ComparisonFilter.OpR\STXopB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC29\n\
      \\ENQvalue\CAN\STX \SOH(\v2#.envoy.config.core.v3.RuntimeUInt32R\ENQvalue\"\FS\n\
      \\STXOp\DC2\ACK\n\
      \\STXEQ\DLE\NUL\DC2\ACK\n\
      \\STXGE\DLE\SOH\DC2\ACK\n\
      \\STXLE\DLE\STX:8\154\197\136\RS3\n\
      \1envoy.config.filter.accesslog.v2.ComparisonFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        op__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "op"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ComparisonFilter'Op)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"op")) ::
              Data.ProtoLens.FieldDescriptor ComparisonFilter
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ComparisonFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, op__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComparisonFilter'_unknownFields
        (\ x__ y__ -> x__ {_ComparisonFilter'_unknownFields = y__})
  defMessage
    = ComparisonFilter'_constructor
        {_ComparisonFilter'op = Data.ProtoLens.fieldDefault,
         _ComparisonFilter'value = Prelude.Nothing,
         _ComparisonFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComparisonFilter
          -> Data.ProtoLens.Encoding.Bytes.Parser ComparisonFilter
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
                                       "op"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"op") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ComparisonFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"op") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData ComparisonFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComparisonFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComparisonFilter'op x__)
                (Control.DeepSeq.deepseq (_ComparisonFilter'value x__) ()))
newtype ComparisonFilter'Op'UnrecognizedValue
  = ComparisonFilter'Op'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ComparisonFilter'Op
  = ComparisonFilter'EQ |
    ComparisonFilter'GE |
    ComparisonFilter'LE |
    ComparisonFilter'Op'Unrecognized !ComparisonFilter'Op'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ComparisonFilter'Op where
  maybeToEnum 0 = Prelude.Just ComparisonFilter'EQ
  maybeToEnum 1 = Prelude.Just ComparisonFilter'GE
  maybeToEnum 2 = Prelude.Just ComparisonFilter'LE
  maybeToEnum k
    = Prelude.Just
        (ComparisonFilter'Op'Unrecognized
           (ComparisonFilter'Op'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum ComparisonFilter'EQ = "EQ"
  showEnum ComparisonFilter'GE = "GE"
  showEnum ComparisonFilter'LE = "LE"
  showEnum
    (ComparisonFilter'Op'Unrecognized (ComparisonFilter'Op'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "EQ" = Prelude.Just ComparisonFilter'EQ
    | (Prelude.==) k "GE" = Prelude.Just ComparisonFilter'GE
    | (Prelude.==) k "LE" = Prelude.Just ComparisonFilter'LE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ComparisonFilter'Op where
  minBound = ComparisonFilter'EQ
  maxBound = ComparisonFilter'LE
instance Prelude.Enum ComparisonFilter'Op where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Op: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ComparisonFilter'EQ = 0
  fromEnum ComparisonFilter'GE = 1
  fromEnum ComparisonFilter'LE = 2
  fromEnum
    (ComparisonFilter'Op'Unrecognized (ComparisonFilter'Op'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ComparisonFilter'LE
    = Prelude.error
        "ComparisonFilter'Op.succ: bad argument ComparisonFilter'LE. This value would be out of bounds."
  succ ComparisonFilter'EQ = ComparisonFilter'GE
  succ ComparisonFilter'GE = ComparisonFilter'LE
  succ (ComparisonFilter'Op'Unrecognized _)
    = Prelude.error
        "ComparisonFilter'Op.succ: bad argument: unrecognized value"
  pred ComparisonFilter'EQ
    = Prelude.error
        "ComparisonFilter'Op.pred: bad argument ComparisonFilter'EQ. This value would be out of bounds."
  pred ComparisonFilter'GE = ComparisonFilter'EQ
  pred ComparisonFilter'LE = ComparisonFilter'GE
  pred (ComparisonFilter'Op'Unrecognized _)
    = Prelude.error
        "ComparisonFilter'Op.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ComparisonFilter'Op where
  fieldDefault = ComparisonFilter'EQ
instance Control.DeepSeq.NFData ComparisonFilter'Op where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.comparison' @:: Lens' DurationFilter ComparisonFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'comparison' @:: Lens' DurationFilter (Prelude.Maybe ComparisonFilter)@ -}
data DurationFilter
  = DurationFilter'_constructor {_DurationFilter'comparison :: !(Prelude.Maybe ComparisonFilter),
                                 _DurationFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DurationFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DurationFilter "comparison" ComparisonFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationFilter'comparison
           (\ x__ y__ -> x__ {_DurationFilter'comparison = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DurationFilter "maybe'comparison" (Prelude.Maybe ComparisonFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationFilter'comparison
           (\ x__ y__ -> x__ {_DurationFilter'comparison = y__}))
        Prelude.id
instance Data.ProtoLens.Message DurationFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.DurationFilter"
  packedMessageDescriptor _
    = "\n\
      \\SODurationFilter\DC2U\n\
      \\n\
      \comparison\CAN\SOH \SOH(\v2+.envoy.config.accesslog.v3.ComparisonFilterR\n\
      \comparisonB\b\250B\ENQ\138\SOH\STX\DLE\SOH:6\154\197\136\RS1\n\
      \/envoy.config.filter.accesslog.v2.DurationFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comparison__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comparison"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ComparisonFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comparison")) ::
              Data.ProtoLens.FieldDescriptor DurationFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comparison__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DurationFilter'_unknownFields
        (\ x__ y__ -> x__ {_DurationFilter'_unknownFields = y__})
  defMessage
    = DurationFilter'_constructor
        {_DurationFilter'comparison = Prelude.Nothing,
         _DurationFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DurationFilter
          -> Data.ProtoLens.Encoding.Bytes.Parser DurationFilter
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
                                       "comparison"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"comparison") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DurationFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'comparison") _x
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
instance Control.DeepSeq.NFData DurationFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DurationFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DurationFilter'comparison x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.name' @:: Lens' ExtensionFilter Data.Text.Text@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'configType' @:: Lens' ExtensionFilter (Prelude.Maybe ExtensionFilter'ConfigType)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'typedConfig' @:: Lens' ExtensionFilter (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.typedConfig' @:: Lens' ExtensionFilter Proto.Google.Protobuf.Any.Any@ -}
data ExtensionFilter
  = ExtensionFilter'_constructor {_ExtensionFilter'name :: !Data.Text.Text,
                                  _ExtensionFilter'configType :: !(Prelude.Maybe ExtensionFilter'ConfigType),
                                  _ExtensionFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtensionFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ExtensionFilter'ConfigType
  = ExtensionFilter'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ExtensionFilter "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionFilter'name
           (\ x__ y__ -> x__ {_ExtensionFilter'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtensionFilter "maybe'configType" (Prelude.Maybe ExtensionFilter'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionFilter'configType
           (\ x__ y__ -> x__ {_ExtensionFilter'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtensionFilter "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionFilter'configType
           (\ x__ y__ -> x__ {_ExtensionFilter'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ExtensionFilter'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ExtensionFilter'TypedConfig y__))
instance Data.ProtoLens.Field.HasField ExtensionFilter "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionFilter'configType
           (\ x__ y__ -> x__ {_ExtensionFilter'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ExtensionFilter'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ExtensionFilter'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ExtensionFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.ExtensionFilter"
  packedMessageDescriptor _
    = "\n\
      \\SIExtensionFilter\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:7\154\197\136\RS2\n\
      \0envoy.config.filter.accesslog.v2.ExtensionFilterJ\EOT\b\STX\DLE\ETXR\ACKconfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor ExtensionFilter
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor ExtensionFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtensionFilter'_unknownFields
        (\ x__ y__ -> x__ {_ExtensionFilter'_unknownFields = y__})
  defMessage
    = ExtensionFilter'_constructor
        {_ExtensionFilter'name = Data.ProtoLens.fieldDefault,
         _ExtensionFilter'configType = Prelude.Nothing,
         _ExtensionFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtensionFilter
          -> Data.ProtoLens.Encoding.Bytes.Parser ExtensionFilter
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExtensionFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                       (Data.ProtoLens.Field.field @"maybe'configType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (ExtensionFilter'TypedConfig v))
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
instance Control.DeepSeq.NFData ExtensionFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtensionFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtensionFilter'name x__)
                (Control.DeepSeq.deepseq (_ExtensionFilter'configType x__) ()))
instance Control.DeepSeq.NFData ExtensionFilter'ConfigType where
  rnf (ExtensionFilter'TypedConfig x__) = Control.DeepSeq.rnf x__
_ExtensionFilter'TypedConfig ::
  Data.ProtoLens.Prism.Prism' ExtensionFilter'ConfigType Proto.Google.Protobuf.Any.Any
_ExtensionFilter'TypedConfig
  = Data.ProtoLens.Prism.prism'
      ExtensionFilter'TypedConfig
      (\ p__
         -> case p__ of {
              (ExtensionFilter'TypedConfig p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.statuses' @:: Lens' GrpcStatusFilter [GrpcStatusFilter'Status]@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.vec'statuses' @:: Lens' GrpcStatusFilter (Data.Vector.Vector GrpcStatusFilter'Status)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.exclude' @:: Lens' GrpcStatusFilter Prelude.Bool@ -}
data GrpcStatusFilter
  = GrpcStatusFilter'_constructor {_GrpcStatusFilter'statuses :: !(Data.Vector.Vector GrpcStatusFilter'Status),
                                   _GrpcStatusFilter'exclude :: !Prelude.Bool,
                                   _GrpcStatusFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcStatusFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcStatusFilter "statuses" [GrpcStatusFilter'Status] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcStatusFilter'statuses
           (\ x__ y__ -> x__ {_GrpcStatusFilter'statuses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GrpcStatusFilter "vec'statuses" (Data.Vector.Vector GrpcStatusFilter'Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcStatusFilter'statuses
           (\ x__ y__ -> x__ {_GrpcStatusFilter'statuses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcStatusFilter "exclude" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcStatusFilter'exclude
           (\ x__ y__ -> x__ {_GrpcStatusFilter'exclude = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcStatusFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.GrpcStatusFilter"
  packedMessageDescriptor _
    = "\n\
      \\DLEGrpcStatusFilter\DC2]\n\
      \\bstatuses\CAN\SOH \ETX(\SO22.envoy.config.accesslog.v3.GrpcStatusFilter.StatusR\bstatusesB\r\250B\n\
      \\146\SOH\a\"\ENQ\130\SOH\STX\DLE\SOH\DC2\CAN\n\
      \\aexclude\CAN\STX \SOH(\bR\aexclude\"\184\STX\n\
      \\ACKStatus\DC2\ACK\n\
      \\STXOK\DLE\NUL\DC2\f\n\
      \\bCANCELED\DLE\SOH\DC2\v\n\
      \\aUNKNOWN\DLE\STX\DC2\DC4\n\
      \\DLEINVALID_ARGUMENT\DLE\ETX\DC2\NAK\n\
      \\DC1DEADLINE_EXCEEDED\DLE\EOT\DC2\r\n\
      \\tNOT_FOUND\DLE\ENQ\DC2\DC2\n\
      \\SOALREADY_EXISTS\DLE\ACK\DC2\NAK\n\
      \\DC1PERMISSION_DENIED\DLE\a\DC2\SYN\n\
      \\DC2RESOURCE_EXHAUSTED\DLE\b\DC2\ETB\n\
      \\DC3FAILED_PRECONDITION\DLE\t\DC2\v\n\
      \\aABORTED\DLE\n\
      \\DC2\DLE\n\
      \\fOUT_OF_RANGE\DLE\v\DC2\DC1\n\
      \\rUNIMPLEMENTED\DLE\f\DC2\f\n\
      \\bINTERNAL\DLE\r\DC2\SI\n\
      \\vUNAVAILABLE\DLE\SO\DC2\r\n\
      \\tDATA_LOSS\DLE\SI\DC2\DC3\n\
      \\SIUNAUTHENTICATED\DLE\DLE:8\154\197\136\RS3\n\
      \1envoy.config.filter.accesslog.v2.GrpcStatusFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statuses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "statuses"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcStatusFilter'Status)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"statuses")) ::
              Data.ProtoLens.FieldDescriptor GrpcStatusFilter
        exclude__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exclude"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"exclude")) ::
              Data.ProtoLens.FieldDescriptor GrpcStatusFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statuses__field_descriptor),
           (Data.ProtoLens.Tag 2, exclude__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcStatusFilter'_unknownFields
        (\ x__ y__ -> x__ {_GrpcStatusFilter'_unknownFields = y__})
  defMessage
    = GrpcStatusFilter'_constructor
        {_GrpcStatusFilter'statuses = Data.Vector.Generic.empty,
         _GrpcStatusFilter'exclude = Data.ProtoLens.fieldDefault,
         _GrpcStatusFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcStatusFilter
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld GrpcStatusFilter'Status
             -> Data.ProtoLens.Encoding.Bytes.Parser GrpcStatusFilter
        loop x mutable'statuses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'statuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'statuses)
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
                              (Data.ProtoLens.Field.field @"vec'statuses") frozen'statuses x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "statuses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'statuses y)
                                loop x v
                        10
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.toEnum
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "statuses"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'statuses)
                                loop x y
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "exclude"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"exclude") y x)
                                  mutable'statuses
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'statuses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'statuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'statuses)
          "GrpcStatusFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                p = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'statuses") _x
              in
                if Data.Vector.Generic.null p then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         (Data.ProtoLens.Encoding.Bytes.runBuilder
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum)
                               p))))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"exclude") _x
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
instance Control.DeepSeq.NFData GrpcStatusFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcStatusFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcStatusFilter'statuses x__)
                (Control.DeepSeq.deepseq (_GrpcStatusFilter'exclude x__) ()))
newtype GrpcStatusFilter'Status'UnrecognizedValue
  = GrpcStatusFilter'Status'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data GrpcStatusFilter'Status
  = GrpcStatusFilter'OK |
    GrpcStatusFilter'CANCELED |
    GrpcStatusFilter'UNKNOWN |
    GrpcStatusFilter'INVALID_ARGUMENT |
    GrpcStatusFilter'DEADLINE_EXCEEDED |
    GrpcStatusFilter'NOT_FOUND |
    GrpcStatusFilter'ALREADY_EXISTS |
    GrpcStatusFilter'PERMISSION_DENIED |
    GrpcStatusFilter'RESOURCE_EXHAUSTED |
    GrpcStatusFilter'FAILED_PRECONDITION |
    GrpcStatusFilter'ABORTED |
    GrpcStatusFilter'OUT_OF_RANGE |
    GrpcStatusFilter'UNIMPLEMENTED |
    GrpcStatusFilter'INTERNAL |
    GrpcStatusFilter'UNAVAILABLE |
    GrpcStatusFilter'DATA_LOSS |
    GrpcStatusFilter'UNAUTHENTICATED |
    GrpcStatusFilter'Status'Unrecognized !GrpcStatusFilter'Status'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum GrpcStatusFilter'Status where
  maybeToEnum 0 = Prelude.Just GrpcStatusFilter'OK
  maybeToEnum 1 = Prelude.Just GrpcStatusFilter'CANCELED
  maybeToEnum 2 = Prelude.Just GrpcStatusFilter'UNKNOWN
  maybeToEnum 3 = Prelude.Just GrpcStatusFilter'INVALID_ARGUMENT
  maybeToEnum 4 = Prelude.Just GrpcStatusFilter'DEADLINE_EXCEEDED
  maybeToEnum 5 = Prelude.Just GrpcStatusFilter'NOT_FOUND
  maybeToEnum 6 = Prelude.Just GrpcStatusFilter'ALREADY_EXISTS
  maybeToEnum 7 = Prelude.Just GrpcStatusFilter'PERMISSION_DENIED
  maybeToEnum 8 = Prelude.Just GrpcStatusFilter'RESOURCE_EXHAUSTED
  maybeToEnum 9 = Prelude.Just GrpcStatusFilter'FAILED_PRECONDITION
  maybeToEnum 10 = Prelude.Just GrpcStatusFilter'ABORTED
  maybeToEnum 11 = Prelude.Just GrpcStatusFilter'OUT_OF_RANGE
  maybeToEnum 12 = Prelude.Just GrpcStatusFilter'UNIMPLEMENTED
  maybeToEnum 13 = Prelude.Just GrpcStatusFilter'INTERNAL
  maybeToEnum 14 = Prelude.Just GrpcStatusFilter'UNAVAILABLE
  maybeToEnum 15 = Prelude.Just GrpcStatusFilter'DATA_LOSS
  maybeToEnum 16 = Prelude.Just GrpcStatusFilter'UNAUTHENTICATED
  maybeToEnum k
    = Prelude.Just
        (GrpcStatusFilter'Status'Unrecognized
           (GrpcStatusFilter'Status'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum GrpcStatusFilter'OK = "OK"
  showEnum GrpcStatusFilter'CANCELED = "CANCELED"
  showEnum GrpcStatusFilter'UNKNOWN = "UNKNOWN"
  showEnum GrpcStatusFilter'INVALID_ARGUMENT = "INVALID_ARGUMENT"
  showEnum GrpcStatusFilter'DEADLINE_EXCEEDED = "DEADLINE_EXCEEDED"
  showEnum GrpcStatusFilter'NOT_FOUND = "NOT_FOUND"
  showEnum GrpcStatusFilter'ALREADY_EXISTS = "ALREADY_EXISTS"
  showEnum GrpcStatusFilter'PERMISSION_DENIED = "PERMISSION_DENIED"
  showEnum GrpcStatusFilter'RESOURCE_EXHAUSTED = "RESOURCE_EXHAUSTED"
  showEnum GrpcStatusFilter'FAILED_PRECONDITION
    = "FAILED_PRECONDITION"
  showEnum GrpcStatusFilter'ABORTED = "ABORTED"
  showEnum GrpcStatusFilter'OUT_OF_RANGE = "OUT_OF_RANGE"
  showEnum GrpcStatusFilter'UNIMPLEMENTED = "UNIMPLEMENTED"
  showEnum GrpcStatusFilter'INTERNAL = "INTERNAL"
  showEnum GrpcStatusFilter'UNAVAILABLE = "UNAVAILABLE"
  showEnum GrpcStatusFilter'DATA_LOSS = "DATA_LOSS"
  showEnum GrpcStatusFilter'UNAUTHENTICATED = "UNAUTHENTICATED"
  showEnum
    (GrpcStatusFilter'Status'Unrecognized (GrpcStatusFilter'Status'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "OK" = Prelude.Just GrpcStatusFilter'OK
    | (Prelude.==) k "CANCELED"
    = Prelude.Just GrpcStatusFilter'CANCELED
    | (Prelude.==) k "UNKNOWN" = Prelude.Just GrpcStatusFilter'UNKNOWN
    | (Prelude.==) k "INVALID_ARGUMENT"
    = Prelude.Just GrpcStatusFilter'INVALID_ARGUMENT
    | (Prelude.==) k "DEADLINE_EXCEEDED"
    = Prelude.Just GrpcStatusFilter'DEADLINE_EXCEEDED
    | (Prelude.==) k "NOT_FOUND"
    = Prelude.Just GrpcStatusFilter'NOT_FOUND
    | (Prelude.==) k "ALREADY_EXISTS"
    = Prelude.Just GrpcStatusFilter'ALREADY_EXISTS
    | (Prelude.==) k "PERMISSION_DENIED"
    = Prelude.Just GrpcStatusFilter'PERMISSION_DENIED
    | (Prelude.==) k "RESOURCE_EXHAUSTED"
    = Prelude.Just GrpcStatusFilter'RESOURCE_EXHAUSTED
    | (Prelude.==) k "FAILED_PRECONDITION"
    = Prelude.Just GrpcStatusFilter'FAILED_PRECONDITION
    | (Prelude.==) k "ABORTED" = Prelude.Just GrpcStatusFilter'ABORTED
    | (Prelude.==) k "OUT_OF_RANGE"
    = Prelude.Just GrpcStatusFilter'OUT_OF_RANGE
    | (Prelude.==) k "UNIMPLEMENTED"
    = Prelude.Just GrpcStatusFilter'UNIMPLEMENTED
    | (Prelude.==) k "INTERNAL"
    = Prelude.Just GrpcStatusFilter'INTERNAL
    | (Prelude.==) k "UNAVAILABLE"
    = Prelude.Just GrpcStatusFilter'UNAVAILABLE
    | (Prelude.==) k "DATA_LOSS"
    = Prelude.Just GrpcStatusFilter'DATA_LOSS
    | (Prelude.==) k "UNAUTHENTICATED"
    = Prelude.Just GrpcStatusFilter'UNAUTHENTICATED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded GrpcStatusFilter'Status where
  minBound = GrpcStatusFilter'OK
  maxBound = GrpcStatusFilter'UNAUTHENTICATED
instance Prelude.Enum GrpcStatusFilter'Status where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Status: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum GrpcStatusFilter'OK = 0
  fromEnum GrpcStatusFilter'CANCELED = 1
  fromEnum GrpcStatusFilter'UNKNOWN = 2
  fromEnum GrpcStatusFilter'INVALID_ARGUMENT = 3
  fromEnum GrpcStatusFilter'DEADLINE_EXCEEDED = 4
  fromEnum GrpcStatusFilter'NOT_FOUND = 5
  fromEnum GrpcStatusFilter'ALREADY_EXISTS = 6
  fromEnum GrpcStatusFilter'PERMISSION_DENIED = 7
  fromEnum GrpcStatusFilter'RESOURCE_EXHAUSTED = 8
  fromEnum GrpcStatusFilter'FAILED_PRECONDITION = 9
  fromEnum GrpcStatusFilter'ABORTED = 10
  fromEnum GrpcStatusFilter'OUT_OF_RANGE = 11
  fromEnum GrpcStatusFilter'UNIMPLEMENTED = 12
  fromEnum GrpcStatusFilter'INTERNAL = 13
  fromEnum GrpcStatusFilter'UNAVAILABLE = 14
  fromEnum GrpcStatusFilter'DATA_LOSS = 15
  fromEnum GrpcStatusFilter'UNAUTHENTICATED = 16
  fromEnum
    (GrpcStatusFilter'Status'Unrecognized (GrpcStatusFilter'Status'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ GrpcStatusFilter'UNAUTHENTICATED
    = Prelude.error
        "GrpcStatusFilter'Status.succ: bad argument GrpcStatusFilter'UNAUTHENTICATED. This value would be out of bounds."
  succ GrpcStatusFilter'OK = GrpcStatusFilter'CANCELED
  succ GrpcStatusFilter'CANCELED = GrpcStatusFilter'UNKNOWN
  succ GrpcStatusFilter'UNKNOWN = GrpcStatusFilter'INVALID_ARGUMENT
  succ GrpcStatusFilter'INVALID_ARGUMENT
    = GrpcStatusFilter'DEADLINE_EXCEEDED
  succ GrpcStatusFilter'DEADLINE_EXCEEDED
    = GrpcStatusFilter'NOT_FOUND
  succ GrpcStatusFilter'NOT_FOUND = GrpcStatusFilter'ALREADY_EXISTS
  succ GrpcStatusFilter'ALREADY_EXISTS
    = GrpcStatusFilter'PERMISSION_DENIED
  succ GrpcStatusFilter'PERMISSION_DENIED
    = GrpcStatusFilter'RESOURCE_EXHAUSTED
  succ GrpcStatusFilter'RESOURCE_EXHAUSTED
    = GrpcStatusFilter'FAILED_PRECONDITION
  succ GrpcStatusFilter'FAILED_PRECONDITION
    = GrpcStatusFilter'ABORTED
  succ GrpcStatusFilter'ABORTED = GrpcStatusFilter'OUT_OF_RANGE
  succ GrpcStatusFilter'OUT_OF_RANGE = GrpcStatusFilter'UNIMPLEMENTED
  succ GrpcStatusFilter'UNIMPLEMENTED = GrpcStatusFilter'INTERNAL
  succ GrpcStatusFilter'INTERNAL = GrpcStatusFilter'UNAVAILABLE
  succ GrpcStatusFilter'UNAVAILABLE = GrpcStatusFilter'DATA_LOSS
  succ GrpcStatusFilter'DATA_LOSS = GrpcStatusFilter'UNAUTHENTICATED
  succ (GrpcStatusFilter'Status'Unrecognized _)
    = Prelude.error
        "GrpcStatusFilter'Status.succ: bad argument: unrecognized value"
  pred GrpcStatusFilter'OK
    = Prelude.error
        "GrpcStatusFilter'Status.pred: bad argument GrpcStatusFilter'OK. This value would be out of bounds."
  pred GrpcStatusFilter'CANCELED = GrpcStatusFilter'OK
  pred GrpcStatusFilter'UNKNOWN = GrpcStatusFilter'CANCELED
  pred GrpcStatusFilter'INVALID_ARGUMENT = GrpcStatusFilter'UNKNOWN
  pred GrpcStatusFilter'DEADLINE_EXCEEDED
    = GrpcStatusFilter'INVALID_ARGUMENT
  pred GrpcStatusFilter'NOT_FOUND
    = GrpcStatusFilter'DEADLINE_EXCEEDED
  pred GrpcStatusFilter'ALREADY_EXISTS = GrpcStatusFilter'NOT_FOUND
  pred GrpcStatusFilter'PERMISSION_DENIED
    = GrpcStatusFilter'ALREADY_EXISTS
  pred GrpcStatusFilter'RESOURCE_EXHAUSTED
    = GrpcStatusFilter'PERMISSION_DENIED
  pred GrpcStatusFilter'FAILED_PRECONDITION
    = GrpcStatusFilter'RESOURCE_EXHAUSTED
  pred GrpcStatusFilter'ABORTED
    = GrpcStatusFilter'FAILED_PRECONDITION
  pred GrpcStatusFilter'OUT_OF_RANGE = GrpcStatusFilter'ABORTED
  pred GrpcStatusFilter'UNIMPLEMENTED = GrpcStatusFilter'OUT_OF_RANGE
  pred GrpcStatusFilter'INTERNAL = GrpcStatusFilter'UNIMPLEMENTED
  pred GrpcStatusFilter'UNAVAILABLE = GrpcStatusFilter'INTERNAL
  pred GrpcStatusFilter'DATA_LOSS = GrpcStatusFilter'UNAVAILABLE
  pred GrpcStatusFilter'UNAUTHENTICATED = GrpcStatusFilter'DATA_LOSS
  pred (GrpcStatusFilter'Status'Unrecognized _)
    = Prelude.error
        "GrpcStatusFilter'Status.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault GrpcStatusFilter'Status where
  fieldDefault = GrpcStatusFilter'OK
instance Control.DeepSeq.NFData GrpcStatusFilter'Status where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.header' @:: Lens' HeaderFilter Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'header' @:: Lens' HeaderFilter (Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@ -}
data HeaderFilter
  = HeaderFilter'_constructor {_HeaderFilter'header :: !(Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher),
                               _HeaderFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeaderFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HeaderFilter "header" Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderFilter'header
           (\ x__ y__ -> x__ {_HeaderFilter'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HeaderFilter "maybe'header" (Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderFilter'header
           (\ x__ y__ -> x__ {_HeaderFilter'header = y__}))
        Prelude.id
instance Data.ProtoLens.Message HeaderFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.HeaderFilter"
  packedMessageDescriptor _
    = "\n\
      \\fHeaderFilter\DC2F\n\
      \\ACKheader\CAN\SOH \SOH(\v2$.envoy.config.route.v3.HeaderMatcherR\ACKheaderB\b\250B\ENQ\138\SOH\STX\DLE\SOH:4\154\197\136\RS/\n\
      \-envoy.config.filter.accesslog.v2.HeaderFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor HeaderFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HeaderFilter'_unknownFields
        (\ x__ y__ -> x__ {_HeaderFilter'_unknownFields = y__})
  defMessage
    = HeaderFilter'_constructor
        {_HeaderFilter'header = Prelude.Nothing,
         _HeaderFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HeaderFilter -> Data.ProtoLens.Encoding.Bytes.Parser HeaderFilter
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
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeaderFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
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
instance Control.DeepSeq.NFData HeaderFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HeaderFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HeaderFilter'header x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.matcher' @:: Lens' MetadataFilter Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'matcher' @:: Lens' MetadataFilter (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.matchIfKeyNotFound' @:: Lens' MetadataFilter Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'matchIfKeyNotFound' @:: Lens' MetadataFilter (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@ -}
data MetadataFilter
  = MetadataFilter'_constructor {_MetadataFilter'matcher :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher),
                                 _MetadataFilter'matchIfKeyNotFound :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                 _MetadataFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadataFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MetadataFilter "matcher" Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataFilter'matcher
           (\ x__ y__ -> x__ {_MetadataFilter'matcher = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MetadataFilter "maybe'matcher" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataFilter'matcher
           (\ x__ y__ -> x__ {_MetadataFilter'matcher = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetadataFilter "matchIfKeyNotFound" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataFilter'matchIfKeyNotFound
           (\ x__ y__ -> x__ {_MetadataFilter'matchIfKeyNotFound = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MetadataFilter "maybe'matchIfKeyNotFound" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataFilter'matchIfKeyNotFound
           (\ x__ y__ -> x__ {_MetadataFilter'matchIfKeyNotFound = y__}))
        Prelude.id
instance Data.ProtoLens.Message MetadataFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.MetadataFilter"
  packedMessageDescriptor _
    = "\n\
      \\SOMetadataFilter\DC2@\n\
      \\amatcher\CAN\SOH \SOH(\v2&.envoy.type.matcher.v3.MetadataMatcherR\amatcher\DC2N\n\
      \\SYNmatch_if_key_not_found\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\DC2matchIfKeyNotFound:6\154\197\136\RS1\n\
      \/envoy.config.filter.accesslog.v2.MetadataFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        matcher__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "matcher"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'matcher")) ::
              Data.ProtoLens.FieldDescriptor MetadataFilter
        matchIfKeyNotFound__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_if_key_not_found"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'matchIfKeyNotFound")) ::
              Data.ProtoLens.FieldDescriptor MetadataFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, matcher__field_descriptor),
           (Data.ProtoLens.Tag 2, matchIfKeyNotFound__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadataFilter'_unknownFields
        (\ x__ y__ -> x__ {_MetadataFilter'_unknownFields = y__})
  defMessage
    = MetadataFilter'_constructor
        {_MetadataFilter'matcher = Prelude.Nothing,
         _MetadataFilter'matchIfKeyNotFound = Prelude.Nothing,
         _MetadataFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadataFilter
          -> Data.ProtoLens.Encoding.Bytes.Parser MetadataFilter
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
                                       "matcher"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"matcher") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "match_if_key_not_found"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"matchIfKeyNotFound") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MetadataFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'matcher") _x
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
                       (Data.ProtoLens.Field.field @"maybe'matchIfKeyNotFound") _x
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
instance Control.DeepSeq.NFData MetadataFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadataFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MetadataFilter'matcher x__)
                (Control.DeepSeq.deepseq
                   (_MetadataFilter'matchIfKeyNotFound x__) ()))
{- | Fields :
      -}
data NotHealthCheckFilter
  = NotHealthCheckFilter'_constructor {_NotHealthCheckFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NotHealthCheckFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message NotHealthCheckFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.NotHealthCheckFilter"
  packedMessageDescriptor _
    = "\n\
      \\DC4NotHealthCheckFilter:<\154\197\136\RS7\n\
      \5envoy.config.filter.accesslog.v2.NotHealthCheckFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NotHealthCheckFilter'_unknownFields
        (\ x__ y__ -> x__ {_NotHealthCheckFilter'_unknownFields = y__})
  defMessage
    = NotHealthCheckFilter'_constructor
        {_NotHealthCheckFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NotHealthCheckFilter
          -> Data.ProtoLens.Encoding.Bytes.Parser NotHealthCheckFilter
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
          (do loop Data.ProtoLens.defMessage) "NotHealthCheckFilter"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData NotHealthCheckFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NotHealthCheckFilter'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.filters' @:: Lens' OrFilter [AccessLogFilter]@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.vec'filters' @:: Lens' OrFilter (Data.Vector.Vector AccessLogFilter)@ -}
data OrFilter
  = OrFilter'_constructor {_OrFilter'filters :: !(Data.Vector.Vector AccessLogFilter),
                           _OrFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OrFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OrFilter "filters" [AccessLogFilter] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OrFilter'filters (\ x__ y__ -> x__ {_OrFilter'filters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OrFilter "vec'filters" (Data.Vector.Vector AccessLogFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OrFilter'filters (\ x__ y__ -> x__ {_OrFilter'filters = y__}))
        Prelude.id
instance Data.ProtoLens.Message OrFilter where
  messageName _ = Data.Text.pack "envoy.config.accesslog.v3.OrFilter"
  packedMessageDescriptor _
    = "\n\
      \\bOrFilter\DC2N\n\
      \\afilters\CAN\STX \ETX(\v2*.envoy.config.accesslog.v3.AccessLogFilterR\afiltersB\b\250B\ENQ\146\SOH\STX\b\STX:0\154\197\136\RS+\n\
      \)envoy.config.filter.accesslog.v2.OrFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        filters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AccessLogFilter)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"filters")) ::
              Data.ProtoLens.FieldDescriptor OrFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, filters__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OrFilter'_unknownFields
        (\ x__ y__ -> x__ {_OrFilter'_unknownFields = y__})
  defMessage
    = OrFilter'_constructor
        {_OrFilter'filters = Data.Vector.Generic.empty,
         _OrFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OrFilter
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AccessLogFilter
             -> Data.ProtoLens.Encoding.Bytes.Parser OrFilter
        loop x mutable'filters
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'filters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'filters)
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
                              (Data.ProtoLens.Field.field @"vec'filters") frozen'filters x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "filters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'filters y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'filters
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'filters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'filters)
          "OrFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'filters") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData OrFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OrFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq (_OrFilter'filters x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.flags' @:: Lens' ResponseFlagFilter [Data.Text.Text]@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.vec'flags' @:: Lens' ResponseFlagFilter (Data.Vector.Vector Data.Text.Text)@ -}
data ResponseFlagFilter
  = ResponseFlagFilter'_constructor {_ResponseFlagFilter'flags :: !(Data.Vector.Vector Data.Text.Text),
                                     _ResponseFlagFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseFlagFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseFlagFilter "flags" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlagFilter'flags
           (\ x__ y__ -> x__ {_ResponseFlagFilter'flags = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponseFlagFilter "vec'flags" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlagFilter'flags
           (\ x__ y__ -> x__ {_ResponseFlagFilter'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseFlagFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.ResponseFlagFilter"
  packedMessageDescriptor _
    = "\n\
      \\DC2ResponseFlagFilter\DC2\151\SOH\n\
      \\ENQflags\CAN\SOH \ETX(\tR\ENQflagsB\128\SOH\250B}\146\SOHz\"xrvR\STXLHR\STXUHR\STXUTR\STXLRR\STXURR\STXUFR\STXUCR\STXUOR\STXNRR\STXDIR\STXFIR\STXRLR\EOTUAEXR\EOTRLSER\STXDCR\ETXURXR\STXSIR\STXIHR\ETXDPER\ENQUMSDRR\EOTRFCFR\EOTNFCFR\STXDTR\ETXUPER\STXNCR\STXOM::\154\197\136\RS5\n\
      \3envoy.config.filter.accesslog.v2.ResponseFlagFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"flags")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlagFilter
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, flags__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseFlagFilter'_unknownFields
        (\ x__ y__ -> x__ {_ResponseFlagFilter'_unknownFields = y__})
  defMessage
    = ResponseFlagFilter'_constructor
        {_ResponseFlagFilter'flags = Data.Vector.Generic.empty,
         _ResponseFlagFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseFlagFilter
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ResponseFlagFilter
        loop x mutable'flags
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'flags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'flags)
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
                              (Data.ProtoLens.Field.field @"vec'flags") frozen'flags x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "flags"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'flags y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'flags
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'flags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'flags)
          "ResponseFlagFilter"
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
                           Data.Text.Encoding.encodeUtf8
                           _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'flags") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseFlagFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseFlagFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ResponseFlagFilter'flags x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.runtimeKey' @:: Lens' RuntimeFilter Data.Text.Text@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.percentSampled' @:: Lens' RuntimeFilter Proto.Envoy.Type.V3.Percent.FractionalPercent@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'percentSampled' @:: Lens' RuntimeFilter (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent)@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.useIndependentRandomness' @:: Lens' RuntimeFilter Prelude.Bool@ -}
data RuntimeFilter
  = RuntimeFilter'_constructor {_RuntimeFilter'runtimeKey :: !Data.Text.Text,
                                _RuntimeFilter'percentSampled :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent),
                                _RuntimeFilter'useIndependentRandomness :: !Prelude.Bool,
                                _RuntimeFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RuntimeFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RuntimeFilter "runtimeKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeFilter'runtimeKey
           (\ x__ y__ -> x__ {_RuntimeFilter'runtimeKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeFilter "percentSampled" Proto.Envoy.Type.V3.Percent.FractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeFilter'percentSampled
           (\ x__ y__ -> x__ {_RuntimeFilter'percentSampled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RuntimeFilter "maybe'percentSampled" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeFilter'percentSampled
           (\ x__ y__ -> x__ {_RuntimeFilter'percentSampled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeFilter "useIndependentRandomness" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeFilter'useIndependentRandomness
           (\ x__ y__ -> x__ {_RuntimeFilter'useIndependentRandomness = y__}))
        Prelude.id
instance Data.ProtoLens.Message RuntimeFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.RuntimeFilter"
  packedMessageDescriptor _
    = "\n\
      \\rRuntimeFilter\DC2(\n\
      \\vruntime_key\CAN\SOH \SOH(\tR\n\
      \runtimeKeyB\a\250B\EOTr\STX\DLE\SOH\DC2I\n\
      \\SIpercent_sampled\CAN\STX \SOH(\v2 .envoy.type.v3.FractionalPercentR\SOpercentSampled\DC2<\n\
      \\SUBuse_independent_randomness\CAN\ETX \SOH(\bR\CANuseIndependentRandomness:5\154\197\136\RS0\n\
      \.envoy.config.filter.accesslog.v2.RuntimeFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        runtimeKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"runtimeKey")) ::
              Data.ProtoLens.FieldDescriptor RuntimeFilter
        percentSampled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "percent_sampled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.FractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'percentSampled")) ::
              Data.ProtoLens.FieldDescriptor RuntimeFilter
        useIndependentRandomness__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_independent_randomness"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useIndependentRandomness")) ::
              Data.ProtoLens.FieldDescriptor RuntimeFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, runtimeKey__field_descriptor),
           (Data.ProtoLens.Tag 2, percentSampled__field_descriptor),
           (Data.ProtoLens.Tag 3, useIndependentRandomness__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RuntimeFilter'_unknownFields
        (\ x__ y__ -> x__ {_RuntimeFilter'_unknownFields = y__})
  defMessage
    = RuntimeFilter'_constructor
        {_RuntimeFilter'runtimeKey = Data.ProtoLens.fieldDefault,
         _RuntimeFilter'percentSampled = Prelude.Nothing,
         _RuntimeFilter'useIndependentRandomness = Data.ProtoLens.fieldDefault,
         _RuntimeFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RuntimeFilter -> Data.ProtoLens.Encoding.Bytes.Parser RuntimeFilter
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
                                       "runtime_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runtimeKey") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "percent_sampled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"percentSampled") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_independent_randomness"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useIndependentRandomness") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RuntimeFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"runtimeKey") _x
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
                       (Data.ProtoLens.Field.field @"maybe'percentSampled") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"useIndependentRandomness") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RuntimeFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RuntimeFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RuntimeFilter'runtimeKey x__)
                (Control.DeepSeq.deepseq
                   (_RuntimeFilter'percentSampled x__)
                   (Control.DeepSeq.deepseq
                      (_RuntimeFilter'useIndependentRandomness x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.comparison' @:: Lens' StatusCodeFilter ComparisonFilter@
         * 'Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields.maybe'comparison' @:: Lens' StatusCodeFilter (Prelude.Maybe ComparisonFilter)@ -}
data StatusCodeFilter
  = StatusCodeFilter'_constructor {_StatusCodeFilter'comparison :: !(Prelude.Maybe ComparisonFilter),
                                   _StatusCodeFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatusCodeFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StatusCodeFilter "comparison" ComparisonFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatusCodeFilter'comparison
           (\ x__ y__ -> x__ {_StatusCodeFilter'comparison = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StatusCodeFilter "maybe'comparison" (Prelude.Maybe ComparisonFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatusCodeFilter'comparison
           (\ x__ y__ -> x__ {_StatusCodeFilter'comparison = y__}))
        Prelude.id
instance Data.ProtoLens.Message StatusCodeFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.StatusCodeFilter"
  packedMessageDescriptor _
    = "\n\
      \\DLEStatusCodeFilter\DC2U\n\
      \\n\
      \comparison\CAN\SOH \SOH(\v2+.envoy.config.accesslog.v3.ComparisonFilterR\n\
      \comparisonB\b\250B\ENQ\138\SOH\STX\DLE\SOH:8\154\197\136\RS3\n\
      \1envoy.config.filter.accesslog.v2.StatusCodeFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comparison__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comparison"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ComparisonFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comparison")) ::
              Data.ProtoLens.FieldDescriptor StatusCodeFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comparison__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StatusCodeFilter'_unknownFields
        (\ x__ y__ -> x__ {_StatusCodeFilter'_unknownFields = y__})
  defMessage
    = StatusCodeFilter'_constructor
        {_StatusCodeFilter'comparison = Prelude.Nothing,
         _StatusCodeFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StatusCodeFilter
          -> Data.ProtoLens.Encoding.Bytes.Parser StatusCodeFilter
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
                                       "comparison"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"comparison") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StatusCodeFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'comparison") _x
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
instance Control.DeepSeq.NFData StatusCodeFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StatusCodeFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq (_StatusCodeFilter'comparison x__) ())
{- | Fields :
      -}
data TraceableFilter
  = TraceableFilter'_constructor {_TraceableFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TraceableFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message TraceableFilter where
  messageName _
    = Data.Text.pack "envoy.config.accesslog.v3.TraceableFilter"
  packedMessageDescriptor _
    = "\n\
      \\SITraceableFilter:7\154\197\136\RS2\n\
      \0envoy.config.filter.accesslog.v2.TraceableFilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TraceableFilter'_unknownFields
        (\ x__ y__ -> x__ {_TraceableFilter'_unknownFields = y__})
  defMessage
    = TraceableFilter'_constructor
        {_TraceableFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TraceableFilter
          -> Data.ProtoLens.Encoding.Bytes.Parser TraceableFilter
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
          (do loop Data.ProtoLens.defMessage) "TraceableFilter"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData TraceableFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_TraceableFilter'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)envoy/config/accesslog/v3/accesslog.proto\DC2\EMenvoy.config.accesslog.v3\SUB\USenvoy/config/core/v3/base.proto\SUB,envoy/config/route/v3/route_components.proto\SUB$envoy/type/matcher/v3/metadata.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\238\SOH\n\
    \\tAccessLog\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2B\n\
    \\ACKfilter\CAN\STX \SOH(\v2*.envoy.config.accesslog.v3.AccessLogFilterR\ACKfilter\DC29\n\
    \\ftyped_config\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
    \\vconfig_type:1\154\197\136\RS,\n\
    \*envoy.config.filter.accesslog.v2.AccessLogJ\EOT\b\ETX\DLE\EOTR\ACKconfig\"\246\b\n\
    \\SIAccessLogFilter\DC2[\n\
    \\DC2status_code_filter\CAN\SOH \SOH(\v2+.envoy.config.accesslog.v3.StatusCodeFilterH\NULR\DLEstatusCodeFilter\DC2T\n\
    \\SIduration_filter\CAN\STX \SOH(\v2).envoy.config.accesslog.v3.DurationFilterH\NULR\SOdurationFilter\DC2h\n\
    \\ETBnot_health_check_filter\CAN\ETX \SOH(\v2/.envoy.config.accesslog.v3.NotHealthCheckFilterH\NULR\DC4notHealthCheckFilter\DC2W\n\
    \\DLEtraceable_filter\CAN\EOT \SOH(\v2*.envoy.config.accesslog.v3.TraceableFilterH\NULR\SItraceableFilter\DC2Q\n\
    \\SOruntime_filter\CAN\ENQ \SOH(\v2(.envoy.config.accesslog.v3.RuntimeFilterH\NULR\rruntimeFilter\DC2E\n\
    \\n\
    \and_filter\CAN\ACK \SOH(\v2$.envoy.config.accesslog.v3.AndFilterH\NULR\tandFilter\DC2B\n\
    \\tor_filter\CAN\a \SOH(\v2#.envoy.config.accesslog.v3.OrFilterH\NULR\borFilter\DC2N\n\
    \\rheader_filter\CAN\b \SOH(\v2'.envoy.config.accesslog.v3.HeaderFilterH\NULR\fheaderFilter\DC2a\n\
    \\DC4response_flag_filter\CAN\t \SOH(\v2-.envoy.config.accesslog.v3.ResponseFlagFilterH\NULR\DC2responseFlagFilter\DC2[\n\
    \\DC2grpc_status_filter\CAN\n\
    \ \SOH(\v2+.envoy.config.accesslog.v3.GrpcStatusFilterH\NULR\DLEgrpcStatusFilter\DC2W\n\
    \\DLEextension_filter\CAN\v \SOH(\v2*.envoy.config.accesslog.v3.ExtensionFilterH\NULR\SIextensionFilter\DC2T\n\
    \\SImetadata_filter\CAN\f \SOH(\v2).envoy.config.accesslog.v3.MetadataFilterH\NULR\SOmetadataFilterB\ETB\n\
    \\DLEfilter_specifier\DC2\ETX\248B\SOH:7\154\197\136\RS2\n\
    \0envoy.config.filter.accesslog.v2.AccessLogFilter\"\239\SOH\n\
    \\DLEComparisonFilter\DC2H\n\
    \\STXop\CAN\SOH \SOH(\SO2..envoy.config.accesslog.v3.ComparisonFilter.OpR\STXopB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC29\n\
    \\ENQvalue\CAN\STX \SOH(\v2#.envoy.config.core.v3.RuntimeUInt32R\ENQvalue\"\FS\n\
    \\STXOp\DC2\ACK\n\
    \\STXEQ\DLE\NUL\DC2\ACK\n\
    \\STXGE\DLE\SOH\DC2\ACK\n\
    \\STXLE\DLE\STX:8\154\197\136\RS3\n\
    \1envoy.config.filter.accesslog.v2.ComparisonFilter\"\163\SOH\n\
    \\DLEStatusCodeFilter\DC2U\n\
    \\n\
    \comparison\CAN\SOH \SOH(\v2+.envoy.config.accesslog.v3.ComparisonFilterR\n\
    \comparisonB\b\250B\ENQ\138\SOH\STX\DLE\SOH:8\154\197\136\RS3\n\
    \1envoy.config.filter.accesslog.v2.StatusCodeFilter\"\159\SOH\n\
    \\SODurationFilter\DC2U\n\
    \\n\
    \comparison\CAN\SOH \SOH(\v2+.envoy.config.accesslog.v3.ComparisonFilterR\n\
    \comparisonB\b\250B\ENQ\138\SOH\STX\DLE\SOH:6\154\197\136\RS1\n\
    \/envoy.config.filter.accesslog.v2.DurationFilter\"T\n\
    \\DC4NotHealthCheckFilter:<\154\197\136\RS7\n\
    \5envoy.config.filter.accesslog.v2.NotHealthCheckFilter\"J\n\
    \\SITraceableFilter:7\154\197\136\RS2\n\
    \0envoy.config.filter.accesslog.v2.TraceableFilter\"\249\SOH\n\
    \\rRuntimeFilter\DC2(\n\
    \\vruntime_key\CAN\SOH \SOH(\tR\n\
    \runtimeKeyB\a\250B\EOTr\STX\DLE\SOH\DC2I\n\
    \\SIpercent_sampled\CAN\STX \SOH(\v2 .envoy.type.v3.FractionalPercentR\SOpercentSampled\DC2<\n\
    \\SUBuse_independent_randomness\CAN\ETX \SOH(\bR\CANuseIndependentRandomness:5\154\197\136\RS0\n\
    \.envoy.config.filter.accesslog.v2.RuntimeFilter\"\142\SOH\n\
    \\tAndFilter\DC2N\n\
    \\afilters\CAN\SOH \ETX(\v2*.envoy.config.accesslog.v3.AccessLogFilterR\afiltersB\b\250B\ENQ\146\SOH\STX\b\STX:1\154\197\136\RS,\n\
    \*envoy.config.filter.accesslog.v2.AndFilter\"\140\SOH\n\
    \\bOrFilter\DC2N\n\
    \\afilters\CAN\STX \ETX(\v2*.envoy.config.accesslog.v3.AccessLogFilterR\afiltersB\b\250B\ENQ\146\SOH\STX\b\STX:0\154\197\136\RS+\n\
    \)envoy.config.filter.accesslog.v2.OrFilter\"\140\SOH\n\
    \\fHeaderFilter\DC2F\n\
    \\ACKheader\CAN\SOH \SOH(\v2$.envoy.config.route.v3.HeaderMatcherR\ACKheaderB\b\250B\ENQ\138\SOH\STX\DLE\SOH:4\154\197\136\RS/\n\
    \-envoy.config.filter.accesslog.v2.HeaderFilter\"\234\SOH\n\
    \\DC2ResponseFlagFilter\DC2\151\SOH\n\
    \\ENQflags\CAN\SOH \ETX(\tR\ENQflagsB\128\SOH\250B}\146\SOHz\"xrvR\STXLHR\STXUHR\STXUTR\STXLRR\STXURR\STXUFR\STXUCR\STXUOR\STXNRR\STXDIR\STXFIR\STXRLR\EOTUAEXR\EOTRLSER\STXDCR\ETXURXR\STXSIR\STXIHR\ETXDPER\ENQUMSDRR\EOTRFCFR\EOTNFCFR\STXDTR\ETXUPER\STXNCR\STXOM::\154\197\136\RS5\n\
    \3envoy.config.filter.accesslog.v2.ResponseFlagFilter\"\128\EOT\n\
    \\DLEGrpcStatusFilter\DC2]\n\
    \\bstatuses\CAN\SOH \ETX(\SO22.envoy.config.accesslog.v3.GrpcStatusFilter.StatusR\bstatusesB\r\250B\n\
    \\146\SOH\a\"\ENQ\130\SOH\STX\DLE\SOH\DC2\CAN\n\
    \\aexclude\CAN\STX \SOH(\bR\aexclude\"\184\STX\n\
    \\ACKStatus\DC2\ACK\n\
    \\STXOK\DLE\NUL\DC2\f\n\
    \\bCANCELED\DLE\SOH\DC2\v\n\
    \\aUNKNOWN\DLE\STX\DC2\DC4\n\
    \\DLEINVALID_ARGUMENT\DLE\ETX\DC2\NAK\n\
    \\DC1DEADLINE_EXCEEDED\DLE\EOT\DC2\r\n\
    \\tNOT_FOUND\DLE\ENQ\DC2\DC2\n\
    \\SOALREADY_EXISTS\DLE\ACK\DC2\NAK\n\
    \\DC1PERMISSION_DENIED\DLE\a\DC2\SYN\n\
    \\DC2RESOURCE_EXHAUSTED\DLE\b\DC2\ETB\n\
    \\DC3FAILED_PRECONDITION\DLE\t\DC2\v\n\
    \\aABORTED\DLE\n\
    \\DC2\DLE\n\
    \\fOUT_OF_RANGE\DLE\v\DC2\DC1\n\
    \\rUNIMPLEMENTED\DLE\f\DC2\f\n\
    \\bINTERNAL\DLE\r\DC2\SI\n\
    \\vUNAVAILABLE\DLE\SO\DC2\r\n\
    \\tDATA_LOSS\DLE\SI\DC2\DC3\n\
    \\SIUNAUTHENTICATED\DLE\DLE:8\154\197\136\RS3\n\
    \1envoy.config.filter.accesslog.v2.GrpcStatusFilter\"\218\SOH\n\
    \\SOMetadataFilter\DC2@\n\
    \\amatcher\CAN\SOH \SOH(\v2&.envoy.type.matcher.v3.MetadataMatcherR\amatcher\DC2N\n\
    \\SYNmatch_if_key_not_found\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\DC2matchIfKeyNotFound:6\154\197\136\RS1\n\
    \/envoy.config.filter.accesslog.v2.MetadataFilter\"\182\SOH\n\
    \\SIExtensionFilter\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC29\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
    \\vconfig_type:7\154\197\136\RS2\n\
    \0envoy.config.filter.accesslog.v2.ExtensionFilterJ\EOT\b\STX\DLE\ETXR\ACKconfigBC\n\
    \'io.envoyproxy.envoy.config.accesslog.v3B\SOAccesslogProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\252I\n\
    \\a\DC2\ENQ\NUL\NUL\198\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\"\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL6\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL%\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL(\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL'\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL@\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NUL@\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC2\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC3\NULF\n\
    \8\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL,\SOH2, [#protodoc-title: Common access log types]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\DC1\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\CAN\STX\EM3\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\CAN\STX\EM3\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX\ESC\STX\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\ESC\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\ESC\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\ESC\v\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\n\
    \\DC2\ETX\GS\STX\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETX\GS\v\DC3\n\
    \\134\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\"\STX\DC2\SUB\248\SOH The name of the access log extension to instantiate.\n\
    \ The name must match one of the compiled in loggers.\n\
    \ See the :ref:`extensions listed in typed_config below <extension_category_envoy.access_loggers>` for the default list of available loggers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\"\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\"\DLE\DC1\n\
    \W\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX%\STX\GS\SUBJ Filter which is used to determine if the access log needs to be written.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX%\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX%\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX%\ESC\FS\n\
    \\160\SOH\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT)\STX+\ETX\SUB\145\SOH Custom configuration that must be set according to the access logger extension being instantiated.\n\
    \ [#extension-category: envoy.access_loggers]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX)\b\DC3\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX*\EOT)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX*\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX*\CAN$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX*'(\n\
    \$\n\
    \\STX\EOT\SOH\DC2\EOT/\NULZ\SOH\SUB\CAN [#next-free-field: 13]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX/\b\ETB\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT0\STX19\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT0\STX19\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT3\STXY\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX3\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETX4\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETX4\EOT&\n\
    \\"\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX7\EOT,\SUB\NAK Status code filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX7\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX7\NAK'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX7*+\n\
    \\US\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX:\EOT'\SUB\DC2 Duration filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX:\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX:\DC3\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX:%&\n\
    \'\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX=\EOT5\SUB\SUB Not health check filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX=\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX=\EM0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX=34\n\
    \ \n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX@\EOT)\SUB\DC3 Traceable filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX@\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX@\DC4$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX@'(\n\
    \\RS\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXC\EOT%\SUB\DC1 Runtime filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETXC\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXC\DC2 \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXC#$\n\
    \\SUB\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXF\EOT\GS\SUB\r And filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETXF\EOT\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXF\SO\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXF\ESC\FS\n\
    \\EM\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXI\EOT\ESC\SUB\f Or filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETXI\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXI\r\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXI\EM\SUB\n\
    \\GS\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETXL\EOT#\SUB\DLE Header filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\ETXL\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETXL\DC1\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETXL!\"\n\
    \$\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETXO\EOT0\SUB\ETB Response flag filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\ETXO\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETXO\ETB+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETXO./\n\
    \\"\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETXR\EOT-\SUB\NAK gRPC status filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ACK\DC2\ETXR\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETXR\NAK'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETXR*,\n\
    \ \n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\ETXU\EOT*\SUB\DC3 Extension filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ACK\DC2\ETXU\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\ETXU\DC4$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\ETXU')\n\
    \\RS\n\
    \\EOT\EOT\SOH\STX\v\DC2\ETXX\EOT(\SUB\DC1 Metadata Filter\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ACK\DC2\ETXX\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\ETXX\DC3\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\ETXX%'\n\
    \.\n\
    \\STX\EOT\STX\DC2\EOT]\NULq\SOH\SUB\" Filter on an integer comparison.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX]\b\CAN\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT^\STX_:\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT^\STX_:\n\
    \\f\n\
    \\EOT\EOT\STX\EOT\NUL\DC2\EOTa\STXj\ETX\n\
    \\f\n\
    \\ENQ\EOT\STX\EOT\NUL\SOH\DC2\ETXa\a\t\n\
    \\DC2\n\
    \\ACK\EOT\STX\EOT\NUL\STX\NUL\DC2\ETXc\EOT\v\SUB\ETX =\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\NUL\SOH\DC2\ETXc\EOT\ACK\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\NUL\STX\DC2\ETXc\t\n\
    \\n\
    \\DC3\n\
    \\ACK\EOT\STX\EOT\NUL\STX\SOH\DC2\ETXf\EOT\v\SUB\EOT >=\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\SOH\SOH\DC2\ETXf\EOT\ACK\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\SOH\STX\DC2\ETXf\t\n\
    \\n\
    \\DC3\n\
    \\ACK\EOT\STX\EOT\NUL\STX\STX\DC2\ETXi\EOT\v\SUB\EOT <=\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\STX\SOH\DC2\ETXi\EOT\ACK\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\STX\STX\DC2\ETXi\t\n\
    \\n\
    \#\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXm\STX;\SUB\SYN Comparison operator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXm\STX\EOT\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXm\ENQ\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXm\n\
    \\v\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXm\f:\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\175\b\DLE\DC2\ETXm\r9\n\
    \(\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXp\STX\"\SUB\ESC Value to compare against.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETXp\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXp\CAN\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXp !\n\
    \3\n\
    \\STX\EOT\ETX\DC2\EOTt\NULz\SOH\SUB' Filters on HTTP response/status code.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXt\b\CAN\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOTu\STXv:\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOTu\STXv:\n\
    \\SUB\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXy\STXP\SUB\r Comparison.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXy\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXy\DC3\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXy !\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETXy\"O\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\DC1\DC2\ETXy#N\n\
    \A\n\
    \\STX\EOT\EOT\DC2\ENQ}\NUL\131\SOH\SOH\SUB4 Filters on total request duration in milliseconds.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX}\b\SYN\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOT~\STX\DEL8\n\
    \\DLE\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\EOT~\STX\DEL8\n\
    \\ESC\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\130\SOH\STXP\SUB\r Comparison.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\130\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\130\SOH\DC3\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\130\SOH !\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOT\130\SOH\"O\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\175\b\DC1\DC2\EOT\130\SOH#N\n\
    \\134\SOH\n\
    \\STX\EOT\ENQ\DC2\ACK\135\SOH\NUL\138\SOH\SOH\SUBx Filters for requests that are not health check requests. A health check\n\
    \ request is marked by the health check filter.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\135\SOH\b\FS\n\
    \\r\n\
    \\ETX\EOT\ENQ\a\DC2\ACK\136\SOH\STX\137\SOH>\n\
    \\DC2\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\136\SOH\STX\137\SOH>\n\
    \\139\SOH\n\
    \\STX\EOT\ACK\DC2\ACK\142\SOH\NUL\145\SOH\SOH\SUB} Filters for requests that are traceable. See the tracing overview for more\n\
    \ information on how a request becomes traceable.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\142\SOH\b\ETB\n\
    \\r\n\
    \\ETX\EOT\ACK\a\DC2\ACK\143\SOH\STX\144\SOH9\n\
    \\DC2\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\ACK\143\SOH\STX\144\SOH9\n\
    \8\n\
    \\STX\EOT\a\DC2\ACK\148\SOH\NUL\177\SOH\SOH\SUB* Filters for random sampling of requests.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\148\SOH\b\NAK\n\
    \\r\n\
    \\ETX\EOT\a\a\DC2\ACK\149\SOH\STX\150\SOH7\n\
    \\DC2\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\ACK\149\SOH\STX\150\SOH7\n\
    \\178\SOH\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\155\SOH\STXB\SUB\163\SOH Runtime key to get an optional overridden numerator for use in the\n\
    \ *percent_sampled* field. If found in runtime, this value will replace the\n\
    \ default numerator.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\155\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\155\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\155\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\155\SOH\EMA\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\175\b\SO\DC2\EOT\155\SOH\SUB@\n\
    \k\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\159\SOH\STX0\SUB] The default sampling percentage. If not specified, defaults to 0% with\n\
    \ denominator of 100.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\159\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\159\SOH\FS+\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\159\SOH./\n\
    \\210\a\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\176\SOH\STX&\SUB\195\a By default, sampling pivots on the header\n\
    \ :ref:`x-request-id<config_http_conn_man_headers_x-request-id>` being\n\
    \ present. If :ref:`x-request-id<config_http_conn_man_headers_x-request-id>`\n\
    \ is present, the filter will consistently sample across multiple hosts based\n\
    \ on the runtime key value and the value extracted from\n\
    \ :ref:`x-request-id<config_http_conn_man_headers_x-request-id>`. If it is\n\
    \ missing, or *use_independent_randomness* is set to true, the filter will\n\
    \ randomly sample based on the runtime key value alone.\n\
    \ *use_independent_randomness* can be used for logging kill switches within\n\
    \ complex nested :ref:`AndFilter\n\
    \ <envoy_v3_api_msg_config.accesslog.v3.AndFilter>` and :ref:`OrFilter\n\
    \ <envoy_v3_api_msg_config.accesslog.v3.OrFilter>` blocks that are easier to\n\
    \ reason about from a probability perspective (i.e., setting to true will\n\
    \ cause the filter to behave like an independent random variable when\n\
    \ composed within logical operator filters).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\EOT\176\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\176\SOH\a!\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\176\SOH$%\n\
    \\205\SOH\n\
    \\STX\EOT\b\DC2\ACK\182\SOH\NUL\187\SOH\SOH\SUB\190\SOH Performs a logical \226\128\156and\226\128\157 operation on the result of each filter in filters.\n\
    \ Filters are evaluated sequentially and if one of them returns false, the\n\
    \ filter returns false immediately.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\182\SOH\b\DC1\n\
    \\r\n\
    \\ETX\EOT\b\a\DC2\ACK\183\SOH\STX\184\SOH3\n\
    \\DC2\n\
    \\b\EOT\b\a\211\136\225\ETX\SOH\DC2\ACK\183\SOH\STX\184\SOH3\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\186\SOH\STXT\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\EOT\186\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\186\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\186\SOH\ESC\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\186\SOH%&\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\186\SOH'S\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\175\b\DC2\DC2\EOT\186\SOH(R\n\
    \\202\SOH\n\
    \\STX\EOT\t\DC2\ACK\192\SOH\NUL\197\SOH\SOH\SUB\187\SOH Performs a logical \226\128\156or\226\128\157 operation on the result of each individual filter.\n\
    \ Filters are evaluated sequentially and if one of them returns true, the\n\
    \ filter returns true immediately.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\192\SOH\b\DLE\n\
    \\r\n\
    \\ETX\EOT\t\a\DC2\ACK\193\SOH\STX\194\SOH2\n\
    \\DC2\n\
    \\b\EOT\t\a\211\136\225\ETX\SOH\DC2\ACK\193\SOH\STX\194\SOH2\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\196\SOH\STXT\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\196\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\196\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\196\SOH\ESC\"\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\196\SOH%&\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\196\SOH'S\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\175\b\DC2\DC2\EOT\196\SOH(R\n\
    \T\n\
    \\STX\EOT\n\
    \\DC2\ACK\200\SOH\NUL\207\SOH\SOH\SUBF Filters requests based on the presence or value of a request header.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\200\SOH\b\DC4\n\
    \\r\n\
    \\ETX\EOT\n\
    \\a\DC2\ACK\201\SOH\STX\202\SOH6\n\
    \\DC2\n\
    \\b\EOT\n\
    \\a\211\136\225\ETX\SOH\DC2\ACK\201\SOH\STX\202\SOH6\n\
    \r\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\206\SOH\STXR\SUBd Only requests with a header which matches the specified HeaderMatcher will\n\
    \ pass the filter check.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\206\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\206\SOH\EM\US\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\206\SOH\"#\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\206\SOH$Q\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\175\b\DC1\DC2\EOT\206\SOH%P\n\
    \\226\SOH\n\
    \\STX\EOT\v\DC2\ACK\213\SOH\NUL\252\SOH\SOH\SUB\211\SOH Filters requests that received responses with an Envoy response flag set.\n\
    \ A list of the response flags can be found\n\
    \ in the access log formatter\n\
    \ :ref:`documentation<config_access_log_format_response_flags>`.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\213\SOH\b\SUB\n\
    \\r\n\
    \\ETX\EOT\v\a\DC2\ACK\214\SOH\STX\215\SOH<\n\
    \\DC2\n\
    \\b\EOT\v\a\211\136\225\ETX\SOH\DC2\ACK\214\SOH\STX\215\SOH<\n\
    \\197\SOH\n\
    \\EOT\EOT\v\STX\NUL\DC2\ACK\220\SOH\STX\251\SOH\ENQ\SUB\180\SOH Only responses with the any of the flags listed in this field will be\n\
    \ logged. This field is optional. If it is not specified, then any response\n\
    \ flag will pass the filter check.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\EOT\220\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\220\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\220\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\220\SOH\SUB\ESC\n\
    \\SI\n\
    \\ENQ\EOT\v\STX\NUL\b\DC2\ACK\220\SOH\FS\251\SOH\EOT\n\
    \\DC2\n\
    \\b\EOT\v\STX\NUL\b\175\b\DC2\DC2\ACK\220\SOH\GS\251\SOH\ETX\n\
    \\165\SOH\n\
    \\STX\EOT\f\DC2\ACK\128\STX\NUL\159\STX\SOH\SUB\150\SOH Filters gRPC requests based on their response status. If a gRPC status is not\n\
    \ provided, the filter will infer the status from the HTTP status code.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\128\STX\b\CAN\n\
    \\r\n\
    \\ETX\EOT\f\a\DC2\ACK\129\STX\STX\130\STX:\n\
    \\DC2\n\
    \\b\EOT\f\a\211\136\225\ETX\SOH\DC2\ACK\129\STX\STX\130\STX:\n\
    \\SO\n\
    \\EOT\EOT\f\EOT\NUL\DC2\ACK\132\STX\STX\150\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\f\EOT\NUL\SOH\DC2\EOT\132\STX\a\r\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\NUL\DC2\EOT\133\STX\EOT\v\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\NUL\SOH\DC2\EOT\133\STX\EOT\ACK\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\NUL\STX\DC2\EOT\133\STX\t\n\
    \\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\SOH\DC2\EOT\134\STX\EOT\DC1\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\SOH\SOH\DC2\EOT\134\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\SOH\STX\DC2\EOT\134\STX\SI\DLE\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\STX\DC2\EOT\135\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\STX\SOH\DC2\EOT\135\STX\EOT\v\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\STX\STX\DC2\EOT\135\STX\SO\SI\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\ETX\DC2\EOT\136\STX\EOT\EM\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\ETX\SOH\DC2\EOT\136\STX\EOT\DC4\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\ETX\STX\DC2\EOT\136\STX\ETB\CAN\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\EOT\DC2\EOT\137\STX\EOT\SUB\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\EOT\SOH\DC2\EOT\137\STX\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\EOT\STX\DC2\EOT\137\STX\CAN\EM\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\ENQ\DC2\EOT\138\STX\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\ENQ\SOH\DC2\EOT\138\STX\EOT\r\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\ENQ\STX\DC2\EOT\138\STX\DLE\DC1\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\ACK\DC2\EOT\139\STX\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\ACK\SOH\DC2\EOT\139\STX\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\ACK\STX\DC2\EOT\139\STX\NAK\SYN\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\a\DC2\EOT\140\STX\EOT\SUB\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\a\SOH\DC2\EOT\140\STX\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\a\STX\DC2\EOT\140\STX\CAN\EM\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\b\DC2\EOT\141\STX\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\b\SOH\DC2\EOT\141\STX\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\b\STX\DC2\EOT\141\STX\EM\SUB\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\t\DC2\EOT\142\STX\EOT\FS\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\t\SOH\DC2\EOT\142\STX\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\t\STX\DC2\EOT\142\STX\SUB\ESC\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\n\
    \\DC2\EOT\143\STX\EOT\DC1\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\143\STX\EOT\v\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\n\
    \\STX\DC2\EOT\143\STX\SO\DLE\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\v\DC2\EOT\144\STX\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\v\SOH\DC2\EOT\144\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\v\STX\DC2\EOT\144\STX\DC3\NAK\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\f\DC2\EOT\145\STX\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\f\SOH\DC2\EOT\145\STX\EOT\DC1\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\f\STX\DC2\EOT\145\STX\DC4\SYN\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\r\DC2\EOT\146\STX\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\r\SOH\DC2\EOT\146\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\r\STX\DC2\EOT\146\STX\SI\DC1\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\SO\DC2\EOT\147\STX\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\SO\SOH\DC2\EOT\147\STX\EOT\SI\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\SO\STX\DC2\EOT\147\STX\DC2\DC4\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\SI\DC2\EOT\148\STX\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\SI\SOH\DC2\EOT\148\STX\EOT\r\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\SI\STX\DC2\EOT\148\STX\DLE\DC2\n\
    \\SO\n\
    \\ACK\EOT\f\EOT\NUL\STX\DLE\DC2\EOT\149\STX\EOT\EM\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\DLE\SOH\DC2\EOT\149\STX\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\f\EOT\NUL\STX\DLE\STX\DC2\EOT\149\STX\SYN\CAN\n\
    \Y\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\153\STX\STXa\SUBK Logs only responses that have any one of the gRPC statuses in this field.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\EOT\153\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\153\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\153\STX\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\153\STX\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\b\DC2\EOT\153\STX\US`\n\
    \\DLE\n\
    \\b\EOT\f\STX\NUL\b\175\b\DC2\DC2\EOT\153\STX _\n\
    \\189\SOH\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\158\STX\STX\DC3\SUB\174\SOH If included and set to true, the filter will instead block all responses\n\
    \ with a gRPC status or inferred gRPC status enumerated in statuses, and\n\
    \ allow all other responses.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\158\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\158\STX\a\SO\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\158\STX\DC1\DC2\n\
    \\129\ETX\n\
    \\STX\EOT\r\DC2\ACK\167\STX\NUL\179\STX\SOH\SUB\242\STX Filters based on matching dynamic metadata.\n\
    \ If the matcher path and key correspond to an existing key in dynamic\n\
    \ metadata, the request is logged only if the matcher value is equal to the\n\
    \ metadata value. If the matcher path and key *do not* correspond to an\n\
    \ existing key in dynamic metadata, the request is logged only if\n\
    \ match_if_key_not_found is \"true\" or unset.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\167\STX\b\SYN\n\
    \\r\n\
    \\ETX\EOT\r\a\DC2\ACK\168\STX\STX\169\STX8\n\
    \\DC2\n\
    \\b\EOT\r\a\211\136\225\ETX\SOH\DC2\ACK\168\STX\STX\169\STX8\n\
    \\213\SOH\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\174\STX\STX.\SUB\198\SOH Matcher to check metadata for specified value. For example, to match on the\n\
    \ access_log_hint metadata, set the filter to \"envoy.common\" and the path to\n\
    \ \"access_log_hint\", and the value to \"true\".\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\174\STX\STX!\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\174\STX\")\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\174\STX,-\n\
    \\132\SOH\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\178\STX\STX7\SUBv Default result if the key does not exist in dynamic metadata: if unset or\n\
    \ true, then log; if false, then don't log.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\178\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\178\STX\FS2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\178\STX56\n\
    \E\n\
    \\STX\EOT\SO\DC2\ACK\182\STX\NUL\198\STX\SOH\SUB7 Extension filter is statically registered at runtime.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\182\STX\b\ETB\n\
    \\r\n\
    \\ETX\EOT\SO\a\DC2\ACK\183\STX\STX\184\STX9\n\
    \\DC2\n\
    \\b\EOT\SO\a\211\136\225\ETX\SOH\DC2\ACK\183\STX\STX\184\STX9\n\
    \\v\n\
    \\ETX\EOT\SO\t\DC2\EOT\186\STX\STX\r\n\
    \\f\n\
    \\EOT\EOT\SO\t\NUL\DC2\EOT\186\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\SO\t\NUL\SOH\DC2\EOT\186\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\SO\t\NUL\STX\DC2\EOT\186\STX\v\f\n\
    \\v\n\
    \\ETX\EOT\SO\n\
    \\DC2\EOT\188\STX\STX\DC4\n\
    \\f\n\
    \\EOT\EOT\SO\n\
    \\NUL\DC2\EOT\188\STX\v\DC3\n\
    \z\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\192\STX\STX\DC2\SUBl The name of the filter implementation to instantiate. The name must\n\
    \ match a statically registered filter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\192\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\192\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\192\STX\DLE\DC1\n\
    \U\n\
    \\EOT\EOT\SO\b\NUL\DC2\ACK\195\STX\STX\197\STX\ETX\SUBE Custom configuration that depends on the filter being instantiated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\b\NUL\SOH\DC2\EOT\195\STX\b\DC3\n\
    \\f\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\196\STX\EOT)\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ACK\DC2\EOT\196\STX\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\196\STX\CAN$\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\196\STX'(b\ACKproto3"