{- This file was auto-generated from envoy/service/auth/v3/external_auth.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Auth.V3.ExternalAuth (
        Authorization(..), CheckRequest(), CheckResponse(),
        CheckResponse'HttpResponse(..), _CheckResponse'DeniedResponse,
        _CheckResponse'OkResponse, DeniedHttpResponse(), OkHttpResponse()
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Service.Auth.V3.AttributeContext
import qualified Proto.Envoy.Type.V3.HttpStatus
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Rpc.Status
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.attributes' @:: Lens' CheckRequest Proto.Envoy.Service.Auth.V3.AttributeContext.AttributeContext@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.maybe'attributes' @:: Lens' CheckRequest (Prelude.Maybe Proto.Envoy.Service.Auth.V3.AttributeContext.AttributeContext)@ -}
data CheckRequest
  = CheckRequest'_constructor {_CheckRequest'attributes :: !(Prelude.Maybe Proto.Envoy.Service.Auth.V3.AttributeContext.AttributeContext),
                               _CheckRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CheckRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CheckRequest "attributes" Proto.Envoy.Service.Auth.V3.AttributeContext.AttributeContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckRequest'attributes
           (\ x__ y__ -> x__ {_CheckRequest'attributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CheckRequest "maybe'attributes" (Prelude.Maybe Proto.Envoy.Service.Auth.V3.AttributeContext.AttributeContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckRequest'attributes
           (\ x__ y__ -> x__ {_CheckRequest'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Message CheckRequest where
  messageName _ = Data.Text.pack "envoy.service.auth.v3.CheckRequest"
  packedMessageDescriptor _
    = "\n\
      \\fCheckRequest\DC2G\n\
      \\n\
      \attributes\CAN\SOH \SOH(\v2'.envoy.service.auth.v3.AttributeContextR\n\
      \attributes:)\154\197\136\RS$\n\
      \\"envoy.service.auth.v2.CheckRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Service.Auth.V3.AttributeContext.AttributeContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'attributes")) ::
              Data.ProtoLens.FieldDescriptor CheckRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, attributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CheckRequest'_unknownFields
        (\ x__ y__ -> x__ {_CheckRequest'_unknownFields = y__})
  defMessage
    = CheckRequest'_constructor
        {_CheckRequest'attributes = Prelude.Nothing,
         _CheckRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CheckRequest -> Data.ProtoLens.Encoding.Bytes.Parser CheckRequest
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
                                       "attributes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attributes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CheckRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'attributes") _x
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
instance Control.DeepSeq.NFData CheckRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CheckRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CheckRequest'attributes x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.status' @:: Lens' CheckResponse Proto.Google.Rpc.Status.Status@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.maybe'status' @:: Lens' CheckResponse (Prelude.Maybe Proto.Google.Rpc.Status.Status)@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.dynamicMetadata' @:: Lens' CheckResponse Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.maybe'dynamicMetadata' @:: Lens' CheckResponse (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.maybe'httpResponse' @:: Lens' CheckResponse (Prelude.Maybe CheckResponse'HttpResponse)@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.maybe'deniedResponse' @:: Lens' CheckResponse (Prelude.Maybe DeniedHttpResponse)@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.deniedResponse' @:: Lens' CheckResponse DeniedHttpResponse@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.maybe'okResponse' @:: Lens' CheckResponse (Prelude.Maybe OkHttpResponse)@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.okResponse' @:: Lens' CheckResponse OkHttpResponse@ -}
data CheckResponse
  = CheckResponse'_constructor {_CheckResponse'status :: !(Prelude.Maybe Proto.Google.Rpc.Status.Status),
                                _CheckResponse'dynamicMetadata :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                _CheckResponse'httpResponse :: !(Prelude.Maybe CheckResponse'HttpResponse),
                                _CheckResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CheckResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CheckResponse'HttpResponse
  = CheckResponse'DeniedResponse !DeniedHttpResponse |
    CheckResponse'OkResponse !OkHttpResponse
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CheckResponse "status" Proto.Google.Rpc.Status.Status where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'status
           (\ x__ y__ -> x__ {_CheckResponse'status = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CheckResponse "maybe'status" (Prelude.Maybe Proto.Google.Rpc.Status.Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'status
           (\ x__ y__ -> x__ {_CheckResponse'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CheckResponse "dynamicMetadata" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'dynamicMetadata
           (\ x__ y__ -> x__ {_CheckResponse'dynamicMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CheckResponse "maybe'dynamicMetadata" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'dynamicMetadata
           (\ x__ y__ -> x__ {_CheckResponse'dynamicMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CheckResponse "maybe'httpResponse" (Prelude.Maybe CheckResponse'HttpResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'httpResponse
           (\ x__ y__ -> x__ {_CheckResponse'httpResponse = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CheckResponse "maybe'deniedResponse" (Prelude.Maybe DeniedHttpResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'httpResponse
           (\ x__ y__ -> x__ {_CheckResponse'httpResponse = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CheckResponse'DeniedResponse x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CheckResponse'DeniedResponse y__))
instance Data.ProtoLens.Field.HasField CheckResponse "deniedResponse" DeniedHttpResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'httpResponse
           (\ x__ y__ -> x__ {_CheckResponse'httpResponse = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CheckResponse'DeniedResponse x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CheckResponse'DeniedResponse y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CheckResponse "maybe'okResponse" (Prelude.Maybe OkHttpResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'httpResponse
           (\ x__ y__ -> x__ {_CheckResponse'httpResponse = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CheckResponse'OkResponse x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CheckResponse'OkResponse y__))
instance Data.ProtoLens.Field.HasField CheckResponse "okResponse" OkHttpResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'httpResponse
           (\ x__ y__ -> x__ {_CheckResponse'httpResponse = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CheckResponse'OkResponse x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CheckResponse'OkResponse y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CheckResponse where
  messageName _
    = Data.Text.pack "envoy.service.auth.v3.CheckResponse"
  packedMessageDescriptor _
    = "\n\
      \\rCheckResponse\DC2*\n\
      \\ACKstatus\CAN\SOH \SOH(\v2\DC2.google.rpc.StatusR\ACKstatus\DC2T\n\
      \\SIdenied_response\CAN\STX \SOH(\v2).envoy.service.auth.v3.DeniedHttpResponseH\NULR\SOdeniedResponse\DC2H\n\
      \\vok_response\CAN\ETX \SOH(\v2%.envoy.service.auth.v3.OkHttpResponseH\NULR\n\
      \okResponse\DC2B\n\
      \\DLEdynamic_metadata\CAN\EOT \SOH(\v2\ETB.google.protobuf.StructR\SIdynamicMetadataB\SI\n\
      \\rhttp_response:*\154\197\136\RS%\n\
      \#envoy.service.auth.v2.CheckResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Rpc.Status.Status)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'status")) ::
              Data.ProtoLens.FieldDescriptor CheckResponse
        dynamicMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dynamicMetadata")) ::
              Data.ProtoLens.FieldDescriptor CheckResponse
        deniedResponse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denied_response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DeniedHttpResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deniedResponse")) ::
              Data.ProtoLens.FieldDescriptor CheckResponse
        okResponse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ok_response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OkHttpResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'okResponse")) ::
              Data.ProtoLens.FieldDescriptor CheckResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 4, dynamicMetadata__field_descriptor),
           (Data.ProtoLens.Tag 2, deniedResponse__field_descriptor),
           (Data.ProtoLens.Tag 3, okResponse__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CheckResponse'_unknownFields
        (\ x__ y__ -> x__ {_CheckResponse'_unknownFields = y__})
  defMessage
    = CheckResponse'_constructor
        {_CheckResponse'status = Prelude.Nothing,
         _CheckResponse'dynamicMetadata = Prelude.Nothing,
         _CheckResponse'httpResponse = Prelude.Nothing,
         _CheckResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CheckResponse -> Data.ProtoLens.Encoding.Bytes.Parser CheckResponse
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
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dynamic_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dynamicMetadata") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "denied_response"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deniedResponse") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ok_response"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"okResponse") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CheckResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
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
                       (Data.ProtoLens.Field.field @"maybe'dynamicMetadata") _x
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
                          (Data.ProtoLens.Field.field @"maybe'httpResponse") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (CheckResponse'DeniedResponse v))
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
                      (Prelude.Just (CheckResponse'OkResponse v))
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
instance Control.DeepSeq.NFData CheckResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CheckResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CheckResponse'status x__)
                (Control.DeepSeq.deepseq
                   (_CheckResponse'dynamicMetadata x__)
                   (Control.DeepSeq.deepseq (_CheckResponse'httpResponse x__) ())))
instance Control.DeepSeq.NFData CheckResponse'HttpResponse where
  rnf (CheckResponse'DeniedResponse x__) = Control.DeepSeq.rnf x__
  rnf (CheckResponse'OkResponse x__) = Control.DeepSeq.rnf x__
_CheckResponse'DeniedResponse ::
  Data.ProtoLens.Prism.Prism' CheckResponse'HttpResponse DeniedHttpResponse
_CheckResponse'DeniedResponse
  = Data.ProtoLens.Prism.prism'
      CheckResponse'DeniedResponse
      (\ p__
         -> case p__ of
              (CheckResponse'DeniedResponse p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CheckResponse'OkResponse ::
  Data.ProtoLens.Prism.Prism' CheckResponse'HttpResponse OkHttpResponse
_CheckResponse'OkResponse
  = Data.ProtoLens.Prism.prism'
      CheckResponse'OkResponse
      (\ p__
         -> case p__ of
              (CheckResponse'OkResponse p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.status' @:: Lens' DeniedHttpResponse Proto.Envoy.Type.V3.HttpStatus.HttpStatus@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.maybe'status' @:: Lens' DeniedHttpResponse (Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus)@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.headers' @:: Lens' DeniedHttpResponse [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.vec'headers' @:: Lens' DeniedHttpResponse (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.body' @:: Lens' DeniedHttpResponse Data.Text.Text@ -}
data DeniedHttpResponse
  = DeniedHttpResponse'_constructor {_DeniedHttpResponse'status :: !(Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus),
                                     _DeniedHttpResponse'headers :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                     _DeniedHttpResponse'body :: !Data.Text.Text,
                                     _DeniedHttpResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeniedHttpResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeniedHttpResponse "status" Proto.Envoy.Type.V3.HttpStatus.HttpStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeniedHttpResponse'status
           (\ x__ y__ -> x__ {_DeniedHttpResponse'status = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeniedHttpResponse "maybe'status" (Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeniedHttpResponse'status
           (\ x__ y__ -> x__ {_DeniedHttpResponse'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeniedHttpResponse "headers" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeniedHttpResponse'headers
           (\ x__ y__ -> x__ {_DeniedHttpResponse'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DeniedHttpResponse "vec'headers" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeniedHttpResponse'headers
           (\ x__ y__ -> x__ {_DeniedHttpResponse'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeniedHttpResponse "body" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeniedHttpResponse'body
           (\ x__ y__ -> x__ {_DeniedHttpResponse'body = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeniedHttpResponse where
  messageName _
    = Data.Text.pack "envoy.service.auth.v3.DeniedHttpResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2DeniedHttpResponse\DC2;\n\
      \\ACKstatus\CAN\SOH \SOH(\v2\EM.envoy.type.v3.HttpStatusR\ACKstatusB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2A\n\
      \\aheaders\CAN\STX \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\aheaders\DC2\DC2\n\
      \\EOTbody\CAN\ETX \SOH(\tR\EOTbody:/\154\197\136\RS*\n\
      \(envoy.service.auth.v2.DeniedHttpResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.HttpStatus.HttpStatus)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'status")) ::
              Data.ProtoLens.FieldDescriptor DeniedHttpResponse
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor DeniedHttpResponse
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"body")) ::
              Data.ProtoLens.FieldDescriptor DeniedHttpResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 2, headers__field_descriptor),
           (Data.ProtoLens.Tag 3, body__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeniedHttpResponse'_unknownFields
        (\ x__ y__ -> x__ {_DeniedHttpResponse'_unknownFields = y__})
  defMessage
    = DeniedHttpResponse'_constructor
        {_DeniedHttpResponse'status = Prelude.Nothing,
         _DeniedHttpResponse'headers = Data.Vector.Generic.empty,
         _DeniedHttpResponse'body = Data.ProtoLens.fieldDefault,
         _DeniedHttpResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeniedHttpResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
             -> Data.ProtoLens.Encoding.Bytes.Parser DeniedHttpResponse
        loop x mutable'headers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'headers)
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
                              (Data.ProtoLens.Field.field @"vec'headers") frozen'headers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'headers
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'headers y)
                                loop x v
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
                                       "body"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                                  mutable'headers
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'headers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'headers)
          "DeniedHttpResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
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
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'headers") _x))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"body") _x
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
instance Control.DeepSeq.NFData DeniedHttpResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeniedHttpResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DeniedHttpResponse'status x__)
                (Control.DeepSeq.deepseq
                   (_DeniedHttpResponse'headers x__)
                   (Control.DeepSeq.deepseq (_DeniedHttpResponse'body x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.headers' @:: Lens' OkHttpResponse [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.vec'headers' @:: Lens' OkHttpResponse (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.headersToRemove' @:: Lens' OkHttpResponse [Data.Text.Text]@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.vec'headersToRemove' @:: Lens' OkHttpResponse (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.dynamicMetadata' @:: Lens' OkHttpResponse Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.maybe'dynamicMetadata' @:: Lens' OkHttpResponse (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.responseHeadersToAdd' @:: Lens' OkHttpResponse [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Service.Auth.V3.ExternalAuth_Fields.vec'responseHeadersToAdd' @:: Lens' OkHttpResponse (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@ -}
data OkHttpResponse
  = OkHttpResponse'_constructor {_OkHttpResponse'headers :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                 _OkHttpResponse'headersToRemove :: !(Data.Vector.Vector Data.Text.Text),
                                 _OkHttpResponse'dynamicMetadata :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                 _OkHttpResponse'responseHeadersToAdd :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                 _OkHttpResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OkHttpResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OkHttpResponse "headers" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OkHttpResponse'headers
           (\ x__ y__ -> x__ {_OkHttpResponse'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OkHttpResponse "vec'headers" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OkHttpResponse'headers
           (\ x__ y__ -> x__ {_OkHttpResponse'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OkHttpResponse "headersToRemove" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OkHttpResponse'headersToRemove
           (\ x__ y__ -> x__ {_OkHttpResponse'headersToRemove = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OkHttpResponse "vec'headersToRemove" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OkHttpResponse'headersToRemove
           (\ x__ y__ -> x__ {_OkHttpResponse'headersToRemove = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OkHttpResponse "dynamicMetadata" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OkHttpResponse'dynamicMetadata
           (\ x__ y__ -> x__ {_OkHttpResponse'dynamicMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OkHttpResponse "maybe'dynamicMetadata" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OkHttpResponse'dynamicMetadata
           (\ x__ y__ -> x__ {_OkHttpResponse'dynamicMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OkHttpResponse "responseHeadersToAdd" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OkHttpResponse'responseHeadersToAdd
           (\ x__ y__ -> x__ {_OkHttpResponse'responseHeadersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OkHttpResponse "vec'responseHeadersToAdd" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OkHttpResponse'responseHeadersToAdd
           (\ x__ y__ -> x__ {_OkHttpResponse'responseHeadersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Message OkHttpResponse where
  messageName _
    = Data.Text.pack "envoy.service.auth.v3.OkHttpResponse"
  packedMessageDescriptor _
    = "\n\
      \\SOOkHttpResponse\DC2A\n\
      \\aheaders\CAN\STX \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\aheaders\DC2*\n\
      \\DC1headers_to_remove\CAN\ENQ \ETX(\tR\SIheadersToRemove\DC2O\n\
      \\DLEdynamic_metadata\CAN\ETX \SOH(\v2\ETB.google.protobuf.StructR\SIdynamicMetadataB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2^\n\
      \\ETBresponse_headers_to_add\CAN\ACK \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC4responseHeadersToAdd:+\154\197\136\RS&\n\
      \$envoy.service.auth.v2.OkHttpResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor OkHttpResponse
        headersToRemove__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers_to_remove"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"headersToRemove")) ::
              Data.ProtoLens.FieldDescriptor OkHttpResponse
        dynamicMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dynamicMetadata")) ::
              Data.ProtoLens.FieldDescriptor OkHttpResponse
        responseHeadersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_headers_to_add"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"responseHeadersToAdd")) ::
              Data.ProtoLens.FieldDescriptor OkHttpResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, headers__field_descriptor),
           (Data.ProtoLens.Tag 5, headersToRemove__field_descriptor),
           (Data.ProtoLens.Tag 3, dynamicMetadata__field_descriptor),
           (Data.ProtoLens.Tag 6, responseHeadersToAdd__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OkHttpResponse'_unknownFields
        (\ x__ y__ -> x__ {_OkHttpResponse'_unknownFields = y__})
  defMessage
    = OkHttpResponse'_constructor
        {_OkHttpResponse'headers = Data.Vector.Generic.empty,
         _OkHttpResponse'headersToRemove = Data.Vector.Generic.empty,
         _OkHttpResponse'dynamicMetadata = Prelude.Nothing,
         _OkHttpResponse'responseHeadersToAdd = Data.Vector.Generic.empty,
         _OkHttpResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OkHttpResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
                   -> Data.ProtoLens.Encoding.Bytes.Parser OkHttpResponse
        loop
          x
          mutable'headers
          mutable'headersToRemove
          mutable'responseHeadersToAdd
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'headers)
                      frozen'headersToRemove <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'headersToRemove)
                      frozen'responseHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'responseHeadersToAdd)
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
                              (Data.ProtoLens.Field.field @"vec'headers")
                              frozen'headers
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'headersToRemove")
                                 frozen'headersToRemove
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'responseHeadersToAdd")
                                    frozen'responseHeadersToAdd
                                    x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'headers y)
                                loop x v mutable'headersToRemove mutable'responseHeadersToAdd
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
                                        "headers_to_remove"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'headersToRemove y)
                                loop x mutable'headers v mutable'responseHeadersToAdd
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dynamic_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dynamicMetadata") y x)
                                  mutable'headers
                                  mutable'headersToRemove
                                  mutable'responseHeadersToAdd
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "response_headers_to_add"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'responseHeadersToAdd y)
                                loop x mutable'headers mutable'headersToRemove v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'headers
                                  mutable'headersToRemove
                                  mutable'responseHeadersToAdd
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'headersToRemove <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'responseHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'headers
                mutable'headersToRemove
                mutable'responseHeadersToAdd)
          "OkHttpResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'headers") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'headersToRemove") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'dynamicMetadata") _x
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
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
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
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'responseHeadersToAdd") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData OkHttpResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OkHttpResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OkHttpResponse'headers x__)
                (Control.DeepSeq.deepseq
                   (_OkHttpResponse'headersToRemove x__)
                   (Control.DeepSeq.deepseq
                      (_OkHttpResponse'dynamicMetadata x__)
                      (Control.DeepSeq.deepseq
                         (_OkHttpResponse'responseHeadersToAdd x__) ()))))
data Authorization = Authorization {}
instance Data.ProtoLens.Service.Types.Service Authorization where
  type ServiceName Authorization = "Authorization"
  type ServicePackage Authorization = "envoy.service.auth.v3"
  type ServiceMethods Authorization = '["check"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Authorization "check" where
  type MethodName Authorization "check" = "Check"
  type MethodInput Authorization "check" = CheckRequest
  type MethodOutput Authorization "check" = CheckResponse
  type MethodStreamingType Authorization "check" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)envoy/service/auth/v3/external_auth.proto\DC2\NAKenvoy.service.auth.v3\SUB\USenvoy/config/core/v3/base.proto\SUB-envoy/service/auth/v3/attribute_context.proto\SUB\USenvoy/type/v3/http_status.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\ETBgoogle/rpc/status.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\130\SOH\n\
    \\fCheckRequest\DC2G\n\
    \\n\
    \attributes\CAN\SOH \SOH(\v2'.envoy.service.auth.v3.AttributeContextR\n\
    \attributes:)\154\197\136\RS$\n\
    \\"envoy.service.auth.v2.CheckRequest\"\217\SOH\n\
    \\DC2DeniedHttpResponse\DC2;\n\
    \\ACKstatus\CAN\SOH \SOH(\v2\EM.envoy.type.v3.HttpStatusR\ACKstatusB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2A\n\
    \\aheaders\CAN\STX \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\aheaders\DC2\DC2\n\
    \\EOTbody\CAN\ETX \SOH(\tR\EOTbody:/\154\197\136\RS*\n\
    \(envoy.service.auth.v2.DeniedHttpResponse\"\221\STX\n\
    \\SOOkHttpResponse\DC2A\n\
    \\aheaders\CAN\STX \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\aheaders\DC2*\n\
    \\DC1headers_to_remove\CAN\ENQ \ETX(\tR\SIheadersToRemove\DC2O\n\
    \\DLEdynamic_metadata\CAN\ETX \SOH(\v2\ETB.google.protobuf.StructR\SIdynamicMetadataB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2^\n\
    \\ETBresponse_headers_to_add\CAN\ACK \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC4responseHeadersToAdd:+\154\197\136\RS&\n\
    \$envoy.service.auth.v2.OkHttpResponse\"\220\STX\n\
    \\rCheckResponse\DC2*\n\
    \\ACKstatus\CAN\SOH \SOH(\v2\DC2.google.rpc.StatusR\ACKstatus\DC2T\n\
    \\SIdenied_response\CAN\STX \SOH(\v2).envoy.service.auth.v3.DeniedHttpResponseH\NULR\SOdeniedResponse\DC2H\n\
    \\vok_response\CAN\ETX \SOH(\v2%.envoy.service.auth.v3.OkHttpResponseH\NULR\n\
    \okResponse\DC2B\n\
    \\DLEdynamic_metadata\CAN\EOT \SOH(\v2\ETB.google.protobuf.StructR\SIdynamicMetadataB\SI\n\
    \\rhttp_response:*\154\197\136\RS%\n\
    \#envoy.service.auth.v2.CheckResponse2e\n\
    \\rAuthorization\DC2T\n\
    \\ENQCheck\DC2#.envoy.service.auth.v3.CheckRequest\SUB$.envoy.service.auth.v3.CheckResponse\"\NULBE\n\
    \#io.envoyproxy.envoy.service.auth.v3B\DC1ExternalAuthProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\220*\n\
    \\a\DC2\ENQ\NUL\NUL\133\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL7\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL&\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL-\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL'\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL2\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL2\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC2\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\DC3\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC4\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC4\NULF\n\
    \\223\STX\n\
    \\STX\ACK\NUL\DC2\EOT\GS\NUL\"\SOH\SUBf A generic interface for performing authorization check on incoming\n\
    \ requests to a networked service.\n\
    \2+ [#protodoc-title: Authorization Service ]\n\
    \2\189\SOH The authorization service request messages used by external authorization :ref:`network filter\n\
    \ <config_network_filters_ext_authz>` and :ref:`HTTP filter <config_http_filters_ext_authz>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\GS\b\NAK\n\
    \\145\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT \STX!\ETX\SUB\130\SOH Performs authorization check based on the attributes associated with the\n\
    \ incoming request, and returns status `OK` or not `OK`.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX \ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX \f\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX #0\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT$\NUL)\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX$\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX%\STXd\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX%\STXd\n\
    \&\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX(\STX\"\SUB\EM The request attributes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX(\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX(\DC3\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX( !\n\
    \4\n\
    \\STX\EOT\SOH\DC2\EOT,\NUL<\SOH\SUB( HTTP attributes for a denied response.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX,\b\SUB\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT-\STX.1\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT-\STX.1\n\
    \\149\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX2\STXN\SUB\135\SOH This field allows the authorization service to send a HTTP response status\n\
    \ code to the downstream client other than 403 (Forbidden).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX2\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX2\NAK\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX2\RS\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX2 M\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC1\DC2\ETX2!L\n\
    \\150\STX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX7\STX8\SUB\136\STX This field allows the authorization service to send HTTP response headers\n\
    \ to the downstream client. Note that the :ref:`append field in HeaderValueOption <envoy_v3_api_field_config.core.v3.HeaderValueOption.append>` defaults to\n\
    \ false when used in this message.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX7\v+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX7,3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX767\n\
    \r\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX;\STX\DC2\SUBe This field allows the authorization service to send a response body data\n\
    \ to the downstream client.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX;\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX;\DLE\DC1\n\
    \H\n\
    \\STX\EOT\STX\DC2\EOT@\NULi\SOH\SUB< HTTP attributes for an OK response.\n\
    \ [#next-free-field: 7]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX@\b\SYN\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOTA\STXB-\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOTA\STXB-\n\
    \\253\EOT\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXK\STX8\SUB\239\EOT HTTP entity headers in addition to the original request headers. This allows the authorization\n\
    \ service to append, to add or to override headers from the original request before\n\
    \ dispatching it to the upstream. Note that the :ref:`append field in HeaderValueOption <envoy_v3_api_field_config.core.v3.HeaderValueOption.append>` defaults to\n\
    \ false when used in this message. By setting the `append` field to `true`,\n\
    \ the filter will append the correspondent header value to the matched request header.\n\
    \ By leaving `append` as false, the filter will either add a new header, or override an existing\n\
    \ one if there is a match.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXK\v+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXK,3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXK67\n\
    \\214\ACK\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\\\STX(\SUB\200\ACK HTTP entity headers to remove from the original request before dispatching\n\
    \ it to the upstream. This allows the authorization service to act on auth\n\
    \ related headers (like `Authorization`), process them, and consume them.\n\
    \ Under this model, the upstream will either receive the request (if it's\n\
    \ authorized) or not receive it (if it's not), but will not see headers\n\
    \ containing authorization credentials.\n\
    \\n\
    \ Pseudo headers (such as `:authority`, `:method`, `:path` etc), as well as\n\
    \ the header `Host`, may not be removed as that would make the request\n\
    \ malformed. If mentioned in `headers_to_remove` these special headers will\n\
    \ be ignored.\n\
    \\n\
    \ When using the HTTP service this must instead be set by the HTTP\n\
    \ authorization service as a comma separated list like so:\n\
    \ ``x-envoy-auth-headers-to-remove: one-auth-header, another-auth-header``.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\\\DC2#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\\&'\n\
    \\198\STX\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOTb\STXcS\SUB\183\STX This field has been deprecated in favor of :ref:`CheckResponse.dynamic_metadata\n\
    \ <envoy_v3_api_field_service.auth.v3.CheckResponse.dynamic_metadata>`. Until it is removed,\n\
    \ setting this field overrides :ref:`CheckResponse.dynamic_metadata\n\
    \ <envoy_v3_api_field_service.auth.v3.CheckResponse.dynamic_metadata>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXb\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXb\EM)\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXb,-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\ETXc\ACKR\n\
    \\r\n\
    \\ACK\EOT\STX\STX\STX\b\ETX\DC2\ETXc\a\CAN\n\
    \\DLE\n\
    \\t\EOT\STX\STX\STX\b\242\232\128K\DC2\ETXc\SUBQ\n\
    \\161\STX\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXh\STXH\SUB\147\STX This field allows the authorization service to send HTTP response headers\n\
    \ to the downstream client on success. Note that the :ref:`append field in HeaderValueOption <envoy_v3_api_field_config.core.v3.HeaderValueOption.append>`\n\
    \ defaults to false when used in this message.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETXh\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETXh\v+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXh,C\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXhFG\n\
    \J\n\
    \\STX\EOT\ETX\DC2\ENQl\NUL\133\SOH\SOH\SUB= Intended for gRPC and Network Authorization servers `only`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXl\b\NAK\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOTm\STXn,\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOTm\STXn,\n\
    \g\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXq\STX\US\SUBZ Status `OK` allows the request. Any other status indicates the request should be denied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXq\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXq\DC4\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXq\GS\RS\n\
    \\245\SOH\n\
    \\EOT\EOT\ETX\b\NUL\DC2\EOTv\STX|\ETX\SUB\230\SOH An message that contains HTTP response attributes. This message is\n\
    \ used when the authorization service needs to send custom responses to the\n\
    \ downstream client or, to modify/add request headers being dispatched to the upstream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\ETXv\b\NAK\n\
    \>\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXx\EOT+\SUB1 Supplies http attributes for a denied response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXx\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXx\ETB&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXx)*\n\
    \;\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX{\EOT#\SUB. Supplies http attributes for an ok response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETX{\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX{\DC3\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX{!\"\n\
    \\190\ETX\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\132\SOH\STX.\SUB\175\ETX Optional response metadata that will be emitted as dynamic metadata to be consumed by the next\n\
    \ filter. This metadata lives in a namespace specified by the canonical name of extension filter\n\
    \ that requires it:\n\
    \\n\
    \ - :ref:`envoy.filters.http.ext_authz <config_http_filters_ext_authz_dynamic_metadata>` for HTTP filter.\n\
    \ - :ref:`envoy.filters.network.ext_authz <config_network_filters_ext_authz_dynamic_metadata>` for network filter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\EOT\132\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\132\SOH\EM)\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\132\SOH,-b\ACKproto3"