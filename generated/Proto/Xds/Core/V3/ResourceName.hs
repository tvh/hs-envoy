{- This file was auto-generated from xds/core/v3/resource_name.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Xds.Core.V3.ResourceName (
        ResourceName()
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
import qualified Proto.Xds.Core.V3.ContextParams
{- | Fields :
     
         * 'Proto.Xds.Core.V3.ResourceName_Fields.id' @:: Lens' ResourceName Data.Text.Text@
         * 'Proto.Xds.Core.V3.ResourceName_Fields.authority' @:: Lens' ResourceName Data.Text.Text@
         * 'Proto.Xds.Core.V3.ResourceName_Fields.resourceType' @:: Lens' ResourceName Data.Text.Text@
         * 'Proto.Xds.Core.V3.ResourceName_Fields.context' @:: Lens' ResourceName Proto.Xds.Core.V3.ContextParams.ContextParams@
         * 'Proto.Xds.Core.V3.ResourceName_Fields.maybe'context' @:: Lens' ResourceName (Prelude.Maybe Proto.Xds.Core.V3.ContextParams.ContextParams)@ -}
data ResourceName
  = ResourceName'_constructor {_ResourceName'id :: !Data.Text.Text,
                               _ResourceName'authority :: !Data.Text.Text,
                               _ResourceName'resourceType :: !Data.Text.Text,
                               _ResourceName'context :: !(Prelude.Maybe Proto.Xds.Core.V3.ContextParams.ContextParams),
                               _ResourceName'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResourceName where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResourceName "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceName'id (\ x__ y__ -> x__ {_ResourceName'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceName "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceName'authority
           (\ x__ y__ -> x__ {_ResourceName'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceName "resourceType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceName'resourceType
           (\ x__ y__ -> x__ {_ResourceName'resourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceName "context" Proto.Xds.Core.V3.ContextParams.ContextParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceName'context
           (\ x__ y__ -> x__ {_ResourceName'context = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResourceName "maybe'context" (Prelude.Maybe Proto.Xds.Core.V3.ContextParams.ContextParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceName'context
           (\ x__ y__ -> x__ {_ResourceName'context = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResourceName where
  messageName _ = Data.Text.pack "xds.core.v3.ResourceName"
  packedMessageDescriptor _
    = "\n\
      \\fResourceName\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\FS\n\
      \\tauthority\CAN\STX \SOH(\tR\tauthority\DC2,\n\
      \\rresource_type\CAN\ETX \SOH(\tR\fresourceTypeB\a\250B\EOTr\STX\DLE\SOH\DC24\n\
      \\acontext\CAN\EOT \SOH(\v2\SUB.xds.core.v3.ContextParamsR\acontext"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor ResourceName
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor ResourceName
        resourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resourceType")) ::
              Data.ProtoLens.FieldDescriptor ResourceName
        context__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Xds.Core.V3.ContextParams.ContextParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'context")) ::
              Data.ProtoLens.FieldDescriptor ResourceName
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, authority__field_descriptor),
           (Data.ProtoLens.Tag 3, resourceType__field_descriptor),
           (Data.ProtoLens.Tag 4, context__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResourceName'_unknownFields
        (\ x__ y__ -> x__ {_ResourceName'_unknownFields = y__})
  defMessage
    = ResourceName'_constructor
        {_ResourceName'id = Data.ProtoLens.fieldDefault,
         _ResourceName'authority = Data.ProtoLens.fieldDefault,
         _ResourceName'resourceType = Data.ProtoLens.fieldDefault,
         _ResourceName'context = Prelude.Nothing,
         _ResourceName'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResourceName -> Data.ProtoLens.Encoding.Bytes.Parser ResourceName
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
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
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
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
                                       "resource_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resourceType") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "context"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"context") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResourceName"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"resourceType") _x
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'context") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ResourceName where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResourceName'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResourceName'id x__)
                (Control.DeepSeq.deepseq
                   (_ResourceName'authority x__)
                   (Control.DeepSeq.deepseq
                      (_ResourceName'resourceType x__)
                      (Control.DeepSeq.deepseq (_ResourceName'context x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USxds/core/v3/resource_name.proto\DC2\vxds.core.v3\SUB\GSudpa/annotations/status.proto\SUB xds/core/v3/context_params.proto\SUB\ETBvalidate/validate.proto\"\160\SOH\n\
    \\fResourceName\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\FS\n\
    \\tauthority\CAN\STX \SOH(\tR\tauthority\DC2,\n\
    \\rresource_type\CAN\ETX \SOH(\tR\fresourceTypeB\a\250B\EOTr\STX\DLE\SOH\DC24\n\
    \\acontext\CAN\EOT \SOH(\v2\SUB.xds.core.v3.ContextParamsR\acontextB:\n\
    \\ESCcom.github.udpa.xds.core.v3B\DC1ResourceNameProtoP\SOH\186\128\200\209\ACK\STX\b\SOHJ\173\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL(\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\DC4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL*\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL2\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL2\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\n\
    \\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\r\NUL>\n\
    \\142\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL(\SOH\SUB\129\ETX xDS resource name. This has a canonical xdstp:// URI representation:\n\
    \\n\
    \   xdstp://{authority}/{type_url}/{id}?{context_params}\n\
    \\n\
    \ where context_params take the form of URI query parameters.\n\
    \\n\
    \ A xDS resource name fully identifies a network resource for transport\n\
    \ purposes. xDS resource names in this form appear only in discovery\n\
    \ request/response messages used with the xDS transport.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\DC4\n\
    \\135\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STX\DLE\SUBz Opaque identifier for the resource. Any '/' will not be escaped during URI\n\
    \ encoding and will form part of the URI path.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC\SO\SI\n\
    \\237\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX \STX\ETB\SUB\223\SOH Logical authority for resource (not necessarily transport network address).\n\
    \ Authorities are opaque in the xDS API, data-plane load balancers will map\n\
    \ them to concrete network transports such as an xDS management server.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX \t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX \NAK\SYN\n\
    \d\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX$\STXD\SUBW Fully qualified resource type (as in type URL without types.googleapis.com/\n\
    \ prefix).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX$\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX$\EM\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX$\ESCC\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\SO\DC2\ETX$\FSB\n\
    \R\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX'\STX\FS\SUBE Additional parameters that can be used to select resource variants.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX'\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX'\DLE\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX'\SUB\ESCb\ACKproto3"