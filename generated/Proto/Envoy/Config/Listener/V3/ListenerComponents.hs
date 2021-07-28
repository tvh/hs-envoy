{- This file was auto-generated from envoy/config/listener/v3/listener_components.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Listener.V3.ListenerComponents (
        Filter(), Filter'ConfigType(..), _Filter'TypedConfig,
        _Filter'ConfigDiscovery, FilterChain(),
        FilterChain'OnDemandConfiguration(), FilterChainMatch(),
        FilterChainMatch'ConnectionSourceType(..),
        FilterChainMatch'ConnectionSourceType(),
        FilterChainMatch'ConnectionSourceType'UnrecognizedValue,
        ListenerFilter(), ListenerFilter'ConfigType(..),
        _ListenerFilter'TypedConfig, ListenerFilterChainMatchPredicate(),
        ListenerFilterChainMatchPredicate'Rule(..),
        _ListenerFilterChainMatchPredicate'OrMatch,
        _ListenerFilterChainMatchPredicate'AndMatch,
        _ListenerFilterChainMatchPredicate'NotMatch,
        _ListenerFilterChainMatchPredicate'AnyMatch,
        _ListenerFilterChainMatchPredicate'DestinationPortRange,
        ListenerFilterChainMatchPredicate'MatchSet()
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Type.V3.Range
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.name' @:: Lens' Filter Data.Text.Text@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'configType' @:: Lens' Filter (Prelude.Maybe Filter'ConfigType)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'typedConfig' @:: Lens' Filter (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.typedConfig' @:: Lens' Filter Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'configDiscovery' @:: Lens' Filter (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.configDiscovery' @:: Lens' Filter Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource@ -}
data Filter
  = Filter'_constructor {_Filter'name :: !Data.Text.Text,
                         _Filter'configType :: !(Prelude.Maybe Filter'ConfigType),
                         _Filter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Filter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Filter'ConfigType
  = Filter'TypedConfig !Proto.Google.Protobuf.Any.Any |
    Filter'ConfigDiscovery !Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Filter "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Filter'name (\ x__ y__ -> x__ {_Filter'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Filter "maybe'configType" (Prelude.Maybe Filter'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Filter'configType (\ x__ y__ -> x__ {_Filter'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Filter "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Filter'configType (\ x__ y__ -> x__ {_Filter'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Filter'TypedConfig x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Filter'TypedConfig y__))
instance Data.ProtoLens.Field.HasField Filter "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Filter'configType (\ x__ y__ -> x__ {_Filter'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Filter'TypedConfig x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Filter'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Filter "maybe'configDiscovery" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Filter'configType (\ x__ y__ -> x__ {_Filter'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Filter'ConfigDiscovery x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Filter'ConfigDiscovery y__))
instance Data.ProtoLens.Field.HasField Filter "configDiscovery" Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Filter'configType (\ x__ y__ -> x__ {_Filter'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Filter'ConfigDiscovery x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Filter'ConfigDiscovery y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Filter where
  messageName _ = Data.Text.pack "envoy.config.listener.v3.Filter"
  packedMessageDescriptor _
    = "\n\
      \\ACKFilter\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\ftyped_config\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfig\DC2X\n\
      \\DLEconfig_discovery\CAN\ENQ \SOH(\v2+.envoy.config.core.v3.ExtensionConfigSourceH\NULR\SIconfigDiscoveryB\r\n\
      \\vconfig_type:#\154\197\136\RS\RS\n\
      \\FSenvoy.api.v2.listener.FilterJ\EOT\b\ETX\DLE\EOTJ\EOT\b\STX\DLE\ETXR\ACKconfig"
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
              Data.ProtoLens.FieldDescriptor Filter
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor Filter
        configDiscovery__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_discovery"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'configDiscovery")) ::
              Data.ProtoLens.FieldDescriptor Filter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 4, typedConfig__field_descriptor),
           (Data.ProtoLens.Tag 5, configDiscovery__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Filter'_unknownFields
        (\ x__ y__ -> x__ {_Filter'_unknownFields = y__})
  defMessage
    = Filter'_constructor
        {_Filter'name = Data.ProtoLens.fieldDefault,
         _Filter'configType = Prelude.Nothing, _Filter'_unknownFields = []}
  parseMessage
    = let
        loop :: Filter -> Data.ProtoLens.Encoding.Bytes.Parser Filter
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
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "config_discovery"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configDiscovery") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Filter"
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
                   (Prelude.Just (Filter'TypedConfig v))
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
                   (Prelude.Just (Filter'ConfigDiscovery v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
instance Control.DeepSeq.NFData Filter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Filter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Filter'name x__)
                (Control.DeepSeq.deepseq (_Filter'configType x__) ()))
instance Control.DeepSeq.NFData Filter'ConfigType where
  rnf (Filter'TypedConfig x__) = Control.DeepSeq.rnf x__
  rnf (Filter'ConfigDiscovery x__) = Control.DeepSeq.rnf x__
_Filter'TypedConfig ::
  Data.ProtoLens.Prism.Prism' Filter'ConfigType Proto.Google.Protobuf.Any.Any
_Filter'TypedConfig
  = Data.ProtoLens.Prism.prism'
      Filter'TypedConfig
      (\ p__
         -> case p__ of
              (Filter'TypedConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Filter'ConfigDiscovery ::
  Data.ProtoLens.Prism.Prism' Filter'ConfigType Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource
_Filter'ConfigDiscovery
  = Data.ProtoLens.Prism.prism'
      Filter'ConfigDiscovery
      (\ p__
         -> case p__ of
              (Filter'ConfigDiscovery p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.filterChainMatch' @:: Lens' FilterChain FilterChainMatch@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'filterChainMatch' @:: Lens' FilterChain (Prelude.Maybe FilterChainMatch)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.filters' @:: Lens' FilterChain [Filter]@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.vec'filters' @:: Lens' FilterChain (Data.Vector.Vector Filter)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.useProxyProto' @:: Lens' FilterChain Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'useProxyProto' @:: Lens' FilterChain (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.metadata' @:: Lens' FilterChain Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'metadata' @:: Lens' FilterChain (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.transportSocket' @:: Lens' FilterChain Proto.Envoy.Config.Core.V3.Base.TransportSocket@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'transportSocket' @:: Lens' FilterChain (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.transportSocketConnectTimeout' @:: Lens' FilterChain Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'transportSocketConnectTimeout' @:: Lens' FilterChain (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.name' @:: Lens' FilterChain Data.Text.Text@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.onDemandConfiguration' @:: Lens' FilterChain FilterChain'OnDemandConfiguration@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'onDemandConfiguration' @:: Lens' FilterChain (Prelude.Maybe FilterChain'OnDemandConfiguration)@ -}
data FilterChain
  = FilterChain'_constructor {_FilterChain'filterChainMatch :: !(Prelude.Maybe FilterChainMatch),
                              _FilterChain'filters :: !(Data.Vector.Vector Filter),
                              _FilterChain'useProxyProto :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                              _FilterChain'metadata :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                              _FilterChain'transportSocket :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket),
                              _FilterChain'transportSocketConnectTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _FilterChain'name :: !Data.Text.Text,
                              _FilterChain'onDemandConfiguration :: !(Prelude.Maybe FilterChain'OnDemandConfiguration),
                              _FilterChain'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterChain where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterChain "filterChainMatch" FilterChainMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'filterChainMatch
           (\ x__ y__ -> x__ {_FilterChain'filterChainMatch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterChain "maybe'filterChainMatch" (Prelude.Maybe FilterChainMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'filterChainMatch
           (\ x__ y__ -> x__ {_FilterChain'filterChainMatch = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChain "filters" [Filter] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'filters
           (\ x__ y__ -> x__ {_FilterChain'filters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterChain "vec'filters" (Data.Vector.Vector Filter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'filters
           (\ x__ y__ -> x__ {_FilterChain'filters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChain "useProxyProto" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'useProxyProto
           (\ x__ y__ -> x__ {_FilterChain'useProxyProto = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterChain "maybe'useProxyProto" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'useProxyProto
           (\ x__ y__ -> x__ {_FilterChain'useProxyProto = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChain "metadata" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'metadata
           (\ x__ y__ -> x__ {_FilterChain'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterChain "maybe'metadata" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'metadata
           (\ x__ y__ -> x__ {_FilterChain'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChain "transportSocket" Proto.Envoy.Config.Core.V3.Base.TransportSocket where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'transportSocket
           (\ x__ y__ -> x__ {_FilterChain'transportSocket = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterChain "maybe'transportSocket" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'transportSocket
           (\ x__ y__ -> x__ {_FilterChain'transportSocket = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChain "transportSocketConnectTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'transportSocketConnectTimeout
           (\ x__ y__
              -> x__ {_FilterChain'transportSocketConnectTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterChain "maybe'transportSocketConnectTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'transportSocketConnectTimeout
           (\ x__ y__
              -> x__ {_FilterChain'transportSocketConnectTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChain "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'name (\ x__ y__ -> x__ {_FilterChain'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChain "onDemandConfiguration" FilterChain'OnDemandConfiguration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'onDemandConfiguration
           (\ x__ y__ -> x__ {_FilterChain'onDemandConfiguration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterChain "maybe'onDemandConfiguration" (Prelude.Maybe FilterChain'OnDemandConfiguration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'onDemandConfiguration
           (\ x__ y__ -> x__ {_FilterChain'onDemandConfiguration = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterChain where
  messageName _
    = Data.Text.pack "envoy.config.listener.v3.FilterChain"
  packedMessageDescriptor _
    = "\n\
      \\vFilterChain\DC2X\n\
      \\DC2filter_chain_match\CAN\SOH \SOH(\v2*.envoy.config.listener.v3.FilterChainMatchR\DLEfilterChainMatch\DC2:\n\
      \\afilters\CAN\ETX \ETX(\v2 .envoy.config.listener.v3.FilterR\afilters\DC2O\n\
      \\SIuse_proxy_proto\CAN\EOT \SOH(\v2\SUB.google.protobuf.BoolValueR\ruseProxyProtoB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2:\n\
      \\bmetadata\CAN\ENQ \SOH(\v2\RS.envoy.config.core.v3.MetadataR\bmetadata\DC2P\n\
      \\DLEtransport_socket\CAN\ACK \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocket\DC2b\n\
      \ transport_socket_connect_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\GStransportSocketConnectTimeout\DC2\DC2\n\
      \\EOTname\CAN\a \SOH(\tR\EOTname\DC2s\n\
      \\ETBon_demand_configuration\CAN\b \SOH(\v2;.envoy.config.listener.v3.FilterChain.OnDemandConfigurationR\NAKonDemandConfiguration\SUB[\n\
      \\NAKOnDemandConfiguration\DC2B\n\
      \\SIrebuild_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SOrebuildTimeout:(\154\197\136\RS#\n\
      \!envoy.api.v2.listener.FilterChainJ\EOT\b\STX\DLE\ETXR\vtls_context"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        filterChainMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_chain_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FilterChainMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filterChainMatch")) ::
              Data.ProtoLens.FieldDescriptor FilterChain
        filters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Filter)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"filters")) ::
              Data.ProtoLens.FieldDescriptor FilterChain
        useProxyProto__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_proxy_proto"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'useProxyProto")) ::
              Data.ProtoLens.FieldDescriptor FilterChain
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor FilterChain
        transportSocket__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_socket"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.TransportSocket)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'transportSocket")) ::
              Data.ProtoLens.FieldDescriptor FilterChain
        transportSocketConnectTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_socket_connect_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'transportSocketConnectTimeout")) ::
              Data.ProtoLens.FieldDescriptor FilterChain
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor FilterChain
        onDemandConfiguration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "on_demand_configuration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FilterChain'OnDemandConfiguration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'onDemandConfiguration")) ::
              Data.ProtoLens.FieldDescriptor FilterChain
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, filterChainMatch__field_descriptor),
           (Data.ProtoLens.Tag 3, filters__field_descriptor),
           (Data.ProtoLens.Tag 4, useProxyProto__field_descriptor),
           (Data.ProtoLens.Tag 5, metadata__field_descriptor),
           (Data.ProtoLens.Tag 6, transportSocket__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            transportSocketConnectTimeout__field_descriptor),
           (Data.ProtoLens.Tag 7, name__field_descriptor),
           (Data.ProtoLens.Tag 8, onDemandConfiguration__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterChain'_unknownFields
        (\ x__ y__ -> x__ {_FilterChain'_unknownFields = y__})
  defMessage
    = FilterChain'_constructor
        {_FilterChain'filterChainMatch = Prelude.Nothing,
         _FilterChain'filters = Data.Vector.Generic.empty,
         _FilterChain'useProxyProto = Prelude.Nothing,
         _FilterChain'metadata = Prelude.Nothing,
         _FilterChain'transportSocket = Prelude.Nothing,
         _FilterChain'transportSocketConnectTimeout = Prelude.Nothing,
         _FilterChain'name = Data.ProtoLens.fieldDefault,
         _FilterChain'onDemandConfiguration = Prelude.Nothing,
         _FilterChain'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterChain
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Filter
             -> Data.ProtoLens.Encoding.Bytes.Parser FilterChain
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
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter_chain_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"filterChainMatch") y x)
                                  mutable'filters
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "filters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'filters y)
                                loop x v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "use_proxy_proto"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useProxyProto") y x)
                                  mutable'filters
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'filters
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "transport_socket"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportSocket") y x)
                                  mutable'filters
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "transport_socket_connect_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportSocketConnectTimeout")
                                     y
                                     x)
                                  mutable'filters
                        58
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'filters
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "on_demand_configuration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"onDemandConfiguration") y x)
                                  mutable'filters
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
          "FilterChain"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'filterChainMatch") _x
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
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'filters") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'useProxyProto") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                (Data.ProtoLens.Field.field @"maybe'transportSocket") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                   (Data.ProtoLens.Field.field
                                      @"maybe'transportSocketConnectTimeout")
                                   _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8
                                           _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'onDemandConfiguration")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData FilterChain where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterChain'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterChain'filterChainMatch x__)
                (Control.DeepSeq.deepseq
                   (_FilterChain'filters x__)
                   (Control.DeepSeq.deepseq
                      (_FilterChain'useProxyProto x__)
                      (Control.DeepSeq.deepseq
                         (_FilterChain'metadata x__)
                         (Control.DeepSeq.deepseq
                            (_FilterChain'transportSocket x__)
                            (Control.DeepSeq.deepseq
                               (_FilterChain'transportSocketConnectTimeout x__)
                               (Control.DeepSeq.deepseq
                                  (_FilterChain'name x__)
                                  (Control.DeepSeq.deepseq
                                     (_FilterChain'onDemandConfiguration x__) ()))))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.rebuildTimeout' @:: Lens' FilterChain'OnDemandConfiguration Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'rebuildTimeout' @:: Lens' FilterChain'OnDemandConfiguration (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data FilterChain'OnDemandConfiguration
  = FilterChain'OnDemandConfiguration'_constructor {_FilterChain'OnDemandConfiguration'rebuildTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                    _FilterChain'OnDemandConfiguration'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterChain'OnDemandConfiguration where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterChain'OnDemandConfiguration "rebuildTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'OnDemandConfiguration'rebuildTimeout
           (\ x__ y__
              -> x__ {_FilterChain'OnDemandConfiguration'rebuildTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterChain'OnDemandConfiguration "maybe'rebuildTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChain'OnDemandConfiguration'rebuildTimeout
           (\ x__ y__
              -> x__ {_FilterChain'OnDemandConfiguration'rebuildTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterChain'OnDemandConfiguration where
  messageName _
    = Data.Text.pack
        "envoy.config.listener.v3.FilterChain.OnDemandConfiguration"
  packedMessageDescriptor _
    = "\n\
      \\NAKOnDemandConfiguration\DC2B\n\
      \\SIrebuild_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SOrebuildTimeout"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rebuildTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rebuild_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rebuildTimeout")) ::
              Data.ProtoLens.FieldDescriptor FilterChain'OnDemandConfiguration
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rebuildTimeout__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterChain'OnDemandConfiguration'_unknownFields
        (\ x__ y__
           -> x__ {_FilterChain'OnDemandConfiguration'_unknownFields = y__})
  defMessage
    = FilterChain'OnDemandConfiguration'_constructor
        {_FilterChain'OnDemandConfiguration'rebuildTimeout = Prelude.Nothing,
         _FilterChain'OnDemandConfiguration'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterChain'OnDemandConfiguration
          -> Data.ProtoLens.Encoding.Bytes.Parser FilterChain'OnDemandConfiguration
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
                                       "rebuild_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rebuildTimeout") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OnDemandConfiguration"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'rebuildTimeout") _x
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
instance Control.DeepSeq.NFData FilterChain'OnDemandConfiguration where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterChain'OnDemandConfiguration'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterChain'OnDemandConfiguration'rebuildTimeout x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.destinationPort' @:: Lens' FilterChainMatch Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'destinationPort' @:: Lens' FilterChainMatch (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.prefixRanges' @:: Lens' FilterChainMatch [Proto.Envoy.Config.Core.V3.Address.CidrRange]@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.vec'prefixRanges' @:: Lens' FilterChainMatch (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.addressSuffix' @:: Lens' FilterChainMatch Data.Text.Text@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.suffixLen' @:: Lens' FilterChainMatch Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'suffixLen' @:: Lens' FilterChainMatch (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.directSourcePrefixRanges' @:: Lens' FilterChainMatch [Proto.Envoy.Config.Core.V3.Address.CidrRange]@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.vec'directSourcePrefixRanges' @:: Lens' FilterChainMatch (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.sourceType' @:: Lens' FilterChainMatch FilterChainMatch'ConnectionSourceType@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.sourcePrefixRanges' @:: Lens' FilterChainMatch [Proto.Envoy.Config.Core.V3.Address.CidrRange]@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.vec'sourcePrefixRanges' @:: Lens' FilterChainMatch (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.sourcePorts' @:: Lens' FilterChainMatch [Data.Word.Word32]@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.vec'sourcePorts' @:: Lens' FilterChainMatch (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.serverNames' @:: Lens' FilterChainMatch [Data.Text.Text]@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.vec'serverNames' @:: Lens' FilterChainMatch (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.transportProtocol' @:: Lens' FilterChainMatch Data.Text.Text@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.applicationProtocols' @:: Lens' FilterChainMatch [Data.Text.Text]@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.vec'applicationProtocols' @:: Lens' FilterChainMatch (Data.Vector.Vector Data.Text.Text)@ -}
data FilterChainMatch
  = FilterChainMatch'_constructor {_FilterChainMatch'destinationPort :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _FilterChainMatch'prefixRanges :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange),
                                   _FilterChainMatch'addressSuffix :: !Data.Text.Text,
                                   _FilterChainMatch'suffixLen :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _FilterChainMatch'directSourcePrefixRanges :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange),
                                   _FilterChainMatch'sourceType :: !FilterChainMatch'ConnectionSourceType,
                                   _FilterChainMatch'sourcePrefixRanges :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange),
                                   _FilterChainMatch'sourcePorts :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                   _FilterChainMatch'serverNames :: !(Data.Vector.Vector Data.Text.Text),
                                   _FilterChainMatch'transportProtocol :: !Data.Text.Text,
                                   _FilterChainMatch'applicationProtocols :: !(Data.Vector.Vector Data.Text.Text),
                                   _FilterChainMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterChainMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterChainMatch "destinationPort" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'destinationPort
           (\ x__ y__ -> x__ {_FilterChainMatch'destinationPort = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterChainMatch "maybe'destinationPort" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'destinationPort
           (\ x__ y__ -> x__ {_FilterChainMatch'destinationPort = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChainMatch "prefixRanges" [Proto.Envoy.Config.Core.V3.Address.CidrRange] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'prefixRanges
           (\ x__ y__ -> x__ {_FilterChainMatch'prefixRanges = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterChainMatch "vec'prefixRanges" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'prefixRanges
           (\ x__ y__ -> x__ {_FilterChainMatch'prefixRanges = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChainMatch "addressSuffix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'addressSuffix
           (\ x__ y__ -> x__ {_FilterChainMatch'addressSuffix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChainMatch "suffixLen" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'suffixLen
           (\ x__ y__ -> x__ {_FilterChainMatch'suffixLen = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterChainMatch "maybe'suffixLen" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'suffixLen
           (\ x__ y__ -> x__ {_FilterChainMatch'suffixLen = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChainMatch "directSourcePrefixRanges" [Proto.Envoy.Config.Core.V3.Address.CidrRange] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'directSourcePrefixRanges
           (\ x__ y__
              -> x__ {_FilterChainMatch'directSourcePrefixRanges = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterChainMatch "vec'directSourcePrefixRanges" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'directSourcePrefixRanges
           (\ x__ y__
              -> x__ {_FilterChainMatch'directSourcePrefixRanges = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChainMatch "sourceType" FilterChainMatch'ConnectionSourceType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'sourceType
           (\ x__ y__ -> x__ {_FilterChainMatch'sourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChainMatch "sourcePrefixRanges" [Proto.Envoy.Config.Core.V3.Address.CidrRange] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'sourcePrefixRanges
           (\ x__ y__ -> x__ {_FilterChainMatch'sourcePrefixRanges = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterChainMatch "vec'sourcePrefixRanges" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'sourcePrefixRanges
           (\ x__ y__ -> x__ {_FilterChainMatch'sourcePrefixRanges = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChainMatch "sourcePorts" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'sourcePorts
           (\ x__ y__ -> x__ {_FilterChainMatch'sourcePorts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterChainMatch "vec'sourcePorts" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'sourcePorts
           (\ x__ y__ -> x__ {_FilterChainMatch'sourcePorts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChainMatch "serverNames" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'serverNames
           (\ x__ y__ -> x__ {_FilterChainMatch'serverNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterChainMatch "vec'serverNames" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'serverNames
           (\ x__ y__ -> x__ {_FilterChainMatch'serverNames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChainMatch "transportProtocol" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'transportProtocol
           (\ x__ y__ -> x__ {_FilterChainMatch'transportProtocol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterChainMatch "applicationProtocols" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'applicationProtocols
           (\ x__ y__ -> x__ {_FilterChainMatch'applicationProtocols = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterChainMatch "vec'applicationProtocols" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterChainMatch'applicationProtocols
           (\ x__ y__ -> x__ {_FilterChainMatch'applicationProtocols = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterChainMatch where
  messageName _
    = Data.Text.pack "envoy.config.listener.v3.FilterChainMatch"
  packedMessageDescriptor _
    = "\n\
      \\DLEFilterChainMatch\DC2T\n\
      \\DLEdestination_port\CAN\b \SOH(\v2\FS.google.protobuf.UInt32ValueR\SIdestinationPortB\v\250B\b*\ACK\CAN\255\255\ETX(\SOH\DC2D\n\
      \\rprefix_ranges\CAN\ETX \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\fprefixRanges\DC2%\n\
      \\SOaddress_suffix\CAN\EOT \SOH(\tR\raddressSuffix\DC2;\n\
      \\n\
      \suffix_len\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\tsuffixLen\DC2^\n\
      \\ESCdirect_source_prefix_ranges\CAN\r \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\CANdirectSourcePrefixRanges\DC2j\n\
      \\vsource_type\CAN\f \SOH(\SO2?.envoy.config.listener.v3.FilterChainMatch.ConnectionSourceTypeR\n\
      \sourceTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2Q\n\
      \\DC4source_prefix_ranges\CAN\ACK \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\DC2sourcePrefixRanges\DC23\n\
      \\fsource_ports\CAN\a \ETX(\rR\vsourcePortsB\DLE\250B\r\146\SOH\n\
      \\"\b*\ACK\CAN\255\255\ETX(\SOH\DC2!\n\
      \\fserver_names\CAN\v \ETX(\tR\vserverNames\DC2-\n\
      \\DC2transport_protocol\CAN\t \SOH(\tR\DC1transportProtocol\DC23\n\
      \\NAKapplication_protocols\CAN\n\
      \ \ETX(\tR\DC4applicationProtocols\"F\n\
      \\DC4ConnectionSourceType\DC2\a\n\
      \\ETXANY\DLE\NUL\DC2\ETB\n\
      \\DC3SAME_IP_OR_LOOPBACK\DLE\SOH\DC2\f\n\
      \\bEXTERNAL\DLE\STX:-\154\197\136\RS(\n\
      \&envoy.api.v2.listener.FilterChainMatchJ\EOT\b\SOH\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        destinationPort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "destination_port"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'destinationPort")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
        prefixRanges__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix_ranges"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.CidrRange)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"prefixRanges")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
        addressSuffix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address_suffix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"addressSuffix")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
        suffixLen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "suffix_len"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'suffixLen")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
        directSourcePrefixRanges__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "direct_source_prefix_ranges"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.CidrRange)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"directSourcePrefixRanges")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
        sourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor FilterChainMatch'ConnectionSourceType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sourceType")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
        sourcePrefixRanges__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_prefix_ranges"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.CidrRange)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"sourcePrefixRanges")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
        sourcePorts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_ports"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"sourcePorts")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
        serverNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "server_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"serverNames")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
        transportProtocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transportProtocol")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
        applicationProtocols__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "application_protocols"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"applicationProtocols")) ::
              Data.ProtoLens.FieldDescriptor FilterChainMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 8, destinationPort__field_descriptor),
           (Data.ProtoLens.Tag 3, prefixRanges__field_descriptor),
           (Data.ProtoLens.Tag 4, addressSuffix__field_descriptor),
           (Data.ProtoLens.Tag 5, suffixLen__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            directSourcePrefixRanges__field_descriptor),
           (Data.ProtoLens.Tag 12, sourceType__field_descriptor),
           (Data.ProtoLens.Tag 6, sourcePrefixRanges__field_descriptor),
           (Data.ProtoLens.Tag 7, sourcePorts__field_descriptor),
           (Data.ProtoLens.Tag 11, serverNames__field_descriptor),
           (Data.ProtoLens.Tag 9, transportProtocol__field_descriptor),
           (Data.ProtoLens.Tag 10, applicationProtocols__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterChainMatch'_unknownFields
        (\ x__ y__ -> x__ {_FilterChainMatch'_unknownFields = y__})
  defMessage
    = FilterChainMatch'_constructor
        {_FilterChainMatch'destinationPort = Prelude.Nothing,
         _FilterChainMatch'prefixRanges = Data.Vector.Generic.empty,
         _FilterChainMatch'addressSuffix = Data.ProtoLens.fieldDefault,
         _FilterChainMatch'suffixLen = Prelude.Nothing,
         _FilterChainMatch'directSourcePrefixRanges = Data.Vector.Generic.empty,
         _FilterChainMatch'sourceType = Data.ProtoLens.fieldDefault,
         _FilterChainMatch'sourcePrefixRanges = Data.Vector.Generic.empty,
         _FilterChainMatch'sourcePorts = Data.Vector.Generic.empty,
         _FilterChainMatch'serverNames = Data.Vector.Generic.empty,
         _FilterChainMatch'transportProtocol = Data.ProtoLens.fieldDefault,
         _FilterChainMatch'applicationProtocols = Data.Vector.Generic.empty,
         _FilterChainMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterChainMatch
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Address.CidrRange
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Address.CidrRange
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Address.CidrRange
                            -> Data.ProtoLens.Encoding.Bytes.Parser FilterChainMatch
        loop
          x
          mutable'applicationProtocols
          mutable'directSourcePrefixRanges
          mutable'prefixRanges
          mutable'serverNames
          mutable'sourcePorts
          mutable'sourcePrefixRanges
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'applicationProtocols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'applicationProtocols)
                      frozen'directSourcePrefixRanges <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                              mutable'directSourcePrefixRanges)
                      frozen'prefixRanges <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'prefixRanges)
                      frozen'serverNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'serverNames)
                      frozen'sourcePorts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'sourcePorts)
                      frozen'sourcePrefixRanges <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'sourcePrefixRanges)
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
                              (Data.ProtoLens.Field.field @"vec'applicationProtocols")
                              frozen'applicationProtocols
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'directSourcePrefixRanges")
                                 frozen'directSourcePrefixRanges
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'prefixRanges")
                                    frozen'prefixRanges
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'serverNames")
                                       frozen'serverNames
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'sourcePorts")
                                          frozen'sourcePorts
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'sourcePrefixRanges")
                                             frozen'sourcePrefixRanges
                                             x)))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "destination_port"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"destinationPort") y x)
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  mutable'sourcePorts
                                  mutable'sourcePrefixRanges
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "prefix_ranges"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'prefixRanges y)
                                loop
                                  x
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  v
                                  mutable'serverNames
                                  mutable'sourcePorts
                                  mutable'sourcePrefixRanges
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "address_suffix"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"addressSuffix") y x)
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  mutable'sourcePorts
                                  mutable'sourcePrefixRanges
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "suffix_len"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"suffixLen") y x)
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  mutable'sourcePorts
                                  mutable'sourcePrefixRanges
                        106
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "direct_source_prefix_ranges"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'directSourcePrefixRanges y)
                                loop
                                  x
                                  mutable'applicationProtocols
                                  v
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  mutable'sourcePorts
                                  mutable'sourcePrefixRanges
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "source_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceType") y x)
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  mutable'sourcePorts
                                  mutable'sourcePrefixRanges
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "source_prefix_ranges"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'sourcePrefixRanges y)
                                loop
                                  x
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  mutable'sourcePorts
                                  v
                        56
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "source_ports"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'sourcePorts y)
                                loop
                                  x
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  v
                                  mutable'sourcePrefixRanges
                        58
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
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "source_ports"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'sourcePorts)
                                loop
                                  x
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  y
                                  mutable'sourcePrefixRanges
                        90
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "server_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'serverNames y)
                                loop
                                  x
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  v
                                  mutable'sourcePorts
                                  mutable'sourcePrefixRanges
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "transport_protocol"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportProtocol") y x)
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  mutable'sourcePorts
                                  mutable'sourcePrefixRanges
                        82
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "application_protocols"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'applicationProtocols y)
                                loop
                                  x
                                  v
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  mutable'sourcePorts
                                  mutable'sourcePrefixRanges
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'applicationProtocols
                                  mutable'directSourcePrefixRanges
                                  mutable'prefixRanges
                                  mutable'serverNames
                                  mutable'sourcePorts
                                  mutable'sourcePrefixRanges
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'applicationProtocols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'directSourcePrefixRanges <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    Data.ProtoLens.Encoding.Growing.new
              mutable'prefixRanges <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'serverNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'sourcePorts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'sourcePrefixRanges <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'applicationProtocols
                mutable'directSourcePrefixRanges
                mutable'prefixRanges
                mutable'serverNames
                mutable'sourcePorts
                mutable'sourcePrefixRanges)
          "FilterChainMatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'destinationPort") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
                      (Data.ProtoLens.Field.field @"vec'prefixRanges") _x))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"addressSuffix") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                             (Data.ProtoLens.Field.field @"maybe'suffixLen") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'directSourcePrefixRanges") _x))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"sourceType") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum
                                        _v))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'sourcePrefixRanges") _x))
                               ((Data.Monoid.<>)
                                  (let
                                     p = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'sourcePorts") _x
                                   in
                                     if Data.Vector.Generic.null p then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                           ((\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       Prelude.fromIntegral)
                                                    p))))
                                  ((Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                ((Prelude..)
                                                   (\ bs
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              (Prelude.fromIntegral
                                                                 (Data.ByteString.length bs)))
                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                              bs))
                                                   Data.Text.Encoding.encodeUtf8
                                                   _v))
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'serverNames") _x))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"transportProtocol")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                                 ((Prelude..)
                                                    (\ bs
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               (Prelude.fromIntegral
                                                                  (Data.ByteString.length bs)))
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                    Data.Text.Encoding.encodeUtf8
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                              (\ _v
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                      ((Prelude..)
                                                         (\ bs
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    (Prelude.fromIntegral
                                                                       (Data.ByteString.length bs)))
                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                    bs))
                                                         Data.Text.Encoding.encodeUtf8
                                                         _v))
                                              (Lens.Family2.view
                                                 (Data.ProtoLens.Field.field
                                                    @"vec'applicationProtocols")
                                                 _x))
                                           (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                              (Lens.Family2.view
                                                 Data.ProtoLens.unknownFields _x))))))))))))
instance Control.DeepSeq.NFData FilterChainMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterChainMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterChainMatch'destinationPort x__)
                (Control.DeepSeq.deepseq
                   (_FilterChainMatch'prefixRanges x__)
                   (Control.DeepSeq.deepseq
                      (_FilterChainMatch'addressSuffix x__)
                      (Control.DeepSeq.deepseq
                         (_FilterChainMatch'suffixLen x__)
                         (Control.DeepSeq.deepseq
                            (_FilterChainMatch'directSourcePrefixRanges x__)
                            (Control.DeepSeq.deepseq
                               (_FilterChainMatch'sourceType x__)
                               (Control.DeepSeq.deepseq
                                  (_FilterChainMatch'sourcePrefixRanges x__)
                                  (Control.DeepSeq.deepseq
                                     (_FilterChainMatch'sourcePorts x__)
                                     (Control.DeepSeq.deepseq
                                        (_FilterChainMatch'serverNames x__)
                                        (Control.DeepSeq.deepseq
                                           (_FilterChainMatch'transportProtocol x__)
                                           (Control.DeepSeq.deepseq
                                              (_FilterChainMatch'applicationProtocols x__)
                                              ())))))))))))
newtype FilterChainMatch'ConnectionSourceType'UnrecognizedValue
  = FilterChainMatch'ConnectionSourceType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data FilterChainMatch'ConnectionSourceType
  = FilterChainMatch'ANY |
    FilterChainMatch'SAME_IP_OR_LOOPBACK |
    FilterChainMatch'EXTERNAL |
    FilterChainMatch'ConnectionSourceType'Unrecognized !FilterChainMatch'ConnectionSourceType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum FilterChainMatch'ConnectionSourceType where
  maybeToEnum 0 = Prelude.Just FilterChainMatch'ANY
  maybeToEnum 1 = Prelude.Just FilterChainMatch'SAME_IP_OR_LOOPBACK
  maybeToEnum 2 = Prelude.Just FilterChainMatch'EXTERNAL
  maybeToEnum k
    = Prelude.Just
        (FilterChainMatch'ConnectionSourceType'Unrecognized
           (FilterChainMatch'ConnectionSourceType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum FilterChainMatch'ANY = "ANY"
  showEnum FilterChainMatch'SAME_IP_OR_LOOPBACK
    = "SAME_IP_OR_LOOPBACK"
  showEnum FilterChainMatch'EXTERNAL = "EXTERNAL"
  showEnum
    (FilterChainMatch'ConnectionSourceType'Unrecognized (FilterChainMatch'ConnectionSourceType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ANY" = Prelude.Just FilterChainMatch'ANY
    | (Prelude.==) k "SAME_IP_OR_LOOPBACK"
    = Prelude.Just FilterChainMatch'SAME_IP_OR_LOOPBACK
    | (Prelude.==) k "EXTERNAL"
    = Prelude.Just FilterChainMatch'EXTERNAL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded FilterChainMatch'ConnectionSourceType where
  minBound = FilterChainMatch'ANY
  maxBound = FilterChainMatch'EXTERNAL
instance Prelude.Enum FilterChainMatch'ConnectionSourceType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ConnectionSourceType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum FilterChainMatch'ANY = 0
  fromEnum FilterChainMatch'SAME_IP_OR_LOOPBACK = 1
  fromEnum FilterChainMatch'EXTERNAL = 2
  fromEnum
    (FilterChainMatch'ConnectionSourceType'Unrecognized (FilterChainMatch'ConnectionSourceType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ FilterChainMatch'EXTERNAL
    = Prelude.error
        "FilterChainMatch'ConnectionSourceType.succ: bad argument FilterChainMatch'EXTERNAL. This value would be out of bounds."
  succ FilterChainMatch'ANY = FilterChainMatch'SAME_IP_OR_LOOPBACK
  succ FilterChainMatch'SAME_IP_OR_LOOPBACK
    = FilterChainMatch'EXTERNAL
  succ (FilterChainMatch'ConnectionSourceType'Unrecognized _)
    = Prelude.error
        "FilterChainMatch'ConnectionSourceType.succ: bad argument: unrecognized value"
  pred FilterChainMatch'ANY
    = Prelude.error
        "FilterChainMatch'ConnectionSourceType.pred: bad argument FilterChainMatch'ANY. This value would be out of bounds."
  pred FilterChainMatch'SAME_IP_OR_LOOPBACK = FilterChainMatch'ANY
  pred FilterChainMatch'EXTERNAL
    = FilterChainMatch'SAME_IP_OR_LOOPBACK
  pred (FilterChainMatch'ConnectionSourceType'Unrecognized _)
    = Prelude.error
        "FilterChainMatch'ConnectionSourceType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault FilterChainMatch'ConnectionSourceType where
  fieldDefault = FilterChainMatch'ANY
instance Control.DeepSeq.NFData FilterChainMatch'ConnectionSourceType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.name' @:: Lens' ListenerFilter Data.Text.Text@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.filterDisabled' @:: Lens' ListenerFilter ListenerFilterChainMatchPredicate@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'filterDisabled' @:: Lens' ListenerFilter (Prelude.Maybe ListenerFilterChainMatchPredicate)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'configType' @:: Lens' ListenerFilter (Prelude.Maybe ListenerFilter'ConfigType)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'typedConfig' @:: Lens' ListenerFilter (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.typedConfig' @:: Lens' ListenerFilter Proto.Google.Protobuf.Any.Any@ -}
data ListenerFilter
  = ListenerFilter'_constructor {_ListenerFilter'name :: !Data.Text.Text,
                                 _ListenerFilter'filterDisabled :: !(Prelude.Maybe ListenerFilterChainMatchPredicate),
                                 _ListenerFilter'configType :: !(Prelude.Maybe ListenerFilter'ConfigType),
                                 _ListenerFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenerFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ListenerFilter'ConfigType
  = ListenerFilter'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ListenerFilter "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilter'name
           (\ x__ y__ -> x__ {_ListenerFilter'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenerFilter "filterDisabled" ListenerFilterChainMatchPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilter'filterDisabled
           (\ x__ y__ -> x__ {_ListenerFilter'filterDisabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenerFilter "maybe'filterDisabled" (Prelude.Maybe ListenerFilterChainMatchPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilter'filterDisabled
           (\ x__ y__ -> x__ {_ListenerFilter'filterDisabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenerFilter "maybe'configType" (Prelude.Maybe ListenerFilter'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilter'configType
           (\ x__ y__ -> x__ {_ListenerFilter'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenerFilter "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilter'configType
           (\ x__ y__ -> x__ {_ListenerFilter'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ListenerFilter'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ListenerFilter'TypedConfig y__))
instance Data.ProtoLens.Field.HasField ListenerFilter "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilter'configType
           (\ x__ y__ -> x__ {_ListenerFilter'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ListenerFilter'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ListenerFilter'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ListenerFilter where
  messageName _
    = Data.Text.pack "envoy.config.listener.v3.ListenerFilter"
  packedMessageDescriptor _
    = "\n\
      \\SOListenerFilter\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfig\DC2d\n\
      \\SIfilter_disabled\CAN\EOT \SOH(\v2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateR\SOfilterDisabledB\r\n\
      \\vconfig_type:+\154\197\136\RS&\n\
      \$envoy.api.v2.listener.ListenerFilterJ\EOT\b\STX\DLE\ETXR\ACKconfig"
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
              Data.ProtoLens.FieldDescriptor ListenerFilter
        filterDisabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_disabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenerFilterChainMatchPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filterDisabled")) ::
              Data.ProtoLens.FieldDescriptor ListenerFilter
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor ListenerFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 4, filterDisabled__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenerFilter'_unknownFields
        (\ x__ y__ -> x__ {_ListenerFilter'_unknownFields = y__})
  defMessage
    = ListenerFilter'_constructor
        {_ListenerFilter'name = Data.ProtoLens.fieldDefault,
         _ListenerFilter'filterDisabled = Prelude.Nothing,
         _ListenerFilter'configType = Prelude.Nothing,
         _ListenerFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenerFilter
          -> Data.ProtoLens.Encoding.Bytes.Parser ListenerFilter
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
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter_disabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"filterDisabled") y x)
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
          (do loop Data.ProtoLens.defMessage) "ListenerFilter"
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
                       (Data.ProtoLens.Field.field @"maybe'filterDisabled") _x
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
                          (Data.ProtoLens.Field.field @"maybe'configType") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (ListenerFilter'TypedConfig v))
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ListenerFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenerFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListenerFilter'name x__)
                (Control.DeepSeq.deepseq
                   (_ListenerFilter'filterDisabled x__)
                   (Control.DeepSeq.deepseq (_ListenerFilter'configType x__) ())))
instance Control.DeepSeq.NFData ListenerFilter'ConfigType where
  rnf (ListenerFilter'TypedConfig x__) = Control.DeepSeq.rnf x__
_ListenerFilter'TypedConfig ::
  Data.ProtoLens.Prism.Prism' ListenerFilter'ConfigType Proto.Google.Protobuf.Any.Any
_ListenerFilter'TypedConfig
  = Data.ProtoLens.Prism.prism'
      ListenerFilter'TypedConfig
      (\ p__
         -> case p__ of {
              (ListenerFilter'TypedConfig p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'rule' @:: Lens' ListenerFilterChainMatchPredicate (Prelude.Maybe ListenerFilterChainMatchPredicate'Rule)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'orMatch' @:: Lens' ListenerFilterChainMatchPredicate (Prelude.Maybe ListenerFilterChainMatchPredicate'MatchSet)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.orMatch' @:: Lens' ListenerFilterChainMatchPredicate ListenerFilterChainMatchPredicate'MatchSet@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'andMatch' @:: Lens' ListenerFilterChainMatchPredicate (Prelude.Maybe ListenerFilterChainMatchPredicate'MatchSet)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.andMatch' @:: Lens' ListenerFilterChainMatchPredicate ListenerFilterChainMatchPredicate'MatchSet@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'notMatch' @:: Lens' ListenerFilterChainMatchPredicate (Prelude.Maybe ListenerFilterChainMatchPredicate)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.notMatch' @:: Lens' ListenerFilterChainMatchPredicate ListenerFilterChainMatchPredicate@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'anyMatch' @:: Lens' ListenerFilterChainMatchPredicate (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.anyMatch' @:: Lens' ListenerFilterChainMatchPredicate Prelude.Bool@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.maybe'destinationPortRange' @:: Lens' ListenerFilterChainMatchPredicate (Prelude.Maybe Proto.Envoy.Type.V3.Range.Int32Range)@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.destinationPortRange' @:: Lens' ListenerFilterChainMatchPredicate Proto.Envoy.Type.V3.Range.Int32Range@ -}
data ListenerFilterChainMatchPredicate
  = ListenerFilterChainMatchPredicate'_constructor {_ListenerFilterChainMatchPredicate'rule :: !(Prelude.Maybe ListenerFilterChainMatchPredicate'Rule),
                                                    _ListenerFilterChainMatchPredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenerFilterChainMatchPredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ListenerFilterChainMatchPredicate'Rule
  = ListenerFilterChainMatchPredicate'OrMatch !ListenerFilterChainMatchPredicate'MatchSet |
    ListenerFilterChainMatchPredicate'AndMatch !ListenerFilterChainMatchPredicate'MatchSet |
    ListenerFilterChainMatchPredicate'NotMatch !ListenerFilterChainMatchPredicate |
    ListenerFilterChainMatchPredicate'AnyMatch !Prelude.Bool |
    ListenerFilterChainMatchPredicate'DestinationPortRange !Proto.Envoy.Type.V3.Range.Int32Range
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "maybe'rule" (Prelude.Maybe ListenerFilterChainMatchPredicate'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "maybe'orMatch" (Prelude.Maybe ListenerFilterChainMatchPredicate'MatchSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ListenerFilterChainMatchPredicate'OrMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ListenerFilterChainMatchPredicate'OrMatch y__))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "orMatch" ListenerFilterChainMatchPredicate'MatchSet where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ListenerFilterChainMatchPredicate'OrMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ListenerFilterChainMatchPredicate'OrMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "maybe'andMatch" (Prelude.Maybe ListenerFilterChainMatchPredicate'MatchSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ListenerFilterChainMatchPredicate'AndMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ListenerFilterChainMatchPredicate'AndMatch y__))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "andMatch" ListenerFilterChainMatchPredicate'MatchSet where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ListenerFilterChainMatchPredicate'AndMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ListenerFilterChainMatchPredicate'AndMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "maybe'notMatch" (Prelude.Maybe ListenerFilterChainMatchPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ListenerFilterChainMatchPredicate'NotMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ListenerFilterChainMatchPredicate'NotMatch y__))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "notMatch" ListenerFilterChainMatchPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ListenerFilterChainMatchPredicate'NotMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ListenerFilterChainMatchPredicate'NotMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "maybe'anyMatch" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ListenerFilterChainMatchPredicate'AnyMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ListenerFilterChainMatchPredicate'AnyMatch y__))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "anyMatch" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ListenerFilterChainMatchPredicate'AnyMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ListenerFilterChainMatchPredicate'AnyMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "maybe'destinationPortRange" (Prelude.Maybe Proto.Envoy.Type.V3.Range.Int32Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ListenerFilterChainMatchPredicate'DestinationPortRange x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   ListenerFilterChainMatchPredicate'DestinationPortRange y__))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate "destinationPortRange" Proto.Envoy.Type.V3.Range.Int32Range where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'rule
           (\ x__ y__ -> x__ {_ListenerFilterChainMatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ListenerFilterChainMatchPredicate'DestinationPortRange x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      ListenerFilterChainMatchPredicate'DestinationPortRange y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ListenerFilterChainMatchPredicate where
  messageName _
    = Data.Text.pack
        "envoy.config.listener.v3.ListenerFilterChainMatchPredicate"
  packedMessageDescriptor _
    = "\n\
      \!ListenerFilterChainMatchPredicate\DC2a\n\
      \\bor_match\CAN\SOH \SOH(\v2D.envoy.config.listener.v3.ListenerFilterChainMatchPredicate.MatchSetH\NULR\aorMatch\DC2c\n\
      \\tand_match\CAN\STX \SOH(\v2D.envoy.config.listener.v3.ListenerFilterChainMatchPredicate.MatchSetH\NULR\bandMatch\DC2Z\n\
      \\tnot_match\CAN\ETX \SOH(\v2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateH\NULR\bnotMatch\DC2&\n\
      \\tany_match\CAN\EOT \SOH(\bH\NULR\banyMatchB\a\250B\EOTj\STX\b\SOH\DC2Q\n\
      \\SYNdestination_port_range\CAN\ENQ \SOH(\v2\EM.envoy.type.v3.Int32RangeH\NULR\DC4destinationPortRange\SUB\176\SOH\n\
      \\bMatchSet\DC2[\n\
      \\ENQrules\CAN\SOH \ETX(\v2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\STX:G\154\197\136\RSB\n\
      \@envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSetB\v\n\
      \\EOTrule\DC2\ETX\248B\SOH:>\154\197\136\RS9\n\
      \7envoy.api.v2.listener.ListenerFilterChainMatchPredicate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        orMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "or_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenerFilterChainMatchPredicate'MatchSet)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'orMatch")) ::
              Data.ProtoLens.FieldDescriptor ListenerFilterChainMatchPredicate
        andMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "and_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenerFilterChainMatchPredicate'MatchSet)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'andMatch")) ::
              Data.ProtoLens.FieldDescriptor ListenerFilterChainMatchPredicate
        notMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenerFilterChainMatchPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'notMatch")) ::
              Data.ProtoLens.FieldDescriptor ListenerFilterChainMatchPredicate
        anyMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any_match"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'anyMatch")) ::
              Data.ProtoLens.FieldDescriptor ListenerFilterChainMatchPredicate
        destinationPortRange__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "destination_port_range"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Range.Int32Range)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'destinationPortRange")) ::
              Data.ProtoLens.FieldDescriptor ListenerFilterChainMatchPredicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, orMatch__field_descriptor),
           (Data.ProtoLens.Tag 2, andMatch__field_descriptor),
           (Data.ProtoLens.Tag 3, notMatch__field_descriptor),
           (Data.ProtoLens.Tag 4, anyMatch__field_descriptor),
           (Data.ProtoLens.Tag 5, destinationPortRange__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenerFilterChainMatchPredicate'_unknownFields
        (\ x__ y__
           -> x__ {_ListenerFilterChainMatchPredicate'_unknownFields = y__})
  defMessage
    = ListenerFilterChainMatchPredicate'_constructor
        {_ListenerFilterChainMatchPredicate'rule = Prelude.Nothing,
         _ListenerFilterChainMatchPredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenerFilterChainMatchPredicate
          -> Data.ProtoLens.Encoding.Bytes.Parser ListenerFilterChainMatchPredicate
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
                                       "destination_port_range"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"destinationPortRange") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ListenerFilterChainMatchPredicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rule") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ListenerFilterChainMatchPredicate'OrMatch v))
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
                (Prelude.Just (ListenerFilterChainMatchPredicate'AndMatch v))
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
                (Prelude.Just (ListenerFilterChainMatchPredicate'NotMatch v))
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
                (Prelude.Just (ListenerFilterChainMatchPredicate'AnyMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (ListenerFilterChainMatchPredicate'DestinationPortRange v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
instance Control.DeepSeq.NFData ListenerFilterChainMatchPredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenerFilterChainMatchPredicate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListenerFilterChainMatchPredicate'rule x__) ())
instance Control.DeepSeq.NFData ListenerFilterChainMatchPredicate'Rule where
  rnf (ListenerFilterChainMatchPredicate'OrMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (ListenerFilterChainMatchPredicate'AndMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (ListenerFilterChainMatchPredicate'NotMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (ListenerFilterChainMatchPredicate'AnyMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (ListenerFilterChainMatchPredicate'DestinationPortRange x__)
    = Control.DeepSeq.rnf x__
_ListenerFilterChainMatchPredicate'OrMatch ::
  Data.ProtoLens.Prism.Prism' ListenerFilterChainMatchPredicate'Rule ListenerFilterChainMatchPredicate'MatchSet
_ListenerFilterChainMatchPredicate'OrMatch
  = Data.ProtoLens.Prism.prism'
      ListenerFilterChainMatchPredicate'OrMatch
      (\ p__
         -> case p__ of
              (ListenerFilterChainMatchPredicate'OrMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ListenerFilterChainMatchPredicate'AndMatch ::
  Data.ProtoLens.Prism.Prism' ListenerFilterChainMatchPredicate'Rule ListenerFilterChainMatchPredicate'MatchSet
_ListenerFilterChainMatchPredicate'AndMatch
  = Data.ProtoLens.Prism.prism'
      ListenerFilterChainMatchPredicate'AndMatch
      (\ p__
         -> case p__ of
              (ListenerFilterChainMatchPredicate'AndMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ListenerFilterChainMatchPredicate'NotMatch ::
  Data.ProtoLens.Prism.Prism' ListenerFilterChainMatchPredicate'Rule ListenerFilterChainMatchPredicate
_ListenerFilterChainMatchPredicate'NotMatch
  = Data.ProtoLens.Prism.prism'
      ListenerFilterChainMatchPredicate'NotMatch
      (\ p__
         -> case p__ of
              (ListenerFilterChainMatchPredicate'NotMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ListenerFilterChainMatchPredicate'AnyMatch ::
  Data.ProtoLens.Prism.Prism' ListenerFilterChainMatchPredicate'Rule Prelude.Bool
_ListenerFilterChainMatchPredicate'AnyMatch
  = Data.ProtoLens.Prism.prism'
      ListenerFilterChainMatchPredicate'AnyMatch
      (\ p__
         -> case p__ of
              (ListenerFilterChainMatchPredicate'AnyMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ListenerFilterChainMatchPredicate'DestinationPortRange ::
  Data.ProtoLens.Prism.Prism' ListenerFilterChainMatchPredicate'Rule Proto.Envoy.Type.V3.Range.Int32Range
_ListenerFilterChainMatchPredicate'DestinationPortRange
  = Data.ProtoLens.Prism.prism'
      ListenerFilterChainMatchPredicate'DestinationPortRange
      (\ p__
         -> case p__ of
              (ListenerFilterChainMatchPredicate'DestinationPortRange p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.rules' @:: Lens' ListenerFilterChainMatchPredicate'MatchSet [ListenerFilterChainMatchPredicate]@
         * 'Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields.vec'rules' @:: Lens' ListenerFilterChainMatchPredicate'MatchSet (Data.Vector.Vector ListenerFilterChainMatchPredicate)@ -}
data ListenerFilterChainMatchPredicate'MatchSet
  = ListenerFilterChainMatchPredicate'MatchSet'_constructor {_ListenerFilterChainMatchPredicate'MatchSet'rules :: !(Data.Vector.Vector ListenerFilterChainMatchPredicate),
                                                             _ListenerFilterChainMatchPredicate'MatchSet'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenerFilterChainMatchPredicate'MatchSet where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate'MatchSet "rules" [ListenerFilterChainMatchPredicate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'MatchSet'rules
           (\ x__ y__
              -> x__ {_ListenerFilterChainMatchPredicate'MatchSet'rules = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListenerFilterChainMatchPredicate'MatchSet "vec'rules" (Data.Vector.Vector ListenerFilterChainMatchPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerFilterChainMatchPredicate'MatchSet'rules
           (\ x__ y__
              -> x__ {_ListenerFilterChainMatchPredicate'MatchSet'rules = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListenerFilterChainMatchPredicate'MatchSet where
  messageName _
    = Data.Text.pack
        "envoy.config.listener.v3.ListenerFilterChainMatchPredicate.MatchSet"
  packedMessageDescriptor _
    = "\n\
      \\bMatchSet\DC2[\n\
      \\ENQrules\CAN\SOH \ETX(\v2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\STX:G\154\197\136\RSB\n\
      \@envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSet"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenerFilterChainMatchPredicate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rules")) ::
              Data.ProtoLens.FieldDescriptor ListenerFilterChainMatchPredicate'MatchSet
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, rules__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenerFilterChainMatchPredicate'MatchSet'_unknownFields
        (\ x__ y__
           -> x__
                {_ListenerFilterChainMatchPredicate'MatchSet'_unknownFields = y__})
  defMessage
    = ListenerFilterChainMatchPredicate'MatchSet'_constructor
        {_ListenerFilterChainMatchPredicate'MatchSet'rules = Data.Vector.Generic.empty,
         _ListenerFilterChainMatchPredicate'MatchSet'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenerFilterChainMatchPredicate'MatchSet
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ListenerFilterChainMatchPredicate
             -> Data.ProtoLens.Encoding.Bytes.Parser ListenerFilterChainMatchPredicate'MatchSet
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
instance Control.DeepSeq.NFData ListenerFilterChainMatchPredicate'MatchSet where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenerFilterChainMatchPredicate'MatchSet'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListenerFilterChainMatchPredicate'MatchSet'rules x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \2envoy/config/listener/v3/listener_components.proto\DC2\CANenvoy.config.listener.v3\SUB\"envoy/config/core/v3/address.proto\SUB\USenvoy/config/core/v3/base.proto\SUB$envoy/config/core/v3/extension.proto\SUB\EMenvoy/type/v3/range.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\130\STX\n\
    \\ACKFilter\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
    \\ftyped_config\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfig\DC2X\n\
    \\DLEconfig_discovery\CAN\ENQ \SOH(\v2+.envoy.config.core.v3.ExtensionConfigSourceH\NULR\SIconfigDiscoveryB\r\n\
    \\vconfig_type:#\154\197\136\RS\RS\n\
    \\FSenvoy.api.v2.listener.FilterJ\EOT\b\ETX\DLE\EOTJ\EOT\b\STX\DLE\ETXR\ACKconfig\"\234\ACK\n\
    \\DLEFilterChainMatch\DC2T\n\
    \\DLEdestination_port\CAN\b \SOH(\v2\FS.google.protobuf.UInt32ValueR\SIdestinationPortB\v\250B\b*\ACK\CAN\255\255\ETX(\SOH\DC2D\n\
    \\rprefix_ranges\CAN\ETX \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\fprefixRanges\DC2%\n\
    \\SOaddress_suffix\CAN\EOT \SOH(\tR\raddressSuffix\DC2;\n\
    \\n\
    \suffix_len\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\tsuffixLen\DC2^\n\
    \\ESCdirect_source_prefix_ranges\CAN\r \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\CANdirectSourcePrefixRanges\DC2j\n\
    \\vsource_type\CAN\f \SOH(\SO2?.envoy.config.listener.v3.FilterChainMatch.ConnectionSourceTypeR\n\
    \sourceTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2Q\n\
    \\DC4source_prefix_ranges\CAN\ACK \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\DC2sourcePrefixRanges\DC23\n\
    \\fsource_ports\CAN\a \ETX(\rR\vsourcePortsB\DLE\250B\r\146\SOH\n\
    \\"\b*\ACK\CAN\255\255\ETX(\SOH\DC2!\n\
    \\fserver_names\CAN\v \ETX(\tR\vserverNames\DC2-\n\
    \\DC2transport_protocol\CAN\t \SOH(\tR\DC1transportProtocol\DC23\n\
    \\NAKapplication_protocols\CAN\n\
    \ \ETX(\tR\DC4applicationProtocols\"F\n\
    \\DC4ConnectionSourceType\DC2\a\n\
    \\ETXANY\DLE\NUL\DC2\ETB\n\
    \\DC3SAME_IP_OR_LOOPBACK\DLE\SOH\DC2\f\n\
    \\bEXTERNAL\DLE\STX:-\154\197\136\RS(\n\
    \&envoy.api.v2.listener.FilterChainMatchJ\EOT\b\SOH\DLE\STX\"\137\ACK\n\
    \\vFilterChain\DC2X\n\
    \\DC2filter_chain_match\CAN\SOH \SOH(\v2*.envoy.config.listener.v3.FilterChainMatchR\DLEfilterChainMatch\DC2:\n\
    \\afilters\CAN\ETX \ETX(\v2 .envoy.config.listener.v3.FilterR\afilters\DC2O\n\
    \\SIuse_proxy_proto\CAN\EOT \SOH(\v2\SUB.google.protobuf.BoolValueR\ruseProxyProtoB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2:\n\
    \\bmetadata\CAN\ENQ \SOH(\v2\RS.envoy.config.core.v3.MetadataR\bmetadata\DC2P\n\
    \\DLEtransport_socket\CAN\ACK \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocket\DC2b\n\
    \ transport_socket_connect_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\GStransportSocketConnectTimeout\DC2\DC2\n\
    \\EOTname\CAN\a \SOH(\tR\EOTname\DC2s\n\
    \\ETBon_demand_configuration\CAN\b \SOH(\v2;.envoy.config.listener.v3.FilterChain.OnDemandConfigurationR\NAKonDemandConfiguration\SUB[\n\
    \\NAKOnDemandConfiguration\DC2B\n\
    \\SIrebuild_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SOrebuildTimeout:(\154\197\136\RS#\n\
    \!envoy.api.v2.listener.FilterChainJ\EOT\b\STX\DLE\ETXR\vtls_context\"\194\ENQ\n\
    \!ListenerFilterChainMatchPredicate\DC2a\n\
    \\bor_match\CAN\SOH \SOH(\v2D.envoy.config.listener.v3.ListenerFilterChainMatchPredicate.MatchSetH\NULR\aorMatch\DC2c\n\
    \\tand_match\CAN\STX \SOH(\v2D.envoy.config.listener.v3.ListenerFilterChainMatchPredicate.MatchSetH\NULR\bandMatch\DC2Z\n\
    \\tnot_match\CAN\ETX \SOH(\v2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateH\NULR\bnotMatch\DC2&\n\
    \\tany_match\CAN\EOT \SOH(\bH\NULR\banyMatchB\a\250B\EOTj\STX\b\SOH\DC2Q\n\
    \\SYNdestination_port_range\CAN\ENQ \SOH(\v2\EM.envoy.type.v3.Int32RangeH\NULR\DC4destinationPortRange\SUB\176\SOH\n\
    \\bMatchSet\DC2[\n\
    \\ENQrules\CAN\SOH \ETX(\v2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\STX:G\154\197\136\RSB\n\
    \@envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSetB\v\n\
    \\EOTrule\DC2\ETX\248B\SOH:>\154\197\136\RS9\n\
    \7envoy.api.v2.listener.ListenerFilterChainMatchPredicate\"\152\STX\n\
    \\SOListenerFilter\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfig\DC2d\n\
    \\SIfilter_disabled\CAN\EOT \SOH(\v2;.envoy.config.listener.v3.ListenerFilterChainMatchPredicateR\SOfilterDisabledB\r\n\
    \\vconfig_type:+\154\197\136\RS&\n\
    \$envoy.api.v2.listener.ListenerFilterJ\EOT\b\STX\DLE\ETXR\ACKconfigBK\n\
    \&io.envoyproxy.envoy.config.listener.v3B\ETBListenerComponentsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\161t\n\
    \\a\DC2\ENQ\NUL\NUL\230\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL(\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL-\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL'\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\SI\NUL+\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\DLE\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DC2\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NUL8\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC3\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC4\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC4\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\NAK\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\NAK\NULF\n\
    \\136\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ESC\NUL2\SOH\SUB\ETB [#next-free-field: 6]\n\
    \2c [#protodoc-title: Listener components]\n\
    \ Listener :ref:`configuration overview <config_listeners>`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\FS\STX^\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\FS\STX^\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX\RS\STX\DLE\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\RS\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\RS\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\RS\v\f\n\
    \\v\n\
    \\EOT\EOT\NUL\t\SOH\DC2\ETX\RS\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\SOH\DC2\ETX\RS\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\STX\DC2\ETX\RS\SO\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\n\
    \\DC2\ETX \STX\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETX \v\DC3\n\
    \~\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX$\STX;\SUBq The name of the filter to instantiate. The name must match a\n\
    \ :ref:`supported filter <config_network_filters>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX$\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX$\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX$\DC2:\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX$\DC39\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT&\STX1\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX&\b\DC3\n\
    \\193\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX*\EOT)\SUB\179\SOH Filter specific configuration which depends on the filter being\n\
    \ instantiated. See the supported filters for further documentation.\n\
    \ [#extension-category: envoy.filters.network]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX*\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX*\CAN$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX*'(\n\
    \\221\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX0\EOT7\SUB\207\SOH Configuration source specifier for an extension configuration discovery\n\
    \ service. In case of a failure and without the default configuration, the\n\
    \ listener closes the connections.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX0\EOT!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX0\"2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX056\n\
    \\253\DLE\n\
    \\STX\EOT\SOH\DC2\ENQ`\NUL\195\SOH\SOH\SUB\239\DLE Specifies the match criteria for selecting a specific filter chain for a\n\
    \ listener.\n\
    \\n\
    \ In order for a filter chain to be selected, *ALL* of its criteria must be\n\
    \ fulfilled by the incoming connection, properties of which are set by the\n\
    \ networking stack and/or listener filters.\n\
    \\n\
    \ The following order applies:\n\
    \\n\
    \ 1. Destination port.\n\
    \ 2. Destination IP address.\n\
    \ 3. Server name (e.g. SNI for TLS protocol),\n\
    \ 4. Transport protocol.\n\
    \ 5. Application protocols (e.g. ALPN for TLS protocol).\n\
    \ 6. Directly connected source IP address (this will only be different from the source IP address\n\
    \    when using a listener filter that overrides the source address, such as the :ref:`Proxy Protocol\n\
    \    listener filter <config_listener_filters_proxy_protocol>`).\n\
    \ 7. Source type (e.g. any, local or external network).\n\
    \ 8. Source IP address.\n\
    \ 9. Source port.\n\
    \\n\
    \ For criteria that allow ranges or wildcards, the most specific value in any\n\
    \ of the configured filter chains that matches the incoming connection is going\n\
    \ to be used (e.g. for SNI ``www.example.com`` the most specific match would be\n\
    \ ``www.example.com``, then ``*.example.com``, then ``*.com``, then any filter\n\
    \ chain without ``server_names`` requirements).\n\
    \\n\
    \ A different way to reason about the filter chain matches:\n\
    \ Suppose there exists N filter chains. Prune the filter chain set using the above 8 steps.\n\
    \ In each step, filter chains which most specifically matches the attributes continue to the next step.\n\
    \ The listener guarantees at most 1 filter chain is left after all of the steps.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ For destination port, filter chains specifying the destination port of incoming traffic are the\n\
    \ most specific match. If none of the filter chains specifies the exact destination port, the filter\n\
    \ chains which do not specify ports are the most specific match. Filter chains specifying the\n\
    \ wrong port can never be the most specific match.\n\
    \\n\
    \ [#comment: Implemented rules are kept in the preference order, with deprecated fields\n\
    \ listed at the end, because that's how we want to list them in the docs.\n\
    \\n\
    \ [#comment:TODO(PiotrSikora): Add support for configurable precedence of the rules]\n\
    \ [#next-free-field: 14]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX`\b\CAN\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTa\STXb/\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTa\STXb/\n\
    \\f\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\EOTd\STXm\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETXd\a\ESC\n\
    \/\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETXf\EOT\f\SUB  Any connection source matches.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETXf\EOT\a\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETXf\n\
    \\v\n\
    \C\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETXi\EOT\FS\SUB4 Match a connection originating from the same host.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETXi\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETXi\SUB\ESC\n\
    \F\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\STX\DC2\ETXl\EOT\DC1\SUB7 Match a connection originating from a different host.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\SOH\DC2\ETXl\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\STX\DC2\ETXl\SI\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\t\DC2\ETXo\STX\r\n\
    \\v\n\
    \\EOT\EOT\SOH\t\NUL\DC2\ETXo\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\SOH\DC2\ETXo\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\STX\DC2\ETXo\v\f\n\
    \\135\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXs\STXc\SUBz Optional destination port to consider when use_original_dst is set on the\n\
    \ listener in determining a filter chain match.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXs\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXs\RS.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXs12\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXs3b\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\ENQ\DC2\ETXs4a\n\
    \\161\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXw\STX/\SUB\147\SOH If non-empty, an IP address and prefix length to match addresses when the\n\
    \ listener is bound to 0.0.0.0/:: or when use_original_dst is specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETXw\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXw\v\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXw\GS*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXw-.\n\
    \\187\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX|\STX\FS\SUB\173\SOH If non-empty, an IP address and suffix length to match addresses when the\n\
    \ listener is bound to 0.0.0.0/:: or when use_original_dst is specified.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX|\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX|\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX|\SUB\ESC\n\
    \'\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DEL\STX-\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX\DEL\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DEL\RS(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DEL+,\n\
    \\153\STX\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT\132\SOH\STX>\SUB\138\STX The criteria is satisfied if the directly connected source IP address of the downstream\n\
    \ connection is contained in at least one of the specified subnets. If the parameter is not\n\
    \ specified or the list is empty, the directly connected source IP address is ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\EOT\132\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\EOT\132\SOH\v\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\EOT\132\SOH\GS8\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\EOT\132\SOH;=\n\
    \e\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\135\SOH\STXW\SUBW Specifies the connection source IP match type. Can be any, local or external network.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\EOT\135\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\135\SOH\ETB\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\135\SOH%'\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\b\DC2\EOT\135\SOH(V\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\ENQ\b\175\b\DLE\DC2\EOT\135\SOH)U\n\
    \\244\SOH\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\EOT\141\SOH\STX6\SUB\229\SOH The criteria is satisfied if the source IP address of the downstream\n\
    \ connection is contained in at least one of the specified subnets. If the\n\
    \ parameter is not specified or the list is empty, the source IP address is\n\
    \ ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\EOT\141\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\EOT\141\SOH\v\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\EOT\141\SOH\GS1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\EOT\141\SOH45\n\
    \\210\SOH\n\
    \\EOT\EOT\SOH\STX\a\DC2\ACK\146\SOH\STX\147\SOHI\SUB\193\SOH The criteria is satisfied if the source port of the downstream connection\n\
    \ is contained in at least one of the specified ports. If the parameter is\n\
    \ not specified, the source port is ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\EOT\146\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\EOT\146\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\EOT\146\SOH\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\EOT\146\SOH!\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\b\DC2\EOT\147\SOH\ACKH\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\a\b\175\b\DC2\DC2\EOT\147\SOH\aG\n\
    \\140\ENQ\n\
    \\EOT\EOT\SOH\STX\b\DC2\EOT\162\SOH\STX$\SUB\253\EOT If non-empty, a list of server names (e.g. SNI for TLS protocol) to consider when determining\n\
    \ a filter chain match. Those values will be compared against the server names of a new\n\
    \ connection, when detected by one of the listener filters.\n\
    \\n\
    \ The server name will be matched against all wildcard domains, i.e. ``www.example.com``\n\
    \ will be first matched against ``www.example.com``, then ``*.example.com``, then ``*.com``.\n\
    \\n\
    \ Note that partial wildcards are not supported, and values like ``*w.example.com`` are invalid.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   See the :ref:`FAQ entry <faq_how_to_setup_sni>` on how to configure SNI for more\n\
    \   information.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\EOT\DC2\EOT\162\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\EOT\162\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\EOT\162\SOH\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\EOT\162\SOH!#\n\
    \\220\ETX\n\
    \\EOT\EOT\SOH\STX\t\DC2\EOT\173\SOH\STX \SUB\205\ETX If non-empty, a transport protocol to consider when determining a filter chain match.\n\
    \ This value will be compared against the transport protocol of a new connection, when\n\
    \ it's detected by one of the listener filters.\n\
    \\n\
    \ Suggested values include:\n\
    \\n\
    \ * ``raw_buffer`` - default, used when no transport protocol is detected,\n\
    \ * ``tls`` - set by :ref:`envoy.filters.listener.tls_inspector <config_listener_filters_tls_inspector>`\n\
    \   when TLS protocol is detected.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ENQ\DC2\EOT\173\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\EOT\173\SOH\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\EOT\173\SOH\RS\US\n\
    \\243\a\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\EOT\194\SOH\STX-\SUB\228\a If non-empty, a list of application protocols (e.g. ALPN for TLS protocol) to consider when\n\
    \ determining a filter chain match. Those values will be compared against the application\n\
    \ protocols of a new connection, when detected by one of the listener filters.\n\
    \\n\
    \ Suggested values include:\n\
    \\n\
    \ * ``http/1.1`` - set by :ref:`envoy.filters.listener.tls_inspector\n\
    \   <config_listener_filters_tls_inspector>`,\n\
    \ * ``h2`` - set by :ref:`envoy.filters.listener.tls_inspector <config_listener_filters_tls_inspector>`\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   Currently, only :ref:`TLS Inspector <config_listener_filters_tls_inspector>` provides\n\
    \   application protocol detection based on the requested\n\
    \   `ALPN <https://en.wikipedia.org/wiki/Application-Layer_Protocol_Negotiation>`_ values.\n\
    \\n\
    \   However, the use of ALPN is pretty much limited to the HTTP/2 traffic on the Internet,\n\
    \   and matching on values other than ``h2`` is going to lead to a lot of false negatives,\n\
    \   unless all connecting clients are known to use ALPN.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\EOT\DC2\EOT\194\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ENQ\DC2\EOT\194\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\EOT\194\SOH\DC2'\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\EOT\194\SOH*,\n\
    \\158\SOH\n\
    \\STX\EOT\STX\DC2\ACK\200\SOH\NUL\141\STX\SOH\SUB\143\SOH A filter chain wraps a set of match criteria, an option TLS context, a set of filters, and\n\
    \ various other parameters.\n\
    \ [#next-free-field: 10]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\200\SOH\b\DC3\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT\201\SOH\STXc\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT\201\SOH\STXc\n\
    \\190\ETX\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\ACK\208\SOH\STX\216\SOH\ETX\SUB\173\ETX The configuration for on-demand filter chain. If this field is not empty in FilterChain message,\n\
    \ a filter chain will be built on-demand.\n\
    \ On-demand filter chains help speedup the warming up of listeners since the building and initialization of\n\
    \ an on-demand filter chain will be postponed to the arrival of new connection requests that require this filter chain.\n\
    \ Filter chains that are not often used can be set as on-demand.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\EOT\208\SOH\n\
    \\US\n\
    \\181\ETX\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\EOT\215\SOH\EOT1\SUB\164\ETX The timeout to wait for filter chain placeholders to complete rebuilding.\n\
    \ 1. If this field is set to 0, timeout is disabled.\n\
    \ 2. If not specified, a default timeout of 15s is used.\n\
    \ Rebuilding will wait until dependencies are ready, have failed, or this timeout is reached.\n\
    \ Upon failure or timeout, all connections related to this filter chain will be closed.\n\
    \ Rebuilding will start again on the next new connection.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ACK\DC2\EOT\215\SOH\EOT\FS\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\EOT\215\SOH\GS,\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\EOT\215\SOH/0\n\
    \\v\n\
    \\ETX\EOT\STX\t\DC2\EOT\218\SOH\STX\r\n\
    \\f\n\
    \\EOT\EOT\STX\t\NUL\DC2\EOT\218\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\STX\t\NUL\SOH\DC2\EOT\218\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\STX\t\NUL\STX\DC2\EOT\218\SOH\v\f\n\
    \\v\n\
    \\ETX\EOT\STX\n\
    \\DC2\EOT\220\SOH\STX\EM\n\
    \\f\n\
    \\EOT\EOT\STX\n\
    \\NUL\DC2\EOT\220\SOH\v\CAN\n\
    \T\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\223\SOH\STX*\SUBF The criteria to use when matching a connection to this filter chain.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\223\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\223\SOH\DC3%\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\223\SOH()\n\
    \\163\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\229\SOH\STX\RS\SUB\148\STX A list of individual network filters that make up the filter chain for\n\
    \ connections established with the listener. Order matters as the filters are\n\
    \ processed sequentially as connection events happen. Note: If the filter\n\
    \ list is empty, the connection will close by default.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\EOT\229\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\229\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\229\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\229\SOH\FS\GS\n\
    \\173\EOT\n\
    \\EOT\EOT\STX\STX\STX\DC2\ACK\241\SOH\STX\242\SOHS\SUB\156\EOT Whether the listener should expect a PROXY protocol V1 header on new\n\
    \ connections. If this option is enabled, the listener will assume that that\n\
    \ remote address of the connection is the one specified in the header. Some\n\
    \ load balancers including the AWS ELB support this option. If the option is\n\
    \ absent or set to false, Envoy will use the physical peer address of the\n\
    \ connection as the remote address.\n\
    \\n\
    \ This field is deprecated. Add a\n\
    \ :ref:`PROXY protocol listener filter <config_listener_filters_proxy_protocol>`\n\
    \ explicitly instead.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\241\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\241\SOH\FS+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\241\SOH./\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\EOT\242\SOH\ACKR\n\
    \\SO\n\
    \\ACK\EOT\STX\STX\STX\b\ETX\DC2\EOT\242\SOH\a\CAN\n\
    \\DC1\n\
    \\t\EOT\STX\STX\STX\b\242\232\128K\DC2\EOT\242\SOH\SUBQ\n\
    \?\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\245\SOH\STX \SUB1 [#not-implemented-hide:] filter chain metadata.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\EOT\245\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\245\SOH\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\245\SOH\RS\US\n\
    \\212\ETX\n\
    \\EOT\EOT\STX\STX\EOT\DC2\EOT\253\SOH\STX/\SUB\197\ETX Optional custom transport socket implementation to use for downstream connections.\n\
    \ To setup TLS, set a transport socket with name `envoy.transport_sockets.tls` and\n\
    \ :ref:`DownstreamTlsContext <envoy_v3_api_msg_extensions.transport_sockets.tls.v3.DownstreamTlsContext>` in the `typed_config`.\n\
    \ If no transport socket configuration is specified, new connections\n\
    \ will be set up with plaintext.\n\
    \ [#extension-category: envoy.transport_sockets.downstream]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\EOT\253\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\EOT\253\SOH\SUB*\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\EOT\253\SOH-.\n\
    \\245\SOH\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\EOT\130\STX\STX@\SUB\230\SOH If present and nonzero, the amount of time to allow incoming connections to complete any\n\
    \ transport socket negotiations. If this expires before the transport reports connection\n\
    \ establishment, the connection is summarily closed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ACK\DC2\EOT\130\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\EOT\130\STX\ESC;\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\EOT\130\STX>?\n\
    \\163\STX\n\
    \\EOT\EOT\STX\STX\ACK\DC2\EOT\135\STX\STX\DC2\SUB\148\STX [#not-implemented-hide:] The unique name (or empty) by which this filter chain is known. If no\n\
    \ name is provided, Envoy will allocate an internal UUID for the filter chain. If the filter\n\
    \ chain is to be dynamically updated or removed via FCDS a unique name must be provided.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\EOT\135\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\EOT\135\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\EOT\135\STX\DLE\DC1\n\
    \\143\STX\n\
    \\EOT\EOT\STX\STX\a\DC2\EOT\140\STX\STX4\SUB\128\STX [#not-implemented-hide:] The configuration to specify whether the filter chain will be built on-demand.\n\
    \ If this field is not empty, the filter chain will be built on-demand.\n\
    \ Otherwise, the filter chain will be built normally and block listener warming.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\EOT\140\STX\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\EOT\140\STX\CAN/\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\EOT\140\STX23\n\
    \\210\EOT\n\
    \\STX\EOT\ETX\DC2\ACK\170\STX\NUL\205\STX\SOH\SUB\195\EOT Listener filter chain match configuration. This is a recursive structure which allows complex\n\
    \ nested match configurations to be built using various logical operators.\n\
    \\n\
    \ Examples:\n\
    \\n\
    \ * Matches if the destination port is 3306.\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \  destination_port_range:\n\
    \   start: 3306\n\
    \   end: 3307\n\
    \\n\
    \ * Matches if the destination port is 3306 or 15000.\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \  or_match:\n\
    \    rules:\n\
    \      - destination_port_range:\n\
    \          start: 3306\n\
    \          end: 3306\n\
    \      - destination_port_range:\n\
    \          start: 15000\n\
    \          end: 15001\n\
    \\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\170\STX\b)\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\171\STX\STX\172\STX@\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\171\STX\STX\172\STX@\n\
    \L\n\
    \\EOT\EOT\ETX\ETX\NUL\DC2\ACK\175\STX\STX\182\STX\ETX\SUB< A set of match configurations used for logical operations.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\NUL\SOH\DC2\EOT\175\STX\n\
    \\DC2\n\
    \\SI\n\
    \\ENQ\EOT\ETX\ETX\NUL\a\DC2\ACK\176\STX\EOT\177\STXK\n\
    \\DC4\n\
    \\n\
    \\EOT\ETX\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\176\STX\EOT\177\STXK\n\
    \;\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\NUL\DC2\ACK\180\STX\EOT\181\STX5\SUB) The list of rules that make up the set.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\EOT\DC2\EOT\180\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ACK\DC2\EOT\180\STX\r.\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\SOH\DC2\EOT\180\STX/4\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ETX\DC2\EOT\180\STX78\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\b\DC2\EOT\181\STX\b4\n\
    \\DC2\n\
    \\n\
    \\EOT\ETX\ETX\NUL\STX\NUL\b\175\b\DC2\DC2\EOT\181\STX\t3\n\
    \\SO\n\
    \\EOT\EOT\ETX\b\NUL\DC2\ACK\184\STX\STX\204\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\EOT\184\STX\b\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\b\NUL\STX\DC2\EOT\185\STX\EOT&\n\
    \\SI\n\
    \\a\EOT\ETX\b\NUL\STX\175\b\DC2\EOT\185\STX\EOT&\n\
    \v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\189\STX\EOT\SUB\SUBh A set that describes a logical OR. If any member of the set matches, the match configuration\n\
    \ matches.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\189\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\189\STX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\189\STX\CAN\EM\n\
    \v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\193\STX\EOT\ESC\SUBh A set that describes a logical AND. If all members of the set match, the match configuration\n\
    \ matches.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\EOT\193\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\193\STX\r\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\193\STX\EM\SUB\n\
    \l\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\196\STX\EOT4\SUB^ A negation match. The match configuration will match if the negated match condition matches.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\EOT\196\STX\EOT%\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\196\STX&/\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\196\STX23\n\
    \:\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\199\STX\EOT?\SUB, The match configuration will always match.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\EOT\199\STX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\199\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\199\STX\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\b\DC2\EOT\199\STX\ETB>\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\ETX\b\175\b\r\DC2\EOT\199\STX\CAN=\n\
    \\228\SOH\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOT\203\STX\EOT2\SUB\213\SOH Match destination port. Particularly, the match evaluation must use the recovered local port if\n\
    \ the owning listener filter is after :ref:`an original_dst listener filter <config_listener_filters_original_dst>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\EOT\203\STX\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\EOT\203\STX\ETB-\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\EOT\203\STX01\n\
    \\f\n\
    \\STX\EOT\EOT\DC2\ACK\207\STX\NUL\230\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\207\STX\b\SYN\n\
    \\r\n\
    \\ETX\EOT\EOT\a\DC2\ACK\208\STX\STX\209\STX-\n\
    \\DC2\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ACK\208\STX\STX\209\STX-\n\
    \\v\n\
    \\ETX\EOT\EOT\t\DC2\EOT\211\STX\STX\r\n\
    \\f\n\
    \\EOT\EOT\EOT\t\NUL\DC2\EOT\211\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\t\NUL\SOH\DC2\EOT\211\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\t\NUL\STX\DC2\EOT\211\STX\v\f\n\
    \\v\n\
    \\ETX\EOT\EOT\n\
    \\DC2\EOT\213\STX\STX\DC4\n\
    \\f\n\
    \\EOT\EOT\EOT\n\
    \\NUL\DC2\EOT\213\STX\v\DC3\n\
    \\128\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\217\STX\STX;\SUBr The name of the filter to instantiate. The name must match a\n\
    \ :ref:`supported filter <config_listener_filters>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\217\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\217\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\217\STX\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOT\217\STX\DC2:\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\175\b\SO\DC2\EOT\217\STX\DC39\n\
    \\SO\n\
    \\EOT\EOT\EOT\b\NUL\DC2\ACK\219\STX\STX\224\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\EOT\b\NUL\SOH\DC2\EOT\219\STX\b\DC3\n\
    \\222\SOH\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\223\STX\EOT)\SUB\207\SOH Filter specific configuration which depends on the filter being\n\
    \ instantiated. See the supported filters for further documentation.\n\
    \ [#extension-category: envoy.filters.listener,envoy.filters.udp_listener]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\223\STX\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\223\STX\CAN$\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\223\STX'(\n\
    \\130\STX\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\229\STX\STX8\SUB\243\SOH Optional match predicate used to disable the filter. The filter is enabled when this field is empty.\n\
    \ See :ref:`ListenerFilterChainMatchPredicate <envoy_v3_api_msg_config.listener.v3.ListenerFilterChainMatchPredicate>`\n\
    \ for further examples.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\229\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\229\STX$3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\229\STX67b\ACKproto3"