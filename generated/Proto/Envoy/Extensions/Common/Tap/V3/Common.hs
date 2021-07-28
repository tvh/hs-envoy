{- This file was auto-generated from envoy/extensions/common/tap/v3/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Common.Tap.V3.Common (
        AdminConfig(), CommonExtensionConfig(),
        CommonExtensionConfig'ConfigType(..),
        _CommonExtensionConfig'AdminConfig,
        _CommonExtensionConfig'StaticConfig
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
import qualified Proto.Envoy.Config.Tap.V3.Common
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Common.Tap.V3.Common_Fields.configId' @:: Lens' AdminConfig Data.Text.Text@ -}
data AdminConfig
  = AdminConfig'_constructor {_AdminConfig'configId :: !Data.Text.Text,
                              _AdminConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AdminConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AdminConfig "configId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdminConfig'configId
           (\ x__ y__ -> x__ {_AdminConfig'configId = y__}))
        Prelude.id
instance Data.ProtoLens.Message AdminConfig where
  messageName _
    = Data.Text.pack "envoy.extensions.common.tap.v3.AdminConfig"
  packedMessageDescriptor _
    = "\n\
      \\vAdminConfig\DC2$\n\
      \\tconfig_id\CAN\SOH \SOH(\tR\bconfigIdB\a\250B\EOTr\STX\DLE\SOH:2\154\197\136\RS-\n\
      \+envoy.config.common.tap.v2alpha.AdminConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        configId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"configId")) ::
              Data.ProtoLens.FieldDescriptor AdminConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, configId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AdminConfig'_unknownFields
        (\ x__ y__ -> x__ {_AdminConfig'_unknownFields = y__})
  defMessage
    = AdminConfig'_constructor
        {_AdminConfig'configId = Data.ProtoLens.fieldDefault,
         _AdminConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AdminConfig -> Data.ProtoLens.Encoding.Bytes.Parser AdminConfig
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
                                       "config_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"configId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AdminConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"configId") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AdminConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AdminConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AdminConfig'configId x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Common.Tap.V3.Common_Fields.maybe'configType' @:: Lens' CommonExtensionConfig (Prelude.Maybe CommonExtensionConfig'ConfigType)@
         * 'Proto.Envoy.Extensions.Common.Tap.V3.Common_Fields.maybe'adminConfig' @:: Lens' CommonExtensionConfig (Prelude.Maybe AdminConfig)@
         * 'Proto.Envoy.Extensions.Common.Tap.V3.Common_Fields.adminConfig' @:: Lens' CommonExtensionConfig AdminConfig@
         * 'Proto.Envoy.Extensions.Common.Tap.V3.Common_Fields.maybe'staticConfig' @:: Lens' CommonExtensionConfig (Prelude.Maybe Proto.Envoy.Config.Tap.V3.Common.TapConfig)@
         * 'Proto.Envoy.Extensions.Common.Tap.V3.Common_Fields.staticConfig' @:: Lens' CommonExtensionConfig Proto.Envoy.Config.Tap.V3.Common.TapConfig@ -}
data CommonExtensionConfig
  = CommonExtensionConfig'_constructor {_CommonExtensionConfig'configType :: !(Prelude.Maybe CommonExtensionConfig'ConfigType),
                                        _CommonExtensionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommonExtensionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CommonExtensionConfig'ConfigType
  = CommonExtensionConfig'AdminConfig !AdminConfig |
    CommonExtensionConfig'StaticConfig !Proto.Envoy.Config.Tap.V3.Common.TapConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CommonExtensionConfig "maybe'configType" (Prelude.Maybe CommonExtensionConfig'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonExtensionConfig'configType
           (\ x__ y__ -> x__ {_CommonExtensionConfig'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonExtensionConfig "maybe'adminConfig" (Prelude.Maybe AdminConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonExtensionConfig'configType
           (\ x__ y__ -> x__ {_CommonExtensionConfig'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommonExtensionConfig'AdminConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CommonExtensionConfig'AdminConfig y__))
instance Data.ProtoLens.Field.HasField CommonExtensionConfig "adminConfig" AdminConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonExtensionConfig'configType
           (\ x__ y__ -> x__ {_CommonExtensionConfig'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommonExtensionConfig'AdminConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CommonExtensionConfig'AdminConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CommonExtensionConfig "maybe'staticConfig" (Prelude.Maybe Proto.Envoy.Config.Tap.V3.Common.TapConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonExtensionConfig'configType
           (\ x__ y__ -> x__ {_CommonExtensionConfig'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommonExtensionConfig'StaticConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CommonExtensionConfig'StaticConfig y__))
instance Data.ProtoLens.Field.HasField CommonExtensionConfig "staticConfig" Proto.Envoy.Config.Tap.V3.Common.TapConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonExtensionConfig'configType
           (\ x__ y__ -> x__ {_CommonExtensionConfig'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommonExtensionConfig'StaticConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CommonExtensionConfig'StaticConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CommonExtensionConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.common.tap.v3.CommonExtensionConfig"
  packedMessageDescriptor _
    = "\n\
      \\NAKCommonExtensionConfig\DC2P\n\
      \\fadmin_config\CAN\SOH \SOH(\v2+.envoy.extensions.common.tap.v3.AdminConfigH\NULR\vadminConfig\DC2E\n\
      \\rstatic_config\CAN\STX \SOH(\v2\RS.envoy.config.tap.v3.TapConfigH\NULR\fstaticConfigB\DC2\n\
      \\vconfig_type\DC2\ETX\248B\SOH:<\154\197\136\RS7\n\
      \5envoy.config.common.tap.v2alpha.CommonExtensionConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        adminConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AdminConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adminConfig")) ::
              Data.ProtoLens.FieldDescriptor CommonExtensionConfig
        staticConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "static_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Tap.V3.Common.TapConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'staticConfig")) ::
              Data.ProtoLens.FieldDescriptor CommonExtensionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, adminConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, staticConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommonExtensionConfig'_unknownFields
        (\ x__ y__ -> x__ {_CommonExtensionConfig'_unknownFields = y__})
  defMessage
    = CommonExtensionConfig'_constructor
        {_CommonExtensionConfig'configType = Prelude.Nothing,
         _CommonExtensionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommonExtensionConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser CommonExtensionConfig
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
                                       "admin_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adminConfig") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "static_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"staticConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CommonExtensionConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'configType") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (CommonExtensionConfig'AdminConfig v))
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
                (Prelude.Just (CommonExtensionConfig'StaticConfig v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
instance Control.DeepSeq.NFData CommonExtensionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommonExtensionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommonExtensionConfig'configType x__) ())
instance Control.DeepSeq.NFData CommonExtensionConfig'ConfigType where
  rnf (CommonExtensionConfig'AdminConfig x__)
    = Control.DeepSeq.rnf x__
  rnf (CommonExtensionConfig'StaticConfig x__)
    = Control.DeepSeq.rnf x__
_CommonExtensionConfig'AdminConfig ::
  Data.ProtoLens.Prism.Prism' CommonExtensionConfig'ConfigType AdminConfig
_CommonExtensionConfig'AdminConfig
  = Data.ProtoLens.Prism.prism'
      CommonExtensionConfig'AdminConfig
      (\ p__
         -> case p__ of
              (CommonExtensionConfig'AdminConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CommonExtensionConfig'StaticConfig ::
  Data.ProtoLens.Prism.Prism' CommonExtensionConfig'ConfigType Proto.Envoy.Config.Tap.V3.Common.TapConfig
_CommonExtensionConfig'StaticConfig
  = Data.ProtoLens.Prism.prism'
      CommonExtensionConfig'StaticConfig
      (\ p__
         -> case p__ of
              (CommonExtensionConfig'StaticConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \+envoy/extensions/common/tap/v3/common.proto\DC2\RSenvoy.extensions.common.tap.v3\SUB envoy/config/tap/v3/common.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\130\STX\n\
    \\NAKCommonExtensionConfig\DC2P\n\
    \\fadmin_config\CAN\SOH \SOH(\v2+.envoy.extensions.common.tap.v3.AdminConfigH\NULR\vadminConfig\DC2E\n\
    \\rstatic_config\CAN\STX \SOH(\v2\RS.envoy.config.tap.v3.TapConfigH\NULR\fstaticConfigB\DC2\n\
    \\vconfig_type\DC2\ETX\248B\SOH:<\154\197\136\RS7\n\
    \5envoy.config.common.tap.v2alpha.CommonExtensionConfig\"g\n\
    \\vAdminConfig\DC2$\n\
    \\tconfig_id\CAN\SOH \SOH(\tR\bconfigIdB\a\250B\EOTr\STX\DLE\SOH:2\154\197\136\RS-\n\
    \+envoy.config.common.tap.v2alpha.AdminConfigBE\n\
    \,io.envoyproxy.envoy.extensions.common.tap.v3B\vCommonProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\212\b\n\
    \\ACK\DC2\EOT\NUL\NUL+\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL'\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULE\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULE\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \s\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL \SOH\SUB. Common configuration for all tap extensions.\n\
    \27 [#protodoc-title: Common tap extension configuration]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\GS\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC3\STX\DC4>\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC3\STX\DC4>\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\SYN\STX\US\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\SYN\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX\ETB\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX\ETB\EOT&\n\
    \T\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\EOT!\SUBG If specified, the tap filter will be configured via an admin handler.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SUB\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\DLE\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\US \n\
    \r\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\RS\EOT.\SUBe If specified, the tap filter will be configured via a static configuration that cannot be\n\
    \ changed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\RS\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\RS\FS)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\RS,-\n\
    \\129\SOH\n\
    \\STX\EOT\SOH\DC2\EOT$\NUL+\SOH\SUBu Configuration for the admin handler. See :ref:`here <config_http_filters_tap_admin_handler>` for\n\
    \ more information.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX$\b\DC3\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT%\STX&4\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT%\STX&4\n\
    \\193\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX*\STX@\SUB\179\SOH Opaque configuration ID. When requests are made to the admin handler, the passed opaque ID is\n\
    \ matched to the configured filter opaque ID to determine which filter to configure.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX*\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX*\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX*\ETB?\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\SO\DC2\ETX*\CAN>b\ACKproto3"