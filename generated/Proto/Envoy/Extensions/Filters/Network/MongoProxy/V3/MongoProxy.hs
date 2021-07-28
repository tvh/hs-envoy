{- This file was auto-generated from envoy/extensions/filters/network/mongo_proxy/v3/mongo_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.MongoProxy.V3.MongoProxy (
        MongoProxy()
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
import qualified Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.MongoProxy.V3.MongoProxy_Fields.statPrefix' @:: Lens' MongoProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.MongoProxy.V3.MongoProxy_Fields.accessLog' @:: Lens' MongoProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.MongoProxy.V3.MongoProxy_Fields.delay' @:: Lens' MongoProxy Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay@
         * 'Proto.Envoy.Extensions.Filters.Network.MongoProxy.V3.MongoProxy_Fields.maybe'delay' @:: Lens' MongoProxy (Prelude.Maybe Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay)@
         * 'Proto.Envoy.Extensions.Filters.Network.MongoProxy.V3.MongoProxy_Fields.emitDynamicMetadata' @:: Lens' MongoProxy Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.MongoProxy.V3.MongoProxy_Fields.commands' @:: Lens' MongoProxy [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Network.MongoProxy.V3.MongoProxy_Fields.vec'commands' @:: Lens' MongoProxy (Data.Vector.Vector Data.Text.Text)@ -}
data MongoProxy
  = MongoProxy'_constructor {_MongoProxy'statPrefix :: !Data.Text.Text,
                             _MongoProxy'accessLog :: !Data.Text.Text,
                             _MongoProxy'delay :: !(Prelude.Maybe Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay),
                             _MongoProxy'emitDynamicMetadata :: !Prelude.Bool,
                             _MongoProxy'commands :: !(Data.Vector.Vector Data.Text.Text),
                             _MongoProxy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MongoProxy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MongoProxy "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MongoProxy'statPrefix
           (\ x__ y__ -> x__ {_MongoProxy'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MongoProxy "accessLog" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MongoProxy'accessLog
           (\ x__ y__ -> x__ {_MongoProxy'accessLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MongoProxy "delay" Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MongoProxy'delay (\ x__ y__ -> x__ {_MongoProxy'delay = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MongoProxy "maybe'delay" (Prelude.Maybe Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MongoProxy'delay (\ x__ y__ -> x__ {_MongoProxy'delay = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MongoProxy "emitDynamicMetadata" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MongoProxy'emitDynamicMetadata
           (\ x__ y__ -> x__ {_MongoProxy'emitDynamicMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MongoProxy "commands" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MongoProxy'commands
           (\ x__ y__ -> x__ {_MongoProxy'commands = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MongoProxy "vec'commands" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MongoProxy'commands
           (\ x__ y__ -> x__ {_MongoProxy'commands = y__}))
        Prelude.id
instance Data.ProtoLens.Message MongoProxy where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.mongo_proxy.v3.MongoProxy"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \MongoProxy\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
      \\n\
      \access_log\CAN\STX \SOH(\tR\taccessLog\DC2J\n\
      \\ENQdelay\CAN\ETX \SOH(\v24.envoy.extensions.filters.common.fault.v3.FaultDelayR\ENQdelay\DC22\n\
      \\NAKemit_dynamic_metadata\CAN\EOT \SOH(\bR\DC3emitDynamicMetadata\DC2\SUB\n\
      \\bcommands\CAN\ENQ \ETX(\tR\bcommands:<\154\197\136\RS7\n\
      \5envoy.config.filter.network.mongo_proxy.v2.MongoProxy"
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
              Data.ProtoLens.FieldDescriptor MongoProxy
        accessLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "access_log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"accessLog")) ::
              Data.ProtoLens.FieldDescriptor MongoProxy
        delay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'delay")) ::
              Data.ProtoLens.FieldDescriptor MongoProxy
        emitDynamicMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "emit_dynamic_metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"emitDynamicMetadata")) ::
              Data.ProtoLens.FieldDescriptor MongoProxy
        commands__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commands"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"commands")) ::
              Data.ProtoLens.FieldDescriptor MongoProxy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, accessLog__field_descriptor),
           (Data.ProtoLens.Tag 3, delay__field_descriptor),
           (Data.ProtoLens.Tag 4, emitDynamicMetadata__field_descriptor),
           (Data.ProtoLens.Tag 5, commands__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MongoProxy'_unknownFields
        (\ x__ y__ -> x__ {_MongoProxy'_unknownFields = y__})
  defMessage
    = MongoProxy'_constructor
        {_MongoProxy'statPrefix = Data.ProtoLens.fieldDefault,
         _MongoProxy'accessLog = Data.ProtoLens.fieldDefault,
         _MongoProxy'delay = Prelude.Nothing,
         _MongoProxy'emitDynamicMetadata = Data.ProtoLens.fieldDefault,
         _MongoProxy'commands = Data.Vector.Generic.empty,
         _MongoProxy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MongoProxy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser MongoProxy
        loop x mutable'commands
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'commands <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'commands)
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
                              (Data.ProtoLens.Field.field @"vec'commands") frozen'commands x))
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
                                  mutable'commands
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
                                       "access_log"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"accessLog") y x)
                                  mutable'commands
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "delay"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"delay") y x)
                                  mutable'commands
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "emit_dynamic_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"emitDynamicMetadata") y x)
                                  mutable'commands
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "commands"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'commands y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'commands
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'commands <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'commands)
          "MongoProxy"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"accessLog") _x
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'delay") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"emitDynamicMetadata") _x
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
                                       Data.Text.Encoding.encodeUtf8
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'commands") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData MongoProxy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MongoProxy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MongoProxy'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_MongoProxy'accessLog x__)
                   (Control.DeepSeq.deepseq
                      (_MongoProxy'delay x__)
                      (Control.DeepSeq.deepseq
                         (_MongoProxy'emitDynamicMetadata x__)
                         (Control.DeepSeq.deepseq (_MongoProxy'commands x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Aenvoy/extensions/filters/network/mongo_proxy/v3/mongo_proxy.proto\DC2/envoy.extensions.filters.network.mongo_proxy.v3\SUB4envoy/extensions/filters/common/fault/v3/fault.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\175\STX\n\
    \\n\
    \MongoProxy\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
    \\n\
    \access_log\CAN\STX \SOH(\tR\taccessLog\DC2J\n\
    \\ENQdelay\CAN\ETX \SOH(\v24.envoy.extensions.filters.common.fault.v3.FaultDelayR\ENQdelay\DC22\n\
    \\NAKemit_dynamic_metadata\CAN\EOT \SOH(\bR\DC3emitDynamicMetadata\DC2\SUB\n\
    \\bcommands\CAN\ENQ \ETX(\tR\bcommands:<\154\197\136\RS7\n\
    \5envoy.config.filter.network.mongo_proxy.v2.MongoProxyBZ\n\
    \=io.envoyproxy.envoy.extensions.filters.network.mongo_proxy.v3B\SIMongoProxyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\205\r\n\
    \\ACK\DC2\EOT\NUL\NUL/\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL8\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL>\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULV\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULV\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\196\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL/\SOH\SUB\ETB [#next-free-field: 6]\n\
    \2\158\SOH [#protodoc-title: Mongo proxy]\n\
    \ MongoDB :ref:`configuration overview <config_network_filters_mongo_proxy>`.\n\
    \ [#extension: envoy.filters.network.mongo_proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\DC2\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\NAK\STX\SYN>\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\NAK\STX\SYN>\n\
    \|\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STXB\SUBo The human readable prefix to use when emitting :ref:`statistics\n\
    \ <config_network_filters_mongo_proxy_stats>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SUB\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\SUB\SUB@\n\
    \\237\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\US\STX\CAN\SUB\223\SOH The optional path to use for writing Mongo access logs. If not access log\n\
    \ path is specified no access logs will be written. Note that access log is\n\
    \ also gated :ref:`runtime <config_network_filters_mongo_proxy_runtime>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\US\SYN\ETB\n\
    \\158\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX%\STX'\SUB\144\STX Inject a fixed delay before proxying a Mongo operation. Delays are\n\
    \ applied to the following MongoDB operations: Query, Insert, GetMore,\n\
    \ and KillCursors. Once an active delay is in progress, all incoming\n\
    \ data up until the timer event fires will be a part of the delay.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX%\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX%\GS\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX%%&\n\
    \\156\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX)\STX!\SUB\142\SOH Flag to specify whether :ref:`dynamic metadata\n\
    \ <config_network_filters_mongo_proxy_dynamic_metadata>` should be emitted. Defaults to false.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX)\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX)\a\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX)\US \n\
    \\139\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX.\STX\US\SUB\253\SOH List of commands to emit metrics for. Defaults to \"delete\", \"insert\", and \"update\".\n\
    \ Note that metrics will not be emitted for \"find\" commands, since those are considered\n\
    \ queries, and metrics for those are emitted under a dedicated \"query\" namespace.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX.\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX.\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX.\GS\RSb\ACKproto3"