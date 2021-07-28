{- This file was auto-generated from envoy/extensions/filters/network/dubbo_proxy/v3/dubbo_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy (
        DubboFilter(), DubboProxy(), ProtocolType(..), ProtocolType(),
        ProtocolType'UnrecognizedValue, SerializationType(..),
        SerializationType(), SerializationType'UnrecognizedValue
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
import qualified Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy_Fields.name' @:: Lens' DubboFilter Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy_Fields.config' @:: Lens' DubboFilter Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy_Fields.maybe'config' @:: Lens' DubboFilter (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data DubboFilter
  = DubboFilter'_constructor {_DubboFilter'name :: !Data.Text.Text,
                              _DubboFilter'config :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                              _DubboFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DubboFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DubboFilter "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DubboFilter'name (\ x__ y__ -> x__ {_DubboFilter'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DubboFilter "config" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DubboFilter'config (\ x__ y__ -> x__ {_DubboFilter'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DubboFilter "maybe'config" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DubboFilter'config (\ x__ y__ -> x__ {_DubboFilter'config = y__}))
        Prelude.id
instance Data.ProtoLens.Message DubboFilter where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.dubbo_proxy.v3.DubboFilter"
  packedMessageDescriptor _
    = "\n\
      \\vDubboFilter\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2,\n\
      \\ACKconfig\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ACKconfig:C\154\197\136\RS>\n\
      \<envoy.config.filter.network.dubbo_proxy.v2alpha1.DubboFilter"
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
              Data.ProtoLens.FieldDescriptor DubboFilter
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor DubboFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, config__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DubboFilter'_unknownFields
        (\ x__ y__ -> x__ {_DubboFilter'_unknownFields = y__})
  defMessage
    = DubboFilter'_constructor
        {_DubboFilter'name = Data.ProtoLens.fieldDefault,
         _DubboFilter'config = Prelude.Nothing,
         _DubboFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DubboFilter -> Data.ProtoLens.Encoding.Bytes.Parser DubboFilter
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
                                       "config"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DubboFilter"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
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
instance Control.DeepSeq.NFData DubboFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DubboFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DubboFilter'name x__)
                (Control.DeepSeq.deepseq (_DubboFilter'config x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy_Fields.statPrefix' @:: Lens' DubboProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy_Fields.protocolType' @:: Lens' DubboProxy ProtocolType@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy_Fields.serializationType' @:: Lens' DubboProxy SerializationType@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy_Fields.routeConfig' @:: Lens' DubboProxy [Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route.RouteConfiguration]@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy_Fields.vec'routeConfig' @:: Lens' DubboProxy (Data.Vector.Vector Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route.RouteConfiguration)@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy_Fields.dubboFilters' @:: Lens' DubboProxy [DubboFilter]@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.DubboProxy_Fields.vec'dubboFilters' @:: Lens' DubboProxy (Data.Vector.Vector DubboFilter)@ -}
data DubboProxy
  = DubboProxy'_constructor {_DubboProxy'statPrefix :: !Data.Text.Text,
                             _DubboProxy'protocolType :: !ProtocolType,
                             _DubboProxy'serializationType :: !SerializationType,
                             _DubboProxy'routeConfig :: !(Data.Vector.Vector Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route.RouteConfiguration),
                             _DubboProxy'dubboFilters :: !(Data.Vector.Vector DubboFilter),
                             _DubboProxy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DubboProxy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DubboProxy "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DubboProxy'statPrefix
           (\ x__ y__ -> x__ {_DubboProxy'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DubboProxy "protocolType" ProtocolType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DubboProxy'protocolType
           (\ x__ y__ -> x__ {_DubboProxy'protocolType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DubboProxy "serializationType" SerializationType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DubboProxy'serializationType
           (\ x__ y__ -> x__ {_DubboProxy'serializationType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DubboProxy "routeConfig" [Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route.RouteConfiguration] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DubboProxy'routeConfig
           (\ x__ y__ -> x__ {_DubboProxy'routeConfig = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DubboProxy "vec'routeConfig" (Data.Vector.Vector Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route.RouteConfiguration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DubboProxy'routeConfig
           (\ x__ y__ -> x__ {_DubboProxy'routeConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DubboProxy "dubboFilters" [DubboFilter] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DubboProxy'dubboFilters
           (\ x__ y__ -> x__ {_DubboProxy'dubboFilters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DubboProxy "vec'dubboFilters" (Data.Vector.Vector DubboFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DubboProxy'dubboFilters
           (\ x__ y__ -> x__ {_DubboProxy'dubboFilters = y__}))
        Prelude.id
instance Data.ProtoLens.Message DubboProxy where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.dubbo_proxy.v3.DubboProxy"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \DubboProxy\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2l\n\
      \\rprotocol_type\CAN\STX \SOH(\SO2=.envoy.extensions.filters.network.dubbo_proxy.v3.ProtocolTypeR\fprotocolTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2{\n\
      \\DC2serialization_type\CAN\ETX \SOH(\SO2B.envoy.extensions.filters.network.dubbo_proxy.v3.SerializationTypeR\DC1serializationTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2f\n\
      \\froute_config\CAN\EOT \ETX(\v2C.envoy.extensions.filters.network.dubbo_proxy.v3.RouteConfigurationR\vrouteConfig\DC2a\n\
      \\rdubbo_filters\CAN\ENQ \ETX(\v2<.envoy.extensions.filters.network.dubbo_proxy.v3.DubboFilterR\fdubboFilters:B\154\197\136\RS=\n\
      \;envoy.config.filter.network.dubbo_proxy.v2alpha1.DubboProxy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor DubboProxy
        protocolType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProtocolType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocolType")) ::
              Data.ProtoLens.FieldDescriptor DubboProxy
        serializationType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "serialization_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor SerializationType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serializationType")) ::
              Data.ProtoLens.FieldDescriptor DubboProxy
        routeConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route.RouteConfiguration)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"routeConfig")) ::
              Data.ProtoLens.FieldDescriptor DubboProxy
        dubboFilters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dubbo_filters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DubboFilter)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dubboFilters")) ::
              Data.ProtoLens.FieldDescriptor DubboProxy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, protocolType__field_descriptor),
           (Data.ProtoLens.Tag 3, serializationType__field_descriptor),
           (Data.ProtoLens.Tag 4, routeConfig__field_descriptor),
           (Data.ProtoLens.Tag 5, dubboFilters__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DubboProxy'_unknownFields
        (\ x__ y__ -> x__ {_DubboProxy'_unknownFields = y__})
  defMessage
    = DubboProxy'_constructor
        {_DubboProxy'statPrefix = Data.ProtoLens.fieldDefault,
         _DubboProxy'protocolType = Data.ProtoLens.fieldDefault,
         _DubboProxy'serializationType = Data.ProtoLens.fieldDefault,
         _DubboProxy'routeConfig = Data.Vector.Generic.empty,
         _DubboProxy'dubboFilters = Data.Vector.Generic.empty,
         _DubboProxy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DubboProxy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DubboFilter
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route.RouteConfiguration
                -> Data.ProtoLens.Encoding.Bytes.Parser DubboProxy
        loop x mutable'dubboFilters mutable'routeConfig
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dubboFilters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'dubboFilters)
                      frozen'routeConfig <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'routeConfig)
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
                              (Data.ProtoLens.Field.field @"vec'dubboFilters")
                              frozen'dubboFilters
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'routeConfig")
                                 frozen'routeConfig
                                 x)))
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                                  mutable'dubboFilters
                                  mutable'routeConfig
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "protocol_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protocolType") y x)
                                  mutable'dubboFilters
                                  mutable'routeConfig
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "serialization_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"serializationType") y x)
                                  mutable'dubboFilters
                                  mutable'routeConfig
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "route_config"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'routeConfig y)
                                loop x mutable'dubboFilters v
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dubbo_filters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dubboFilters y)
                                loop x v mutable'routeConfig
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dubboFilters
                                  mutable'routeConfig
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dubboFilters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'routeConfig <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'dubboFilters mutable'routeConfig)
          "DubboProxy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"protocolType") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"serializationType") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum
                               _v))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
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
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'routeConfig") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                               (Data.ProtoLens.Field.field @"vec'dubboFilters") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData DubboProxy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DubboProxy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DubboProxy'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_DubboProxy'protocolType x__)
                   (Control.DeepSeq.deepseq
                      (_DubboProxy'serializationType x__)
                      (Control.DeepSeq.deepseq
                         (_DubboProxy'routeConfig x__)
                         (Control.DeepSeq.deepseq (_DubboProxy'dubboFilters x__) ())))))
newtype ProtocolType'UnrecognizedValue
  = ProtocolType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ProtocolType
  = Dubbo | ProtocolType'Unrecognized !ProtocolType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ProtocolType where
  maybeToEnum 0 = Prelude.Just Dubbo
  maybeToEnum k
    = Prelude.Just
        (ProtocolType'Unrecognized
           (ProtocolType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Dubbo = "Dubbo"
  showEnum
    (ProtocolType'Unrecognized (ProtocolType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "Dubbo" = Prelude.Just Dubbo
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ProtocolType where
  minBound = Dubbo
  maxBound = Dubbo
instance Prelude.Enum ProtocolType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ProtocolType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Dubbo = 0
  fromEnum
    (ProtocolType'Unrecognized (ProtocolType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Dubbo
    = Prelude.error
        "ProtocolType.succ: bad argument Dubbo. This value would be out of bounds."
  succ (ProtocolType'Unrecognized _)
    = Prelude.error
        "ProtocolType.succ: bad argument: unrecognized value"
  pred Dubbo
    = Prelude.error
        "ProtocolType.pred: bad argument Dubbo. This value would be out of bounds."
  pred (ProtocolType'Unrecognized _)
    = Prelude.error
        "ProtocolType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ProtocolType where
  fieldDefault = Dubbo
instance Control.DeepSeq.NFData ProtocolType where
  rnf x__ = Prelude.seq x__ ()
newtype SerializationType'UnrecognizedValue
  = SerializationType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data SerializationType
  = Hessian2 |
    SerializationType'Unrecognized !SerializationType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum SerializationType where
  maybeToEnum 0 = Prelude.Just Hessian2
  maybeToEnum k
    = Prelude.Just
        (SerializationType'Unrecognized
           (SerializationType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Hessian2 = "Hessian2"
  showEnum
    (SerializationType'Unrecognized (SerializationType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "Hessian2" = Prelude.Just Hessian2
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded SerializationType where
  minBound = Hessian2
  maxBound = Hessian2
instance Prelude.Enum SerializationType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum SerializationType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Hessian2 = 0
  fromEnum
    (SerializationType'Unrecognized (SerializationType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Hessian2
    = Prelude.error
        "SerializationType.succ: bad argument Hessian2. This value would be out of bounds."
  succ (SerializationType'Unrecognized _)
    = Prelude.error
        "SerializationType.succ: bad argument: unrecognized value"
  pred Hessian2
    = Prelude.error
        "SerializationType.pred: bad argument Hessian2. This value would be out of bounds."
  pred (SerializationType'Unrecognized _)
    = Prelude.error
        "SerializationType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault SerializationType where
  fieldDefault = Hessian2
instance Control.DeepSeq.NFData SerializationType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Aenvoy/extensions/filters/network/dubbo_proxy/v3/dubbo_proxy.proto\DC2/envoy.extensions.filters.network.dubbo_proxy.v3\SUB;envoy/extensions/filters/network/dubbo_proxy/v3/route.proto\SUB\EMgoogle/protobuf/any.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\176\EOT\n\
    \\n\
    \DubboProxy\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2l\n\
    \\rprotocol_type\CAN\STX \SOH(\SO2=.envoy.extensions.filters.network.dubbo_proxy.v3.ProtocolTypeR\fprotocolTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2{\n\
    \\DC2serialization_type\CAN\ETX \SOH(\SO2B.envoy.extensions.filters.network.dubbo_proxy.v3.SerializationTypeR\DC1serializationTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2f\n\
    \\froute_config\CAN\EOT \ETX(\v2C.envoy.extensions.filters.network.dubbo_proxy.v3.RouteConfigurationR\vrouteConfig\DC2a\n\
    \\rdubbo_filters\CAN\ENQ \ETX(\v2<.envoy.extensions.filters.network.dubbo_proxy.v3.DubboFilterR\fdubboFilters:B\154\197\136\RS=\n\
    \;envoy.config.filter.network.dubbo_proxy.v2alpha1.DubboProxy\"\157\SOH\n\
    \\vDubboFilter\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2,\n\
    \\ACKconfig\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ACKconfig:C\154\197\136\RS>\n\
    \<envoy.config.filter.network.dubbo_proxy.v2alpha1.DubboFilter*\EM\n\
    \\fProtocolType\DC2\t\n\
    \\ENQDubbo\DLE\NUL*!\n\
    \\DC1SerializationType\DC2\f\n\
    \\bHessian2\DLE\NULBZ\n\
    \=io.envoyproxy.envoy.extensions.filters.network.dubbo_proxy.v3B\SIDubboProxyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\171\DLE\n\
    \\ACK\DC2\EOT\NUL\NULE\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL8\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NULE\n\
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
    \\SOH\b\DC2\ETX\f\NULV\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULV\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\219\SOH\n\
    \\STX\ENQ\NUL\DC2\EOT\SYN\NUL\EM\SOH\SUB* Dubbo Protocol types supported by Envoy.\n\
    \2\162\SOH [#protodoc-title: Dubbo Proxy]\n\
    \ Dubbo Proxy :ref:`configuration overview <config_network_filters_dubbo_proxy>`.\n\
    \ [#extension: envoy.filters.network.dubbo_proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\SYN\ENQ\DC1\n\
    \$\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\CAN\STX\f\SUB\ETB the default protocol.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\CAN\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\CAN\n\
    \\v\n\
    \;\n\
    \\STX\ENQ\SOH\DC2\EOT\FS\NUL\US\SOH\SUB/ Dubbo Serialization types supported by Envoy.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETX\FS\ENQ\SYN\n\
    \2\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETX\RS\STX\SI\SUB% the default serialization protocol.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETX\RS\r\SO\n\
    \#\n\
    \\STX\EOT\NUL\DC2\EOT\"\NUL7\SOH\SUB\ETB [#next-free-field: 6]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\"\b\DC2\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT#\STX$D\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT#\STX$D\n\
    \I\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX'\STXB\SUB< The human readable prefix to use when emitting statistics.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX'\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX'\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX'\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX'\SUB@\n\
    \+\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX*\STXP\SUB\RS Configure the protocol used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX*\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX*\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX*\US \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX*!O\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETX*\"N\n\
    \9\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX-\STXZ\SUB, Configure the serialization protocol used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX-\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX-\DC4&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX-)*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX-+Y\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DLE\DC2\ETX-,X\n\
    \f\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX0\STX/\SUBY The route table for the connection manager is static and is specified in this property.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX0\v\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX0\RS*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX0-.\n\
    \\184\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX6\STX)\SUB\170\STX A list of individual Dubbo filters that make up the filter chain for requests made to the\n\
    \ Dubbo proxy. Order matters as the filters are processed sequentially. For backwards\n\
    \ compatibility, if no dubbo_filters are specified, a default Dubbo router filter\n\
    \ (`envoy.filters.dubbo.router`) is used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX6\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX6\ETB$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX6'(\n\
    \4\n\
    \\STX\EOT\SOH\DC2\EOT:\NULE\SOH\SUB( DubboFilter configures a Dubbo filter.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX:\b\DC3\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT;\STX<E\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT;\STX<E\n\
    \^\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX@\STX;\SUBQ The name of the filter to instantiate. The name must match a supported\n\
    \ filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX@\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX@\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX@\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX@\DC2:\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\SO\DC2\ETX@\DC39\n\
    \\147\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXD\STX!\SUB\133\SOH Filter specific configuration which depends on the filter being\n\
    \ instantiated. See the supported filters for further documentation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXD\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXD\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXD\US b\ACKproto3"