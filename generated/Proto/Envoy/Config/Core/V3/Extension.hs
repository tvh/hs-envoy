{- This file was auto-generated from envoy/config/core/v3/extension.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.Extension (
        ExtensionConfigSource(), TypedExtensionConfig()
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
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Extension_Fields.configSource' @:: Lens' ExtensionConfigSource Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Config.Core.V3.Extension_Fields.maybe'configSource' @:: Lens' ExtensionConfigSource (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@
         * 'Proto.Envoy.Config.Core.V3.Extension_Fields.defaultConfig' @:: Lens' ExtensionConfigSource Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Config.Core.V3.Extension_Fields.maybe'defaultConfig' @:: Lens' ExtensionConfigSource (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Core.V3.Extension_Fields.applyDefaultConfigWithoutWarming' @:: Lens' ExtensionConfigSource Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.Extension_Fields.typeUrls' @:: Lens' ExtensionConfigSource [Data.Text.Text]@
         * 'Proto.Envoy.Config.Core.V3.Extension_Fields.vec'typeUrls' @:: Lens' ExtensionConfigSource (Data.Vector.Vector Data.Text.Text)@ -}
data ExtensionConfigSource
  = ExtensionConfigSource'_constructor {_ExtensionConfigSource'configSource :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                                        _ExtensionConfigSource'defaultConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                        _ExtensionConfigSource'applyDefaultConfigWithoutWarming :: !Prelude.Bool,
                                        _ExtensionConfigSource'typeUrls :: !(Data.Vector.Vector Data.Text.Text),
                                        _ExtensionConfigSource'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtensionConfigSource where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExtensionConfigSource "configSource" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionConfigSource'configSource
           (\ x__ y__ -> x__ {_ExtensionConfigSource'configSource = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtensionConfigSource "maybe'configSource" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionConfigSource'configSource
           (\ x__ y__ -> x__ {_ExtensionConfigSource'configSource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtensionConfigSource "defaultConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionConfigSource'defaultConfig
           (\ x__ y__ -> x__ {_ExtensionConfigSource'defaultConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtensionConfigSource "maybe'defaultConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionConfigSource'defaultConfig
           (\ x__ y__ -> x__ {_ExtensionConfigSource'defaultConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtensionConfigSource "applyDefaultConfigWithoutWarming" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionConfigSource'applyDefaultConfigWithoutWarming
           (\ x__ y__
              -> x__
                   {_ExtensionConfigSource'applyDefaultConfigWithoutWarming = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtensionConfigSource "typeUrls" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionConfigSource'typeUrls
           (\ x__ y__ -> x__ {_ExtensionConfigSource'typeUrls = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExtensionConfigSource "vec'typeUrls" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionConfigSource'typeUrls
           (\ x__ y__ -> x__ {_ExtensionConfigSource'typeUrls = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExtensionConfigSource where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.ExtensionConfigSource"
  packedMessageDescriptor _
    = "\n\
      \\NAKExtensionConfigSource\DC2Q\n\
      \\rconfig_source\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\fconfigSourceB\b\250B\ENQ\162\SOH\STX\b\SOH\DC2;\n\
      \\SOdefault_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\rdefaultConfig\DC2N\n\
      \$apply_default_config_without_warming\CAN\ETX \SOH(\bR applyDefaultConfigWithoutWarming\DC2%\n\
      \\ttype_urls\CAN\EOT \ETX(\tR\btypeUrlsB\b\250B\ENQ\146\SOH\STX\b\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        configSource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_source"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'configSource")) ::
              Data.ProtoLens.FieldDescriptor ExtensionConfigSource
        defaultConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'defaultConfig")) ::
              Data.ProtoLens.FieldDescriptor ExtensionConfigSource
        applyDefaultConfigWithoutWarming__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "apply_default_config_without_warming"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"applyDefaultConfigWithoutWarming")) ::
              Data.ProtoLens.FieldDescriptor ExtensionConfigSource
        typeUrls__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_urls"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"typeUrls")) ::
              Data.ProtoLens.FieldDescriptor ExtensionConfigSource
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, configSource__field_descriptor),
           (Data.ProtoLens.Tag 2, defaultConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            applyDefaultConfigWithoutWarming__field_descriptor),
           (Data.ProtoLens.Tag 4, typeUrls__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtensionConfigSource'_unknownFields
        (\ x__ y__ -> x__ {_ExtensionConfigSource'_unknownFields = y__})
  defMessage
    = ExtensionConfigSource'_constructor
        {_ExtensionConfigSource'configSource = Prelude.Nothing,
         _ExtensionConfigSource'defaultConfig = Prelude.Nothing,
         _ExtensionConfigSource'applyDefaultConfigWithoutWarming = Data.ProtoLens.fieldDefault,
         _ExtensionConfigSource'typeUrls = Data.Vector.Generic.empty,
         _ExtensionConfigSource'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtensionConfigSource
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ExtensionConfigSource
        loop x mutable'typeUrls
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'typeUrls <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'typeUrls)
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
                              (Data.ProtoLens.Field.field @"vec'typeUrls") frozen'typeUrls x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "config_source"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configSource") y x)
                                  mutable'typeUrls
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "default_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultConfig") y x)
                                  mutable'typeUrls
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "apply_default_config_without_warming"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"applyDefaultConfigWithoutWarming")
                                     y
                                     x)
                                  mutable'typeUrls
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "type_urls"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'typeUrls y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'typeUrls
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'typeUrls <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'typeUrls)
          "ExtensionConfigSource"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'configSource") _x
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
                       (Data.ProtoLens.Field.field @"maybe'defaultConfig") _x
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
                            (Data.ProtoLens.Field.field @"applyDefaultConfigWithoutWarming") _x
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
                                    Data.Text.Encoding.encodeUtf8
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'typeUrls") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ExtensionConfigSource where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtensionConfigSource'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtensionConfigSource'configSource x__)
                (Control.DeepSeq.deepseq
                   (_ExtensionConfigSource'defaultConfig x__)
                   (Control.DeepSeq.deepseq
                      (_ExtensionConfigSource'applyDefaultConfigWithoutWarming x__)
                      (Control.DeepSeq.deepseq
                         (_ExtensionConfigSource'typeUrls x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Extension_Fields.name' @:: Lens' TypedExtensionConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Extension_Fields.typedConfig' @:: Lens' TypedExtensionConfig Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Config.Core.V3.Extension_Fields.maybe'typedConfig' @:: Lens' TypedExtensionConfig (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data TypedExtensionConfig
  = TypedExtensionConfig'_constructor {_TypedExtensionConfig'name :: !Data.Text.Text,
                                       _TypedExtensionConfig'typedConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                       _TypedExtensionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TypedExtensionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TypedExtensionConfig "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TypedExtensionConfig'name
           (\ x__ y__ -> x__ {_TypedExtensionConfig'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TypedExtensionConfig "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TypedExtensionConfig'typedConfig
           (\ x__ y__ -> x__ {_TypedExtensionConfig'typedConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TypedExtensionConfig "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TypedExtensionConfig'typedConfig
           (\ x__ y__ -> x__ {_TypedExtensionConfig'typedConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message TypedExtensionConfig where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.TypedExtensionConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC4TypedExtensionConfig\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2A\n\
      \\ftyped_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfigB\b\250B\ENQ\162\SOH\STX\b\SOH"
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
              Data.ProtoLens.FieldDescriptor TypedExtensionConfig
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor TypedExtensionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TypedExtensionConfig'_unknownFields
        (\ x__ y__ -> x__ {_TypedExtensionConfig'_unknownFields = y__})
  defMessage
    = TypedExtensionConfig'_constructor
        {_TypedExtensionConfig'name = Data.ProtoLens.fieldDefault,
         _TypedExtensionConfig'typedConfig = Prelude.Nothing,
         _TypedExtensionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TypedExtensionConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser TypedExtensionConfig
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
          (do loop Data.ProtoLens.defMessage) "TypedExtensionConfig"
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
                       (Data.ProtoLens.Field.field @"maybe'typedConfig") _x
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
instance Control.DeepSeq.NFData TypedExtensionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TypedExtensionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TypedExtensionConfig'name x__)
                (Control.DeepSeq.deepseq
                   (_TypedExtensionConfig'typedConfig x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$envoy/config/core/v3/extension.proto\DC2\DC4envoy.config.core.v3\SUB(envoy/config/core/v3/config_source.proto\SUB\EMgoogle/protobuf/any.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"v\n\
    \\DC4TypedExtensionConfig\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2A\n\
    \\ftyped_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfigB\b\250B\ENQ\162\SOH\STX\b\SOH\"\158\STX\n\
    \\NAKExtensionConfigSource\DC2Q\n\
    \\rconfig_source\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\fconfigSourceB\b\250B\ENQ\162\SOH\STX\b\SOH\DC2;\n\
    \\SOdefault_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\rdefaultConfig\DC2N\n\
    \$apply_default_config_without_warming\CAN\ETX \SOH(\bR applyDefaultConfigWithoutWarming\DC2%\n\
    \\ttype_urls\CAN\EOT \ETX(\tR\btypeUrlsB\b\250B\ENQ\146\SOH\STX\b\SOHB>\n\
    \\"io.envoyproxy.envoy.config.core.v3B\SOExtensionProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\209\DC4\n\
    \\ACK\DC2\EOT\NUL\NUL<\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL2\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\192\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL\US\SOH\SUB\133\SOH Message type for extension configuration.\n\
    \ [#next-major-version: revisit all existing typed_config that doesn't use this wrapper.].\n\
    \2, [#protodoc-title: Extension configuration]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\FS\n\
    \\135\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STX;\SUBz The name of an extension. This is not used to select the extension, instead\n\
    \ it serves the role of an opaque identifier.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ETB\DC2:\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\ETB\DC39\n\
    \\206\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\RS\STXQ\SUB\192\STX The typed config for the extension. The type URL will be used to identify\n\
    \ the extension. In the case that the type URL is *udpa.type.v1.TypedStruct*,\n\
    \ the inner type URL of *TypedStruct* will be utilized. See the\n\
    \ :ref:`extension configuration overview\n\
    \ <config_overview_extension_configuration>` for further details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\RS\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\RS\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\RS%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\RS'P\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC4\DC2\ETX\RS(O\n\
    \\192\ACK\n\
    \\STX\EOT\SOH\DC2\EOT,\NUL<\SOH\SUB\179\ACK Configuration source specifier for a late-bound extension configuration. The\n\
    \ parent resource is warmed until all the initial extension configurations are\n\
    \ received, unless the flag to apply the default configuration is set.\n\
    \ Subsequent extension updates are atomic on a per-worker basis. Once an\n\
    \ extension configuration is applied to a request or a connection, it remains\n\
    \ constant for the duration of processing. If the initial delivery of the\n\
    \ extension configuration fails, due to a timeout for example, the optional\n\
    \ default configuration is applied. Without a default configuration, the\n\
    \ extension is disabled, until an extension configuration is received. The\n\
    \ behavior of a disabled extension depends on the context. For example, a\n\
    \ filter chain with a disabled extension filter rejects all incoming streams.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX,\b\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX-\STXK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX-\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX-\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX-\US \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX-!J\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC4\DC2\ETX-\"I\n\
    \\211\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX2\STX)\SUB\197\SOH Optional default configuration to use as the initial configuration if\n\
    \ there is a failure to receive the initial extension configuration or if\n\
    \ `apply_default_config_without_warming` flag is set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX2\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX2\SYN$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX2'(\n\
    \\182\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX7\STX0\SUB\168\SOH Use the default config as the initial configuration without warming and\n\
    \ waiting for the first discovery response. Requires the default configuration\n\
    \ to be supplied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX7\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX7\a+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX7./\n\
    \\147\SOH\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX;\STXM\SUB\133\SOH A set of permitted extension type URLs. Extension configuration updates are rejected\n\
    \ if they do not match any type URL in the set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX;\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX;\RS\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\ETX; L\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\175\b\DC2\DC2\ETX;!Kb\ACKproto3"