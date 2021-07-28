{- This file was auto-generated from envoy/extensions/filters/http/ext_authz/v3/ext_authz.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz (
        AuthorizationRequest(), AuthorizationResponse(), BufferSettings(),
        CheckSettings(), CheckSettings'ContextExtensionsEntry(),
        ExtAuthz(), ExtAuthz'Services(..), _ExtAuthz'GrpcService,
        _ExtAuthz'HttpService, ExtAuthzPerRoute(),
        ExtAuthzPerRoute'Override(..), _ExtAuthzPerRoute'Disabled,
        _ExtAuthzPerRoute'CheckSettings, HttpService()
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
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Envoy.Config.Core.V3.HttpUri
import qualified Proto.Envoy.Type.Matcher.V3.Metadata
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Envoy.Type.V3.HttpStatus
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.allowedHeaders' @:: Lens' AuthorizationRequest Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'allowedHeaders' @:: Lens' AuthorizationRequest (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.headersToAdd' @:: Lens' AuthorizationRequest [Proto.Envoy.Config.Core.V3.Base.HeaderValue]@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.vec'headersToAdd' @:: Lens' AuthorizationRequest (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue)@ -}
data AuthorizationRequest
  = AuthorizationRequest'_constructor {_AuthorizationRequest'allowedHeaders :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher),
                                       _AuthorizationRequest'headersToAdd :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue),
                                       _AuthorizationRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthorizationRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AuthorizationRequest "allowedHeaders" Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationRequest'allowedHeaders
           (\ x__ y__ -> x__ {_AuthorizationRequest'allowedHeaders = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AuthorizationRequest "maybe'allowedHeaders" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationRequest'allowedHeaders
           (\ x__ y__ -> x__ {_AuthorizationRequest'allowedHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AuthorizationRequest "headersToAdd" [Proto.Envoy.Config.Core.V3.Base.HeaderValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationRequest'headersToAdd
           (\ x__ y__ -> x__ {_AuthorizationRequest'headersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AuthorizationRequest "vec'headersToAdd" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationRequest'headersToAdd
           (\ x__ y__ -> x__ {_AuthorizationRequest'headersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Message AuthorizationRequest where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_authz.v3.AuthorizationRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4AuthorizationRequest\DC2Q\n\
      \\SIallowed_headers\CAN\SOH \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherR\SOallowedHeaders\DC2G\n\
      \\SOheaders_to_add\CAN\STX \ETX(\v2!.envoy.config.core.v3.HeaderValueR\fheadersToAdd:A\154\197\136\RS<\n\
      \:envoy.config.filter.http.ext_authz.v2.AuthorizationRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allowedHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowed_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowedHeaders")) ::
              Data.ProtoLens.FieldDescriptor AuthorizationRequest
        headersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers_to_add"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"headersToAdd")) ::
              Data.ProtoLens.FieldDescriptor AuthorizationRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allowedHeaders__field_descriptor),
           (Data.ProtoLens.Tag 2, headersToAdd__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AuthorizationRequest'_unknownFields
        (\ x__ y__ -> x__ {_AuthorizationRequest'_unknownFields = y__})
  defMessage
    = AuthorizationRequest'_constructor
        {_AuthorizationRequest'allowedHeaders = Prelude.Nothing,
         _AuthorizationRequest'headersToAdd = Data.Vector.Generic.empty,
         _AuthorizationRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AuthorizationRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValue
             -> Data.ProtoLens.Encoding.Bytes.Parser AuthorizationRequest
        loop x mutable'headersToAdd
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'headersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'headersToAdd)
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
                              (Data.ProtoLens.Field.field @"vec'headersToAdd")
                              frozen'headersToAdd
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "allowed_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowedHeaders") y x)
                                  mutable'headersToAdd
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "headers_to_add"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'headersToAdd y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'headersToAdd
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'headersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'headersToAdd)
          "AuthorizationRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'allowedHeaders") _x
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'headersToAdd") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AuthorizationRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AuthorizationRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AuthorizationRequest'allowedHeaders x__)
                (Control.DeepSeq.deepseq
                   (_AuthorizationRequest'headersToAdd x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.allowedUpstreamHeaders' @:: Lens' AuthorizationResponse Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'allowedUpstreamHeaders' @:: Lens' AuthorizationResponse (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.allowedUpstreamHeadersToAppend' @:: Lens' AuthorizationResponse Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'allowedUpstreamHeadersToAppend' @:: Lens' AuthorizationResponse (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.allowedClientHeaders' @:: Lens' AuthorizationResponse Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'allowedClientHeaders' @:: Lens' AuthorizationResponse (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.allowedClientHeadersOnSuccess' @:: Lens' AuthorizationResponse Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'allowedClientHeadersOnSuccess' @:: Lens' AuthorizationResponse (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)@ -}
data AuthorizationResponse
  = AuthorizationResponse'_constructor {_AuthorizationResponse'allowedUpstreamHeaders :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher),
                                        _AuthorizationResponse'allowedUpstreamHeadersToAppend :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher),
                                        _AuthorizationResponse'allowedClientHeaders :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher),
                                        _AuthorizationResponse'allowedClientHeadersOnSuccess :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher),
                                        _AuthorizationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthorizationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AuthorizationResponse "allowedUpstreamHeaders" Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationResponse'allowedUpstreamHeaders
           (\ x__ y__
              -> x__ {_AuthorizationResponse'allowedUpstreamHeaders = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AuthorizationResponse "maybe'allowedUpstreamHeaders" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationResponse'allowedUpstreamHeaders
           (\ x__ y__
              -> x__ {_AuthorizationResponse'allowedUpstreamHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AuthorizationResponse "allowedUpstreamHeadersToAppend" Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationResponse'allowedUpstreamHeadersToAppend
           (\ x__ y__
              -> x__
                   {_AuthorizationResponse'allowedUpstreamHeadersToAppend = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AuthorizationResponse "maybe'allowedUpstreamHeadersToAppend" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationResponse'allowedUpstreamHeadersToAppend
           (\ x__ y__
              -> x__
                   {_AuthorizationResponse'allowedUpstreamHeadersToAppend = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AuthorizationResponse "allowedClientHeaders" Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationResponse'allowedClientHeaders
           (\ x__ y__
              -> x__ {_AuthorizationResponse'allowedClientHeaders = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AuthorizationResponse "maybe'allowedClientHeaders" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationResponse'allowedClientHeaders
           (\ x__ y__
              -> x__ {_AuthorizationResponse'allowedClientHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AuthorizationResponse "allowedClientHeadersOnSuccess" Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationResponse'allowedClientHeadersOnSuccess
           (\ x__ y__
              -> x__
                   {_AuthorizationResponse'allowedClientHeadersOnSuccess = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AuthorizationResponse "maybe'allowedClientHeadersOnSuccess" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthorizationResponse'allowedClientHeadersOnSuccess
           (\ x__ y__
              -> x__
                   {_AuthorizationResponse'allowedClientHeadersOnSuccess = y__}))
        Prelude.id
instance Data.ProtoLens.Message AuthorizationResponse where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_authz.v3.AuthorizationResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKAuthorizationResponse\DC2b\n\
      \\CANallowed_upstream_headers\CAN\SOH \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherR\SYNallowedUpstreamHeaders\DC2t\n\
      \\"allowed_upstream_headers_to_append\CAN\ETX \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherR\RSallowedUpstreamHeadersToAppend\DC2^\n\
      \\SYNallowed_client_headers\CAN\STX \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherR\DC4allowedClientHeaders\DC2r\n\
      \!allowed_client_headers_on_success\CAN\EOT \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherR\GSallowedClientHeadersOnSuccess:B\154\197\136\RS=\n\
      \;envoy.config.filter.http.ext_authz.v2.AuthorizationResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allowedUpstreamHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowed_upstream_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowedUpstreamHeaders")) ::
              Data.ProtoLens.FieldDescriptor AuthorizationResponse
        allowedUpstreamHeadersToAppend__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowed_upstream_headers_to_append"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'allowedUpstreamHeadersToAppend")) ::
              Data.ProtoLens.FieldDescriptor AuthorizationResponse
        allowedClientHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowed_client_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowedClientHeaders")) ::
              Data.ProtoLens.FieldDescriptor AuthorizationResponse
        allowedClientHeadersOnSuccess__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowed_client_headers_on_success"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.ListStringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'allowedClientHeadersOnSuccess")) ::
              Data.ProtoLens.FieldDescriptor AuthorizationResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allowedUpstreamHeaders__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            allowedUpstreamHeadersToAppend__field_descriptor),
           (Data.ProtoLens.Tag 2, allowedClientHeaders__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            allowedClientHeadersOnSuccess__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AuthorizationResponse'_unknownFields
        (\ x__ y__ -> x__ {_AuthorizationResponse'_unknownFields = y__})
  defMessage
    = AuthorizationResponse'_constructor
        {_AuthorizationResponse'allowedUpstreamHeaders = Prelude.Nothing,
         _AuthorizationResponse'allowedUpstreamHeadersToAppend = Prelude.Nothing,
         _AuthorizationResponse'allowedClientHeaders = Prelude.Nothing,
         _AuthorizationResponse'allowedClientHeadersOnSuccess = Prelude.Nothing,
         _AuthorizationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AuthorizationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser AuthorizationResponse
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
                                       "allowed_upstream_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowedUpstreamHeaders") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "allowed_upstream_headers_to_append"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowedUpstreamHeadersToAppend")
                                     y
                                     x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "allowed_client_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowedClientHeaders") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "allowed_client_headers_on_success"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowedClientHeadersOnSuccess")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AuthorizationResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'allowedUpstreamHeaders") _x
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
                       (Data.ProtoLens.Field.field
                          @"maybe'allowedUpstreamHeadersToAppend")
                       _x
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
                          (Data.ProtoLens.Field.field @"maybe'allowedClientHeaders") _x
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
                             (Data.ProtoLens.Field.field @"maybe'allowedClientHeadersOnSuccess")
                             _x
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
instance Control.DeepSeq.NFData AuthorizationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AuthorizationResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AuthorizationResponse'allowedUpstreamHeaders x__)
                (Control.DeepSeq.deepseq
                   (_AuthorizationResponse'allowedUpstreamHeadersToAppend x__)
                   (Control.DeepSeq.deepseq
                      (_AuthorizationResponse'allowedClientHeaders x__)
                      (Control.DeepSeq.deepseq
                         (_AuthorizationResponse'allowedClientHeadersOnSuccess x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maxRequestBytes' @:: Lens' BufferSettings Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.allowPartialMessage' @:: Lens' BufferSettings Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.packAsBytes' @:: Lens' BufferSettings Prelude.Bool@ -}
data BufferSettings
  = BufferSettings'_constructor {_BufferSettings'maxRequestBytes :: !Data.Word.Word32,
                                 _BufferSettings'allowPartialMessage :: !Prelude.Bool,
                                 _BufferSettings'packAsBytes :: !Prelude.Bool,
                                 _BufferSettings'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BufferSettings where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BufferSettings "maxRequestBytes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BufferSettings'maxRequestBytes
           (\ x__ y__ -> x__ {_BufferSettings'maxRequestBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BufferSettings "allowPartialMessage" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BufferSettings'allowPartialMessage
           (\ x__ y__ -> x__ {_BufferSettings'allowPartialMessage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BufferSettings "packAsBytes" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BufferSettings'packAsBytes
           (\ x__ y__ -> x__ {_BufferSettings'packAsBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message BufferSettings where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_authz.v3.BufferSettings"
  packedMessageDescriptor _
    = "\n\
      \\SOBufferSettings\DC23\n\
      \\DC1max_request_bytes\CAN\SOH \SOH(\rR\SImaxRequestBytesB\a\250B\EOT*\STX \NUL\DC22\n\
      \\NAKallow_partial_message\CAN\STX \SOH(\bR\DC3allowPartialMessage\DC2\"\n\
      \\rpack_as_bytes\CAN\ETX \SOH(\bR\vpackAsBytes:;\154\197\136\RS6\n\
      \4envoy.config.filter.http.ext_authz.v2.BufferSettings"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxRequestBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_request_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxRequestBytes")) ::
              Data.ProtoLens.FieldDescriptor BufferSettings
        allowPartialMessage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_partial_message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allowPartialMessage")) ::
              Data.ProtoLens.FieldDescriptor BufferSettings
        packAsBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pack_as_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"packAsBytes")) ::
              Data.ProtoLens.FieldDescriptor BufferSettings
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxRequestBytes__field_descriptor),
           (Data.ProtoLens.Tag 2, allowPartialMessage__field_descriptor),
           (Data.ProtoLens.Tag 3, packAsBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BufferSettings'_unknownFields
        (\ x__ y__ -> x__ {_BufferSettings'_unknownFields = y__})
  defMessage
    = BufferSettings'_constructor
        {_BufferSettings'maxRequestBytes = Data.ProtoLens.fieldDefault,
         _BufferSettings'allowPartialMessage = Data.ProtoLens.fieldDefault,
         _BufferSettings'packAsBytes = Data.ProtoLens.fieldDefault,
         _BufferSettings'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BufferSettings
          -> Data.ProtoLens.Encoding.Bytes.Parser BufferSettings
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
                                       "max_request_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxRequestBytes") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "allow_partial_message"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowPartialMessage") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pack_as_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"packAsBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BufferSettings"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"maxRequestBytes") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"allowPartialMessage") _x
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
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"packAsBytes") _x
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
instance Control.DeepSeq.NFData BufferSettings where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BufferSettings'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BufferSettings'maxRequestBytes x__)
                (Control.DeepSeq.deepseq
                   (_BufferSettings'allowPartialMessage x__)
                   (Control.DeepSeq.deepseq (_BufferSettings'packAsBytes x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.contextExtensions' @:: Lens' CheckSettings (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.disableRequestBodyBuffering' @:: Lens' CheckSettings Prelude.Bool@ -}
data CheckSettings
  = CheckSettings'_constructor {_CheckSettings'contextExtensions :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                _CheckSettings'disableRequestBodyBuffering :: !Prelude.Bool,
                                _CheckSettings'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CheckSettings where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CheckSettings "contextExtensions" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckSettings'contextExtensions
           (\ x__ y__ -> x__ {_CheckSettings'contextExtensions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CheckSettings "disableRequestBodyBuffering" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckSettings'disableRequestBodyBuffering
           (\ x__ y__
              -> x__ {_CheckSettings'disableRequestBodyBuffering = y__}))
        Prelude.id
instance Data.ProtoLens.Message CheckSettings where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_authz.v3.CheckSettings"
  packedMessageDescriptor _
    = "\n\
      \\rCheckSettings\DC2\DEL\n\
      \\DC2context_extensions\CAN\SOH \ETX(\v2P.envoy.extensions.filters.http.ext_authz.v3.CheckSettings.ContextExtensionsEntryR\DC1contextExtensions\DC2C\n\
      \\RSdisable_request_body_buffering\CAN\STX \SOH(\bR\ESCdisableRequestBodyBuffering\SUBD\n\
      \\SYNContextExtensionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH::\154\197\136\RS5\n\
      \3envoy.config.filter.http.ext_authz.v2.CheckSettings"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        contextExtensions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "context_extensions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CheckSettings'ContextExtensionsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"contextExtensions")) ::
              Data.ProtoLens.FieldDescriptor CheckSettings
        disableRequestBodyBuffering__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disable_request_body_buffering"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disableRequestBodyBuffering")) ::
              Data.ProtoLens.FieldDescriptor CheckSettings
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, contextExtensions__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            disableRequestBodyBuffering__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CheckSettings'_unknownFields
        (\ x__ y__ -> x__ {_CheckSettings'_unknownFields = y__})
  defMessage
    = CheckSettings'_constructor
        {_CheckSettings'contextExtensions = Data.Map.empty,
         _CheckSettings'disableRequestBodyBuffering = Data.ProtoLens.fieldDefault,
         _CheckSettings'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CheckSettings -> Data.ProtoLens.Encoding.Bytes.Parser CheckSettings
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
                          -> do !(entry :: CheckSettings'ContextExtensionsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                      (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                          Data.ProtoLens.Encoding.Bytes.isolate
                                                                                            (Prelude.fromIntegral
                                                                                               len)
                                                                                            Data.ProtoLens.parseMessage)
                                                                                      "context_extensions"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"contextExtensions")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disable_request_body_buffering"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disableRequestBodyBuffering")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CheckSettings"
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
                                       CheckSettings'ContextExtensionsEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"contextExtensions") _x))))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"disableRequestBodyBuffering") _x
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
instance Control.DeepSeq.NFData CheckSettings where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CheckSettings'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CheckSettings'contextExtensions x__)
                (Control.DeepSeq.deepseq
                   (_CheckSettings'disableRequestBodyBuffering x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.key' @:: Lens' CheckSettings'ContextExtensionsEntry Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.value' @:: Lens' CheckSettings'ContextExtensionsEntry Data.Text.Text@ -}
data CheckSettings'ContextExtensionsEntry
  = CheckSettings'ContextExtensionsEntry'_constructor {_CheckSettings'ContextExtensionsEntry'key :: !Data.Text.Text,
                                                       _CheckSettings'ContextExtensionsEntry'value :: !Data.Text.Text,
                                                       _CheckSettings'ContextExtensionsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CheckSettings'ContextExtensionsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CheckSettings'ContextExtensionsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckSettings'ContextExtensionsEntry'key
           (\ x__ y__
              -> x__ {_CheckSettings'ContextExtensionsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CheckSettings'ContextExtensionsEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckSettings'ContextExtensionsEntry'value
           (\ x__ y__
              -> x__ {_CheckSettings'ContextExtensionsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message CheckSettings'ContextExtensionsEntry where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_authz.v3.CheckSettings.ContextExtensionsEntry"
  packedMessageDescriptor _
    = "\n\
      \\SYNContextExtensionsEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor CheckSettings'ContextExtensionsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor CheckSettings'ContextExtensionsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CheckSettings'ContextExtensionsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_CheckSettings'ContextExtensionsEntry'_unknownFields = y__})
  defMessage
    = CheckSettings'ContextExtensionsEntry'_constructor
        {_CheckSettings'ContextExtensionsEntry'key = Data.ProtoLens.fieldDefault,
         _CheckSettings'ContextExtensionsEntry'value = Data.ProtoLens.fieldDefault,
         _CheckSettings'ContextExtensionsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CheckSettings'ContextExtensionsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser CheckSettings'ContextExtensionsEntry
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
          (do loop Data.ProtoLens.defMessage) "ContextExtensionsEntry"
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
instance Control.DeepSeq.NFData CheckSettings'ContextExtensionsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CheckSettings'ContextExtensionsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CheckSettings'ContextExtensionsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_CheckSettings'ContextExtensionsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.transportApiVersion' @:: Lens' ExtAuthz Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.failureModeAllow' @:: Lens' ExtAuthz Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.withRequestBody' @:: Lens' ExtAuthz BufferSettings@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'withRequestBody' @:: Lens' ExtAuthz (Prelude.Maybe BufferSettings)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.clearRouteCache' @:: Lens' ExtAuthz Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.statusOnError' @:: Lens' ExtAuthz Proto.Envoy.Type.V3.HttpStatus.HttpStatus@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'statusOnError' @:: Lens' ExtAuthz (Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.metadataContextNamespaces' @:: Lens' ExtAuthz [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.vec'metadataContextNamespaces' @:: Lens' ExtAuthz (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.filterEnabled' @:: Lens' ExtAuthz Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'filterEnabled' @:: Lens' ExtAuthz (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.filterEnabledMetadata' @:: Lens' ExtAuthz Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'filterEnabledMetadata' @:: Lens' ExtAuthz (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.denyAtDisable' @:: Lens' ExtAuthz Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'denyAtDisable' @:: Lens' ExtAuthz (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.includePeerCertificate' @:: Lens' ExtAuthz Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.statPrefix' @:: Lens' ExtAuthz Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.bootstrapMetadataLabelsKey' @:: Lens' ExtAuthz Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'services' @:: Lens' ExtAuthz (Prelude.Maybe ExtAuthz'Services)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'grpcService' @:: Lens' ExtAuthz (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.grpcService' @:: Lens' ExtAuthz Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'httpService' @:: Lens' ExtAuthz (Prelude.Maybe HttpService)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.httpService' @:: Lens' ExtAuthz HttpService@ -}
data ExtAuthz
  = ExtAuthz'_constructor {_ExtAuthz'transportApiVersion :: !Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion,
                           _ExtAuthz'failureModeAllow :: !Prelude.Bool,
                           _ExtAuthz'withRequestBody :: !(Prelude.Maybe BufferSettings),
                           _ExtAuthz'clearRouteCache :: !Prelude.Bool,
                           _ExtAuthz'statusOnError :: !(Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus),
                           _ExtAuthz'metadataContextNamespaces :: !(Data.Vector.Vector Data.Text.Text),
                           _ExtAuthz'filterEnabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent),
                           _ExtAuthz'filterEnabledMetadata :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher),
                           _ExtAuthz'denyAtDisable :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag),
                           _ExtAuthz'includePeerCertificate :: !Prelude.Bool,
                           _ExtAuthz'statPrefix :: !Data.Text.Text,
                           _ExtAuthz'bootstrapMetadataLabelsKey :: !Data.Text.Text,
                           _ExtAuthz'services :: !(Prelude.Maybe ExtAuthz'Services),
                           _ExtAuthz'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtAuthz where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ExtAuthz'Services
  = ExtAuthz'GrpcService !Proto.Envoy.Config.Core.V3.GrpcService.GrpcService |
    ExtAuthz'HttpService !HttpService
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ExtAuthz "transportApiVersion" Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'transportApiVersion
           (\ x__ y__ -> x__ {_ExtAuthz'transportApiVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "failureModeAllow" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'failureModeAllow
           (\ x__ y__ -> x__ {_ExtAuthz'failureModeAllow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "withRequestBody" BufferSettings where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'withRequestBody
           (\ x__ y__ -> x__ {_ExtAuthz'withRequestBody = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtAuthz "maybe'withRequestBody" (Prelude.Maybe BufferSettings) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'withRequestBody
           (\ x__ y__ -> x__ {_ExtAuthz'withRequestBody = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "clearRouteCache" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'clearRouteCache
           (\ x__ y__ -> x__ {_ExtAuthz'clearRouteCache = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "statusOnError" Proto.Envoy.Type.V3.HttpStatus.HttpStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'statusOnError
           (\ x__ y__ -> x__ {_ExtAuthz'statusOnError = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtAuthz "maybe'statusOnError" (Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'statusOnError
           (\ x__ y__ -> x__ {_ExtAuthz'statusOnError = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "metadataContextNamespaces" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'metadataContextNamespaces
           (\ x__ y__ -> x__ {_ExtAuthz'metadataContextNamespaces = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExtAuthz "vec'metadataContextNamespaces" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'metadataContextNamespaces
           (\ x__ y__ -> x__ {_ExtAuthz'metadataContextNamespaces = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "filterEnabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'filterEnabled
           (\ x__ y__ -> x__ {_ExtAuthz'filterEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtAuthz "maybe'filterEnabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'filterEnabled
           (\ x__ y__ -> x__ {_ExtAuthz'filterEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "filterEnabledMetadata" Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'filterEnabledMetadata
           (\ x__ y__ -> x__ {_ExtAuthz'filterEnabledMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtAuthz "maybe'filterEnabledMetadata" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'filterEnabledMetadata
           (\ x__ y__ -> x__ {_ExtAuthz'filterEnabledMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "denyAtDisable" Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'denyAtDisable
           (\ x__ y__ -> x__ {_ExtAuthz'denyAtDisable = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtAuthz "maybe'denyAtDisable" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'denyAtDisable
           (\ x__ y__ -> x__ {_ExtAuthz'denyAtDisable = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "includePeerCertificate" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'includePeerCertificate
           (\ x__ y__ -> x__ {_ExtAuthz'includePeerCertificate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'statPrefix
           (\ x__ y__ -> x__ {_ExtAuthz'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "bootstrapMetadataLabelsKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'bootstrapMetadataLabelsKey
           (\ x__ y__ -> x__ {_ExtAuthz'bootstrapMetadataLabelsKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "maybe'services" (Prelude.Maybe ExtAuthz'Services) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'services (\ x__ y__ -> x__ {_ExtAuthz'services = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "maybe'grpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'services (\ x__ y__ -> x__ {_ExtAuthz'services = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ExtAuthz'GrpcService x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ExtAuthz'GrpcService y__))
instance Data.ProtoLens.Field.HasField ExtAuthz "grpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'services (\ x__ y__ -> x__ {_ExtAuthz'services = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ExtAuthz'GrpcService x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ExtAuthz'GrpcService y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ExtAuthz "maybe'httpService" (Prelude.Maybe HttpService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'services (\ x__ y__ -> x__ {_ExtAuthz'services = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ExtAuthz'HttpService x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ExtAuthz'HttpService y__))
instance Data.ProtoLens.Field.HasField ExtAuthz "httpService" HttpService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'services (\ x__ y__ -> x__ {_ExtAuthz'services = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ExtAuthz'HttpService x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ExtAuthz'HttpService y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ExtAuthz where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_authz.v3.ExtAuthz"
  packedMessageDescriptor _
    = "\n\
      \\bExtAuthz\DC2F\n\
      \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceH\NULR\vgrpcService\DC2\\\n\
      \\fhttp_service\CAN\ETX \SOH(\v27.envoy.extensions.filters.http.ext_authz.v3.HttpServiceH\NULR\vhttpService\DC2^\n\
      \\NAKtransport_api_version\CAN\f \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2,\n\
      \\DC2failure_mode_allow\CAN\STX \SOH(\bR\DLEfailureModeAllow\DC2f\n\
      \\DC1with_request_body\CAN\ENQ \SOH(\v2:.envoy.extensions.filters.http.ext_authz.v3.BufferSettingsR\SIwithRequestBody\DC2*\n\
      \\DC1clear_route_cache\CAN\ACK \SOH(\bR\SIclearRouteCache\DC2A\n\
      \\SIstatus_on_error\CAN\a \SOH(\v2\EM.envoy.type.v3.HttpStatusR\rstatusOnError\DC2>\n\
      \\ESCmetadata_context_namespaces\CAN\b \ETX(\tR\EMmetadataContextNamespaces\DC2U\n\
      \\SOfilter_enabled\CAN\t \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\rfilterEnabled\DC2^\n\
      \\ETBfilter_enabled_metadata\CAN\SO \SOH(\v2&.envoy.type.matcher.v3.MetadataMatcherR\NAKfilterEnabledMetadata\DC2P\n\
      \\SIdeny_at_disable\CAN\v \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\rdenyAtDisable\DC28\n\
      \\CANinclude_peer_certificate\CAN\n\
      \ \SOH(\bR\SYNincludePeerCertificate\DC2\US\n\
      \\vstat_prefix\CAN\r \SOH(\tR\n\
      \statPrefix\DC2A\n\
      \\GSbootstrap_metadata_labels_key\CAN\SI \SOH(\tR\SUBbootstrapMetadataLabelsKeyB\n\
      \\n\
      \\bservices:5\154\197\136\RS0\n\
      \.envoy.config.filter.http.ext_authz.v2.ExtAuthzJ\EOT\b\EOT\DLE\ENQR\tuse_alpha"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        transportApiVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_api_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transportApiVersion")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        failureModeAllow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure_mode_allow"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failureModeAllow")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        withRequestBody__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "with_request_body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BufferSettings)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'withRequestBody")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        clearRouteCache__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clear_route_cache"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clearRouteCache")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        statusOnError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status_on_error"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.HttpStatus.HttpStatus)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'statusOnError")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        metadataContextNamespaces__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_context_namespaces"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"metadataContextNamespaces")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        filterEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filterEnabled")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        filterEnabledMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_enabled_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filterEnabledMetadata")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        denyAtDisable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deny_at_disable"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'denyAtDisable")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        includePeerCertificate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "include_peer_certificate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"includePeerCertificate")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        bootstrapMetadataLabelsKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bootstrap_metadata_labels_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bootstrapMetadataLabelsKey")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        grpcService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcService")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        httpService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpService")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 12, transportApiVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, failureModeAllow__field_descriptor),
           (Data.ProtoLens.Tag 5, withRequestBody__field_descriptor),
           (Data.ProtoLens.Tag 6, clearRouteCache__field_descriptor),
           (Data.ProtoLens.Tag 7, statusOnError__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            metadataContextNamespaces__field_descriptor),
           (Data.ProtoLens.Tag 9, filterEnabled__field_descriptor),
           (Data.ProtoLens.Tag 14, filterEnabledMetadata__field_descriptor),
           (Data.ProtoLens.Tag 11, denyAtDisable__field_descriptor),
           (Data.ProtoLens.Tag 10, includePeerCertificate__field_descriptor),
           (Data.ProtoLens.Tag 13, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 15, 
            bootstrapMetadataLabelsKey__field_descriptor),
           (Data.ProtoLens.Tag 1, grpcService__field_descriptor),
           (Data.ProtoLens.Tag 3, httpService__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtAuthz'_unknownFields
        (\ x__ y__ -> x__ {_ExtAuthz'_unknownFields = y__})
  defMessage
    = ExtAuthz'_constructor
        {_ExtAuthz'transportApiVersion = Data.ProtoLens.fieldDefault,
         _ExtAuthz'failureModeAllow = Data.ProtoLens.fieldDefault,
         _ExtAuthz'withRequestBody = Prelude.Nothing,
         _ExtAuthz'clearRouteCache = Data.ProtoLens.fieldDefault,
         _ExtAuthz'statusOnError = Prelude.Nothing,
         _ExtAuthz'metadataContextNamespaces = Data.Vector.Generic.empty,
         _ExtAuthz'filterEnabled = Prelude.Nothing,
         _ExtAuthz'filterEnabledMetadata = Prelude.Nothing,
         _ExtAuthz'denyAtDisable = Prelude.Nothing,
         _ExtAuthz'includePeerCertificate = Data.ProtoLens.fieldDefault,
         _ExtAuthz'statPrefix = Data.ProtoLens.fieldDefault,
         _ExtAuthz'bootstrapMetadataLabelsKey = Data.ProtoLens.fieldDefault,
         _ExtAuthz'services = Prelude.Nothing,
         _ExtAuthz'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtAuthz
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ExtAuthz
        loop x mutable'metadataContextNamespaces
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'metadataContextNamespaces <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                               mutable'metadataContextNamespaces)
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
                              (Data.ProtoLens.Field.field @"vec'metadataContextNamespaces")
                              frozen'metadataContextNamespaces
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "transport_api_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportApiVersion") y x)
                                  mutable'metadataContextNamespaces
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "failure_mode_allow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failureModeAllow") y x)
                                  mutable'metadataContextNamespaces
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "with_request_body"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"withRequestBody") y x)
                                  mutable'metadataContextNamespaces
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "clear_route_cache"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clearRouteCache") y x)
                                  mutable'metadataContextNamespaces
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "status_on_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"statusOnError") y x)
                                  mutable'metadataContextNamespaces
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "metadata_context_namespaces"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'metadataContextNamespaces y)
                                loop x v
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"filterEnabled") y x)
                                  mutable'metadataContextNamespaces
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter_enabled_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"filterEnabledMetadata") y x)
                                  mutable'metadataContextNamespaces
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deny_at_disable"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"denyAtDisable") y x)
                                  mutable'metadataContextNamespaces
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "include_peer_certificate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"includePeerCertificate") y x)
                                  mutable'metadataContextNamespaces
                        106
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
                                  mutable'metadataContextNamespaces
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bootstrap_metadata_labels_key"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bootstrapMetadataLabelsKey") y x)
                                  mutable'metadataContextNamespaces
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grpc_service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grpcService") y x)
                                  mutable'metadataContextNamespaces
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"httpService") y x)
                                  mutable'metadataContextNamespaces
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'metadataContextNamespaces
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'metadataContextNamespaces <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'metadataContextNamespaces)
          "ExtAuthz"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"transportApiVersion") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"failureModeAllow") _x
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
                          (Data.ProtoLens.Field.field @"maybe'withRequestBody") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'statusOnError") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
                                  (Data.ProtoLens.Field.field @"vec'metadataContextNamespaces") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'filterEnabled") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'filterEnabledMetadata")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'denyAtDisable") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field
                                                    @"includePeerCertificate")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (\ b -> if b then 1 else 0)
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"statPrefix") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                                                    ((Prelude..)
                                                       (\ bs
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  (Prelude.fromIntegral
                                                                     (Data.ByteString.length bs)))
                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                  bs))
                                                       Data.Text.Encoding.encodeUtf8
                                                       _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"bootstrapMetadataLabelsKey")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                                                       ((Prelude..)
                                                          (\ bs
                                                             -> (Data.Monoid.<>)
                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                     (Prelude.fromIntegral
                                                                        (Data.ByteString.length
                                                                           bs)))
                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                     bs))
                                                          Data.Text.Encoding.encodeUtf8
                                                          _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'services")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just (ExtAuthz'GrpcService v))
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              10)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage
                                                              v)
                                                    (Prelude.Just (ExtAuthz'HttpService v))
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              26)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage
                                                              v))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData ExtAuthz where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtAuthz'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtAuthz'transportApiVersion x__)
                (Control.DeepSeq.deepseq
                   (_ExtAuthz'failureModeAllow x__)
                   (Control.DeepSeq.deepseq
                      (_ExtAuthz'withRequestBody x__)
                      (Control.DeepSeq.deepseq
                         (_ExtAuthz'clearRouteCache x__)
                         (Control.DeepSeq.deepseq
                            (_ExtAuthz'statusOnError x__)
                            (Control.DeepSeq.deepseq
                               (_ExtAuthz'metadataContextNamespaces x__)
                               (Control.DeepSeq.deepseq
                                  (_ExtAuthz'filterEnabled x__)
                                  (Control.DeepSeq.deepseq
                                     (_ExtAuthz'filterEnabledMetadata x__)
                                     (Control.DeepSeq.deepseq
                                        (_ExtAuthz'denyAtDisable x__)
                                        (Control.DeepSeq.deepseq
                                           (_ExtAuthz'includePeerCertificate x__)
                                           (Control.DeepSeq.deepseq
                                              (_ExtAuthz'statPrefix x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ExtAuthz'bootstrapMetadataLabelsKey x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ExtAuthz'services x__) ())))))))))))))
instance Control.DeepSeq.NFData ExtAuthz'Services where
  rnf (ExtAuthz'GrpcService x__) = Control.DeepSeq.rnf x__
  rnf (ExtAuthz'HttpService x__) = Control.DeepSeq.rnf x__
_ExtAuthz'GrpcService ::
  Data.ProtoLens.Prism.Prism' ExtAuthz'Services Proto.Envoy.Config.Core.V3.GrpcService.GrpcService
_ExtAuthz'GrpcService
  = Data.ProtoLens.Prism.prism'
      ExtAuthz'GrpcService
      (\ p__
         -> case p__ of
              (ExtAuthz'GrpcService p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ExtAuthz'HttpService ::
  Data.ProtoLens.Prism.Prism' ExtAuthz'Services HttpService
_ExtAuthz'HttpService
  = Data.ProtoLens.Prism.prism'
      ExtAuthz'HttpService
      (\ p__
         -> case p__ of
              (ExtAuthz'HttpService p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'override' @:: Lens' ExtAuthzPerRoute (Prelude.Maybe ExtAuthzPerRoute'Override)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'disabled' @:: Lens' ExtAuthzPerRoute (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.disabled' @:: Lens' ExtAuthzPerRoute Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'checkSettings' @:: Lens' ExtAuthzPerRoute (Prelude.Maybe CheckSettings)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.checkSettings' @:: Lens' ExtAuthzPerRoute CheckSettings@ -}
data ExtAuthzPerRoute
  = ExtAuthzPerRoute'_constructor {_ExtAuthzPerRoute'override :: !(Prelude.Maybe ExtAuthzPerRoute'Override),
                                   _ExtAuthzPerRoute'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtAuthzPerRoute where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ExtAuthzPerRoute'Override
  = ExtAuthzPerRoute'Disabled !Prelude.Bool |
    ExtAuthzPerRoute'CheckSettings !CheckSettings
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ExtAuthzPerRoute "maybe'override" (Prelude.Maybe ExtAuthzPerRoute'Override) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthzPerRoute'override
           (\ x__ y__ -> x__ {_ExtAuthzPerRoute'override = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthzPerRoute "maybe'disabled" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthzPerRoute'override
           (\ x__ y__ -> x__ {_ExtAuthzPerRoute'override = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ExtAuthzPerRoute'Disabled x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ExtAuthzPerRoute'Disabled y__))
instance Data.ProtoLens.Field.HasField ExtAuthzPerRoute "disabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthzPerRoute'override
           (\ x__ y__ -> x__ {_ExtAuthzPerRoute'override = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ExtAuthzPerRoute'Disabled x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ExtAuthzPerRoute'Disabled y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ExtAuthzPerRoute "maybe'checkSettings" (Prelude.Maybe CheckSettings) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthzPerRoute'override
           (\ x__ y__ -> x__ {_ExtAuthzPerRoute'override = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ExtAuthzPerRoute'CheckSettings x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ExtAuthzPerRoute'CheckSettings y__))
instance Data.ProtoLens.Field.HasField ExtAuthzPerRoute "checkSettings" CheckSettings where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthzPerRoute'override
           (\ x__ y__ -> x__ {_ExtAuthzPerRoute'override = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ExtAuthzPerRoute'CheckSettings x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ExtAuthzPerRoute'CheckSettings y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ExtAuthzPerRoute where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_authz.v3.ExtAuthzPerRoute"
  packedMessageDescriptor _
    = "\n\
      \\DLEExtAuthzPerRoute\DC2%\n\
      \\bdisabled\CAN\SOH \SOH(\bH\NULR\bdisabledB\a\250B\EOTj\STX\b\SOH\DC2l\n\
      \\SOcheck_settings\CAN\STX \SOH(\v29.envoy.extensions.filters.http.ext_authz.v3.CheckSettingsH\NULR\rcheckSettingsB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\SI\n\
      \\boverride\DC2\ETX\248B\SOH:=\154\197\136\RS8\n\
      \6envoy.config.filter.http.ext_authz.v2.ExtAuthzPerRoute"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        disabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'disabled")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthzPerRoute
        checkSettings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "check_settings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CheckSettings)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'checkSettings")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthzPerRoute
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, disabled__field_descriptor),
           (Data.ProtoLens.Tag 2, checkSettings__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtAuthzPerRoute'_unknownFields
        (\ x__ y__ -> x__ {_ExtAuthzPerRoute'_unknownFields = y__})
  defMessage
    = ExtAuthzPerRoute'_constructor
        {_ExtAuthzPerRoute'override = Prelude.Nothing,
         _ExtAuthzPerRoute'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtAuthzPerRoute
          -> Data.ProtoLens.Encoding.Bytes.Parser ExtAuthzPerRoute
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
                                       "disabled"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"disabled") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "check_settings"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"checkSettings") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExtAuthzPerRoute"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'override") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ExtAuthzPerRoute'Disabled v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (ExtAuthzPerRoute'CheckSettings v))
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
instance Control.DeepSeq.NFData ExtAuthzPerRoute where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtAuthzPerRoute'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ExtAuthzPerRoute'override x__) ())
instance Control.DeepSeq.NFData ExtAuthzPerRoute'Override where
  rnf (ExtAuthzPerRoute'Disabled x__) = Control.DeepSeq.rnf x__
  rnf (ExtAuthzPerRoute'CheckSettings x__) = Control.DeepSeq.rnf x__
_ExtAuthzPerRoute'Disabled ::
  Data.ProtoLens.Prism.Prism' ExtAuthzPerRoute'Override Prelude.Bool
_ExtAuthzPerRoute'Disabled
  = Data.ProtoLens.Prism.prism'
      ExtAuthzPerRoute'Disabled
      (\ p__
         -> case p__ of
              (ExtAuthzPerRoute'Disabled p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ExtAuthzPerRoute'CheckSettings ::
  Data.ProtoLens.Prism.Prism' ExtAuthzPerRoute'Override CheckSettings
_ExtAuthzPerRoute'CheckSettings
  = Data.ProtoLens.Prism.prism'
      ExtAuthzPerRoute'CheckSettings
      (\ p__
         -> case p__ of
              (ExtAuthzPerRoute'CheckSettings p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.serverUri' @:: Lens' HttpService Proto.Envoy.Config.Core.V3.HttpUri.HttpUri@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'serverUri' @:: Lens' HttpService (Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.pathPrefix' @:: Lens' HttpService Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.authorizationRequest' @:: Lens' HttpService AuthorizationRequest@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'authorizationRequest' @:: Lens' HttpService (Prelude.Maybe AuthorizationRequest)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.authorizationResponse' @:: Lens' HttpService AuthorizationResponse@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields.maybe'authorizationResponse' @:: Lens' HttpService (Prelude.Maybe AuthorizationResponse)@ -}
data HttpService
  = HttpService'_constructor {_HttpService'serverUri :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri),
                              _HttpService'pathPrefix :: !Data.Text.Text,
                              _HttpService'authorizationRequest :: !(Prelude.Maybe AuthorizationRequest),
                              _HttpService'authorizationResponse :: !(Prelude.Maybe AuthorizationResponse),
                              _HttpService'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpService where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpService "serverUri" Proto.Envoy.Config.Core.V3.HttpUri.HttpUri where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpService'serverUri
           (\ x__ y__ -> x__ {_HttpService'serverUri = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpService "maybe'serverUri" (Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpService'serverUri
           (\ x__ y__ -> x__ {_HttpService'serverUri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpService "pathPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpService'pathPrefix
           (\ x__ y__ -> x__ {_HttpService'pathPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpService "authorizationRequest" AuthorizationRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpService'authorizationRequest
           (\ x__ y__ -> x__ {_HttpService'authorizationRequest = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpService "maybe'authorizationRequest" (Prelude.Maybe AuthorizationRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpService'authorizationRequest
           (\ x__ y__ -> x__ {_HttpService'authorizationRequest = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpService "authorizationResponse" AuthorizationResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpService'authorizationResponse
           (\ x__ y__ -> x__ {_HttpService'authorizationResponse = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpService "maybe'authorizationResponse" (Prelude.Maybe AuthorizationResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpService'authorizationResponse
           (\ x__ y__ -> x__ {_HttpService'authorizationResponse = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpService where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_authz.v3.HttpService"
  packedMessageDescriptor _
    = "\n\
      \\vHttpService\DC2<\n\
      \\n\
      \server_uri\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.HttpUriR\tserverUri\DC2\US\n\
      \\vpath_prefix\CAN\STX \SOH(\tR\n\
      \pathPrefix\DC2u\n\
      \\NAKauthorization_request\CAN\a \SOH(\v2@.envoy.extensions.filters.http.ext_authz.v3.AuthorizationRequestR\DC4authorizationRequest\DC2x\n\
      \\SYNauthorization_response\CAN\b \SOH(\v2A.envoy.extensions.filters.http.ext_authz.v3.AuthorizationResponseR\NAKauthorizationResponse:8\154\197\136\RS3\n\
      \1envoy.config.filter.http.ext_authz.v2.HttpServiceJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQJ\EOT\b\ENQ\DLE\ACKJ\EOT\b\ACK\DLE\a"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        serverUri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "server_uri"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.HttpUri.HttpUri)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'serverUri")) ::
              Data.ProtoLens.FieldDescriptor HttpService
        pathPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pathPrefix")) ::
              Data.ProtoLens.FieldDescriptor HttpService
        authorizationRequest__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authorization_request"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AuthorizationRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'authorizationRequest")) ::
              Data.ProtoLens.FieldDescriptor HttpService
        authorizationResponse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authorization_response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AuthorizationResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'authorizationResponse")) ::
              Data.ProtoLens.FieldDescriptor HttpService
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, serverUri__field_descriptor),
           (Data.ProtoLens.Tag 2, pathPrefix__field_descriptor),
           (Data.ProtoLens.Tag 7, authorizationRequest__field_descriptor),
           (Data.ProtoLens.Tag 8, authorizationResponse__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpService'_unknownFields
        (\ x__ y__ -> x__ {_HttpService'_unknownFields = y__})
  defMessage
    = HttpService'_constructor
        {_HttpService'serverUri = Prelude.Nothing,
         _HttpService'pathPrefix = Data.ProtoLens.fieldDefault,
         _HttpService'authorizationRequest = Prelude.Nothing,
         _HttpService'authorizationResponse = Prelude.Nothing,
         _HttpService'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpService -> Data.ProtoLens.Encoding.Bytes.Parser HttpService
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
                                       "server_uri"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serverUri") y x)
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
                                       "path_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pathPrefix") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "authorization_request"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authorizationRequest") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "authorization_response"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authorizationResponse") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpService"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'serverUri") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"pathPrefix") _x
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
                          (Data.ProtoLens.Field.field @"maybe'authorizationRequest") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
                             (Data.ProtoLens.Field.field @"maybe'authorizationResponse") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData HttpService where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpService'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpService'serverUri x__)
                (Control.DeepSeq.deepseq
                   (_HttpService'pathPrefix x__)
                   (Control.DeepSeq.deepseq
                      (_HttpService'authorizationRequest x__)
                      (Control.DeepSeq.deepseq
                         (_HttpService'authorizationResponse x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \:envoy/extensions/filters/http/ext_authz/v3/ext_authz.proto\DC2*envoy.extensions.filters.http.ext_authz.v3\SUB\USenvoy/config/core/v3/base.proto\SUB(envoy/config/core/v3/config_source.proto\SUB'envoy/config/core/v3/grpc_service.proto\SUB#envoy/config/core/v3/http_uri.proto\SUB$envoy/type/matcher/v3/metadata.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB\USenvoy/type/v3/http_status.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\208\b\n\
    \\bExtAuthz\DC2F\n\
    \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceH\NULR\vgrpcService\DC2\\\n\
    \\fhttp_service\CAN\ETX \SOH(\v27.envoy.extensions.filters.http.ext_authz.v3.HttpServiceH\NULR\vhttpService\DC2^\n\
    \\NAKtransport_api_version\CAN\f \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2,\n\
    \\DC2failure_mode_allow\CAN\STX \SOH(\bR\DLEfailureModeAllow\DC2f\n\
    \\DC1with_request_body\CAN\ENQ \SOH(\v2:.envoy.extensions.filters.http.ext_authz.v3.BufferSettingsR\SIwithRequestBody\DC2*\n\
    \\DC1clear_route_cache\CAN\ACK \SOH(\bR\SIclearRouteCache\DC2A\n\
    \\SIstatus_on_error\CAN\a \SOH(\v2\EM.envoy.type.v3.HttpStatusR\rstatusOnError\DC2>\n\
    \\ESCmetadata_context_namespaces\CAN\b \ETX(\tR\EMmetadataContextNamespaces\DC2U\n\
    \\SOfilter_enabled\CAN\t \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\rfilterEnabled\DC2^\n\
    \\ETBfilter_enabled_metadata\CAN\SO \SOH(\v2&.envoy.type.matcher.v3.MetadataMatcherR\NAKfilterEnabledMetadata\DC2P\n\
    \\SIdeny_at_disable\CAN\v \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\rdenyAtDisable\DC28\n\
    \\CANinclude_peer_certificate\CAN\n\
    \ \SOH(\bR\SYNincludePeerCertificate\DC2\US\n\
    \\vstat_prefix\CAN\r \SOH(\tR\n\
    \statPrefix\DC2A\n\
    \\GSbootstrap_metadata_labels_key\CAN\SI \SOH(\tR\SUBbootstrapMetadataLabelsKeyB\n\
    \\n\
    \\bservices:5\154\197\136\RS0\n\
    \.envoy.config.filter.http.ext_authz.v2.ExtAuthzJ\EOT\b\EOT\DLE\ENQR\tuse_alpha\"\218\SOH\n\
    \\SOBufferSettings\DC23\n\
    \\DC1max_request_bytes\CAN\SOH \SOH(\rR\SImaxRequestBytesB\a\250B\EOT*\STX \NUL\DC22\n\
    \\NAKallow_partial_message\CAN\STX \SOH(\bR\DC3allowPartialMessage\DC2\"\n\
    \\rpack_as_bytes\CAN\ETX \SOH(\bR\vpackAsBytes:;\154\197\136\RS6\n\
    \4envoy.config.filter.http.ext_authz.v2.BufferSettings\"\175\ETX\n\
    \\vHttpService\DC2<\n\
    \\n\
    \server_uri\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.HttpUriR\tserverUri\DC2\US\n\
    \\vpath_prefix\CAN\STX \SOH(\tR\n\
    \pathPrefix\DC2u\n\
    \\NAKauthorization_request\CAN\a \SOH(\v2@.envoy.extensions.filters.http.ext_authz.v3.AuthorizationRequestR\DC4authorizationRequest\DC2x\n\
    \\SYNauthorization_response\CAN\b \SOH(\v2A.envoy.extensions.filters.http.ext_authz.v3.AuthorizationResponseR\NAKauthorizationResponse:8\154\197\136\RS3\n\
    \1envoy.config.filter.http.ext_authz.v2.HttpServiceJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQJ\EOT\b\ENQ\DLE\ACKJ\EOT\b\ACK\DLE\a\"\245\SOH\n\
    \\DC4AuthorizationRequest\DC2Q\n\
    \\SIallowed_headers\CAN\SOH \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherR\SOallowedHeaders\DC2G\n\
    \\SOheaders_to_add\CAN\STX \ETX(\v2!.envoy.config.core.v3.HeaderValueR\fheadersToAdd:A\154\197\136\RS<\n\
    \:envoy.config.filter.http.ext_authz.v2.AuthorizationRequest\"\137\EOT\n\
    \\NAKAuthorizationResponse\DC2b\n\
    \\CANallowed_upstream_headers\CAN\SOH \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherR\SYNallowedUpstreamHeaders\DC2t\n\
    \\"allowed_upstream_headers_to_append\CAN\ETX \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherR\RSallowedUpstreamHeadersToAppend\DC2^\n\
    \\SYNallowed_client_headers\CAN\STX \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherR\DC4allowedClientHeaders\DC2r\n\
    \!allowed_client_headers_on_success\CAN\EOT \SOH(\v2(.envoy.type.matcher.v3.ListStringMatcherR\GSallowedClientHeadersOnSuccess:B\154\197\136\RS=\n\
    \;envoy.config.filter.http.ext_authz.v2.AuthorizationResponse\"\247\SOH\n\
    \\DLEExtAuthzPerRoute\DC2%\n\
    \\bdisabled\CAN\SOH \SOH(\bH\NULR\bdisabledB\a\250B\EOTj\STX\b\SOH\DC2l\n\
    \\SOcheck_settings\CAN\STX \SOH(\v29.envoy.extensions.filters.http.ext_authz.v3.CheckSettingsH\NULR\rcheckSettingsB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\SI\n\
    \\boverride\DC2\ETX\248B\SOH:=\154\197\136\RS8\n\
    \6envoy.config.filter.http.ext_authz.v2.ExtAuthzPerRoute\"\215\STX\n\
    \\rCheckSettings\DC2\DEL\n\
    \\DC2context_extensions\CAN\SOH \ETX(\v2P.envoy.extensions.filters.http.ext_authz.v3.CheckSettings.ContextExtensionsEntryR\DC1contextExtensions\DC2C\n\
    \\RSdisable_request_body_buffering\CAN\STX \SOH(\bR\ESCdisableRequestBodyBuffering\SUBD\n\
    \\SYNContextExtensionsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH::\154\197\136\RS5\n\
    \3envoy.config.filter.http.ext_authz.v2.CheckSettingsBS\n\
    \8io.envoyproxy.envoy.extensions.filters.http.ext_authz.v3B\rExtAuthzProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\160o\n\
    \\a\DC2\ENQ\NUL\NUL\187\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL3\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL2\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL1\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL-\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL.\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL,\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL)\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\f\NUL'\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\SO\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULQ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NULQ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC2\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC3\NULF\n\
    \\214\SOH\n\
    \\STX\EOT\NUL\DC2\ENQ\SUB\NUL\145\SOH\SOH\SUB\CAN [#next-free-field: 16]\n\
    \2\174\SOH [#protodoc-title: External Authorization]\n\
    \ External Authorization :ref:`configuration overview <config_http_filters_ext_authz>`.\n\
    \ [#extension: envoy.filters.http.ext_authz]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SUB\b\DLE\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\ESC\STX\FS7\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ESC\STX\FS7\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX\RS\STX\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\RS\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\RS\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\RS\v\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\n\
    \\DC2\ETX \STX\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETX \v\SYN\n\
    \=\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT#\STX)\ETX\SUB/ External authorization service configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX#\b\DLE\n\
    \C\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX%\EOT0\SUB6 gRPC service configuration (default timeout: 200ms).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX%\EOT\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX%\US+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX%./\n\
    \C\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX(\EOT!\SUB6 HTTP service configuration (default timeout: 200ms).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX(\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX(\DLE\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX(\US \n\
    \\148\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT-\STX.5\SUB\133\SOH API version for ext_authz transport protocol. This describes the ext_authz gRPC endpoint and\n\
    \ version of messages used on the wire.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX-\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX-\FS1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX-46\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX.\ACK4\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DLE\DC2\ETX.\a3\n\
    \\203\EOT\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX<\STX\RS\SUB\189\EOT  Changes filter's behaviour on errors:\n\
    \\n\
    \  1. When set to true, the filter will *accept* client request even if the communication with\n\
    \  the authorization service has failed, or if the authorization service has returned a HTTP 5xx\n\
    \  error.\n\
    \\n\
    \  2. When set to false, ext-authz will *reject* client requests and return a *Forbidden*\n\
    \  response if the communication with the authorization service has failed, or if the\n\
    \  authorization service has returned a HTTP 5xx error.\n\
    \\n\
    \ Note that errors can be *always* tracked in the :ref:`stats\n\
    \ <config_http_filters_ext_authz_stats>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX<\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX<\a\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX<\FS\GS\n\
    \\135\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXA\STX'\SUB\249\SOH Enables filter to buffer the client request body and send it within the authorization request.\n\
    \ A ``x-envoy-auth-partial-body: false|true`` metadata header will be added to the authorization\n\
    \ request message indicating if the body data is partial.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXA\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXA\DC1\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXA%&\n\
    \\162\ETX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXM\STX\GS\SUB\148\ETX Clears route cache in order to allow the external authorization service to correctly affect\n\
    \ routing decisions. Filter clears all cached routes when:\n\
    \\n\
    \ 1. The field is set to *true*.\n\
    \\n\
    \ 2. The status returned from the authorization service is a HTTP 200 or gRPC 0.\n\
    \\n\
    \ 3. At least one *authorization response header* is added to the client request, or is used for\n\
    \ altering another client request header.\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXM\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXM\a\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXM\ESC\FS\n\
    \\189\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXQ\STX)\SUB\175\SOH Sets the HTTP status that is returned to the client when there is a network error between the\n\
    \ filter and the authorization server. The default status is HTTP 403 Forbidden.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXQ\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXQ\NAK$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXQ'(\n\
    \\246\ETX\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX_\STX2\SUB\232\ETX Specifies a list of metadata namespaces whose values, if present, will be passed to the\n\
    \ ext_authz service as an opaque *protobuf::Struct*.\n\
    \\n\
    \ For example, if the *jwt_authn* filter is used and :ref:`payload_in_metadata\n\
    \ <envoy_v3_api_field_extensions.filters.http.jwt_authn.v3.JwtProvider.payload_in_metadata>` is set,\n\
    \ then the following will pass the jwt payload to the authorization server.\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    metadata_context_namespaces:\n\
    \    - envoy.filters.http.jwt_authn\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETX_\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX_\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX_\DC2-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX_01\n\
    \\193\STX\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXg\STX=\SUB\179\STX Specifies if the filter is enabled.\n\
    \\n\
    \ If :ref:`runtime_key <envoy_v3_api_field_config.core.v3.RuntimeFractionalPercent.runtime_key>` is specified,\n\
    \ Envoy will lookup the runtime key to get the percentage of requests to filter.\n\
    \\n\
    \ If this field is not specified, the filter will be enabled for all requests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETXg\STX)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXg*8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXg;<\n\
    \\151\SOH\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETXk\STX?\SUB\137\SOH Specifies if the filter is enabled with metadata matcher.\n\
    \ If this field is not specified, the filter will be enabled for all requests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETXk\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETXk\"9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETXk<>\n\
    \\223\ETX\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETXt\STX9\SUB\209\ETX Specifies whether to deny the requests, when the filter is disabled.\n\
    \ If :ref:`runtime_key <envoy_v3_api_field_config.core.v3.RuntimeFeatureFlag.runtime_key>` is specified,\n\
    \ Envoy will lookup the runtime key to determine whether to deny request for\n\
    \ filter protected path at filter disabling. If filter is disabled in\n\
    \ typed_per_filter_config for the path, requests will not be denied.\n\
    \\n\
    \ If this field is not specified, all requests will be allowed when disabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETXt\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETXt$3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETXt68\n\
    \\140\STX\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETXz\STX%\SUB\254\SOH Specifies if the peer certificate is sent to the external service.\n\
    \\n\
    \ When this field is true, Envoy will include the peer X.509 certificate, if available, in the\n\
    \ :ref:`certificate<envoy_v3_api_field_service.auth.v3.AttributeContext.Peer.certificate>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\ETXz\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETXz\a\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETXz\"$\n\
    \\216\ENQ\n\
    \\EOT\EOT\NUL\STX\f\DC2\EOT\139\SOH\STX\SUB\SUB\201\ENQ Optional additional prefix to use when emitting statistics. This allows to distinguish\n\
    \ emitted statistics between configured *ext_authz* filters in an HTTP filter chain. For example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \   http_filters:\n\
    \     - name: envoy.filters.http.ext_authz\n\
    \       typed_config:\n\
    \         \"@type\": type.googleapis.com/envoy.extensions.filters.http.ext_authz.v3.ExtAuthz\n\
    \         stat_prefix: waf # This emits ext_authz.waf.ok, ext_authz.waf.denied, etc.\n\
    \     - name: envoy.filters.http.ext_authz\n\
    \       typed_config:\n\
    \         \"@type\": type.googleapis.com/envoy.extensions.filters.http.ext_authz.v3.ExtAuthz\n\
    \         stat_prefix: blocker # This emits ext_authz.blocker.ok, ext_authz.blocker.denied, etc.\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ENQ\DC2\EOT\139\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\EOT\139\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\EOT\139\SOH\ETB\EM\n\
    \\203\STX\n\
    \\EOT\EOT\NUL\STX\r\DC2\EOT\144\SOH\STX,\SUB\188\STX Optional labels that will be passed to :ref:`labels<envoy_v3_api_field_service.auth.v3.AttributeContext.Peer.labels>` in\n\
    \ :ref:`destination<envoy_v3_api_field_service.auth.v3.AttributeContext.destination>`.\n\
    \ The labels will be read from :ref:`metadata<envoy_v3_api_msg_config.core.v3.Node>` with the specified key.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ENQ\DC2\EOT\144\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\EOT\144\SOH\t&\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\EOT\144\SOH)+\n\
    \=\n\
    \\STX\EOT\SOH\DC2\ACK\148\SOH\NUL\169\SOH\SOH\SUB/ Configuration for buffering the request data.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\148\SOH\b\SYN\n\
    \\r\n\
    \\ETX\EOT\SOH\a\DC2\ACK\149\SOH\STX\150\SOH=\n\
    \\DC2\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ACK\149\SOH\STX\150\SOH=\n\
    \\131\ETX\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\156\SOH\STXC\SUB\244\STX Sets the maximum size of a message body that the filter will hold in memory. Envoy will return\n\
    \ *HTTP 413* and will *not* initiate the authorization process when buffer reaches the number\n\
    \ set in this field. Note that this setting will have precedence over :ref:`failure_mode_allow\n\
    \ <envoy_v3_api_field_extensions.filters.http.ext_authz.v3.ExtAuthz.failure_mode_allow>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\EOT\156\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\156\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\156\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\EOT\156\SOH\USB\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\ENQ\DC2\EOT\156\SOH A\n\
    \\210\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\161\SOH\STX!\SUB\195\SOH When this field is true, Envoy will buffer the message until *max_request_bytes* is reached.\n\
    \ The authorization request will be dispatched and no 413 HTTP error will be returned by the\n\
    \ filter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\EOT\161\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\161\SOH\a\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\161\SOH\US \n\
    \\132\ETX\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\168\SOH\STX\EM\SUB\245\STX If true, the body sent to the external authorization service is set with raw bytes, it sets\n\
    \ the :ref:`raw_body<envoy_v3_api_field_service.auth.v3.AttributeContext.HttpRequest.raw_body>`\n\
    \ field of HTTP request attribute context. Otherwise, :ref:`\n\
    \ body<envoy_v3_api_field_service.auth.v3.AttributeContext.HttpRequest.body>` will be filled\n\
    \ with UTF-8 string request body.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\EOT\168\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\168\SOH\a\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\168\SOH\ETB\CAN\n\
    \\217\r\n\
    \\STX\EOT\STX\DC2\ACK\199\SOH\NUL\216\SOH\SOH\SUB\202\r HttpService is used for raw HTTP communication between the filter and the authorization service.\n\
    \ When configured, the filter will parse the client request and use these attributes to call the\n\
    \ authorization server. Depending on the response, the filter may reject or accept the client\n\
    \ request. Note that in any of these events, metadata can be added, removed or overridden by the\n\
    \ filter:\n\
    \\n\
    \ *On authorization request*, a list of allowed request headers may be supplied. See\n\
    \ :ref:`allowed_headers\n\
    \ <envoy_v3_api_field_extensions.filters.http.ext_authz.v3.AuthorizationRequest.allowed_headers>`\n\
    \ for details. Additional headers metadata may be added to the authorization request. See\n\
    \ :ref:`headers_to_add\n\
    \ <envoy_v3_api_field_extensions.filters.http.ext_authz.v3.AuthorizationRequest.headers_to_add>` for\n\
    \ details.\n\
    \\n\
    \ On authorization response status HTTP 200 OK, the filter will allow traffic to the upstream and\n\
    \ additional headers metadata may be added to the original client request. See\n\
    \ :ref:`allowed_upstream_headers\n\
    \ <envoy_v3_api_field_extensions.filters.http.ext_authz.v3.AuthorizationResponse.allowed_upstream_headers>`\n\
    \ for details. Additionally, the filter may add additional headers to the client's response. See\n\
    \ :ref:`allowed_client_headers_on_success\n\
    \ <envoy_v3_api_field_extensions.filters.http.ext_authz.v3.AuthorizationResponse.allowed_client_headers_on_success>`\n\
    \ for details.\n\
    \\n\
    \ On other authorization response statuses, the filter will not allow traffic. Additional headers\n\
    \ metadata as well as body may be added to the client's response. See :ref:`allowed_client_headers\n\
    \ <envoy_v3_api_field_extensions.filters.http.ext_authz.v3.AuthorizationResponse.allowed_client_headers>`\n\
    \ for details.\n\
    \ [#next-free-field: 9]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\199\SOH\b\DC3\n\
    \\r\n\
    \\ETX\EOT\STX\a\DC2\ACK\200\SOH\STX\201\SOH:\n\
    \\DC2\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\ACK\200\SOH\STX\201\SOH:\n\
    \\v\n\
    \\ETX\EOT\STX\t\DC2\EOT\203\SOH\STX\SYN\n\
    \\f\n\
    \\EOT\EOT\STX\t\NUL\DC2\EOT\203\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\STX\t\NUL\SOH\DC2\EOT\203\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\STX\t\NUL\STX\DC2\EOT\203\SOH\v\f\n\
    \\f\n\
    \\EOT\EOT\STX\t\SOH\DC2\EOT\203\SOH\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\STX\t\SOH\SOH\DC2\EOT\203\SOH\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\STX\t\SOH\STX\DC2\EOT\203\SOH\SO\SI\n\
    \\f\n\
    \\EOT\EOT\STX\t\STX\DC2\EOT\203\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\STX\t\STX\SOH\DC2\EOT\203\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\STX\t\STX\STX\DC2\EOT\203\SOH\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT\STX\t\ETX\DC2\EOT\203\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\t\ETX\SOH\DC2\EOT\203\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\t\ETX\STX\DC2\EOT\203\SOH\DC4\NAK\n\
    \Z\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\206\SOH\STX(\SUBL Sets the HTTP server URI which the authorization requests must be sent to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\206\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\206\SOH\EM#\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\206\SOH&'\n\
    \R\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\209\SOH\STX\EM\SUBD Sets a prefix to the value of authorization request header *Path*.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\EOT\209\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\209\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\209\SOH\ETB\CAN\n\
    \M\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\212\SOH\STX1\SUB? Settings used for controlling authorization request metadata.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\212\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\212\SOH\ETB,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\212\SOH/0\n\
    \N\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\215\SOH\STX3\SUB@ Settings used for controlling authorization response metadata.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\EOT\215\SOH\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\215\SOH\CAN.\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\215\SOH12\n\
    \\f\n\
    \\STX\EOT\ETX\DC2\ACK\218\SOH\NUL\243\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\218\SOH\b\FS\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\219\SOH\STX\220\SOHC\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\219\SOH\STX\220\SOHC\n\
    \\172\ACK\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\238\SOH\STX8\SUB\157\ACK Authorization request includes the client request headers that have a correspondent match\n\
    \ in the :ref:`list <envoy_v3_api_msg_type.matcher.v3.ListStringMatcher>`.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   In addition to the the user's supplied matchers, ``Host``, ``Method``, ``Path``,\n\
    \   ``Content-Length``, and ``Authorization`` are **automatically included** to the list.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   By default, ``Content-Length`` header is set to ``0`` and the request to the authorization\n\
    \   service has no message body. However, the authorization request *may* include the buffered\n\
    \   client request body (controlled by :ref:`with_request_body\n\
    \   <envoy_v3_api_field_extensions.filters.http.ext_authz.v3.ExtAuthz.with_request_body>`\n\
    \   setting) hence the value of its ``Content-Length`` reflects the size of its payload size.\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\238\SOH\STX#\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\238\SOH$3\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\238\SOH67\n\
    \\164\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\242\SOH\STX9\SUB\149\SOH Sets a list of headers that will be included to the request to authorization service. Note that\n\
    \ client request of the same key will be overridden.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\EOT\242\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\EOT\242\SOH\v%\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\242\SOH&4\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\242\SOH78\n\
    \\f\n\
    \\STX\EOT\EOT\DC2\ACK\245\SOH\NUL\143\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\245\SOH\b\GS\n\
    \\r\n\
    \\ETX\EOT\EOT\a\DC2\ACK\246\SOH\STX\247\SOHD\n\
    \\DC2\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ACK\246\SOH\STX\247\SOHD\n\
    \\131\STX\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\252\SOH\STXA\SUB\244\SOH When this :ref:`list <envoy_v3_api_msg_type.matcher.v3.ListStringMatcher>` is set, authorization\n\
    \ response headers that have a correspondent match will be added to the original client request.\n\
    \ Note that coexistent headers will be overridden.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\252\SOH\STX#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\252\SOH$<\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\252\SOH?@\n\
    \\251\SOH\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\129\STX\STXK\SUB\236\SOH When this :ref:`list <envoy_v3_api_msg_type.matcher.v3.ListStringMatcher>` is set, authorization\n\
    \ response headers that have a correspondent match will be added to the client's response. Note\n\
    \ that coexistent headers will be appended.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\129\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\129\STX$F\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\129\STXIJ\n\
    \\229\ETX\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\136\STX\STX?\SUB\214\ETX When this :ref:`list <envoy_v3_api_msg_type.matcher.v3.ListStringMatcher>`. is set, authorization\n\
    \ response headers that have a correspondent match will be added to the client's response. Note\n\
    \ that when this list is *not* set, all the authorization response headers, except *Authority\n\
    \ (Host)* will be in the response to the client. When a header is included in this list, *Path*,\n\
    \ *Status*, *Content-Length*, *WWWAuthenticate* and *Location* are automatically added.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\136\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\136\STX$:\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\136\STX=>\n\
    \\132\ETX\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\142\STX\STXJ\SUB\245\STX When this :ref:`list <envoy_v3_api_msg_type.matcher.v3.ListStringMatcher>`. is set, authorization\n\
    \ response headers that have a correspondent match will be added to the client's response when\n\
    \ the authorization response itself is successful, i.e. not failed or denied. When this list is\n\
    \ *not* set, no additional headers will be added to the client's response on success.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\EOT\142\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\142\STX$E\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\142\STXHI\n\
    \Q\n\
    \\STX\EOT\ENQ\DC2\ACK\146\STX\NUL\160\STX\SOH\SUBC Extra settings on a per virtualhost/route/weighted-cluster level.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\146\STX\b\CAN\n\
    \\r\n\
    \\ETX\EOT\ENQ\a\DC2\ACK\147\STX\STX\148\STX?\n\
    \\DC2\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\147\STX\STX\148\STX?\n\
    \\SO\n\
    \\EOT\EOT\ENQ\b\NUL\DC2\ACK\150\STX\STX\159\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\SOH\DC2\EOT\150\STX\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\STX\DC2\EOT\151\STX\EOT&\n\
    \\SI\n\
    \\a\EOT\ENQ\b\NUL\STX\175\b\DC2\EOT\151\STX\EOT&\n\
    \\174\SOH\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\155\STX\EOT>\SUB\159\SOH Disable the ext auth filter for this particular vhost or route.\n\
    \ If disabled is specified in multiple per-filter-configs, the most specific one will be used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\155\STX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\155\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\155\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\155\STX\SYN=\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\175\b\r\DC2\EOT\155\STX\ETB<\n\
    \6\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\158\STX\EOTS\SUB( Check request settings for this route.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\158\STX\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\158\STX\DC2 \n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\158\STX#$\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\b\DC2\EOT\158\STX%R\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\SOH\b\175\b\DC1\DC2\EOT\158\STX&Q\n\
    \5\n\
    \\STX\EOT\ACK\DC2\ACK\163\STX\NUL\187\STX\SOH\SUB' Extra settings for the check request.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\163\STX\b\NAK\n\
    \\r\n\
    \\ETX\EOT\ACK\a\DC2\ACK\164\STX\STX\165\STX<\n\
    \\DC2\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\ACK\164\STX\STX\165\STX<\n\
    \\230\ACK\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\182\STX\STX-\SUB\215\ACK Context extensions to set on the CheckRequest's\n\
    \ :ref:`AttributeContext.context_extensions<envoy_v3_api_field_service.auth.v3.AttributeContext.context_extensions>`\n\
    \\n\
    \ You can use this to provide extra context for the external authorization server on specific\n\
    \ virtual hosts/routes. For example, adding a context extension on the virtual host level can\n\
    \ give the ext-authz server information on what virtual host is used without needing to parse the\n\
    \ host header. If CheckSettings is specified in multiple per-filter-configs, they will be merged\n\
    \ in order, and the result will be used.\n\
    \\n\
    \ Merge semantics for this field are such that keys from more specific configs override.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   These settings are only applied to a filter configured with a\n\
    \   :ref:`grpc_service<envoy_v3_api_field_extensions.filters.http.ext_authz.v3.ExtAuthz.grpc_service>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\182\STX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\182\STX\SYN(\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\182\STX+,\n\
    \\181\SOH\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\186\STX\STX*\SUB\166\SOH When set to true, disable the configured :ref:`with_request_body\n\
    \ <envoy_v3_api_field_extensions.filters.http.ext_authz.v3.ExtAuthz.with_request_body>` for a route.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\186\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\186\STX\a%\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\186\STX()b\ACKproto3"