{- This file was auto-generated from envoy/extensions/http/original_ip_detection/custom_header/v3/custom_header.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Http.OriginalIpDetection.CustomHeader.V3.CustomHeader (
        CustomHeaderConfig()
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
import qualified Proto.Envoy.Type.V3.HttpStatus
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Http.OriginalIpDetection.CustomHeader.V3.CustomHeader_Fields.headerName' @:: Lens' CustomHeaderConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Http.OriginalIpDetection.CustomHeader.V3.CustomHeader_Fields.allowExtensionToSetAddressAsTrusted' @:: Lens' CustomHeaderConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Http.OriginalIpDetection.CustomHeader.V3.CustomHeader_Fields.rejectWithStatus' @:: Lens' CustomHeaderConfig Proto.Envoy.Type.V3.HttpStatus.HttpStatus@
         * 'Proto.Envoy.Extensions.Http.OriginalIpDetection.CustomHeader.V3.CustomHeader_Fields.maybe'rejectWithStatus' @:: Lens' CustomHeaderConfig (Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus)@ -}
data CustomHeaderConfig
  = CustomHeaderConfig'_constructor {_CustomHeaderConfig'headerName :: !Data.Text.Text,
                                     _CustomHeaderConfig'allowExtensionToSetAddressAsTrusted :: !Prelude.Bool,
                                     _CustomHeaderConfig'rejectWithStatus :: !(Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus),
                                     _CustomHeaderConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CustomHeaderConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CustomHeaderConfig "headerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomHeaderConfig'headerName
           (\ x__ y__ -> x__ {_CustomHeaderConfig'headerName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CustomHeaderConfig "allowExtensionToSetAddressAsTrusted" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomHeaderConfig'allowExtensionToSetAddressAsTrusted
           (\ x__ y__
              -> x__
                   {_CustomHeaderConfig'allowExtensionToSetAddressAsTrusted = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CustomHeaderConfig "rejectWithStatus" Proto.Envoy.Type.V3.HttpStatus.HttpStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomHeaderConfig'rejectWithStatus
           (\ x__ y__ -> x__ {_CustomHeaderConfig'rejectWithStatus = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CustomHeaderConfig "maybe'rejectWithStatus" (Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomHeaderConfig'rejectWithStatus
           (\ x__ y__ -> x__ {_CustomHeaderConfig'rejectWithStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message CustomHeaderConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.http.original_ip_detection.custom_header.v3.CustomHeaderConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC2CustomHeaderConfig\DC2.\n\
      \\vheader_name\CAN\SOH \SOH(\tR\n\
      \headerNameB\r\250B\n\
      \r\b\DLE\SOH\192\SOH\SOH\200\SOH\SOH\DC2V\n\
      \)allow_extension_to_set_address_as_trusted\CAN\STX \SOH(\bR#allowExtensionToSetAddressAsTrusted\DC2G\n\
      \\DC2reject_with_status\CAN\ETX \SOH(\v2\EM.envoy.type.v3.HttpStatusR\DLErejectWithStatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"headerName")) ::
              Data.ProtoLens.FieldDescriptor CustomHeaderConfig
        allowExtensionToSetAddressAsTrusted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_extension_to_set_address_as_trusted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"allowExtensionToSetAddressAsTrusted")) ::
              Data.ProtoLens.FieldDescriptor CustomHeaderConfig
        rejectWithStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reject_with_status"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.HttpStatus.HttpStatus)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rejectWithStatus")) ::
              Data.ProtoLens.FieldDescriptor CustomHeaderConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headerName__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            allowExtensionToSetAddressAsTrusted__field_descriptor),
           (Data.ProtoLens.Tag 3, rejectWithStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CustomHeaderConfig'_unknownFields
        (\ x__ y__ -> x__ {_CustomHeaderConfig'_unknownFields = y__})
  defMessage
    = CustomHeaderConfig'_constructor
        {_CustomHeaderConfig'headerName = Data.ProtoLens.fieldDefault,
         _CustomHeaderConfig'allowExtensionToSetAddressAsTrusted = Data.ProtoLens.fieldDefault,
         _CustomHeaderConfig'rejectWithStatus = Prelude.Nothing,
         _CustomHeaderConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CustomHeaderConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser CustomHeaderConfig
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
                                       "header_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"headerName") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "allow_extension_to_set_address_as_trusted"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"allowExtensionToSetAddressAsTrusted")
                                     y
                                     x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "reject_with_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rejectWithStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CustomHeaderConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"headerName") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"allowExtensionToSetAddressAsTrusted")
                         _x
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'rejectWithStatus") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CustomHeaderConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CustomHeaderConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CustomHeaderConfig'headerName x__)
                (Control.DeepSeq.deepseq
                   (_CustomHeaderConfig'allowExtensionToSetAddressAsTrusted x__)
                   (Control.DeepSeq.deepseq
                      (_CustomHeaderConfig'rejectWithStatus x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Penvoy/extensions/http/original_ip_detection/custom_header/v3/custom_header.proto\DC2<envoy.extensions.http.original_ip_detection.custom_header.v3\SUB\USenvoy/type/v3/http_status.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\229\SOH\n\
    \\DC2CustomHeaderConfig\DC2.\n\
    \\vheader_name\CAN\SOH \SOH(\tR\n\
    \headerNameB\r\250B\n\
    \r\b\DLE\SOH\192\SOH\SOH\200\SOH\SOH\DC2V\n\
    \)allow_extension_to_set_address_as_trusted\CAN\STX \SOH(\bR#allowExtensionToSetAddressAsTrusted\DC2G\n\
    \\DC2reject_with_status\CAN\ETX \SOH(\v2\EM.envoy.type.v3.HttpStatusR\DLErejectWithStatusBi\n\
    \Jio.envoyproxy.envoy.extensions.http.original_ip_detection.custom_header.v3B\DC1CustomHeaderProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\232\r\n\
    \\ACK\DC2\EOT\NUL\NUL*\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NULE\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULc\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULc\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL2\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL2\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\187\ENQ\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NUL*\SOH\SUB\234\EOT This extension allows for the original downstream remote IP to be detected\n\
    \ by reading the value from a configured header name. If the value is successfully parsed\n\
    \ as an IP, it'll be treated as the effective downstream remote address and seen as such\n\
    \ by all filters. See :ref:`original_ip_detection_extensions\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.original_ip_detection_extensions>`\n\
    \ for an overview of how extensions operate and what happens when an extension fails\n\
    \ to detect the remote IP.\n\
    \\n\
    \ [#extension: envoy.http.original_ip_detection.custom_header]\n\
    \2B [#protodoc-title: Custom header original IP detection extension]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\SUB\n\
    \\197\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\GS\STX\RS_\SUB\182\SOH The header name containing the original downstream remote address, if present.\n\
    \\n\
    \ Note: in the case of a multi-valued header, only the first value is tried and the rest are ignored.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\GS\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\RS\ACK^\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\RS\a]\n\
    \\201\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX#\STX5\SUB\187\STX If set to true, the extension could decide that the detected address should be treated as\n\
    \ trusted by the HCM. If the address is considered :ref:`trusted<config_http_conn_man_headers_x-forwarded-for_trusted_client_address>`,\n\
    \ it might be used as input to determine if the request is internal (among other things).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX#\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX#\a0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX#34\n\
    \\213\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX)\STX,\SUB\199\SOH If this is set, the request will be rejected when detection fails using it as the HTTP response status.\n\
    \\n\
    \ .. note::\n\
    \   If this is set to < 400 or > 511, the default status 403 will be used instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX)\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX)\NAK'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX)*+b\ACKproto3"