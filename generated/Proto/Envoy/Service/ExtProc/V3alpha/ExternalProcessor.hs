{- This file was auto-generated from envoy/service/ext_proc/v3alpha/external_processor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor (
        ExternalProcessor(..), BodyMutation(), BodyMutation'Mutation(..),
        _BodyMutation'Body, _BodyMutation'ClearBody, BodyResponse(),
        CommonResponse(), CommonResponse'ResponseStatus(..),
        CommonResponse'ResponseStatus(),
        CommonResponse'ResponseStatus'UnrecognizedValue, GrpcStatus(),
        HeaderMutation(), HeadersResponse(), HttpBody(), HttpHeaders(),
        HttpHeaders'AttributesEntry(), HttpTrailers(), ImmediateResponse(),
        ProcessingRequest(), ProcessingRequest'Request(..),
        _ProcessingRequest'RequestHeaders,
        _ProcessingRequest'ResponseHeaders, _ProcessingRequest'RequestBody,
        _ProcessingRequest'ResponseBody,
        _ProcessingRequest'RequestTrailers,
        _ProcessingRequest'ResponseTrailers, ProcessingResponse(),
        ProcessingResponse'Response(..),
        _ProcessingResponse'RequestHeaders,
        _ProcessingResponse'ResponseHeaders,
        _ProcessingResponse'RequestBody, _ProcessingResponse'ResponseBody,
        _ProcessingResponse'RequestTrailers,
        _ProcessingResponse'ResponseTrailers,
        _ProcessingResponse'ImmediateResponse, TrailersResponse()
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
import qualified Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode
import qualified Proto.Envoy.Type.V3.HttpStatus
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'mutation' @:: Lens' BodyMutation (Prelude.Maybe BodyMutation'Mutation)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'body' @:: Lens' BodyMutation (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.body' @:: Lens' BodyMutation Data.ByteString.ByteString@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'clearBody' @:: Lens' BodyMutation (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.clearBody' @:: Lens' BodyMutation Prelude.Bool@ -}
data BodyMutation
  = BodyMutation'_constructor {_BodyMutation'mutation :: !(Prelude.Maybe BodyMutation'Mutation),
                               _BodyMutation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BodyMutation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data BodyMutation'Mutation
  = BodyMutation'Body !Data.ByteString.ByteString |
    BodyMutation'ClearBody !Prelude.Bool
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField BodyMutation "maybe'mutation" (Prelude.Maybe BodyMutation'Mutation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BodyMutation'mutation
           (\ x__ y__ -> x__ {_BodyMutation'mutation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BodyMutation "maybe'body" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BodyMutation'mutation
           (\ x__ y__ -> x__ {_BodyMutation'mutation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BodyMutation'Body x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BodyMutation'Body y__))
instance Data.ProtoLens.Field.HasField BodyMutation "body" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BodyMutation'mutation
           (\ x__ y__ -> x__ {_BodyMutation'mutation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BodyMutation'Body x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BodyMutation'Body y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField BodyMutation "maybe'clearBody" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BodyMutation'mutation
           (\ x__ y__ -> x__ {_BodyMutation'mutation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BodyMutation'ClearBody x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BodyMutation'ClearBody y__))
instance Data.ProtoLens.Field.HasField BodyMutation "clearBody" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BodyMutation'mutation
           (\ x__ y__ -> x__ {_BodyMutation'mutation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BodyMutation'ClearBody x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BodyMutation'ClearBody y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message BodyMutation where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.BodyMutation"
  packedMessageDescriptor _
    = "\n\
      \\fBodyMutation\DC2\DC4\n\
      \\EOTbody\CAN\SOH \SOH(\fH\NULR\EOTbody\DC2\US\n\
      \\n\
      \clear_body\CAN\STX \SOH(\bH\NULR\tclearBodyB\n\
      \\n\
      \\bmutation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'body")) ::
              Data.ProtoLens.FieldDescriptor BodyMutation
        clearBody__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clear_body"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clearBody")) ::
              Data.ProtoLens.FieldDescriptor BodyMutation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, body__field_descriptor),
           (Data.ProtoLens.Tag 2, clearBody__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BodyMutation'_unknownFields
        (\ x__ y__ -> x__ {_BodyMutation'_unknownFields = y__})
  defMessage
    = BodyMutation'_constructor
        {_BodyMutation'mutation = Prelude.Nothing,
         _BodyMutation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BodyMutation -> Data.ProtoLens.Encoding.Bytes.Parser BodyMutation
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "body"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "clear_body"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clearBody") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BodyMutation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mutation") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (BodyMutation'Body v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (BodyMutation'ClearBody v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BodyMutation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BodyMutation'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BodyMutation'mutation x__) ())
instance Control.DeepSeq.NFData BodyMutation'Mutation where
  rnf (BodyMutation'Body x__) = Control.DeepSeq.rnf x__
  rnf (BodyMutation'ClearBody x__) = Control.DeepSeq.rnf x__
_BodyMutation'Body ::
  Data.ProtoLens.Prism.Prism' BodyMutation'Mutation Data.ByteString.ByteString
_BodyMutation'Body
  = Data.ProtoLens.Prism.prism'
      BodyMutation'Body
      (\ p__
         -> case p__ of
              (BodyMutation'Body p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_BodyMutation'ClearBody ::
  Data.ProtoLens.Prism.Prism' BodyMutation'Mutation Prelude.Bool
_BodyMutation'ClearBody
  = Data.ProtoLens.Prism.prism'
      BodyMutation'ClearBody
      (\ p__
         -> case p__ of
              (BodyMutation'ClearBody p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.response' @:: Lens' BodyResponse CommonResponse@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'response' @:: Lens' BodyResponse (Prelude.Maybe CommonResponse)@ -}
data BodyResponse
  = BodyResponse'_constructor {_BodyResponse'response :: !(Prelude.Maybe CommonResponse),
                               _BodyResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BodyResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BodyResponse "response" CommonResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BodyResponse'response
           (\ x__ y__ -> x__ {_BodyResponse'response = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BodyResponse "maybe'response" (Prelude.Maybe CommonResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BodyResponse'response
           (\ x__ y__ -> x__ {_BodyResponse'response = y__}))
        Prelude.id
instance Data.ProtoLens.Message BodyResponse where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.BodyResponse"
  packedMessageDescriptor _
    = "\n\
      \\fBodyResponse\DC2J\n\
      \\bresponse\CAN\SOH \SOH(\v2..envoy.service.ext_proc.v3alpha.CommonResponseR\bresponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        response__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'response")) ::
              Data.ProtoLens.FieldDescriptor BodyResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, response__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BodyResponse'_unknownFields
        (\ x__ y__ -> x__ {_BodyResponse'_unknownFields = y__})
  defMessage
    = BodyResponse'_constructor
        {_BodyResponse'response = Prelude.Nothing,
         _BodyResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BodyResponse -> Data.ProtoLens.Encoding.Bytes.Parser BodyResponse
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
                                       "response"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"response") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BodyResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'response") _x
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
instance Control.DeepSeq.NFData BodyResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BodyResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BodyResponse'response x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.status' @:: Lens' CommonResponse CommonResponse'ResponseStatus@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.headerMutation' @:: Lens' CommonResponse HeaderMutation@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'headerMutation' @:: Lens' CommonResponse (Prelude.Maybe HeaderMutation)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.bodyMutation' @:: Lens' CommonResponse BodyMutation@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'bodyMutation' @:: Lens' CommonResponse (Prelude.Maybe BodyMutation)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.trailers' @:: Lens' CommonResponse Proto.Envoy.Config.Core.V3.Base.HeaderMap@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'trailers' @:: Lens' CommonResponse (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.clearRouteCache' @:: Lens' CommonResponse Prelude.Bool@ -}
data CommonResponse
  = CommonResponse'_constructor {_CommonResponse'status :: !CommonResponse'ResponseStatus,
                                 _CommonResponse'headerMutation :: !(Prelude.Maybe HeaderMutation),
                                 _CommonResponse'bodyMutation :: !(Prelude.Maybe BodyMutation),
                                 _CommonResponse'trailers :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap),
                                 _CommonResponse'clearRouteCache :: !Prelude.Bool,
                                 _CommonResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommonResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommonResponse "status" CommonResponse'ResponseStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonResponse'status
           (\ x__ y__ -> x__ {_CommonResponse'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonResponse "headerMutation" HeaderMutation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonResponse'headerMutation
           (\ x__ y__ -> x__ {_CommonResponse'headerMutation = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonResponse "maybe'headerMutation" (Prelude.Maybe HeaderMutation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonResponse'headerMutation
           (\ x__ y__ -> x__ {_CommonResponse'headerMutation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonResponse "bodyMutation" BodyMutation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonResponse'bodyMutation
           (\ x__ y__ -> x__ {_CommonResponse'bodyMutation = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonResponse "maybe'bodyMutation" (Prelude.Maybe BodyMutation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonResponse'bodyMutation
           (\ x__ y__ -> x__ {_CommonResponse'bodyMutation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonResponse "trailers" Proto.Envoy.Config.Core.V3.Base.HeaderMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonResponse'trailers
           (\ x__ y__ -> x__ {_CommonResponse'trailers = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonResponse "maybe'trailers" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonResponse'trailers
           (\ x__ y__ -> x__ {_CommonResponse'trailers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonResponse "clearRouteCache" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonResponse'clearRouteCache
           (\ x__ y__ -> x__ {_CommonResponse'clearRouteCache = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommonResponse where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.CommonResponse"
  packedMessageDescriptor _
    = "\n\
      \\SOCommonResponse\DC2_\n\
      \\ACKstatus\CAN\SOH \SOH(\SO2=.envoy.service.ext_proc.v3alpha.CommonResponse.ResponseStatusR\ACKstatusB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2W\n\
      \\SIheader_mutation\CAN\STX \SOH(\v2..envoy.service.ext_proc.v3alpha.HeaderMutationR\SOheaderMutation\DC2Q\n\
      \\rbody_mutation\CAN\ETX \SOH(\v2,.envoy.service.ext_proc.v3alpha.BodyMutationR\fbodyMutation\DC2;\n\
      \\btrailers\CAN\EOT \SOH(\v2\US.envoy.config.core.v3.HeaderMapR\btrailers\DC2*\n\
      \\DC1clear_route_cache\CAN\ENQ \SOH(\bR\SIclearRouteCache\"8\n\
      \\SOResponseStatus\DC2\f\n\
      \\bCONTINUE\DLE\NUL\DC2\CAN\n\
      \\DC4CONTINUE_AND_REPLACE\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor CommonResponse'ResponseStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor CommonResponse
        headerMutation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_mutation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HeaderMutation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'headerMutation")) ::
              Data.ProtoLens.FieldDescriptor CommonResponse
        bodyMutation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body_mutation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BodyMutation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bodyMutation")) ::
              Data.ProtoLens.FieldDescriptor CommonResponse
        trailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trailers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trailers")) ::
              Data.ProtoLens.FieldDescriptor CommonResponse
        clearRouteCache__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clear_route_cache"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clearRouteCache")) ::
              Data.ProtoLens.FieldDescriptor CommonResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 2, headerMutation__field_descriptor),
           (Data.ProtoLens.Tag 3, bodyMutation__field_descriptor),
           (Data.ProtoLens.Tag 4, trailers__field_descriptor),
           (Data.ProtoLens.Tag 5, clearRouteCache__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommonResponse'_unknownFields
        (\ x__ y__ -> x__ {_CommonResponse'_unknownFields = y__})
  defMessage
    = CommonResponse'_constructor
        {_CommonResponse'status = Data.ProtoLens.fieldDefault,
         _CommonResponse'headerMutation = Prelude.Nothing,
         _CommonResponse'bodyMutation = Prelude.Nothing,
         _CommonResponse'trailers = Prelude.Nothing,
         _CommonResponse'clearRouteCache = Data.ProtoLens.fieldDefault,
         _CommonResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommonResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser CommonResponse
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header_mutation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"headerMutation") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "body_mutation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bodyMutation") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "trailers"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"trailers") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "clear_route_cache"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clearRouteCache") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CommonResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'headerMutation") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'bodyMutation") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'trailers") _x
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
                                  (Data.ProtoLens.Field.field @"clearRouteCache") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData CommonResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommonResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommonResponse'status x__)
                (Control.DeepSeq.deepseq
                   (_CommonResponse'headerMutation x__)
                   (Control.DeepSeq.deepseq
                      (_CommonResponse'bodyMutation x__)
                      (Control.DeepSeq.deepseq
                         (_CommonResponse'trailers x__)
                         (Control.DeepSeq.deepseq
                            (_CommonResponse'clearRouteCache x__) ())))))
newtype CommonResponse'ResponseStatus'UnrecognizedValue
  = CommonResponse'ResponseStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data CommonResponse'ResponseStatus
  = CommonResponse'CONTINUE |
    CommonResponse'CONTINUE_AND_REPLACE |
    CommonResponse'ResponseStatus'Unrecognized !CommonResponse'ResponseStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CommonResponse'ResponseStatus where
  maybeToEnum 0 = Prelude.Just CommonResponse'CONTINUE
  maybeToEnum 1 = Prelude.Just CommonResponse'CONTINUE_AND_REPLACE
  maybeToEnum k
    = Prelude.Just
        (CommonResponse'ResponseStatus'Unrecognized
           (CommonResponse'ResponseStatus'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum CommonResponse'CONTINUE = "CONTINUE"
  showEnum CommonResponse'CONTINUE_AND_REPLACE
    = "CONTINUE_AND_REPLACE"
  showEnum
    (CommonResponse'ResponseStatus'Unrecognized (CommonResponse'ResponseStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "CONTINUE" = Prelude.Just CommonResponse'CONTINUE
    | (Prelude.==) k "CONTINUE_AND_REPLACE"
    = Prelude.Just CommonResponse'CONTINUE_AND_REPLACE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CommonResponse'ResponseStatus where
  minBound = CommonResponse'CONTINUE
  maxBound = CommonResponse'CONTINUE_AND_REPLACE
instance Prelude.Enum CommonResponse'ResponseStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ResponseStatus: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum CommonResponse'CONTINUE = 0
  fromEnum CommonResponse'CONTINUE_AND_REPLACE = 1
  fromEnum
    (CommonResponse'ResponseStatus'Unrecognized (CommonResponse'ResponseStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CommonResponse'CONTINUE_AND_REPLACE
    = Prelude.error
        "CommonResponse'ResponseStatus.succ: bad argument CommonResponse'CONTINUE_AND_REPLACE. This value would be out of bounds."
  succ CommonResponse'CONTINUE = CommonResponse'CONTINUE_AND_REPLACE
  succ (CommonResponse'ResponseStatus'Unrecognized _)
    = Prelude.error
        "CommonResponse'ResponseStatus.succ: bad argument: unrecognized value"
  pred CommonResponse'CONTINUE
    = Prelude.error
        "CommonResponse'ResponseStatus.pred: bad argument CommonResponse'CONTINUE. This value would be out of bounds."
  pred CommonResponse'CONTINUE_AND_REPLACE = CommonResponse'CONTINUE
  pred (CommonResponse'ResponseStatus'Unrecognized _)
    = Prelude.error
        "CommonResponse'ResponseStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CommonResponse'ResponseStatus where
  fieldDefault = CommonResponse'CONTINUE
instance Control.DeepSeq.NFData CommonResponse'ResponseStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.status' @:: Lens' GrpcStatus Data.Word.Word32@ -}
data GrpcStatus
  = GrpcStatus'_constructor {_GrpcStatus'status :: !Data.Word.Word32,
                             _GrpcStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcStatus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcStatus "status" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcStatus'status (\ x__ y__ -> x__ {_GrpcStatus'status = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcStatus where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.GrpcStatus"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \GrpcStatus\DC2\SYN\n\
      \\ACKstatus\CAN\SOH \SOH(\rR\ACKstatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor GrpcStatus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcStatus'_unknownFields
        (\ x__ y__ -> x__ {_GrpcStatus'_unknownFields = y__})
  defMessage
    = GrpcStatus'_constructor
        {_GrpcStatus'status = Data.ProtoLens.fieldDefault,
         _GrpcStatus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcStatus -> Data.ProtoLens.Encoding.Bytes.Parser GrpcStatus
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GrpcStatus"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GrpcStatus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcStatus'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GrpcStatus'status x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.setHeaders' @:: Lens' HeaderMutation [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.vec'setHeaders' @:: Lens' HeaderMutation (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.removeHeaders' @:: Lens' HeaderMutation [Data.Text.Text]@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.vec'removeHeaders' @:: Lens' HeaderMutation (Data.Vector.Vector Data.Text.Text)@ -}
data HeaderMutation
  = HeaderMutation'_constructor {_HeaderMutation'setHeaders :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                 _HeaderMutation'removeHeaders :: !(Data.Vector.Vector Data.Text.Text),
                                 _HeaderMutation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeaderMutation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HeaderMutation "setHeaders" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderMutation'setHeaders
           (\ x__ y__ -> x__ {_HeaderMutation'setHeaders = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HeaderMutation "vec'setHeaders" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderMutation'setHeaders
           (\ x__ y__ -> x__ {_HeaderMutation'setHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HeaderMutation "removeHeaders" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderMutation'removeHeaders
           (\ x__ y__ -> x__ {_HeaderMutation'removeHeaders = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HeaderMutation "vec'removeHeaders" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderMutation'removeHeaders
           (\ x__ y__ -> x__ {_HeaderMutation'removeHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Message HeaderMutation where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.HeaderMutation"
  packedMessageDescriptor _
    = "\n\
      \\SO\&HeaderMutation\DC2H\n\
      \\vset_headers\CAN\SOH \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\n\
      \setHeaders\DC2%\n\
      \\SOremove_headers\CAN\STX \ETX(\tR\rremoveHeaders"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        setHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "set_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"setHeaders")) ::
              Data.ProtoLens.FieldDescriptor HeaderMutation
        removeHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remove_headers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"removeHeaders")) ::
              Data.ProtoLens.FieldDescriptor HeaderMutation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, setHeaders__field_descriptor),
           (Data.ProtoLens.Tag 2, removeHeaders__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HeaderMutation'_unknownFields
        (\ x__ y__ -> x__ {_HeaderMutation'_unknownFields = y__})
  defMessage
    = HeaderMutation'_constructor
        {_HeaderMutation'setHeaders = Data.Vector.Generic.empty,
         _HeaderMutation'removeHeaders = Data.Vector.Generic.empty,
         _HeaderMutation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HeaderMutation
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
                -> Data.ProtoLens.Encoding.Bytes.Parser HeaderMutation
        loop x mutable'removeHeaders mutable'setHeaders
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'removeHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'removeHeaders)
                      frozen'setHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'setHeaders)
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
                              (Data.ProtoLens.Field.field @"vec'removeHeaders")
                              frozen'removeHeaders
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'setHeaders")
                                 frozen'setHeaders
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "set_headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'setHeaders y)
                                loop x mutable'removeHeaders v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "remove_headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'removeHeaders y)
                                loop x v mutable'setHeaders
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'removeHeaders
                                  mutable'setHeaders
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'removeHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'setHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'removeHeaders mutable'setHeaders)
          "HeaderMutation"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'setHeaders") _x))
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
                              Data.Text.Encoding.encodeUtf8
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'removeHeaders") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HeaderMutation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HeaderMutation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HeaderMutation'setHeaders x__)
                (Control.DeepSeq.deepseq (_HeaderMutation'removeHeaders x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.response' @:: Lens' HeadersResponse CommonResponse@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'response' @:: Lens' HeadersResponse (Prelude.Maybe CommonResponse)@ -}
data HeadersResponse
  = HeadersResponse'_constructor {_HeadersResponse'response :: !(Prelude.Maybe CommonResponse),
                                  _HeadersResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeadersResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HeadersResponse "response" CommonResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeadersResponse'response
           (\ x__ y__ -> x__ {_HeadersResponse'response = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HeadersResponse "maybe'response" (Prelude.Maybe CommonResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeadersResponse'response
           (\ x__ y__ -> x__ {_HeadersResponse'response = y__}))
        Prelude.id
instance Data.ProtoLens.Message HeadersResponse where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.HeadersResponse"
  packedMessageDescriptor _
    = "\n\
      \\SIHeadersResponse\DC2J\n\
      \\bresponse\CAN\SOH \SOH(\v2..envoy.service.ext_proc.v3alpha.CommonResponseR\bresponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        response__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'response")) ::
              Data.ProtoLens.FieldDescriptor HeadersResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, response__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HeadersResponse'_unknownFields
        (\ x__ y__ -> x__ {_HeadersResponse'_unknownFields = y__})
  defMessage
    = HeadersResponse'_constructor
        {_HeadersResponse'response = Prelude.Nothing,
         _HeadersResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HeadersResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser HeadersResponse
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
                                       "response"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"response") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeadersResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'response") _x
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
instance Control.DeepSeq.NFData HeadersResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HeadersResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HeadersResponse'response x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.body' @:: Lens' HttpBody Data.ByteString.ByteString@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.endOfStream' @:: Lens' HttpBody Prelude.Bool@ -}
data HttpBody
  = HttpBody'_constructor {_HttpBody'body :: !Data.ByteString.ByteString,
                           _HttpBody'endOfStream :: !Prelude.Bool,
                           _HttpBody'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpBody where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpBody "body" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBody'body (\ x__ y__ -> x__ {_HttpBody'body = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpBody "endOfStream" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpBody'endOfStream
           (\ x__ y__ -> x__ {_HttpBody'endOfStream = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpBody where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.HttpBody"
  packedMessageDescriptor _
    = "\n\
      \\bHttpBody\DC2\DC2\n\
      \\EOTbody\CAN\SOH \SOH(\fR\EOTbody\DC2\"\n\
      \\rend_of_stream\CAN\STX \SOH(\bR\vendOfStream"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"body")) ::
              Data.ProtoLens.FieldDescriptor HttpBody
        endOfStream__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_of_stream"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endOfStream")) ::
              Data.ProtoLens.FieldDescriptor HttpBody
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, body__field_descriptor),
           (Data.ProtoLens.Tag 2, endOfStream__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpBody'_unknownFields
        (\ x__ y__ -> x__ {_HttpBody'_unknownFields = y__})
  defMessage
    = HttpBody'_constructor
        {_HttpBody'body = Data.ProtoLens.fieldDefault,
         _HttpBody'endOfStream = Data.ProtoLens.fieldDefault,
         _HttpBody'_unknownFields = []}
  parseMessage
    = let
        loop :: HttpBody -> Data.ProtoLens.Encoding.Bytes.Parser HttpBody
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "body"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "end_of_stream"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endOfStream") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpBody"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"body") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"endOfStream") _x
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
instance Control.DeepSeq.NFData HttpBody where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpBody'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpBody'body x__)
                (Control.DeepSeq.deepseq (_HttpBody'endOfStream x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.headers' @:: Lens' HttpHeaders Proto.Envoy.Config.Core.V3.Base.HeaderMap@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'headers' @:: Lens' HttpHeaders (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.attributes' @:: Lens' HttpHeaders (Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.endOfStream' @:: Lens' HttpHeaders Prelude.Bool@ -}
data HttpHeaders
  = HttpHeaders'_constructor {_HttpHeaders'headers :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap),
                              _HttpHeaders'attributes :: !(Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Struct.Struct),
                              _HttpHeaders'endOfStream :: !Prelude.Bool,
                              _HttpHeaders'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpHeaders where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpHeaders "headers" Proto.Envoy.Config.Core.V3.Base.HeaderMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeaders'headers
           (\ x__ y__ -> x__ {_HttpHeaders'headers = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpHeaders "maybe'headers" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeaders'headers
           (\ x__ y__ -> x__ {_HttpHeaders'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpHeaders "attributes" (Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeaders'attributes
           (\ x__ y__ -> x__ {_HttpHeaders'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpHeaders "endOfStream" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeaders'endOfStream
           (\ x__ y__ -> x__ {_HttpHeaders'endOfStream = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpHeaders where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.HttpHeaders"
  packedMessageDescriptor _
    = "\n\
      \\vHttpHeaders\DC29\n\
      \\aheaders\CAN\SOH \SOH(\v2\US.envoy.config.core.v3.HeaderMapR\aheaders\DC2[\n\
      \\n\
      \attributes\CAN\STX \ETX(\v2;.envoy.service.ext_proc.v3alpha.HttpHeaders.AttributesEntryR\n\
      \attributes\DC2\"\n\
      \\rend_of_stream\CAN\ETX \SOH(\bR\vendOfStream\SUBV\n\
      \\SIAttributesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2-\n\
      \\ENQvalue\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'headers")) ::
              Data.ProtoLens.FieldDescriptor HttpHeaders
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeaders'AttributesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"attributes")) ::
              Data.ProtoLens.FieldDescriptor HttpHeaders
        endOfStream__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_of_stream"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endOfStream")) ::
              Data.ProtoLens.FieldDescriptor HttpHeaders
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headers__field_descriptor),
           (Data.ProtoLens.Tag 2, attributes__field_descriptor),
           (Data.ProtoLens.Tag 3, endOfStream__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpHeaders'_unknownFields
        (\ x__ y__ -> x__ {_HttpHeaders'_unknownFields = y__})
  defMessage
    = HttpHeaders'_constructor
        {_HttpHeaders'headers = Prelude.Nothing,
         _HttpHeaders'attributes = Data.Map.empty,
         _HttpHeaders'endOfStream = Data.ProtoLens.fieldDefault,
         _HttpHeaders'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpHeaders -> Data.ProtoLens.Encoding.Bytes.Parser HttpHeaders
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
                                       "headers"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"headers") y x)
                        18
                          -> do !(entry :: HttpHeaders'AttributesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                             (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                 Data.ProtoLens.Encoding.Bytes.isolate
                                                                                   (Prelude.fromIntegral
                                                                                      len)
                                                                                   Data.ProtoLens.parseMessage)
                                                                             "attributes"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"attributes")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "end_of_stream"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endOfStream") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpHeaders"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'headers") _x
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
                                          HttpHeaders'AttributesEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"attributes") _x))))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"endOfStream") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData HttpHeaders where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpHeaders'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpHeaders'headers x__)
                (Control.DeepSeq.deepseq
                   (_HttpHeaders'attributes x__)
                   (Control.DeepSeq.deepseq (_HttpHeaders'endOfStream x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.key' @:: Lens' HttpHeaders'AttributesEntry Data.Text.Text@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.value' @:: Lens' HttpHeaders'AttributesEntry Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'value' @:: Lens' HttpHeaders'AttributesEntry (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@ -}
data HttpHeaders'AttributesEntry
  = HttpHeaders'AttributesEntry'_constructor {_HttpHeaders'AttributesEntry'key :: !Data.Text.Text,
                                              _HttpHeaders'AttributesEntry'value :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                              _HttpHeaders'AttributesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpHeaders'AttributesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpHeaders'AttributesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeaders'AttributesEntry'key
           (\ x__ y__ -> x__ {_HttpHeaders'AttributesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpHeaders'AttributesEntry "value" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeaders'AttributesEntry'value
           (\ x__ y__ -> x__ {_HttpHeaders'AttributesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpHeaders'AttributesEntry "maybe'value" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeaders'AttributesEntry'value
           (\ x__ y__ -> x__ {_HttpHeaders'AttributesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpHeaders'AttributesEntry where
  messageName _
    = Data.Text.pack
        "envoy.service.ext_proc.v3alpha.HttpHeaders.AttributesEntry"
  packedMessageDescriptor _
    = "\n\
      \\SIAttributesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2-\n\
      \\ENQvalue\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor HttpHeaders'AttributesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor HttpHeaders'AttributesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpHeaders'AttributesEntry'_unknownFields
        (\ x__ y__
           -> x__ {_HttpHeaders'AttributesEntry'_unknownFields = y__})
  defMessage
    = HttpHeaders'AttributesEntry'_constructor
        {_HttpHeaders'AttributesEntry'key = Data.ProtoLens.fieldDefault,
         _HttpHeaders'AttributesEntry'value = Prelude.Nothing,
         _HttpHeaders'AttributesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpHeaders'AttributesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpHeaders'AttributesEntry
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
          (do loop Data.ProtoLens.defMessage) "AttributesEntry"
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
instance Control.DeepSeq.NFData HttpHeaders'AttributesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpHeaders'AttributesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpHeaders'AttributesEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_HttpHeaders'AttributesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.trailers' @:: Lens' HttpTrailers Proto.Envoy.Config.Core.V3.Base.HeaderMap@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'trailers' @:: Lens' HttpTrailers (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap)@ -}
data HttpTrailers
  = HttpTrailers'_constructor {_HttpTrailers'trailers :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap),
                               _HttpTrailers'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpTrailers where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpTrailers "trailers" Proto.Envoy.Config.Core.V3.Base.HeaderMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpTrailers'trailers
           (\ x__ y__ -> x__ {_HttpTrailers'trailers = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpTrailers "maybe'trailers" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.HeaderMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpTrailers'trailers
           (\ x__ y__ -> x__ {_HttpTrailers'trailers = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpTrailers where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.HttpTrailers"
  packedMessageDescriptor _
    = "\n\
      \\fHttpTrailers\DC2;\n\
      \\btrailers\CAN\SOH \SOH(\v2\US.envoy.config.core.v3.HeaderMapR\btrailers"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        trailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trailers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trailers")) ::
              Data.ProtoLens.FieldDescriptor HttpTrailers
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, trailers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpTrailers'_unknownFields
        (\ x__ y__ -> x__ {_HttpTrailers'_unknownFields = y__})
  defMessage
    = HttpTrailers'_constructor
        {_HttpTrailers'trailers = Prelude.Nothing,
         _HttpTrailers'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpTrailers -> Data.ProtoLens.Encoding.Bytes.Parser HttpTrailers
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
                                       "trailers"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"trailers") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpTrailers"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'trailers") _x
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
instance Control.DeepSeq.NFData HttpTrailers where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpTrailers'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HttpTrailers'trailers x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.status' @:: Lens' ImmediateResponse Proto.Envoy.Type.V3.HttpStatus.HttpStatus@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'status' @:: Lens' ImmediateResponse (Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.headers' @:: Lens' ImmediateResponse HeaderMutation@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'headers' @:: Lens' ImmediateResponse (Prelude.Maybe HeaderMutation)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.body' @:: Lens' ImmediateResponse Data.Text.Text@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.grpcStatus' @:: Lens' ImmediateResponse GrpcStatus@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'grpcStatus' @:: Lens' ImmediateResponse (Prelude.Maybe GrpcStatus)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.details' @:: Lens' ImmediateResponse Data.Text.Text@ -}
data ImmediateResponse
  = ImmediateResponse'_constructor {_ImmediateResponse'status :: !(Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus),
                                    _ImmediateResponse'headers :: !(Prelude.Maybe HeaderMutation),
                                    _ImmediateResponse'body :: !Data.Text.Text,
                                    _ImmediateResponse'grpcStatus :: !(Prelude.Maybe GrpcStatus),
                                    _ImmediateResponse'details :: !Data.Text.Text,
                                    _ImmediateResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ImmediateResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ImmediateResponse "status" Proto.Envoy.Type.V3.HttpStatus.HttpStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ImmediateResponse'status
           (\ x__ y__ -> x__ {_ImmediateResponse'status = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ImmediateResponse "maybe'status" (Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ImmediateResponse'status
           (\ x__ y__ -> x__ {_ImmediateResponse'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ImmediateResponse "headers" HeaderMutation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ImmediateResponse'headers
           (\ x__ y__ -> x__ {_ImmediateResponse'headers = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ImmediateResponse "maybe'headers" (Prelude.Maybe HeaderMutation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ImmediateResponse'headers
           (\ x__ y__ -> x__ {_ImmediateResponse'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ImmediateResponse "body" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ImmediateResponse'body
           (\ x__ y__ -> x__ {_ImmediateResponse'body = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ImmediateResponse "grpcStatus" GrpcStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ImmediateResponse'grpcStatus
           (\ x__ y__ -> x__ {_ImmediateResponse'grpcStatus = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ImmediateResponse "maybe'grpcStatus" (Prelude.Maybe GrpcStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ImmediateResponse'grpcStatus
           (\ x__ y__ -> x__ {_ImmediateResponse'grpcStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ImmediateResponse "details" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ImmediateResponse'details
           (\ x__ y__ -> x__ {_ImmediateResponse'details = y__}))
        Prelude.id
instance Data.ProtoLens.Message ImmediateResponse where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.ImmediateResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1ImmediateResponse\DC2;\n\
      \\ACKstatus\CAN\SOH \SOH(\v2\EM.envoy.type.v3.HttpStatusR\ACKstatusB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2H\n\
      \\aheaders\CAN\STX \SOH(\v2..envoy.service.ext_proc.v3alpha.HeaderMutationR\aheaders\DC2\DC2\n\
      \\EOTbody\CAN\ETX \SOH(\tR\EOTbody\DC2K\n\
      \\vgrpc_status\CAN\EOT \SOH(\v2*.envoy.service.ext_proc.v3alpha.GrpcStatusR\n\
      \grpcStatus\DC2\CAN\n\
      \\adetails\CAN\ENQ \SOH(\tR\adetails"
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
              Data.ProtoLens.FieldDescriptor ImmediateResponse
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HeaderMutation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'headers")) ::
              Data.ProtoLens.FieldDescriptor ImmediateResponse
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"body")) ::
              Data.ProtoLens.FieldDescriptor ImmediateResponse
        grpcStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_status"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcStatus)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcStatus")) ::
              Data.ProtoLens.FieldDescriptor ImmediateResponse
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"details")) ::
              Data.ProtoLens.FieldDescriptor ImmediateResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 2, headers__field_descriptor),
           (Data.ProtoLens.Tag 3, body__field_descriptor),
           (Data.ProtoLens.Tag 4, grpcStatus__field_descriptor),
           (Data.ProtoLens.Tag 5, details__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ImmediateResponse'_unknownFields
        (\ x__ y__ -> x__ {_ImmediateResponse'_unknownFields = y__})
  defMessage
    = ImmediateResponse'_constructor
        {_ImmediateResponse'status = Prelude.Nothing,
         _ImmediateResponse'headers = Prelude.Nothing,
         _ImmediateResponse'body = Data.ProtoLens.fieldDefault,
         _ImmediateResponse'grpcStatus = Prelude.Nothing,
         _ImmediateResponse'details = Data.ProtoLens.fieldDefault,
         _ImmediateResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ImmediateResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser ImmediateResponse
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "headers"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"headers") y x)
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
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grpc_status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grpcStatus") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "details"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"details") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ImmediateResponse"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'headers") _x
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'grpcStatus") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"details") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData ImmediateResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ImmediateResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ImmediateResponse'status x__)
                (Control.DeepSeq.deepseq
                   (_ImmediateResponse'headers x__)
                   (Control.DeepSeq.deepseq
                      (_ImmediateResponse'body x__)
                      (Control.DeepSeq.deepseq
                         (_ImmediateResponse'grpcStatus x__)
                         (Control.DeepSeq.deepseq (_ImmediateResponse'details x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.asyncMode' @:: Lens' ProcessingRequest Prelude.Bool@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'request' @:: Lens' ProcessingRequest (Prelude.Maybe ProcessingRequest'Request)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'requestHeaders' @:: Lens' ProcessingRequest (Prelude.Maybe HttpHeaders)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.requestHeaders' @:: Lens' ProcessingRequest HttpHeaders@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'responseHeaders' @:: Lens' ProcessingRequest (Prelude.Maybe HttpHeaders)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.responseHeaders' @:: Lens' ProcessingRequest HttpHeaders@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'requestBody' @:: Lens' ProcessingRequest (Prelude.Maybe HttpBody)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.requestBody' @:: Lens' ProcessingRequest HttpBody@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'responseBody' @:: Lens' ProcessingRequest (Prelude.Maybe HttpBody)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.responseBody' @:: Lens' ProcessingRequest HttpBody@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'requestTrailers' @:: Lens' ProcessingRequest (Prelude.Maybe HttpTrailers)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.requestTrailers' @:: Lens' ProcessingRequest HttpTrailers@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'responseTrailers' @:: Lens' ProcessingRequest (Prelude.Maybe HttpTrailers)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.responseTrailers' @:: Lens' ProcessingRequest HttpTrailers@ -}
data ProcessingRequest
  = ProcessingRequest'_constructor {_ProcessingRequest'asyncMode :: !Prelude.Bool,
                                    _ProcessingRequest'request :: !(Prelude.Maybe ProcessingRequest'Request),
                                    _ProcessingRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessingRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ProcessingRequest'Request
  = ProcessingRequest'RequestHeaders !HttpHeaders |
    ProcessingRequest'ResponseHeaders !HttpHeaders |
    ProcessingRequest'RequestBody !HttpBody |
    ProcessingRequest'ResponseBody !HttpBody |
    ProcessingRequest'RequestTrailers !HttpTrailers |
    ProcessingRequest'ResponseTrailers !HttpTrailers
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ProcessingRequest "asyncMode" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'asyncMode
           (\ x__ y__ -> x__ {_ProcessingRequest'asyncMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessingRequest "maybe'request" (Prelude.Maybe ProcessingRequest'Request) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessingRequest "maybe'requestHeaders" (Prelude.Maybe HttpHeaders) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingRequest'RequestHeaders x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingRequest'RequestHeaders y__))
instance Data.ProtoLens.Field.HasField ProcessingRequest "requestHeaders" HttpHeaders where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingRequest'RequestHeaders x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingRequest'RequestHeaders y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingRequest "maybe'responseHeaders" (Prelude.Maybe HttpHeaders) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingRequest'ResponseHeaders x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingRequest'ResponseHeaders y__))
instance Data.ProtoLens.Field.HasField ProcessingRequest "responseHeaders" HttpHeaders where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingRequest'ResponseHeaders x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingRequest'ResponseHeaders y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingRequest "maybe'requestBody" (Prelude.Maybe HttpBody) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingRequest'RequestBody x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingRequest'RequestBody y__))
instance Data.ProtoLens.Field.HasField ProcessingRequest "requestBody" HttpBody where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingRequest'RequestBody x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingRequest'RequestBody y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingRequest "maybe'responseBody" (Prelude.Maybe HttpBody) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingRequest'ResponseBody x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingRequest'ResponseBody y__))
instance Data.ProtoLens.Field.HasField ProcessingRequest "responseBody" HttpBody where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingRequest'ResponseBody x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingRequest'ResponseBody y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingRequest "maybe'requestTrailers" (Prelude.Maybe HttpTrailers) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingRequest'RequestTrailers x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingRequest'RequestTrailers y__))
instance Data.ProtoLens.Field.HasField ProcessingRequest "requestTrailers" HttpTrailers where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingRequest'RequestTrailers x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingRequest'RequestTrailers y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingRequest "maybe'responseTrailers" (Prelude.Maybe HttpTrailers) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingRequest'ResponseTrailers x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingRequest'ResponseTrailers y__))
instance Data.ProtoLens.Field.HasField ProcessingRequest "responseTrailers" HttpTrailers where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingRequest'request
           (\ x__ y__ -> x__ {_ProcessingRequest'request = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingRequest'ResponseTrailers x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingRequest'ResponseTrailers y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ProcessingRequest where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.ProcessingRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC1ProcessingRequest\DC2\GS\n\
      \\n\
      \async_mode\CAN\SOH \SOH(\bR\tasyncMode\DC2V\n\
      \\SIrequest_headers\CAN\STX \SOH(\v2+.envoy.service.ext_proc.v3alpha.HttpHeadersH\NULR\SOrequestHeaders\DC2X\n\
      \\DLEresponse_headers\CAN\ETX \SOH(\v2+.envoy.service.ext_proc.v3alpha.HttpHeadersH\NULR\SIresponseHeaders\DC2M\n\
      \\frequest_body\CAN\EOT \SOH(\v2(.envoy.service.ext_proc.v3alpha.HttpBodyH\NULR\vrequestBody\DC2O\n\
      \\rresponse_body\CAN\ENQ \SOH(\v2(.envoy.service.ext_proc.v3alpha.HttpBodyH\NULR\fresponseBody\DC2Y\n\
      \\DLErequest_trailers\CAN\ACK \SOH(\v2,.envoy.service.ext_proc.v3alpha.HttpTrailersH\NULR\SIrequestTrailers\DC2[\n\
      \\DC1response_trailers\CAN\a \SOH(\v2,.envoy.service.ext_proc.v3alpha.HttpTrailersH\NULR\DLEresponseTrailersB\SO\n\
      \\arequest\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        asyncMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "async_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"asyncMode")) ::
              Data.ProtoLens.FieldDescriptor ProcessingRequest
        requestHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeaders)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestHeaders")) ::
              Data.ProtoLens.FieldDescriptor ProcessingRequest
        responseHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeaders)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseHeaders")) ::
              Data.ProtoLens.FieldDescriptor ProcessingRequest
        requestBody__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpBody)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestBody")) ::
              Data.ProtoLens.FieldDescriptor ProcessingRequest
        responseBody__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpBody)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseBody")) ::
              Data.ProtoLens.FieldDescriptor ProcessingRequest
        requestTrailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_trailers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpTrailers)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestTrailers")) ::
              Data.ProtoLens.FieldDescriptor ProcessingRequest
        responseTrailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_trailers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpTrailers)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseTrailers")) ::
              Data.ProtoLens.FieldDescriptor ProcessingRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, asyncMode__field_descriptor),
           (Data.ProtoLens.Tag 2, requestHeaders__field_descriptor),
           (Data.ProtoLens.Tag 3, responseHeaders__field_descriptor),
           (Data.ProtoLens.Tag 4, requestBody__field_descriptor),
           (Data.ProtoLens.Tag 5, responseBody__field_descriptor),
           (Data.ProtoLens.Tag 6, requestTrailers__field_descriptor),
           (Data.ProtoLens.Tag 7, responseTrailers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessingRequest'_unknownFields
        (\ x__ y__ -> x__ {_ProcessingRequest'_unknownFields = y__})
  defMessage
    = ProcessingRequest'_constructor
        {_ProcessingRequest'asyncMode = Data.ProtoLens.fieldDefault,
         _ProcessingRequest'request = Prelude.Nothing,
         _ProcessingRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessingRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser ProcessingRequest
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "async_mode"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"asyncMode") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestHeaders") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseHeaders") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_body"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestBody") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_body"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseBody") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_trailers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestTrailers") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_trailers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseTrailers") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProcessingRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"asyncMode") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'request") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (ProcessingRequest'RequestHeaders v))
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
                   (Prelude.Just (ProcessingRequest'ResponseHeaders v))
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
                   (Prelude.Just (ProcessingRequest'RequestBody v))
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
                   (Prelude.Just (ProcessingRequest'ResponseBody v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (ProcessingRequest'RequestTrailers v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (ProcessingRequest'ResponseTrailers v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
instance Control.DeepSeq.NFData ProcessingRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessingRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProcessingRequest'asyncMode x__)
                (Control.DeepSeq.deepseq (_ProcessingRequest'request x__) ()))
instance Control.DeepSeq.NFData ProcessingRequest'Request where
  rnf (ProcessingRequest'RequestHeaders x__)
    = Control.DeepSeq.rnf x__
  rnf (ProcessingRequest'ResponseHeaders x__)
    = Control.DeepSeq.rnf x__
  rnf (ProcessingRequest'RequestBody x__) = Control.DeepSeq.rnf x__
  rnf (ProcessingRequest'ResponseBody x__) = Control.DeepSeq.rnf x__
  rnf (ProcessingRequest'RequestTrailers x__)
    = Control.DeepSeq.rnf x__
  rnf (ProcessingRequest'ResponseTrailers x__)
    = Control.DeepSeq.rnf x__
_ProcessingRequest'RequestHeaders ::
  Data.ProtoLens.Prism.Prism' ProcessingRequest'Request HttpHeaders
_ProcessingRequest'RequestHeaders
  = Data.ProtoLens.Prism.prism'
      ProcessingRequest'RequestHeaders
      (\ p__
         -> case p__ of
              (ProcessingRequest'RequestHeaders p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingRequest'ResponseHeaders ::
  Data.ProtoLens.Prism.Prism' ProcessingRequest'Request HttpHeaders
_ProcessingRequest'ResponseHeaders
  = Data.ProtoLens.Prism.prism'
      ProcessingRequest'ResponseHeaders
      (\ p__
         -> case p__ of
              (ProcessingRequest'ResponseHeaders p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingRequest'RequestBody ::
  Data.ProtoLens.Prism.Prism' ProcessingRequest'Request HttpBody
_ProcessingRequest'RequestBody
  = Data.ProtoLens.Prism.prism'
      ProcessingRequest'RequestBody
      (\ p__
         -> case p__ of
              (ProcessingRequest'RequestBody p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingRequest'ResponseBody ::
  Data.ProtoLens.Prism.Prism' ProcessingRequest'Request HttpBody
_ProcessingRequest'ResponseBody
  = Data.ProtoLens.Prism.prism'
      ProcessingRequest'ResponseBody
      (\ p__
         -> case p__ of
              (ProcessingRequest'ResponseBody p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingRequest'RequestTrailers ::
  Data.ProtoLens.Prism.Prism' ProcessingRequest'Request HttpTrailers
_ProcessingRequest'RequestTrailers
  = Data.ProtoLens.Prism.prism'
      ProcessingRequest'RequestTrailers
      (\ p__
         -> case p__ of
              (ProcessingRequest'RequestTrailers p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingRequest'ResponseTrailers ::
  Data.ProtoLens.Prism.Prism' ProcessingRequest'Request HttpTrailers
_ProcessingRequest'ResponseTrailers
  = Data.ProtoLens.Prism.prism'
      ProcessingRequest'ResponseTrailers
      (\ p__
         -> case p__ of
              (ProcessingRequest'ResponseTrailers p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.dynamicMetadata' @:: Lens' ProcessingResponse Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'dynamicMetadata' @:: Lens' ProcessingResponse (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.modeOverride' @:: Lens' ProcessingResponse Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'modeOverride' @:: Lens' ProcessingResponse (Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'response' @:: Lens' ProcessingResponse (Prelude.Maybe ProcessingResponse'Response)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'requestHeaders' @:: Lens' ProcessingResponse (Prelude.Maybe HeadersResponse)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.requestHeaders' @:: Lens' ProcessingResponse HeadersResponse@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'responseHeaders' @:: Lens' ProcessingResponse (Prelude.Maybe HeadersResponse)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.responseHeaders' @:: Lens' ProcessingResponse HeadersResponse@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'requestBody' @:: Lens' ProcessingResponse (Prelude.Maybe BodyResponse)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.requestBody' @:: Lens' ProcessingResponse BodyResponse@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'responseBody' @:: Lens' ProcessingResponse (Prelude.Maybe BodyResponse)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.responseBody' @:: Lens' ProcessingResponse BodyResponse@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'requestTrailers' @:: Lens' ProcessingResponse (Prelude.Maybe TrailersResponse)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.requestTrailers' @:: Lens' ProcessingResponse TrailersResponse@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'responseTrailers' @:: Lens' ProcessingResponse (Prelude.Maybe TrailersResponse)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.responseTrailers' @:: Lens' ProcessingResponse TrailersResponse@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'immediateResponse' @:: Lens' ProcessingResponse (Prelude.Maybe ImmediateResponse)@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.immediateResponse' @:: Lens' ProcessingResponse ImmediateResponse@ -}
data ProcessingResponse
  = ProcessingResponse'_constructor {_ProcessingResponse'dynamicMetadata :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                     _ProcessingResponse'modeOverride :: !(Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode),
                                     _ProcessingResponse'response :: !(Prelude.Maybe ProcessingResponse'Response),
                                     _ProcessingResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessingResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ProcessingResponse'Response
  = ProcessingResponse'RequestHeaders !HeadersResponse |
    ProcessingResponse'ResponseHeaders !HeadersResponse |
    ProcessingResponse'RequestBody !BodyResponse |
    ProcessingResponse'ResponseBody !BodyResponse |
    ProcessingResponse'RequestTrailers !TrailersResponse |
    ProcessingResponse'ResponseTrailers !TrailersResponse |
    ProcessingResponse'ImmediateResponse !ImmediateResponse
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ProcessingResponse "dynamicMetadata" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'dynamicMetadata
           (\ x__ y__ -> x__ {_ProcessingResponse'dynamicMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ProcessingResponse "maybe'dynamicMetadata" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'dynamicMetadata
           (\ x__ y__ -> x__ {_ProcessingResponse'dynamicMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessingResponse "modeOverride" Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'modeOverride
           (\ x__ y__ -> x__ {_ProcessingResponse'modeOverride = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ProcessingResponse "maybe'modeOverride" (Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'modeOverride
           (\ x__ y__ -> x__ {_ProcessingResponse'modeOverride = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessingResponse "maybe'response" (Prelude.Maybe ProcessingResponse'Response) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessingResponse "maybe'requestHeaders" (Prelude.Maybe HeadersResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingResponse'RequestHeaders x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingResponse'RequestHeaders y__))
instance Data.ProtoLens.Field.HasField ProcessingResponse "requestHeaders" HeadersResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingResponse'RequestHeaders x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingResponse'RequestHeaders y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingResponse "maybe'responseHeaders" (Prelude.Maybe HeadersResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingResponse'ResponseHeaders x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingResponse'ResponseHeaders y__))
instance Data.ProtoLens.Field.HasField ProcessingResponse "responseHeaders" HeadersResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingResponse'ResponseHeaders x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingResponse'ResponseHeaders y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingResponse "maybe'requestBody" (Prelude.Maybe BodyResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingResponse'RequestBody x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingResponse'RequestBody y__))
instance Data.ProtoLens.Field.HasField ProcessingResponse "requestBody" BodyResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingResponse'RequestBody x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingResponse'RequestBody y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingResponse "maybe'responseBody" (Prelude.Maybe BodyResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingResponse'ResponseBody x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingResponse'ResponseBody y__))
instance Data.ProtoLens.Field.HasField ProcessingResponse "responseBody" BodyResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingResponse'ResponseBody x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingResponse'ResponseBody y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingResponse "maybe'requestTrailers" (Prelude.Maybe TrailersResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingResponse'RequestTrailers x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingResponse'RequestTrailers y__))
instance Data.ProtoLens.Field.HasField ProcessingResponse "requestTrailers" TrailersResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingResponse'RequestTrailers x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingResponse'RequestTrailers y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingResponse "maybe'responseTrailers" (Prelude.Maybe TrailersResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingResponse'ResponseTrailers x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingResponse'ResponseTrailers y__))
instance Data.ProtoLens.Field.HasField ProcessingResponse "responseTrailers" TrailersResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingResponse'ResponseTrailers x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingResponse'ResponseTrailers y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ProcessingResponse "maybe'immediateResponse" (Prelude.Maybe ImmediateResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ProcessingResponse'ImmediateResponse x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ProcessingResponse'ImmediateResponse y__))
instance Data.ProtoLens.Field.HasField ProcessingResponse "immediateResponse" ImmediateResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingResponse'response
           (\ x__ y__ -> x__ {_ProcessingResponse'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ProcessingResponse'ImmediateResponse x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ProcessingResponse'ImmediateResponse y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ProcessingResponse where
  messageName _
    = Data.Text.pack
        "envoy.service.ext_proc.v3alpha.ProcessingResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2ProcessingResponse\DC2Z\n\
      \\SIrequest_headers\CAN\SOH \SOH(\v2/.envoy.service.ext_proc.v3alpha.HeadersResponseH\NULR\SOrequestHeaders\DC2\\\n\
      \\DLEresponse_headers\CAN\STX \SOH(\v2/.envoy.service.ext_proc.v3alpha.HeadersResponseH\NULR\SIresponseHeaders\DC2Q\n\
      \\frequest_body\CAN\ETX \SOH(\v2,.envoy.service.ext_proc.v3alpha.BodyResponseH\NULR\vrequestBody\DC2S\n\
      \\rresponse_body\CAN\EOT \SOH(\v2,.envoy.service.ext_proc.v3alpha.BodyResponseH\NULR\fresponseBody\DC2]\n\
      \\DLErequest_trailers\CAN\ENQ \SOH(\v20.envoy.service.ext_proc.v3alpha.TrailersResponseH\NULR\SIrequestTrailers\DC2_\n\
      \\DC1response_trailers\CAN\ACK \SOH(\v20.envoy.service.ext_proc.v3alpha.TrailersResponseH\NULR\DLEresponseTrailers\DC2b\n\
      \\DC2immediate_response\CAN\a \SOH(\v21.envoy.service.ext_proc.v3alpha.ImmediateResponseH\NULR\DC1immediateResponse\DC2B\n\
      \\DLEdynamic_metadata\CAN\b \SOH(\v2\ETB.google.protobuf.StructR\SIdynamicMetadata\DC2c\n\
      \\rmode_override\CAN\t \SOH(\v2>.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingModeR\fmodeOverrideB\SI\n\
      \\bresponse\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dynamicMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dynamicMetadata")) ::
              Data.ProtoLens.FieldDescriptor ProcessingResponse
        modeOverride__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode_override"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'modeOverride")) ::
              Data.ProtoLens.FieldDescriptor ProcessingResponse
        requestHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HeadersResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestHeaders")) ::
              Data.ProtoLens.FieldDescriptor ProcessingResponse
        responseHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HeadersResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseHeaders")) ::
              Data.ProtoLens.FieldDescriptor ProcessingResponse
        requestBody__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BodyResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestBody")) ::
              Data.ProtoLens.FieldDescriptor ProcessingResponse
        responseBody__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BodyResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseBody")) ::
              Data.ProtoLens.FieldDescriptor ProcessingResponse
        requestTrailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_trailers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TrailersResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestTrailers")) ::
              Data.ProtoLens.FieldDescriptor ProcessingResponse
        responseTrailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_trailers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TrailersResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseTrailers")) ::
              Data.ProtoLens.FieldDescriptor ProcessingResponse
        immediateResponse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "immediate_response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ImmediateResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'immediateResponse")) ::
              Data.ProtoLens.FieldDescriptor ProcessingResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 8, dynamicMetadata__field_descriptor),
           (Data.ProtoLens.Tag 9, modeOverride__field_descriptor),
           (Data.ProtoLens.Tag 1, requestHeaders__field_descriptor),
           (Data.ProtoLens.Tag 2, responseHeaders__field_descriptor),
           (Data.ProtoLens.Tag 3, requestBody__field_descriptor),
           (Data.ProtoLens.Tag 4, responseBody__field_descriptor),
           (Data.ProtoLens.Tag 5, requestTrailers__field_descriptor),
           (Data.ProtoLens.Tag 6, responseTrailers__field_descriptor),
           (Data.ProtoLens.Tag 7, immediateResponse__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessingResponse'_unknownFields
        (\ x__ y__ -> x__ {_ProcessingResponse'_unknownFields = y__})
  defMessage
    = ProcessingResponse'_constructor
        {_ProcessingResponse'dynamicMetadata = Prelude.Nothing,
         _ProcessingResponse'modeOverride = Prelude.Nothing,
         _ProcessingResponse'response = Prelude.Nothing,
         _ProcessingResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessingResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser ProcessingResponse
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
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dynamic_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dynamicMetadata") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "mode_override"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"modeOverride") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestHeaders") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseHeaders") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_body"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestBody") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_body"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseBody") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_trailers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestTrailers") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_trailers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseTrailers") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "immediate_response"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"immediateResponse") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProcessingResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'dynamicMetadata") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'modeOverride") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'response") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (ProcessingResponse'RequestHeaders v))
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
                      (Prelude.Just (ProcessingResponse'ResponseHeaders v))
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
                      (Prelude.Just (ProcessingResponse'RequestBody v))
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
                      (Prelude.Just (ProcessingResponse'ResponseBody v))
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
                      (Prelude.Just (ProcessingResponse'RequestTrailers v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v)
                      (Prelude.Just (ProcessingResponse'ResponseTrailers v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v)
                      (Prelude.Just (ProcessingResponse'ImmediateResponse v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
instance Control.DeepSeq.NFData ProcessingResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessingResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProcessingResponse'dynamicMetadata x__)
                (Control.DeepSeq.deepseq
                   (_ProcessingResponse'modeOverride x__)
                   (Control.DeepSeq.deepseq (_ProcessingResponse'response x__) ())))
instance Control.DeepSeq.NFData ProcessingResponse'Response where
  rnf (ProcessingResponse'RequestHeaders x__)
    = Control.DeepSeq.rnf x__
  rnf (ProcessingResponse'ResponseHeaders x__)
    = Control.DeepSeq.rnf x__
  rnf (ProcessingResponse'RequestBody x__) = Control.DeepSeq.rnf x__
  rnf (ProcessingResponse'ResponseBody x__) = Control.DeepSeq.rnf x__
  rnf (ProcessingResponse'RequestTrailers x__)
    = Control.DeepSeq.rnf x__
  rnf (ProcessingResponse'ResponseTrailers x__)
    = Control.DeepSeq.rnf x__
  rnf (ProcessingResponse'ImmediateResponse x__)
    = Control.DeepSeq.rnf x__
_ProcessingResponse'RequestHeaders ::
  Data.ProtoLens.Prism.Prism' ProcessingResponse'Response HeadersResponse
_ProcessingResponse'RequestHeaders
  = Data.ProtoLens.Prism.prism'
      ProcessingResponse'RequestHeaders
      (\ p__
         -> case p__ of
              (ProcessingResponse'RequestHeaders p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingResponse'ResponseHeaders ::
  Data.ProtoLens.Prism.Prism' ProcessingResponse'Response HeadersResponse
_ProcessingResponse'ResponseHeaders
  = Data.ProtoLens.Prism.prism'
      ProcessingResponse'ResponseHeaders
      (\ p__
         -> case p__ of
              (ProcessingResponse'ResponseHeaders p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingResponse'RequestBody ::
  Data.ProtoLens.Prism.Prism' ProcessingResponse'Response BodyResponse
_ProcessingResponse'RequestBody
  = Data.ProtoLens.Prism.prism'
      ProcessingResponse'RequestBody
      (\ p__
         -> case p__ of
              (ProcessingResponse'RequestBody p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingResponse'ResponseBody ::
  Data.ProtoLens.Prism.Prism' ProcessingResponse'Response BodyResponse
_ProcessingResponse'ResponseBody
  = Data.ProtoLens.Prism.prism'
      ProcessingResponse'ResponseBody
      (\ p__
         -> case p__ of
              (ProcessingResponse'ResponseBody p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingResponse'RequestTrailers ::
  Data.ProtoLens.Prism.Prism' ProcessingResponse'Response TrailersResponse
_ProcessingResponse'RequestTrailers
  = Data.ProtoLens.Prism.prism'
      ProcessingResponse'RequestTrailers
      (\ p__
         -> case p__ of
              (ProcessingResponse'RequestTrailers p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingResponse'ResponseTrailers ::
  Data.ProtoLens.Prism.Prism' ProcessingResponse'Response TrailersResponse
_ProcessingResponse'ResponseTrailers
  = Data.ProtoLens.Prism.prism'
      ProcessingResponse'ResponseTrailers
      (\ p__
         -> case p__ of
              (ProcessingResponse'ResponseTrailers p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ProcessingResponse'ImmediateResponse ::
  Data.ProtoLens.Prism.Prism' ProcessingResponse'Response ImmediateResponse
_ProcessingResponse'ImmediateResponse
  = Data.ProtoLens.Prism.prism'
      ProcessingResponse'ImmediateResponse
      (\ p__
         -> case p__ of
              (ProcessingResponse'ImmediateResponse p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.headerMutation' @:: Lens' TrailersResponse HeaderMutation@
         * 'Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields.maybe'headerMutation' @:: Lens' TrailersResponse (Prelude.Maybe HeaderMutation)@ -}
data TrailersResponse
  = TrailersResponse'_constructor {_TrailersResponse'headerMutation :: !(Prelude.Maybe HeaderMutation),
                                   _TrailersResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrailersResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrailersResponse "headerMutation" HeaderMutation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrailersResponse'headerMutation
           (\ x__ y__ -> x__ {_TrailersResponse'headerMutation = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TrailersResponse "maybe'headerMutation" (Prelude.Maybe HeaderMutation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrailersResponse'headerMutation
           (\ x__ y__ -> x__ {_TrailersResponse'headerMutation = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrailersResponse where
  messageName _
    = Data.Text.pack "envoy.service.ext_proc.v3alpha.TrailersResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLETrailersResponse\DC2W\n\
      \\SIheader_mutation\CAN\SOH \SOH(\v2..envoy.service.ext_proc.v3alpha.HeaderMutationR\SOheaderMutation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headerMutation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_mutation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HeaderMutation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'headerMutation")) ::
              Data.ProtoLens.FieldDescriptor TrailersResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headerMutation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrailersResponse'_unknownFields
        (\ x__ y__ -> x__ {_TrailersResponse'_unknownFields = y__})
  defMessage
    = TrailersResponse'_constructor
        {_TrailersResponse'headerMutation = Prelude.Nothing,
         _TrailersResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrailersResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser TrailersResponse
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
                                       "header_mutation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"headerMutation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrailersResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'headerMutation") _x
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
instance Control.DeepSeq.NFData TrailersResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrailersResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TrailersResponse'headerMutation x__) ())
data ExternalProcessor = ExternalProcessor {}
instance Data.ProtoLens.Service.Types.Service ExternalProcessor where
  type ServiceName ExternalProcessor = "ExternalProcessor"
  type ServicePackage ExternalProcessor = "envoy.service.ext_proc.v3alpha"
  type ServiceMethods ExternalProcessor = '["process"]
instance Data.ProtoLens.Service.Types.HasMethodImpl ExternalProcessor "process" where
  type MethodName ExternalProcessor "process" = "Process"
  type MethodInput ExternalProcessor "process" = ProcessingRequest
  type MethodOutput ExternalProcessor "process" = ProcessingResponse
  type MethodStreamingType ExternalProcessor "process" = 'Data.ProtoLens.Service.Types.BiDiStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \7envoy/service/ext_proc/v3alpha/external_processor.proto\DC2\RSenvoy.service.ext_proc.v3alpha\SUB\USenvoy/config/core/v3/base.proto\SUBDenvoy/extensions/filters/http/ext_proc/v3alpha/processing_mode.proto\SUB\USenvoy/type/v3/http_status.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\204\EOT\n\
    \\DC1ProcessingRequest\DC2\GS\n\
    \\n\
    \async_mode\CAN\SOH \SOH(\bR\tasyncMode\DC2V\n\
    \\SIrequest_headers\CAN\STX \SOH(\v2+.envoy.service.ext_proc.v3alpha.HttpHeadersH\NULR\SOrequestHeaders\DC2X\n\
    \\DLEresponse_headers\CAN\ETX \SOH(\v2+.envoy.service.ext_proc.v3alpha.HttpHeadersH\NULR\SIresponseHeaders\DC2M\n\
    \\frequest_body\CAN\EOT \SOH(\v2(.envoy.service.ext_proc.v3alpha.HttpBodyH\NULR\vrequestBody\DC2O\n\
    \\rresponse_body\CAN\ENQ \SOH(\v2(.envoy.service.ext_proc.v3alpha.HttpBodyH\NULR\fresponseBody\DC2Y\n\
    \\DLErequest_trailers\CAN\ACK \SOH(\v2,.envoy.service.ext_proc.v3alpha.HttpTrailersH\NULR\SIrequestTrailers\DC2[\n\
    \\DC1response_trailers\CAN\a \SOH(\v2,.envoy.service.ext_proc.v3alpha.HttpTrailersH\NULR\DLEresponseTrailersB\SO\n\
    \\arequest\DC2\ETX\248B\SOH\"\212\ACK\n\
    \\DC2ProcessingResponse\DC2Z\n\
    \\SIrequest_headers\CAN\SOH \SOH(\v2/.envoy.service.ext_proc.v3alpha.HeadersResponseH\NULR\SOrequestHeaders\DC2\\\n\
    \\DLEresponse_headers\CAN\STX \SOH(\v2/.envoy.service.ext_proc.v3alpha.HeadersResponseH\NULR\SIresponseHeaders\DC2Q\n\
    \\frequest_body\CAN\ETX \SOH(\v2,.envoy.service.ext_proc.v3alpha.BodyResponseH\NULR\vrequestBody\DC2S\n\
    \\rresponse_body\CAN\EOT \SOH(\v2,.envoy.service.ext_proc.v3alpha.BodyResponseH\NULR\fresponseBody\DC2]\n\
    \\DLErequest_trailers\CAN\ENQ \SOH(\v20.envoy.service.ext_proc.v3alpha.TrailersResponseH\NULR\SIrequestTrailers\DC2_\n\
    \\DC1response_trailers\CAN\ACK \SOH(\v20.envoy.service.ext_proc.v3alpha.TrailersResponseH\NULR\DLEresponseTrailers\DC2b\n\
    \\DC2immediate_response\CAN\a \SOH(\v21.envoy.service.ext_proc.v3alpha.ImmediateResponseH\NULR\DC1immediateResponse\DC2B\n\
    \\DLEdynamic_metadata\CAN\b \SOH(\v2\ETB.google.protobuf.StructR\SIdynamicMetadata\DC2c\n\
    \\rmode_override\CAN\t \SOH(\v2>.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingModeR\fmodeOverrideB\SI\n\
    \\bresponse\DC2\ETX\248B\SOH\"\161\STX\n\
    \\vHttpHeaders\DC29\n\
    \\aheaders\CAN\SOH \SOH(\v2\US.envoy.config.core.v3.HeaderMapR\aheaders\DC2[\n\
    \\n\
    \attributes\CAN\STX \ETX(\v2;.envoy.service.ext_proc.v3alpha.HttpHeaders.AttributesEntryR\n\
    \attributes\DC2\"\n\
    \\rend_of_stream\CAN\ETX \SOH(\bR\vendOfStream\SUBV\n\
    \\SIAttributesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2-\n\
    \\ENQvalue\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQvalue:\STX8\SOH\"B\n\
    \\bHttpBody\DC2\DC2\n\
    \\EOTbody\CAN\SOH \SOH(\fR\EOTbody\DC2\"\n\
    \\rend_of_stream\CAN\STX \SOH(\bR\vendOfStream\"K\n\
    \\fHttpTrailers\DC2;\n\
    \\btrailers\CAN\SOH \SOH(\v2\US.envoy.config.core.v3.HeaderMapR\btrailers\"]\n\
    \\SIHeadersResponse\DC2J\n\
    \\bresponse\CAN\SOH \SOH(\v2..envoy.service.ext_proc.v3alpha.CommonResponseR\bresponse\"k\n\
    \\DLETrailersResponse\DC2W\n\
    \\SIheader_mutation\CAN\SOH \SOH(\v2..envoy.service.ext_proc.v3alpha.HeaderMutationR\SOheaderMutation\"Z\n\
    \\fBodyResponse\DC2J\n\
    \\bresponse\CAN\SOH \SOH(\v2..envoy.service.ext_proc.v3alpha.CommonResponseR\bresponse\"\192\ETX\n\
    \\SOCommonResponse\DC2_\n\
    \\ACKstatus\CAN\SOH \SOH(\SO2=.envoy.service.ext_proc.v3alpha.CommonResponse.ResponseStatusR\ACKstatusB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2W\n\
    \\SIheader_mutation\CAN\STX \SOH(\v2..envoy.service.ext_proc.v3alpha.HeaderMutationR\SOheaderMutation\DC2Q\n\
    \\rbody_mutation\CAN\ETX \SOH(\v2,.envoy.service.ext_proc.v3alpha.BodyMutationR\fbodyMutation\DC2;\n\
    \\btrailers\CAN\EOT \SOH(\v2\US.envoy.config.core.v3.HeaderMapR\btrailers\DC2*\n\
    \\DC1clear_route_cache\CAN\ENQ \SOH(\bR\SIclearRouteCache\"8\n\
    \\SOResponseStatus\DC2\f\n\
    \\bCONTINUE\DLE\NUL\DC2\CAN\n\
    \\DC4CONTINUE_AND_REPLACE\DLE\SOH\"\149\STX\n\
    \\DC1ImmediateResponse\DC2;\n\
    \\ACKstatus\CAN\SOH \SOH(\v2\EM.envoy.type.v3.HttpStatusR\ACKstatusB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2H\n\
    \\aheaders\CAN\STX \SOH(\v2..envoy.service.ext_proc.v3alpha.HeaderMutationR\aheaders\DC2\DC2\n\
    \\EOTbody\CAN\ETX \SOH(\tR\EOTbody\DC2K\n\
    \\vgrpc_status\CAN\EOT \SOH(\v2*.envoy.service.ext_proc.v3alpha.GrpcStatusR\n\
    \grpcStatus\DC2\CAN\n\
    \\adetails\CAN\ENQ \SOH(\tR\adetails\"$\n\
    \\n\
    \GrpcStatus\DC2\SYN\n\
    \\ACKstatus\CAN\SOH \SOH(\rR\ACKstatus\"\129\SOH\n\
    \\SO\&HeaderMutation\DC2H\n\
    \\vset_headers\CAN\SOH \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\n\
    \setHeaders\DC2%\n\
    \\SOremove_headers\CAN\STX \ETX(\tR\rremoveHeaders\"Q\n\
    \\fBodyMutation\DC2\DC4\n\
    \\EOTbody\CAN\SOH \SOH(\fH\NULR\EOTbody\DC2\US\n\
    \\n\
    \clear_body\CAN\STX \SOH(\bH\NULR\tclearBodyB\n\
    \\n\
    \\bmutation2\139\SOH\n\
    \\DC1ExternalProcessor\DC2v\n\
    \\aProcess\DC21.envoy.service.ext_proc.v3alpha.ProcessingRequest\SUB2.envoy.service.ext_proc.v3alpha.ProcessingResponse\"\NUL(\SOH0\SOHB[\n\
    \,io.envoyproxy.envoy.service.ext_proc.v3alphaB\SYNExternalProcessorProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\159j\n\
    \\a\DC2\ENQ\NUL\NUL\202\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL'\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NULN\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL&\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULE\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NULE\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL7\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL7\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\DLE\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\DC1\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \\213\n\
    \\n\
    \\STX\ACK\NUL\DC2\EOT/\NUL6\SOH20 [#protodoc-title: External Processing Service]\n\
    \2\150\n\
    \ A service that can access and modify HTTP requests and responses\n\
    \ as part of a filter chain.\n\
    \ The overall external processing protocol works like this:\n\
    \\n\
    \ 1. Envoy sends to the service information about the HTTP request.\n\
    \ 2. The service sends back a ProcessingResponse message that directs Envoy\n\
    \    to either stop processing, continue without it, or send it the\n\
    \    next chunk of the message body.\n\
    \ 3. If so requested, Envoy sends the server chunks of the message body,\n\
    \    or the entire body at once. In either case, the server sends back\n\
    \    a ProcessingResponse after each message it receives.\n\
    \ 4. If so requested, Envoy sends the server the HTTP trailers,\n\
    \    and the server sends back a ProcessingResponse.\n\
    \ 5. At this point, request processing is done, and we pick up again\n\
    \    at step 1 when Envoy receives a response from the upstream server.\n\
    \ 6. At any point above, if the server closes the gRPC stream cleanly,\n\
    \    then Envoy proceeds without consulting the server.\n\
    \ 7. At any point above, if the server closes the gRPC stream with an error,\n\
    \    then Envoy returns a 500 error to the client, unless the filter\n\
    \    was configured to ignore errors.\n\
    \\n\
    \ In other words, the process is a request/response conversation, but\n\
    \ using a gRPC stream to make it easier for the server to\n\
    \ maintain state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX/\b\EM\n\
    \\227\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT4\STX5\ETX\SUB\212\SOH This begins the bidirectional stream that Envoy will use to\n\
    \ give the server control over what the filter does. The actual\n\
    \ protocol is described by the ProcessingRequest and ProcessingResponse\n\
    \ messages below.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX4\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX4\SO\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX4\NAK&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX417\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX48J\n\
    \\139\SOH\n\
    \\STX\EOT\NUL\DC2\EOT;\NULu\SOH\SUB\DEL This represents the different types of messages that Envoy can send\n\
    \ to an external processing server.\n\
    \ [#next-free-field: 8]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX;\b\EM\n\
    \\186\EOT\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXG\STX\SYN\SUB\172\EOT Specify whether the filter that sent this request is running in synchronous\n\
    \ or asynchronous mode. The choice of synchronous or asynchronous mode\n\
    \ can be set in the filter configuration, and defaults to false.\n\
    \\n\
    \ * A value of \"false\" indicates that the server must respond\n\
    \   to this message by either sending back a matching ProcessingResponse message,\n\
    \   or by closing the stream.\n\
    \ * A value of \"true\" indicates that the server must not respond to this\n\
    \   message, although it may still close the stream to indicate that no more messages\n\
    \   are needed.\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXG\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXG\a\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXG\DC4\NAK\n\
    \\176\SOH\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOTL\STXt\ETX\SUB\161\SOH Each request message will include one of the following sub-messages. Which\n\
    \ ones are set for a particular HTTP request/response depend on the\n\
    \ processing mode.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETXL\b\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETXM\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETXM\EOT&\n\
    \\241\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXR\EOT$\SUB\227\SOH Information about the HTTP request headers, as well as peer info and additional\n\
    \ properties. Unless \"async_mode\" is true, the server must send back a\n\
    \ HeaderResponse message, an ImmediateResponse message, or close the stream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXR\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXR\DLE\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXR\"#\n\
    \\211\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXW\EOT%\SUB\197\SOH Information about the HTTP response headers, as well as peer info and additional\n\
    \ properties. Unless \"async_mode\" is true, the server must send back a\n\
    \ HeaderResponse message or close the stream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXW\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXW\DLE \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXW#$\n\
    \\180\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX[\EOT\RS\SUB\166\SOH A chunk of the HTTP request body. Unless \"async_mode\" is true, the server must send back\n\
    \ a BodyResponse message, an ImmediateResponse message, or close the stream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX[\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX[\r\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX[\FS\GS\n\
    \\149\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX_\EOT\US\SUB\135\SOH A chunk of the HTTP request body. Unless \"async_mode\" is true, the server must send back\n\
    \ a BodyResponse message or close the stream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX_\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX_\r\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX_\GS\RS\n\
    \\231\ETX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXi\EOT&\SUB\217\ETX The HTTP trailers for the request path. Unless \"async_mode\" is true, the server\n\
    \ must send back a TrailerResponse message or close the stream.\n\
    \\n\
    \ This message is only sent if the trailers processing mode is set to \"SEND\".\n\
    \ If there are no trailers on the original downstream request, then this message\n\
    \ will only be sent (with empty trailers waiting to be populated) if the\n\
    \ processing mode is set before the request headers are sent, such as\n\
    \ in the filter configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXi\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXi\DC1!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXi$%\n\
    \\232\ETX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXs\EOT'\SUB\218\ETX The HTTP trailers for the response path. Unless \"async_mode\" is true, the server\n\
    \ must send back a TrailerResponse message or close the stream.\n\
    \\n\
    \ This message is only sent if the trailers processing mode is set to \"SEND\".\n\
    \ If there are no trailers on the original downstream request, then this message\n\
    \ will only be sent (with empty trailers waiting to be populated) if the\n\
    \ processing mode is set before the request headers are sent, such as\n\
    \ in the filter configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXs\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXs\DC1\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXs%&\n\
    \\199\SOH\n\
    \\STX\EOT\SOH\DC2\ENQz\NUL\170\SOH\SOH\SUB\185\SOH For every ProcessingRequest received by the server with the \"async_mode\" field\n\
    \ set to false, the server must send back exactly one ProcessingResponse message.\n\
    \ [#next-free-field: 10]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXz\b\SUB\n\
    \\r\n\
    \\EOT\EOT\SOH\b\NUL\DC2\ENQ{\STX\158\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX{\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETX|\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETX|\EOT&\n\
    \v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\128\SOH\EOT(\SUBh The server must send back this message in response to a message with the\n\
    \ \"request_headers\" field set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\128\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\128\SOH\DC4#\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\128\SOH&'\n\
    \w\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\132\SOH\EOT)\SUBi The server must send back this message in response to a message with the\n\
    \ \"response_headers\" field set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\132\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\132\SOH\DC4$\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\132\SOH'(\n\
    \s\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\136\SOH\EOT\"\SUBe The server must send back this message in response to a message with\n\
    \ the \"request_body\" field set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\EOT\136\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\136\SOH\DC1\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\136\SOH !\n\
    \t\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\140\SOH\EOT#\SUBf The server must send back this message in response to a message with\n\
    \ the \"response_body\" field set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\EOT\140\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\140\SOH\DC1\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\140\SOH!\"\n\
    \w\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT\144\SOH\EOT*\SUBi The server must send back this message in response to a message with\n\
    \ the \"request_trailers\" field set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\EOT\144\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\EOT\144\SOH\NAK%\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\EOT\144\SOH()\n\
    \x\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\148\SOH\EOT+\SUBj The server must send back this message in response to a message with\n\
    \ the \"response_trailers\" field set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\EOT\148\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\148\SOH\NAK&\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\148\SOH)*\n\
    \\191\ETX\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\EOT\157\SOH\EOT-\SUB\176\ETX If specified, attempt to create a locally generated response, send it\n\
    \ downstream, and stop processing additional filters and ignore any\n\
    \ additional messages received from the remote server for this request or\n\
    \ response. If a response has already started -- for example, if this\n\
    \ message is sent response to a \"response_body\" message -- then\n\
    \ this will either ship the reply directly to the downstream codec,\n\
    \ or reset the stream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\EOT\157\SOH\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\EOT\157\SOH\SYN(\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\EOT\157\SOH+,\n\
    \\214\SOH\n\
    \\EOT\EOT\SOH\STX\a\DC2\EOT\163\SOH\STX.\SUB\199\SOH [#not-implemented-hide:]\n\
    \ Optional metadata that will be emitted as dynamic metadata to be consumed by the next\n\
    \ filter. This metadata will be placed in the namespace \"envoy.filters.http.ext_proc\".\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\EOT\163\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\EOT\163\SOH\EM)\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\EOT\163\SOH,-\n\
    \\144\STX\n\
    \\EOT\EOT\SOH\STX\b\DC2\EOT\169\SOH\STXR\SUB\129\STX Override how parts of the HTTP request and response are processed\n\
    \ for the duration of this particular request/response only. Servers\n\
    \ may use this to intelligently control how requests are processed\n\
    \ based on the headers and other metadata that they see.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\EOT\169\SOH\STX?\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\EOT\169\SOH@M\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\EOT\169\SOHPQ\n\
    \\175\SOH\n\
    \\STX\EOT\STX\DC2\ACK\176\SOH\NUL\192\SOH\SOH\SUBf This message is sent to the external server when the HTTP request and responses\n\
    \ are first received.\n\
    \29 The following are messages that are sent to the server.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\176\SOH\b\DC3\n\
    \~\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\179\SOH\STX'\SUBp The HTTP request headers. All header keys will be\n\
    \ lower-cased, because HTTP header keys are case-insensitive.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\179\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\179\SOH\ESC\"\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\179\SOH%&\n\
    \\155\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\187\SOH\STX5\SUB\140\STX [#not-implemented-hide:]\n\
    \ The values of properties selected by the \"request_attributes\"\n\
    \ or \"response_attributes\" list in the configuration. Each entry\n\
    \ in the list is populated\n\
    \ from the standard :ref:`attributes <arch_overview_attributes>`\n\
    \ supported across Envoy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\187\SOH\STX%\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\187\SOH&0\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\187\SOH34\n\
    \a\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\191\SOH\STX\EM\SUBS If true, then there is no message body associated with this\n\
    \ request or response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\EOT\191\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\191\SOH\a\DC4\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\191\SOH\ETB\CAN\n\
    \_\n\
    \\STX\EOT\ETX\DC2\ACK\195\SOH\NUL\199\SOH\SOH\SUBQ This message contains the message body that Envoy sends to the external server.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\195\SOH\b\DLE\n\
    \\f\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\196\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\196\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\196\SOH\b\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\196\SOH\SI\DLE\n\
    \\f\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\198\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\198\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\198\SOH\a\DC4\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\198\SOH\ETB\CAN\n\
    \3\n\
    \\STX\EOT\EOT\DC2\ACK\202\SOH\NUL\204\SOH\SOH\SUB% This message contains the trailers.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\202\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\203\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\203\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\203\SOH\ESC#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\203\SOH&'\n\
    \\147\SOH\n\
    \\STX\EOT\ENQ\DC2\ACK\209\SOH\NUL\211\SOH\SOH\SUBB This message must be sent in response to an HttpHeaders message.\n\
    \2A The following are messages that may be sent back by the server.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\209\SOH\b\ETB\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\210\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\210\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\210\SOH\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\210\SOH\FS\GS\n\
    \Q\n\
    \\STX\EOT\ACK\DC2\ACK\214\SOH\NUL\217\SOH\SOH\SUBC This message must be sent in response to an HttpTrailers message.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\214\SOH\b\CAN\n\
    \>\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\216\SOH\STX%\SUB0 Instructions on how to manipulate the trailers\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\216\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\216\SOH\DC1 \n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\216\SOH#$\n\
    \M\n\
    \\STX\EOT\a\DC2\ACK\220\SOH\NUL\222\SOH\SOH\SUB? This message must be sent in response to an HttpBody message.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\220\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\221\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\221\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\221\SOH\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\221\SOH\FS\GS\n\
    \m\n\
    \\STX\EOT\b\DC2\ACK\226\SOH\NUL\145\STX\SOH\SUB_ This message contains common fields between header and body responses.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\226\SOH\b\SYN\n\
    \\SO\n\
    \\EOT\EOT\b\EOT\NUL\DC2\ACK\227\SOH\STX\246\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\b\EOT\NUL\SOH\DC2\EOT\227\SOH\a\NAK\n\
    \\175\SOH\n\
    \\ACK\EOT\b\EOT\NUL\STX\NUL\DC2\EOT\231\SOH\EOT\DC1\SUB\158\SOH Apply the mutation instructions in this message to the\n\
    \ request or response, and then continue processing the filter\n\
    \ stream as normal. This is the default.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\EOT\NUL\STX\NUL\SOH\DC2\EOT\231\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\b\EOT\NUL\STX\NUL\STX\DC2\EOT\231\SOH\SI\DLE\n\
    \\210\EOT\n\
    \\ACK\EOT\b\EOT\NUL\STX\SOH\DC2\EOT\245\SOH\EOT\GS\SUB\193\EOT Apply the specified header mutation, replace the body with the body\n\
    \ specified in the body mutation (if present), and do not send any\n\
    \ further messages for this request or response even if the processing\n\
    \ mode is configured to do so.\n\
    \\n\
    \ When used in response to a request_headers or response_headers message,\n\
    \ this status makes it possible to either completely replace the body\n\
    \ while discarding the original body, or to add a body to a message that\n\
    \ formerly did not have one.\n\
    \\n\
    \ In other words, this response makes it possible to turn an HTTP GET\n\
    \ into a POST, PUT, or PATCH.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\EOT\NUL\STX\SOH\SOH\DC2\EOT\245\SOH\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\b\EOT\NUL\STX\SOH\STX\DC2\EOT\245\SOH\ESC\FS\n\
    \}\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\250\SOH\STXK\SUBo If set, provide additional direction on how the Envoy proxy should\n\
    \ handle the rest of the HTTP filter chain.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\250\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\250\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\250\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\250\SOH\FSJ\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\175\b\DLE\DC2\EOT\250\SOH\GSI\n\
    \\201\SOH\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\255\SOH\STX%\SUB\186\SOH Instructions on how to manipulate the headers. When responding to an\n\
    \ HttpBody request, header mutations will only take effect if\n\
    \ the current processing mode for the body is BUFFERED.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\255\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\255\SOH\DC1 \n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\255\SOH#$\n\
    \\170\STX\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\133\STX\STX!\SUB\155\STX Replace the body of the last message sent to the remote server on this\n\
    \ stream. If responding to an HttpBody request, simply replace or clear\n\
    \ the body chunk that was sent with that request. Body mutations only take\n\
    \ effect in response to \"body\" messages and are ignored otherwise.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\EOT\133\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\133\STX\SI\FS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\133\STX\US \n\
    \\236\SOH\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\139\STX\STX(\SUB\221\SOH [#not-implemented-hide:]\n\
    \ Add new trailers to the message. This may be used when responding to either a\n\
    \ HttpHeaders or HttpBody message, but only if this message is returned\n\
    \ along with the CONTINUE_AND_REPLACE status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ACK\DC2\EOT\139\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\139\STX\ESC#\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\139\STX&'\n\
    \\159\SOH\n\
    \\EOT\EOT\b\STX\EOT\DC2\EOT\144\STX\STX\GS\SUB\144\SOH Clear the route cache for the current request.\n\
    \ This is necessary if the remote server\n\
    \ modified headers that are used to calculate the route.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\EOT\144\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\EOT\144\STX\a\CAN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\EOT\144\STX\ESC\FS\n\
    \\152\ETX\n\
    \\STX\EOT\t\DC2\ACK\154\STX\NUL\171\STX\SOH\SUB\137\ETX This message causes the filter to attempt to create a locally\n\
    \ generated response, send it  downstream, stop processing\n\
    \ additional filters, and ignore any additional messages received\n\
    \ from the remote server for this request or response. If a response\n\
    \ has already started, then  this will either ship the reply directly\n\
    \ to the downstream codec, or reset the stream.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\154\STX\b\EM\n\
    \+\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\156\STX\STXN\SUB\GS The response code to return\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\156\STX\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\156\STX\NAK\ESC\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\156\STX\RS\US\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\156\STX M\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\175\b\DC1\DC2\EOT\156\STX!L\n\
    \V\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\159\STX\STX\GS\SUBH Apply changes to the default headers, which will include content-type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\159\STX\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\159\STX\DC1\CAN\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\159\STX\ESC\FS\n\
    \\150\SOH\n\
    \\EOT\EOT\t\STX\STX\DC2\EOT\163\STX\STX\DC2\SUB\135\SOH The message body to return with the response which is sent using the\n\
    \ text/plain content type, or encoded in the grpc-message header.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\EOT\163\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\EOT\163\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\EOT\163\STX\DLE\DC1\n\
    \;\n\
    \\EOT\EOT\t\STX\ETX\DC2\EOT\166\STX\STX\GS\SUB- If set, then include a gRPC status trailer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ACK\DC2\EOT\166\STX\STX\f\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\EOT\166\STX\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\EOT\166\STX\ESC\FS\n\
    \q\n\
    \\EOT\EOT\t\STX\EOT\DC2\EOT\170\STX\STX\NAK\SUBc A string detailing why this local reply was sent, which may be included\n\
    \ in log and debug output.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\ENQ\DC2\EOT\170\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\SOH\DC2\EOT\170\STX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\ETX\DC2\EOT\170\STX\DC3\DC4\n\
    \V\n\
    \\STX\EOT\n\
    \\DC2\ACK\174\STX\NUL\177\STX\SOH\SUBH This message specifies a gRPC status for an ImmediateResponse message.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\174\STX\b\DC2\n\
    \&\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\176\STX\STX\DC4\SUB\CAN The actual gRPC status\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\176\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\176\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\176\STX\DC2\DC3\n\
    \^\n\
    \\STX\EOT\v\DC2\ACK\181\STX\NUL\190\STX\SOH\SUBP Change HTTP headers or trailers by appending, replacing, or removing\n\
    \ headers.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\181\STX\b\SYN\n\
    \\193\SOH\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\185\STX\STX<\SUB\178\SOH Add or replace HTTP headers. Attempts to set the value of\n\
    \ any \"x-envoy\" header, and attempts to set the \":method\",\n\
    \ \":authority\", \":scheme\", or \"host\" headers will be ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\EOT\185\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\185\STX\v+\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\185\STX,7\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\185\STX:;\n\
    \\143\SOH\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\189\STX\STX%\SUB\128\SOH Remove these HTTP headers. Attempts to remove system headers --\n\
    \ any header starting with \":\", plus \"host\" -- will be ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\EOT\189\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\189\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\189\STX\DC2 \n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\189\STX#$\n\
    \\140\SOH\n\
    \\STX\EOT\f\DC2\ACK\194\STX\NUL\202\STX\SOH\SUB~ Replace the entire message body chunk received in the corresponding\n\
    \ HttpBody message with this new body, or clear the body.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\194\STX\b\DC4\n\
    \\SO\n\
    \\EOT\EOT\f\b\NUL\DC2\ACK\195\STX\STX\201\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\f\b\NUL\SOH\DC2\EOT\195\STX\b\DLE\n\
    \*\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\197\STX\EOT\DC3\SUB\FS The entire body to replace\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\197\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\197\STX\n\
    \\SO\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\197\STX\DC1\DC2\n\
    \2\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\200\STX\EOT\CAN\SUB$ Clear the corresponding body chunk\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\200\STX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\200\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\200\STX\SYN\ETBb\ACKproto3"