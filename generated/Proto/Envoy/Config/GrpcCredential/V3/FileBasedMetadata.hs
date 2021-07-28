{- This file was auto-generated from envoy/config/grpc_credential/v3/file_based_metadata.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.GrpcCredential.V3.FileBasedMetadata (
        FileBasedMetadataConfig()
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
import qualified Proto.Udpa.Annotations.Sensitive
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Config.GrpcCredential.V3.FileBasedMetadata_Fields.secretData' @:: Lens' FileBasedMetadataConfig Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Config.GrpcCredential.V3.FileBasedMetadata_Fields.maybe'secretData' @:: Lens' FileBasedMetadataConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Config.GrpcCredential.V3.FileBasedMetadata_Fields.headerKey' @:: Lens' FileBasedMetadataConfig Data.Text.Text@
         * 'Proto.Envoy.Config.GrpcCredential.V3.FileBasedMetadata_Fields.headerPrefix' @:: Lens' FileBasedMetadataConfig Data.Text.Text@ -}
data FileBasedMetadataConfig
  = FileBasedMetadataConfig'_constructor {_FileBasedMetadataConfig'secretData :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                          _FileBasedMetadataConfig'headerKey :: !Data.Text.Text,
                                          _FileBasedMetadataConfig'headerPrefix :: !Data.Text.Text,
                                          _FileBasedMetadataConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FileBasedMetadataConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FileBasedMetadataConfig "secretData" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileBasedMetadataConfig'secretData
           (\ x__ y__ -> x__ {_FileBasedMetadataConfig'secretData = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FileBasedMetadataConfig "maybe'secretData" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileBasedMetadataConfig'secretData
           (\ x__ y__ -> x__ {_FileBasedMetadataConfig'secretData = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileBasedMetadataConfig "headerKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileBasedMetadataConfig'headerKey
           (\ x__ y__ -> x__ {_FileBasedMetadataConfig'headerKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileBasedMetadataConfig "headerPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileBasedMetadataConfig'headerPrefix
           (\ x__ y__ -> x__ {_FileBasedMetadataConfig'headerPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message FileBasedMetadataConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.grpc_credential.v3.FileBasedMetadataConfig"
  packedMessageDescriptor _
    = "\n\
      \\ETBFileBasedMetadataConfig\DC2I\n\
      \\vsecret_data\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\n\
      \secretDataB\ACK\184\183\139\164\STX\SOH\DC2\GS\n\
      \\n\
      \header_key\CAN\STX \SOH(\tR\theaderKey\DC2#\n\
      \\rheader_prefix\CAN\ETX \SOH(\tR\fheaderPrefix:C\154\197\136\RS>\n\
      \<envoy.config.grpc_credential.v2alpha.FileBasedMetadataConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        secretData__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secret_data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'secretData")) ::
              Data.ProtoLens.FieldDescriptor FileBasedMetadataConfig
        headerKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"headerKey")) ::
              Data.ProtoLens.FieldDescriptor FileBasedMetadataConfig
        headerPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"headerPrefix")) ::
              Data.ProtoLens.FieldDescriptor FileBasedMetadataConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, secretData__field_descriptor),
           (Data.ProtoLens.Tag 2, headerKey__field_descriptor),
           (Data.ProtoLens.Tag 3, headerPrefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FileBasedMetadataConfig'_unknownFields
        (\ x__ y__ -> x__ {_FileBasedMetadataConfig'_unknownFields = y__})
  defMessage
    = FileBasedMetadataConfig'_constructor
        {_FileBasedMetadataConfig'secretData = Prelude.Nothing,
         _FileBasedMetadataConfig'headerKey = Data.ProtoLens.fieldDefault,
         _FileBasedMetadataConfig'headerPrefix = Data.ProtoLens.fieldDefault,
         _FileBasedMetadataConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FileBasedMetadataConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser FileBasedMetadataConfig
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
                                       "secret_data"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"secretData") y x)
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
                                       "header_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"headerKey") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "header_prefix"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"headerPrefix") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FileBasedMetadataConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'secretData") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"headerKey") _x
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
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"headerPrefix") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData FileBasedMetadataConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FileBasedMetadataConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FileBasedMetadataConfig'secretData x__)
                (Control.DeepSeq.deepseq
                   (_FileBasedMetadataConfig'headerKey x__)
                   (Control.DeepSeq.deepseq
                      (_FileBasedMetadataConfig'headerPrefix x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \9envoy/config/grpc_credential/v3/file_based_metadata.proto\DC2\USenvoy.config.grpc_credential.v3\SUB\USenvoy/config/core/v3/base.proto\SUB udpa/annotations/sensitive.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\237\SOH\n\
    \\ETBFileBasedMetadataConfig\DC2I\n\
    \\vsecret_data\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\n\
    \secretDataB\ACK\184\183\139\164\STX\SOH\DC2\GS\n\
    \\n\
    \header_key\CAN\STX \SOH(\tR\theaderKey\DC2#\n\
    \\rheader_prefix\CAN\ETX \SOH(\tR\fheaderPrefix:C\154\197\136\RS>\n\
    \<envoy.config.grpc_credential.v2alpha.FileBasedMetadataConfigBQ\n\
    \-io.envoyproxy.envoy.config.grpc_credential.v3B\SYNFileBasedMetadataProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\219\a\n\
    \\ACK\DC2\EOT\NUL\NUL\"\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL(\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL*\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULF\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULF\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL7\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL7\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\191\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\"\SOH2\178\SOH [#protodoc-title: Grpc Credentials File Based Metadata]\n\
    \ Configuration for File Based Metadata Grpc Credentials Plugin\n\
    \ [#extension: envoy.grpc_credentials.file_based_metadata]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\US\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAKE\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAKE\n\
    \\170\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\STXK\SUB\156\SOH Location or inline data of secret to use for authentication of the Google gRPC connection\n\
    \ this secret will be attached to a header of the gRPC connection\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\EM\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\NAK \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM#$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\EM%J\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\247\182\193$\DC2\ETX\EM&I\n\
    \\131\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\STX\CAN\SUBv Metadata header key to use for sending the secret data\n\
    \ if no header key is set, \"authorization\" header will be used\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS\SYN\ETB\n\
    \{\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX!\STX\ESC\SUBn Prefix to prepend to the secret in the metadata header\n\
    \ if no prefix is set, the default is to use no prefix\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX!\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX!\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX!\EM\SUBb\ACKproto3"