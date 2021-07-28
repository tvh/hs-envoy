{- This file was auto-generated from envoy/extensions/wasm/v3/wasm.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Wasm.V3.Wasm (
        CapabilityRestrictionConfig(),
        CapabilityRestrictionConfig'AllowedCapabilitiesEntry(),
        EnvironmentVariables(), EnvironmentVariables'KeyValuesEntry(),
        PluginConfig(), PluginConfig'Vm(..), _PluginConfig'VmConfig,
        SanitizationConfig(), VmConfig(), WasmService()
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
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.allowedCapabilities' @:: Lens' CapabilityRestrictionConfig (Data.Map.Map Data.Text.Text SanitizationConfig)@ -}
data CapabilityRestrictionConfig
  = CapabilityRestrictionConfig'_constructor {_CapabilityRestrictionConfig'allowedCapabilities :: !(Data.Map.Map Data.Text.Text SanitizationConfig),
                                              _CapabilityRestrictionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CapabilityRestrictionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CapabilityRestrictionConfig "allowedCapabilities" (Data.Map.Map Data.Text.Text SanitizationConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CapabilityRestrictionConfig'allowedCapabilities
           (\ x__ y__
              -> x__ {_CapabilityRestrictionConfig'allowedCapabilities = y__}))
        Prelude.id
instance Data.ProtoLens.Message CapabilityRestrictionConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.wasm.v3.CapabilityRestrictionConfig"
  packedMessageDescriptor _
    = "\n\
      \\ESCCapabilityRestrictionConfig\DC2\129\SOH\n\
      \\DC4allowed_capabilities\CAN\SOH \ETX(\v2N.envoy.extensions.wasm.v3.CapabilityRestrictionConfig.AllowedCapabilitiesEntryR\DC3allowedCapabilities\SUBt\n\
      \\CANAllowedCapabilitiesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2B\n\
      \\ENQvalue\CAN\STX \SOH(\v2,.envoy.extensions.wasm.v3.SanitizationConfigR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allowedCapabilities__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowed_capabilities"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CapabilityRestrictionConfig'AllowedCapabilitiesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"allowedCapabilities")) ::
              Data.ProtoLens.FieldDescriptor CapabilityRestrictionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allowedCapabilities__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CapabilityRestrictionConfig'_unknownFields
        (\ x__ y__
           -> x__ {_CapabilityRestrictionConfig'_unknownFields = y__})
  defMessage
    = CapabilityRestrictionConfig'_constructor
        {_CapabilityRestrictionConfig'allowedCapabilities = Data.Map.empty,
         _CapabilityRestrictionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CapabilityRestrictionConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser CapabilityRestrictionConfig
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
                          -> do !(entry :: CapabilityRestrictionConfig'AllowedCapabilitiesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                                      (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                          Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                            (Prelude.fromIntegral
                                                                                                               len)
                                                                                                            Data.ProtoLens.parseMessage)
                                                                                                      "allowed_capabilities"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"allowedCapabilities")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CapabilityRestrictionConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
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
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key")
                                 (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value")
                                    (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage ::
                                       CapabilityRestrictionConfig'AllowedCapabilitiesEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"allowedCapabilities") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CapabilityRestrictionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CapabilityRestrictionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CapabilityRestrictionConfig'allowedCapabilities x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.key' @:: Lens' CapabilityRestrictionConfig'AllowedCapabilitiesEntry Data.Text.Text@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.value' @:: Lens' CapabilityRestrictionConfig'AllowedCapabilitiesEntry SanitizationConfig@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.maybe'value' @:: Lens' CapabilityRestrictionConfig'AllowedCapabilitiesEntry (Prelude.Maybe SanitizationConfig)@ -}
data CapabilityRestrictionConfig'AllowedCapabilitiesEntry
  = CapabilityRestrictionConfig'AllowedCapabilitiesEntry'_constructor {_CapabilityRestrictionConfig'AllowedCapabilitiesEntry'key :: !Data.Text.Text,
                                                                       _CapabilityRestrictionConfig'AllowedCapabilitiesEntry'value :: !(Prelude.Maybe SanitizationConfig),
                                                                       _CapabilityRestrictionConfig'AllowedCapabilitiesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CapabilityRestrictionConfig'AllowedCapabilitiesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CapabilityRestrictionConfig'AllowedCapabilitiesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CapabilityRestrictionConfig'AllowedCapabilitiesEntry'key
           (\ x__ y__
              -> x__
                   {_CapabilityRestrictionConfig'AllowedCapabilitiesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CapabilityRestrictionConfig'AllowedCapabilitiesEntry "value" SanitizationConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CapabilityRestrictionConfig'AllowedCapabilitiesEntry'value
           (\ x__ y__
              -> x__
                   {_CapabilityRestrictionConfig'AllowedCapabilitiesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CapabilityRestrictionConfig'AllowedCapabilitiesEntry "maybe'value" (Prelude.Maybe SanitizationConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CapabilityRestrictionConfig'AllowedCapabilitiesEntry'value
           (\ x__ y__
              -> x__
                   {_CapabilityRestrictionConfig'AllowedCapabilitiesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message CapabilityRestrictionConfig'AllowedCapabilitiesEntry where
  messageName _
    = Data.Text.pack
        "envoy.extensions.wasm.v3.CapabilityRestrictionConfig.AllowedCapabilitiesEntry"
  packedMessageDescriptor _
    = "\n\
      \\CANAllowedCapabilitiesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2B\n\
      \\ENQvalue\CAN\STX \SOH(\v2,.envoy.extensions.wasm.v3.SanitizationConfigR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor CapabilityRestrictionConfig'AllowedCapabilitiesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SanitizationConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor CapabilityRestrictionConfig'AllowedCapabilitiesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CapabilityRestrictionConfig'AllowedCapabilitiesEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_CapabilityRestrictionConfig'AllowedCapabilitiesEntry'_unknownFields = y__})
  defMessage
    = CapabilityRestrictionConfig'AllowedCapabilitiesEntry'_constructor
        {_CapabilityRestrictionConfig'AllowedCapabilitiesEntry'key = Data.ProtoLens.fieldDefault,
         _CapabilityRestrictionConfig'AllowedCapabilitiesEntry'value = Prelude.Nothing,
         _CapabilityRestrictionConfig'AllowedCapabilitiesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CapabilityRestrictionConfig'AllowedCapabilitiesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser CapabilityRestrictionConfig'AllowedCapabilitiesEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
          (do loop Data.ProtoLens.defMessage) "AllowedCapabilitiesEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
instance Control.DeepSeq.NFData CapabilityRestrictionConfig'AllowedCapabilitiesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CapabilityRestrictionConfig'AllowedCapabilitiesEntry'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_CapabilityRestrictionConfig'AllowedCapabilitiesEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_CapabilityRestrictionConfig'AllowedCapabilitiesEntry'value x__)
                   ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.hostEnvKeys' @:: Lens' EnvironmentVariables [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.vec'hostEnvKeys' @:: Lens' EnvironmentVariables (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.keyValues' @:: Lens' EnvironmentVariables (Data.Map.Map Data.Text.Text Data.Text.Text)@ -}
data EnvironmentVariables
  = EnvironmentVariables'_constructor {_EnvironmentVariables'hostEnvKeys :: !(Data.Vector.Vector Data.Text.Text),
                                       _EnvironmentVariables'keyValues :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                       _EnvironmentVariables'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnvironmentVariables where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnvironmentVariables "hostEnvKeys" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentVariables'hostEnvKeys
           (\ x__ y__ -> x__ {_EnvironmentVariables'hostEnvKeys = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EnvironmentVariables "vec'hostEnvKeys" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentVariables'hostEnvKeys
           (\ x__ y__ -> x__ {_EnvironmentVariables'hostEnvKeys = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentVariables "keyValues" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentVariables'keyValues
           (\ x__ y__ -> x__ {_EnvironmentVariables'keyValues = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnvironmentVariables where
  messageName _
    = Data.Text.pack "envoy.extensions.wasm.v3.EnvironmentVariables"
  packedMessageDescriptor _
    = "\n\
      \\DC4EnvironmentVariables\DC2\"\n\
      \\rhost_env_keys\CAN\SOH \ETX(\tR\vhostEnvKeys\DC2\\\n\
      \\n\
      \key_values\CAN\STX \ETX(\v2=.envoy.extensions.wasm.v3.EnvironmentVariables.KeyValuesEntryR\tkeyValues\SUB<\n\
      \\SOKeyValuesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hostEnvKeys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_env_keys"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"hostEnvKeys")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentVariables
        keyValues__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key_values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentVariables'KeyValuesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"keyValues")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentVariables
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hostEnvKeys__field_descriptor),
           (Data.ProtoLens.Tag 2, keyValues__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnvironmentVariables'_unknownFields
        (\ x__ y__ -> x__ {_EnvironmentVariables'_unknownFields = y__})
  defMessage
    = EnvironmentVariables'_constructor
        {_EnvironmentVariables'hostEnvKeys = Data.Vector.Generic.empty,
         _EnvironmentVariables'keyValues = Data.Map.empty,
         _EnvironmentVariables'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnvironmentVariables
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser EnvironmentVariables
        loop x mutable'hostEnvKeys
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'hostEnvKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'hostEnvKeys)
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
                              (Data.ProtoLens.Field.field @"vec'hostEnvKeys")
                              frozen'hostEnvKeys
                              x))
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
                                        "host_env_keys"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'hostEnvKeys y)
                                loop x v
                        18
                          -> do !(entry :: EnvironmentVariables'KeyValuesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                     (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                         Data.ProtoLens.Encoding.Bytes.isolate
                                                                                           (Prelude.fromIntegral
                                                                                              len)
                                                                                           Data.ProtoLens.parseMessage)
                                                                                     "key_values"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"keyValues")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'hostEnvKeys)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'hostEnvKeys
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'hostEnvKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'hostEnvKeys)
          "EnvironmentVariables"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'hostEnvKeys") _x))
             ((Data.Monoid.<>)
                (Data.Monoid.mconcat
                   (Prelude.map
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
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"key")
                                    (Prelude.fst _v)
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"value")
                                       (Prelude.snd _v)
                                       (Data.ProtoLens.defMessage ::
                                          EnvironmentVariables'KeyValuesEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"keyValues") _x))))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EnvironmentVariables where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnvironmentVariables'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnvironmentVariables'hostEnvKeys x__)
                (Control.DeepSeq.deepseq (_EnvironmentVariables'keyValues x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.key' @:: Lens' EnvironmentVariables'KeyValuesEntry Data.Text.Text@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.value' @:: Lens' EnvironmentVariables'KeyValuesEntry Data.Text.Text@ -}
data EnvironmentVariables'KeyValuesEntry
  = EnvironmentVariables'KeyValuesEntry'_constructor {_EnvironmentVariables'KeyValuesEntry'key :: !Data.Text.Text,
                                                      _EnvironmentVariables'KeyValuesEntry'value :: !Data.Text.Text,
                                                      _EnvironmentVariables'KeyValuesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnvironmentVariables'KeyValuesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnvironmentVariables'KeyValuesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentVariables'KeyValuesEntry'key
           (\ x__ y__
              -> x__ {_EnvironmentVariables'KeyValuesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentVariables'KeyValuesEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentVariables'KeyValuesEntry'value
           (\ x__ y__
              -> x__ {_EnvironmentVariables'KeyValuesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnvironmentVariables'KeyValuesEntry where
  messageName _
    = Data.Text.pack
        "envoy.extensions.wasm.v3.EnvironmentVariables.KeyValuesEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOKeyValuesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentVariables'KeyValuesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentVariables'KeyValuesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnvironmentVariables'KeyValuesEntry'_unknownFields
        (\ x__ y__
           -> x__ {_EnvironmentVariables'KeyValuesEntry'_unknownFields = y__})
  defMessage
    = EnvironmentVariables'KeyValuesEntry'_constructor
        {_EnvironmentVariables'KeyValuesEntry'key = Data.ProtoLens.fieldDefault,
         _EnvironmentVariables'KeyValuesEntry'value = Data.ProtoLens.fieldDefault,
         _EnvironmentVariables'KeyValuesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnvironmentVariables'KeyValuesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser EnvironmentVariables'KeyValuesEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
          (do loop Data.ProtoLens.defMessage) "KeyValuesEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData EnvironmentVariables'KeyValuesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnvironmentVariables'KeyValuesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnvironmentVariables'KeyValuesEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_EnvironmentVariables'KeyValuesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.name' @:: Lens' PluginConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.rootId' @:: Lens' PluginConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.configuration' @:: Lens' PluginConfig Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.maybe'configuration' @:: Lens' PluginConfig (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.failOpen' @:: Lens' PluginConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.capabilityRestrictionConfig' @:: Lens' PluginConfig CapabilityRestrictionConfig@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.maybe'capabilityRestrictionConfig' @:: Lens' PluginConfig (Prelude.Maybe CapabilityRestrictionConfig)@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.maybe'vm' @:: Lens' PluginConfig (Prelude.Maybe PluginConfig'Vm)@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.maybe'vmConfig' @:: Lens' PluginConfig (Prelude.Maybe VmConfig)@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.vmConfig' @:: Lens' PluginConfig VmConfig@ -}
data PluginConfig
  = PluginConfig'_constructor {_PluginConfig'name :: !Data.Text.Text,
                               _PluginConfig'rootId :: !Data.Text.Text,
                               _PluginConfig'configuration :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                               _PluginConfig'failOpen :: !Prelude.Bool,
                               _PluginConfig'capabilityRestrictionConfig :: !(Prelude.Maybe CapabilityRestrictionConfig),
                               _PluginConfig'vm :: !(Prelude.Maybe PluginConfig'Vm),
                               _PluginConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PluginConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PluginConfig'Vm
  = PluginConfig'VmConfig !VmConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PluginConfig "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginConfig'name (\ x__ y__ -> x__ {_PluginConfig'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginConfig "rootId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginConfig'rootId
           (\ x__ y__ -> x__ {_PluginConfig'rootId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginConfig "configuration" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginConfig'configuration
           (\ x__ y__ -> x__ {_PluginConfig'configuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PluginConfig "maybe'configuration" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginConfig'configuration
           (\ x__ y__ -> x__ {_PluginConfig'configuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginConfig "failOpen" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginConfig'failOpen
           (\ x__ y__ -> x__ {_PluginConfig'failOpen = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginConfig "capabilityRestrictionConfig" CapabilityRestrictionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginConfig'capabilityRestrictionConfig
           (\ x__ y__
              -> x__ {_PluginConfig'capabilityRestrictionConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PluginConfig "maybe'capabilityRestrictionConfig" (Prelude.Maybe CapabilityRestrictionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginConfig'capabilityRestrictionConfig
           (\ x__ y__
              -> x__ {_PluginConfig'capabilityRestrictionConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginConfig "maybe'vm" (Prelude.Maybe PluginConfig'Vm) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginConfig'vm (\ x__ y__ -> x__ {_PluginConfig'vm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginConfig "maybe'vmConfig" (Prelude.Maybe VmConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginConfig'vm (\ x__ y__ -> x__ {_PluginConfig'vm = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginConfig'VmConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginConfig'VmConfig y__))
instance Data.ProtoLens.Field.HasField PluginConfig "vmConfig" VmConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginConfig'vm (\ x__ y__ -> x__ {_PluginConfig'vm = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginConfig'VmConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginConfig'VmConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message PluginConfig where
  messageName _
    = Data.Text.pack "envoy.extensions.wasm.v3.PluginConfig"
  packedMessageDescriptor _
    = "\n\
      \\fPluginConfig\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\ETB\n\
      \\aroot_id\CAN\STX \SOH(\tR\ACKrootId\DC2A\n\
      \\tvm_config\CAN\ETX \SOH(\v2\".envoy.extensions.wasm.v3.VmConfigH\NULR\bvmConfig\DC2:\n\
      \\rconfiguration\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\rconfiguration\DC2\ESC\n\
      \\tfail_open\CAN\ENQ \SOH(\bR\bfailOpen\DC2y\n\
      \\GScapability_restriction_config\CAN\ACK \SOH(\v25.envoy.extensions.wasm.v3.CapabilityRestrictionConfigR\ESCcapabilityRestrictionConfigB\EOT\n\
      \\STXvm"
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
              Data.ProtoLens.FieldDescriptor PluginConfig
        rootId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"rootId")) ::
              Data.ProtoLens.FieldDescriptor PluginConfig
        configuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "configuration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'configuration")) ::
              Data.ProtoLens.FieldDescriptor PluginConfig
        failOpen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fail_open"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failOpen")) ::
              Data.ProtoLens.FieldDescriptor PluginConfig
        capabilityRestrictionConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "capability_restriction_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CapabilityRestrictionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'capabilityRestrictionConfig")) ::
              Data.ProtoLens.FieldDescriptor PluginConfig
        vmConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vm_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor VmConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vmConfig")) ::
              Data.ProtoLens.FieldDescriptor PluginConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, rootId__field_descriptor),
           (Data.ProtoLens.Tag 4, configuration__field_descriptor),
           (Data.ProtoLens.Tag 5, failOpen__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            capabilityRestrictionConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, vmConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PluginConfig'_unknownFields
        (\ x__ y__ -> x__ {_PluginConfig'_unknownFields = y__})
  defMessage
    = PluginConfig'_constructor
        {_PluginConfig'name = Data.ProtoLens.fieldDefault,
         _PluginConfig'rootId = Data.ProtoLens.fieldDefault,
         _PluginConfig'configuration = Prelude.Nothing,
         _PluginConfig'failOpen = Data.ProtoLens.fieldDefault,
         _PluginConfig'capabilityRestrictionConfig = Prelude.Nothing,
         _PluginConfig'vm = Prelude.Nothing,
         _PluginConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PluginConfig -> Data.ProtoLens.Encoding.Bytes.Parser PluginConfig
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "root_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rootId") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "configuration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configuration") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fail_open"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"failOpen") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "capability_restriction_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"capabilityRestrictionConfig")
                                     y
                                     x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "vm_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vmConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PluginConfig"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"rootId") _x
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
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'configuration") _x
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"failOpen") _x
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
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'capabilityRestrictionConfig")
                                _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vm") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just (PluginConfig'VmConfig v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData PluginConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PluginConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PluginConfig'name x__)
                (Control.DeepSeq.deepseq
                   (_PluginConfig'rootId x__)
                   (Control.DeepSeq.deepseq
                      (_PluginConfig'configuration x__)
                      (Control.DeepSeq.deepseq
                         (_PluginConfig'failOpen x__)
                         (Control.DeepSeq.deepseq
                            (_PluginConfig'capabilityRestrictionConfig x__)
                            (Control.DeepSeq.deepseq (_PluginConfig'vm x__) ()))))))
instance Control.DeepSeq.NFData PluginConfig'Vm where
  rnf (PluginConfig'VmConfig x__) = Control.DeepSeq.rnf x__
_PluginConfig'VmConfig ::
  Data.ProtoLens.Prism.Prism' PluginConfig'Vm VmConfig
_PluginConfig'VmConfig
  = Data.ProtoLens.Prism.prism'
      PluginConfig'VmConfig
      (\ p__
         -> case p__ of {
              (PluginConfig'VmConfig p__val) -> Prelude.Just p__val })
{- | Fields :
      -}
data SanitizationConfig
  = SanitizationConfig'_constructor {_SanitizationConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SanitizationConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message SanitizationConfig where
  messageName _
    = Data.Text.pack "envoy.extensions.wasm.v3.SanitizationConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC2SanitizationConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SanitizationConfig'_unknownFields
        (\ x__ y__ -> x__ {_SanitizationConfig'_unknownFields = y__})
  defMessage
    = SanitizationConfig'_constructor
        {_SanitizationConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SanitizationConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser SanitizationConfig
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
          (do loop Data.ProtoLens.defMessage) "SanitizationConfig"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData SanitizationConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SanitizationConfig'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.vmId' @:: Lens' VmConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.runtime' @:: Lens' VmConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.code' @:: Lens' VmConfig Proto.Envoy.Config.Core.V3.Base.AsyncDataSource@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.maybe'code' @:: Lens' VmConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.AsyncDataSource)@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.configuration' @:: Lens' VmConfig Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.maybe'configuration' @:: Lens' VmConfig (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.allowPrecompiled' @:: Lens' VmConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.nackOnCodeCacheMiss' @:: Lens' VmConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.environmentVariables' @:: Lens' VmConfig EnvironmentVariables@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.maybe'environmentVariables' @:: Lens' VmConfig (Prelude.Maybe EnvironmentVariables)@ -}
data VmConfig
  = VmConfig'_constructor {_VmConfig'vmId :: !Data.Text.Text,
                           _VmConfig'runtime :: !Data.Text.Text,
                           _VmConfig'code :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.AsyncDataSource),
                           _VmConfig'configuration :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                           _VmConfig'allowPrecompiled :: !Prelude.Bool,
                           _VmConfig'nackOnCodeCacheMiss :: !Prelude.Bool,
                           _VmConfig'environmentVariables :: !(Prelude.Maybe EnvironmentVariables),
                           _VmConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VmConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VmConfig "vmId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VmConfig'vmId (\ x__ y__ -> x__ {_VmConfig'vmId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VmConfig "runtime" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VmConfig'runtime (\ x__ y__ -> x__ {_VmConfig'runtime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VmConfig "code" Proto.Envoy.Config.Core.V3.Base.AsyncDataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VmConfig'code (\ x__ y__ -> x__ {_VmConfig'code = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField VmConfig "maybe'code" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.AsyncDataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VmConfig'code (\ x__ y__ -> x__ {_VmConfig'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VmConfig "configuration" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VmConfig'configuration
           (\ x__ y__ -> x__ {_VmConfig'configuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField VmConfig "maybe'configuration" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VmConfig'configuration
           (\ x__ y__ -> x__ {_VmConfig'configuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VmConfig "allowPrecompiled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VmConfig'allowPrecompiled
           (\ x__ y__ -> x__ {_VmConfig'allowPrecompiled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VmConfig "nackOnCodeCacheMiss" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VmConfig'nackOnCodeCacheMiss
           (\ x__ y__ -> x__ {_VmConfig'nackOnCodeCacheMiss = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VmConfig "environmentVariables" EnvironmentVariables where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VmConfig'environmentVariables
           (\ x__ y__ -> x__ {_VmConfig'environmentVariables = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField VmConfig "maybe'environmentVariables" (Prelude.Maybe EnvironmentVariables) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VmConfig'environmentVariables
           (\ x__ y__ -> x__ {_VmConfig'environmentVariables = y__}))
        Prelude.id
instance Data.ProtoLens.Message VmConfig where
  messageName _ = Data.Text.pack "envoy.extensions.wasm.v3.VmConfig"
  packedMessageDescriptor _
    = "\n\
      \\bVmConfig\DC2\DC3\n\
      \\ENQvm_id\CAN\SOH \SOH(\tR\EOTvmId\DC2!\n\
      \\aruntime\CAN\STX \SOH(\tR\aruntimeB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\EOTcode\CAN\ETX \SOH(\v2%.envoy.config.core.v3.AsyncDataSourceR\EOTcode\DC2:\n\
      \\rconfiguration\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\rconfiguration\DC2+\n\
      \\DC1allow_precompiled\CAN\ENQ \SOH(\bR\DLEallowPrecompiled\DC24\n\
      \\ETBnack_on_code_cache_miss\CAN\ACK \SOH(\bR\DC3nackOnCodeCacheMiss\DC2c\n\
      \\NAKenvironment_variables\CAN\a \SOH(\v2..envoy.extensions.wasm.v3.EnvironmentVariablesR\DC4environmentVariables"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vmId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vm_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"vmId")) ::
              Data.ProtoLens.FieldDescriptor VmConfig
        runtime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runtime")) ::
              Data.ProtoLens.FieldDescriptor VmConfig
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.AsyncDataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'code")) ::
              Data.ProtoLens.FieldDescriptor VmConfig
        configuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "configuration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'configuration")) ::
              Data.ProtoLens.FieldDescriptor VmConfig
        allowPrecompiled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_precompiled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allowPrecompiled")) ::
              Data.ProtoLens.FieldDescriptor VmConfig
        nackOnCodeCacheMiss__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nack_on_code_cache_miss"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nackOnCodeCacheMiss")) ::
              Data.ProtoLens.FieldDescriptor VmConfig
        environmentVariables__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "environment_variables"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentVariables)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'environmentVariables")) ::
              Data.ProtoLens.FieldDescriptor VmConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, vmId__field_descriptor),
           (Data.ProtoLens.Tag 2, runtime__field_descriptor),
           (Data.ProtoLens.Tag 3, code__field_descriptor),
           (Data.ProtoLens.Tag 4, configuration__field_descriptor),
           (Data.ProtoLens.Tag 5, allowPrecompiled__field_descriptor),
           (Data.ProtoLens.Tag 6, nackOnCodeCacheMiss__field_descriptor),
           (Data.ProtoLens.Tag 7, environmentVariables__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VmConfig'_unknownFields
        (\ x__ y__ -> x__ {_VmConfig'_unknownFields = y__})
  defMessage
    = VmConfig'_constructor
        {_VmConfig'vmId = Data.ProtoLens.fieldDefault,
         _VmConfig'runtime = Data.ProtoLens.fieldDefault,
         _VmConfig'code = Prelude.Nothing,
         _VmConfig'configuration = Prelude.Nothing,
         _VmConfig'allowPrecompiled = Data.ProtoLens.fieldDefault,
         _VmConfig'nackOnCodeCacheMiss = Data.ProtoLens.fieldDefault,
         _VmConfig'environmentVariables = Prelude.Nothing,
         _VmConfig'_unknownFields = []}
  parseMessage
    = let
        loop :: VmConfig -> Data.ProtoLens.Encoding.Bytes.Parser VmConfig
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
                                       "vm_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vmId") y x)
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
                                       "runtime"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runtime") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "code"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "configuration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configuration") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "allow_precompiled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowPrecompiled") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nack_on_code_cache_miss"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nackOnCodeCacheMiss") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "environment_variables"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"environmentVariables") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VmConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"vmId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runtime") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'code") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'configuration") _x
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
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"allowPrecompiled") _x
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
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"nackOnCodeCacheMiss") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0)
                                        _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'environmentVariables") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData VmConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VmConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VmConfig'vmId x__)
                (Control.DeepSeq.deepseq
                   (_VmConfig'runtime x__)
                   (Control.DeepSeq.deepseq
                      (_VmConfig'code x__)
                      (Control.DeepSeq.deepseq
                         (_VmConfig'configuration x__)
                         (Control.DeepSeq.deepseq
                            (_VmConfig'allowPrecompiled x__)
                            (Control.DeepSeq.deepseq
                               (_VmConfig'nackOnCodeCacheMiss x__)
                               (Control.DeepSeq.deepseq
                                  (_VmConfig'environmentVariables x__) ())))))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.config' @:: Lens' WasmService PluginConfig@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.maybe'config' @:: Lens' WasmService (Prelude.Maybe PluginConfig)@
         * 'Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields.singleton' @:: Lens' WasmService Prelude.Bool@ -}
data WasmService
  = WasmService'_constructor {_WasmService'config :: !(Prelude.Maybe PluginConfig),
                              _WasmService'singleton :: !Prelude.Bool,
                              _WasmService'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WasmService where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WasmService "config" PluginConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WasmService'config (\ x__ y__ -> x__ {_WasmService'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WasmService "maybe'config" (Prelude.Maybe PluginConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WasmService'config (\ x__ y__ -> x__ {_WasmService'config = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WasmService "singleton" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WasmService'singleton
           (\ x__ y__ -> x__ {_WasmService'singleton = y__}))
        Prelude.id
instance Data.ProtoLens.Message WasmService where
  messageName _
    = Data.Text.pack "envoy.extensions.wasm.v3.WasmService"
  packedMessageDescriptor _
    = "\n\
      \\vWasmService\DC2>\n\
      \\ACKconfig\CAN\SOH \SOH(\v2&.envoy.extensions.wasm.v3.PluginConfigR\ACKconfig\DC2\FS\n\
      \\tsingleton\CAN\STX \SOH(\bR\tsingleton"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PluginConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor WasmService
        singleton__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "singleton"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"singleton")) ::
              Data.ProtoLens.FieldDescriptor WasmService
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, config__field_descriptor),
           (Data.ProtoLens.Tag 2, singleton__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WasmService'_unknownFields
        (\ x__ y__ -> x__ {_WasmService'_unknownFields = y__})
  defMessage
    = WasmService'_constructor
        {_WasmService'config = Prelude.Nothing,
         _WasmService'singleton = Data.ProtoLens.fieldDefault,
         _WasmService'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WasmService -> Data.ProtoLens.Encoding.Bytes.Parser WasmService
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
                                       "config"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "singleton"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"singleton") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WasmService"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"singleton") _x
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
instance Control.DeepSeq.NFData WasmService where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WasmService'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WasmService'config x__)
                (Control.DeepSeq.deepseq (_WasmService'singleton x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#envoy/extensions/wasm/v3/wasm.proto\DC2\CANenvoy.extensions.wasm.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\EMgoogle/protobuf/any.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\151\STX\n\
    \\ESCCapabilityRestrictionConfig\DC2\129\SOH\n\
    \\DC4allowed_capabilities\CAN\SOH \ETX(\v2N.envoy.extensions.wasm.v3.CapabilityRestrictionConfig.AllowedCapabilitiesEntryR\DC3allowedCapabilities\SUBt\n\
    \\CANAllowedCapabilitiesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2B\n\
    \\ENQvalue\CAN\STX \SOH(\v2,.envoy.extensions.wasm.v3.SanitizationConfigR\ENQvalue:\STX8\SOH\"\DC4\n\
    \\DC2SanitizationConfig\"\129\ETX\n\
    \\bVmConfig\DC2\DC3\n\
    \\ENQvm_id\CAN\SOH \SOH(\tR\EOTvmId\DC2!\n\
    \\aruntime\CAN\STX \SOH(\tR\aruntimeB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
    \\EOTcode\CAN\ETX \SOH(\v2%.envoy.config.core.v3.AsyncDataSourceR\EOTcode\DC2:\n\
    \\rconfiguration\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\rconfiguration\DC2+\n\
    \\DC1allow_precompiled\CAN\ENQ \SOH(\bR\DLEallowPrecompiled\DC24\n\
    \\ETBnack_on_code_cache_miss\CAN\ACK \SOH(\bR\DC3nackOnCodeCacheMiss\DC2c\n\
    \\NAKenvironment_variables\CAN\a \SOH(\v2..envoy.extensions.wasm.v3.EnvironmentVariablesR\DC4environmentVariables\"\214\SOH\n\
    \\DC4EnvironmentVariables\DC2\"\n\
    \\rhost_env_keys\CAN\SOH \ETX(\tR\vhostEnvKeys\DC2\\\n\
    \\n\
    \key_values\CAN\STX \ETX(\v2=.envoy.extensions.wasm.v3.EnvironmentVariables.KeyValuesEntryR\tkeyValues\SUB<\n\
    \\SOKeyValuesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\"\216\STX\n\
    \\fPluginConfig\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\ETB\n\
    \\aroot_id\CAN\STX \SOH(\tR\ACKrootId\DC2A\n\
    \\tvm_config\CAN\ETX \SOH(\v2\".envoy.extensions.wasm.v3.VmConfigH\NULR\bvmConfig\DC2:\n\
    \\rconfiguration\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\rconfiguration\DC2\ESC\n\
    \\tfail_open\CAN\ENQ \SOH(\bR\bfailOpen\DC2y\n\
    \\GScapability_restriction_config\CAN\ACK \SOH(\v25.envoy.extensions.wasm.v3.CapabilityRestrictionConfigR\ESCcapabilityRestrictionConfigB\EOT\n\
    \\STXvm\"k\n\
    \\vWasmService\DC2>\n\
    \\ACKconfig\CAN\SOH \SOH(\v2&.envoy.extensions.wasm.v3.PluginConfigR\ACKconfig\DC2\FS\n\
    \\tsingleton\CAN\STX \SOH(\bR\tsingletonB=\n\
    \&io.envoyproxy.envoy.extensions.wasm.v3B\tWasmProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\247\&8\n\
    \\a\DC2\ENQ\NUL\NUL\164\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\152\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL!\SOH\SUBM Configuration for restricting Proxy-Wasm capabilities available to modules.\n\
    \2= [#protodoc-title: Wasm]\n\
    \ [#extension: envoy.bootstrap.wasm]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b#\n\
    \\202\ENQ\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX \STX;\SUB\188\ENQ The Proxy-Wasm capabilities which will be allowed. Capabilities are mapped by\n\
    \ name. The *SanitizationConfig* which each capability maps to is currently unimplemented and ignored,\n\
    \ and so should be left empty.\n\
    \\n\
    \ The capability names are given in the\n\
    \ `Proxy-Wasm ABI <https://github.com/proxy-wasm/spec/tree/master/abi-versions/vNEXT>`_.\n\
    \ Additionally, the following WASI capabilities from\n\
    \ `this list <https://github.com/WebAssembly/WASI/blob/master/phases/snapshot/docs.md#modules>`_\n\
    \ are implemented and can be allowed:\n\
    \ *fd_write*, *fd_read*, *fd_seek*, *fd_close*, *fd_fdstat_get*, *environ_get*, *environ_sizes_get*,\n\
    \ *args_get*, *args_sizes_get*, *proc_exit*, *clock_time_get*, *random_get*.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX \STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX \"6\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX 9:\n\
    \y\n\
    \\STX\EOT\SOH\DC2\EOT&\NUL'\SOH\SUBm Configuration for sanitization of inputs to an allowed capability.\n\
    \\n\
    \ NOTE: This is currently unimplemented.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX&\b\SUB\n\
    \A\n\
    \\STX\EOT\STX\DC2\EOT+\NULk\SOH\SUB5 Configuration for a Wasm VM.\n\
    \ [#next-free-field: 8]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX+\b\DLE\n\
    \\178\ETX\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX1\STX\DC3\SUB\164\ETX An ID which will be used along with a hash of the wasm code (or the name of the registered Null\n\
    \ VM plugin) to determine which VM will be used for the plugin. All plugins which use the same\n\
    \ *vm_id* and code will use the same VM. May be left blank. Sharing a VM between plugins can\n\
    \ reduce memory utilization and make sharing of data easier which may have security implications.\n\
    \ [#comment: TODO: add ref for details.]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX1\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX1\DC1\DC2\n\
    \\242\b\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXP\STX>\SUB\228\b The Wasm runtime type.\n\
    \ Available Wasm runtime types are registered as extensions. The following runtimes are included\n\
    \ in Envoy code base:\n\
    \\n\
    \ .. _extension_envoy.wasm.runtime.null:\n\
    \\n\
    \ **envoy.wasm.runtime.null**: Null sandbox, the Wasm module must be compiled and linked into the\n\
    \ Envoy binary. The registered name is given in the *code* field as *inline_string*.\n\
    \\n\
    \ .. _extension_envoy.wasm.runtime.v8:\n\
    \\n\
    \ **envoy.wasm.runtime.v8**: `V8 <https://v8.dev/>`_-based WebAssembly runtime.\n\
    \\n\
    \ .. _extension_envoy.wasm.runtime.wamr:\n\
    \\n\
    \ **envoy.wasm.runtime.wamr**: `WAMR <https://github.com/bytecodealliance/wasm-micro-runtime/>`_-based WebAssembly runtime.\n\
    \ This runtime is not enabled in the official build.\n\
    \\n\
    \ .. _extension_envoy.wasm.runtime.wavm:\n\
    \\n\
    \ **envoy.wasm.runtime.wavm**: `WAVM <https://wavm.github.io/>`_-based WebAssembly runtime.\n\
    \ This runtime is not enabled in the official build.\n\
    \\n\
    \ .. _extension_envoy.wasm.runtime.wasmtime:\n\
    \\n\
    \ **envoy.wasm.runtime.wasmtime**: `Wasmtime <https://wasmtime.dev/>`_-based WebAssembly runtime.\n\
    \ This runtime is not enabled in the official build.\n\
    \\n\
    \ [#extension-category: envoy.wasm.runtime]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXP\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXP\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXP\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXP\NAK=\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\175\b\SO\DC2\ETXP\SYN<\n\
    \5\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXS\STX*\SUB( The Wasm code that Envoy will execute.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXS\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXS!%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXS()\n\
    \\150\STX\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXY\STX(\SUB\136\STX The Wasm configuration used in initialization of a new VM\n\
    \ (proxy_on_start). `google.protobuf.Struct` is serialized as JSON before\n\
    \ passing it to the plugin. `google.protobuf.BytesValue` and\n\
    \ `google.protobuf.StringValue` are passed directly without the wrapper.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETXY\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXY\SYN#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXY&'\n\
    \\188\SOH\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX^\STX\GS\SUB\174\SOH Allow the wasm file to include pre-compiled code on VMs which support it.\n\
    \ Warning: this should only be enable for trusted sources as the precompiled code is not\n\
    \ verified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX^\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX^\a\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX^\ESC\FS\n\
    \\239\SOH\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXc\STX#\SUB\225\SOH If true and the code needs to be remotely fetched and it is not in the cache then NACK the configuration\n\
    \ update and do a background fetch to fill the cache, otherwise fetch the code asynchronously and enter\n\
    \ warming state.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETXc\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXc\a\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXc!\"\n\
    \\198\ETX\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETXj\STX1\SUB\184\ETX Specifies environment variables to be injected to this VM which will be available through\n\
    \ WASI's ``environ_get`` and ``environ_get_sizes`` system calls. Note that these functions are mostly implicitly\n\
    \ called in your language's standard library, so you do not need to call them directly and you can access to env\n\
    \ vars just like when you do on native platforms.\n\
    \ Warning: Envoy rejects the configuration if there's conflict of key space.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\ETXj\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETXj\ETB,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETXj/0\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOTm\NULt\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXm\b\FS\n\
    \\244\SOH\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXp\STX$\SUB\230\SOH The keys of *Envoy's* environment variables exposed to this VM. In other words, if a key exists in Envoy's environment\n\
    \ variables, then that key-value pair will be injected. Note that if a key does not exist, it will be ignored.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETXp\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXp\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXp\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXp\"#\n\
    \e\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXs\STX%\SUBX Explicitly given key-value pairs to be injected to this VM in the form of \"KEY=VALUE\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXs\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXs\SYN \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXs#$\n\
    \d\n\
    \\STX\EOT\EOT\DC2\ENQx\NUL\153\SOH\SOH\SUBW Base Configuration for Wasm Plugins e.g. filters and services.\n\
    \ [#next-free-field: 7]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXx\b\DC4\n\
    \\206\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX|\STX\DC2\SUB\192\SOH A unique name for a filters/services in a VM for use in identifying the filter/service if\n\
    \ multiple filters/services are handled by the same *vm_id* and *root_id* and for\n\
    \ logging/debugging.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX|\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX|\t\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX|\DLE\DC1\n\
    \\149\STX\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\129\SOH\STX\NAK\SUB\134\STX A unique ID for a set of filters/services in a VM which will share a RootContext and Contexts\n\
    \ if applicable (e.g. an Wasm HttpFilter and an Wasm AccessLog). If left blank, all\n\
    \ filters/services with a blank root_id with the same *vm_id* will share Context(s).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\129\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\129\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\129\SOH\DC3\DC4\n\
    \;\n\
    \\EOT\EOT\EOT\b\NUL\DC2\ACK\132\SOH\STX\135\SOH\ETX\SUB+ Configuration for finding or starting VM.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\b\NUL\SOH\DC2\EOT\132\SOH\b\n\
    \\n\
    \8\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\133\SOH\EOT\ESC\"* TODO: add referential VM configurations.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\133\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\133\SOH\r\SYN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\133\SOH\EM\SUB\n\
    \\173\STX\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\142\SOH\STX(\SUB\158\STX Filter/service configuration used to configure or reconfigure a plugin\n\
    \ (proxy_on_configuration).\n\
    \ `google.protobuf.Struct` is serialized as JSON before\n\
    \ passing it to the plugin. `google.protobuf.BytesValue` and\n\
    \ `google.protobuf.StringValue` are passed directly without the wrapper.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\EOT\142\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\142\SOH\SYN#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\142\SOH&'\n\
    \\254\ETX\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOT\149\SOH\STX\NAK\SUB\239\ETX If there is a fatal error on the VM (e.g. exception, abort(), on_start or on_configure return false),\n\
    \ then all plugins associated with the VM will either fail closed (by default), e.g. by returning an HTTP 503 error,\n\
    \ or fail open (if 'fail_open' is set to true) by bypassing the filter. Note: when on_start or on_configure return false\n\
    \ during xDS updates the xDS configuration will be rejected and when on_start or on_configuration return false on initial\n\
    \ startup the proxy will not start.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\EOT\149\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\EOT\149\SOH\a\DLE\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\EOT\149\SOH\DC3\DC4\n\
    \[\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\EOT\152\SOH\STX@\SUBM Configuration for restricting Proxy-Wasm capabilities available to modules.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ACK\DC2\EOT\152\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\EOT\152\SOH\RS;\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\EOT\152\SOH>?\n\
    \\184\SOH\n\
    \\STX\EOT\ENQ\DC2\ACK\157\SOH\NUL\164\SOH\SOH\SUB\169\SOH WasmService is configured as a built-in *envoy.wasm_service* :ref:`WasmService\n\
    \ <config_wasm_service>` This opaque configuration will be used to create a Wasm Service.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\157\SOH\b\DC3\n\
    \-\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\159\SOH\STX\SUB\SUB\US General plugin configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\159\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\159\SOH\SI\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\159\SOH\CAN\EM\n\
    \\131\SOH\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\163\SOH\STX\NAK\SUBu If true, create a single VM rather than creating one VM per worker. Such a singleton can\n\
    \ not be used with filters.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\163\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\163\SOH\a\DLE\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\163\SOH\DC3\DC4b\ACKproto3"