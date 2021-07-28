{- This file was auto-generated from envoy/extensions/filters/http/oauth2/v3alpha/oauth.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth (
        OAuth2(), OAuth2Config(), OAuth2Credentials(),
        OAuth2Credentials'TokenFormation(..), _OAuth2Credentials'HmacSecret
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
import qualified Proto.Envoy.Config.Core.V3.HttpUri
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret
import qualified Proto.Envoy.Type.Matcher.V3.Path
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.config' @:: Lens' OAuth2 OAuth2Config@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.maybe'config' @:: Lens' OAuth2 (Prelude.Maybe OAuth2Config)@ -}
data OAuth2
  = OAuth2'_constructor {_OAuth2'config :: !(Prelude.Maybe OAuth2Config),
                         _OAuth2'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OAuth2 where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OAuth2 "config" OAuth2Config where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2'config (\ x__ y__ -> x__ {_OAuth2'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OAuth2 "maybe'config" (Prelude.Maybe OAuth2Config) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2'config (\ x__ y__ -> x__ {_OAuth2'config = y__}))
        Prelude.id
instance Data.ProtoLens.Message OAuth2 where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.oauth2.v3alpha.OAuth2"
  packedMessageDescriptor _
    = "\n\
      \\ACKOAuth2\DC2R\n\
      \\ACKconfig\CAN\SOH \SOH(\v2:.envoy.extensions.filters.http.oauth2.v3alpha.OAuth2ConfigR\ACKconfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OAuth2Config)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor OAuth2
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, config__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OAuth2'_unknownFields
        (\ x__ y__ -> x__ {_OAuth2'_unknownFields = y__})
  defMessage
    = OAuth2'_constructor
        {_OAuth2'config = Prelude.Nothing, _OAuth2'_unknownFields = []}
  parseMessage
    = let
        loop :: OAuth2 -> Data.ProtoLens.Encoding.Bytes.Parser OAuth2
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OAuth2"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData OAuth2 where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OAuth2'_unknownFields x__)
             (Control.DeepSeq.deepseq (_OAuth2'config x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.tokenEndpoint' @:: Lens' OAuth2Config Proto.Envoy.Config.Core.V3.HttpUri.HttpUri@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.maybe'tokenEndpoint' @:: Lens' OAuth2Config (Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri)@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.authorizationEndpoint' @:: Lens' OAuth2Config Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.credentials' @:: Lens' OAuth2Config OAuth2Credentials@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.maybe'credentials' @:: Lens' OAuth2Config (Prelude.Maybe OAuth2Credentials)@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.redirectUri' @:: Lens' OAuth2Config Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.redirectPathMatcher' @:: Lens' OAuth2Config Proto.Envoy.Type.Matcher.V3.Path.PathMatcher@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.maybe'redirectPathMatcher' @:: Lens' OAuth2Config (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Path.PathMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.signoutPath' @:: Lens' OAuth2Config Proto.Envoy.Type.Matcher.V3.Path.PathMatcher@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.maybe'signoutPath' @:: Lens' OAuth2Config (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Path.PathMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.forwardBearerToken' @:: Lens' OAuth2Config Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.passThroughMatcher' @:: Lens' OAuth2Config [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher]@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.vec'passThroughMatcher' @:: Lens' OAuth2Config (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.authScopes' @:: Lens' OAuth2Config [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.vec'authScopes' @:: Lens' OAuth2Config (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.resources' @:: Lens' OAuth2Config [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.vec'resources' @:: Lens' OAuth2Config (Data.Vector.Vector Data.Text.Text)@ -}
data OAuth2Config
  = OAuth2Config'_constructor {_OAuth2Config'tokenEndpoint :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri),
                               _OAuth2Config'authorizationEndpoint :: !Data.Text.Text,
                               _OAuth2Config'credentials :: !(Prelude.Maybe OAuth2Credentials),
                               _OAuth2Config'redirectUri :: !Data.Text.Text,
                               _OAuth2Config'redirectPathMatcher :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Path.PathMatcher),
                               _OAuth2Config'signoutPath :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Path.PathMatcher),
                               _OAuth2Config'forwardBearerToken :: !Prelude.Bool,
                               _OAuth2Config'passThroughMatcher :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher),
                               _OAuth2Config'authScopes :: !(Data.Vector.Vector Data.Text.Text),
                               _OAuth2Config'resources :: !(Data.Vector.Vector Data.Text.Text),
                               _OAuth2Config'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OAuth2Config where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OAuth2Config "tokenEndpoint" Proto.Envoy.Config.Core.V3.HttpUri.HttpUri where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'tokenEndpoint
           (\ x__ y__ -> x__ {_OAuth2Config'tokenEndpoint = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OAuth2Config "maybe'tokenEndpoint" (Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'tokenEndpoint
           (\ x__ y__ -> x__ {_OAuth2Config'tokenEndpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Config "authorizationEndpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'authorizationEndpoint
           (\ x__ y__ -> x__ {_OAuth2Config'authorizationEndpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Config "credentials" OAuth2Credentials where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'credentials
           (\ x__ y__ -> x__ {_OAuth2Config'credentials = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OAuth2Config "maybe'credentials" (Prelude.Maybe OAuth2Credentials) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'credentials
           (\ x__ y__ -> x__ {_OAuth2Config'credentials = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Config "redirectUri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'redirectUri
           (\ x__ y__ -> x__ {_OAuth2Config'redirectUri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Config "redirectPathMatcher" Proto.Envoy.Type.Matcher.V3.Path.PathMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'redirectPathMatcher
           (\ x__ y__ -> x__ {_OAuth2Config'redirectPathMatcher = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OAuth2Config "maybe'redirectPathMatcher" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Path.PathMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'redirectPathMatcher
           (\ x__ y__ -> x__ {_OAuth2Config'redirectPathMatcher = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Config "signoutPath" Proto.Envoy.Type.Matcher.V3.Path.PathMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'signoutPath
           (\ x__ y__ -> x__ {_OAuth2Config'signoutPath = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OAuth2Config "maybe'signoutPath" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Path.PathMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'signoutPath
           (\ x__ y__ -> x__ {_OAuth2Config'signoutPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Config "forwardBearerToken" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'forwardBearerToken
           (\ x__ y__ -> x__ {_OAuth2Config'forwardBearerToken = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Config "passThroughMatcher" [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'passThroughMatcher
           (\ x__ y__ -> x__ {_OAuth2Config'passThroughMatcher = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OAuth2Config "vec'passThroughMatcher" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'passThroughMatcher
           (\ x__ y__ -> x__ {_OAuth2Config'passThroughMatcher = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Config "authScopes" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'authScopes
           (\ x__ y__ -> x__ {_OAuth2Config'authScopes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OAuth2Config "vec'authScopes" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'authScopes
           (\ x__ y__ -> x__ {_OAuth2Config'authScopes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Config "resources" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'resources
           (\ x__ y__ -> x__ {_OAuth2Config'resources = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OAuth2Config "vec'resources" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Config'resources
           (\ x__ y__ -> x__ {_OAuth2Config'resources = y__}))
        Prelude.id
instance Data.ProtoLens.Message OAuth2Config where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.oauth2.v3alpha.OAuth2Config"
  packedMessageDescriptor _
    = "\n\
      \\fOAuth2Config\DC2D\n\
      \\SOtoken_endpoint\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.HttpUriR\rtokenEndpoint\DC2>\n\
      \\SYNauthorization_endpoint\CAN\STX \SOH(\tR\NAKauthorizationEndpointB\a\250B\EOTr\STX\DLE\SOH\DC2k\n\
      \\vcredentials\CAN\ETX \SOH(\v2?.envoy.extensions.filters.http.oauth2.v3alpha.OAuth2CredentialsR\vcredentialsB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2*\n\
      \\fredirect_uri\CAN\EOT \SOH(\tR\vredirectUriB\a\250B\EOTr\STX\DLE\SOH\DC2`\n\
      \\NAKredirect_path_matcher\CAN\ENQ \SOH(\v2\".envoy.type.matcher.v3.PathMatcherR\DC3redirectPathMatcherB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2O\n\
      \\fsignout_path\CAN\ACK \SOH(\v2\".envoy.type.matcher.v3.PathMatcherR\vsignoutPathB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC20\n\
      \\DC4forward_bearer_token\CAN\a \SOH(\bR\DC2forwardBearerToken\DC2V\n\
      \\DC4pass_through_matcher\CAN\b \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\DC2passThroughMatcher\DC2\US\n\
      \\vauth_scopes\CAN\t \ETX(\tR\n\
      \authScopes\DC2\FS\n\
      \\tresources\CAN\n\
      \ \ETX(\tR\tresources"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tokenEndpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "token_endpoint"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.HttpUri.HttpUri)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tokenEndpoint")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Config
        authorizationEndpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authorization_endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authorizationEndpoint")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Config
        credentials__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "credentials"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OAuth2Credentials)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'credentials")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Config
        redirectUri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redirect_uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"redirectUri")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Config
        redirectPathMatcher__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redirect_path_matcher"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Path.PathMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'redirectPathMatcher")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Config
        signoutPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signout_path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Path.PathMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'signoutPath")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Config
        forwardBearerToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "forward_bearer_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"forwardBearerToken")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Config
        passThroughMatcher__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pass_through_matcher"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"passThroughMatcher")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Config
        authScopes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auth_scopes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"authScopes")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Config
        resources__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resources"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"resources")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Config
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tokenEndpoint__field_descriptor),
           (Data.ProtoLens.Tag 2, authorizationEndpoint__field_descriptor),
           (Data.ProtoLens.Tag 3, credentials__field_descriptor),
           (Data.ProtoLens.Tag 4, redirectUri__field_descriptor),
           (Data.ProtoLens.Tag 5, redirectPathMatcher__field_descriptor),
           (Data.ProtoLens.Tag 6, signoutPath__field_descriptor),
           (Data.ProtoLens.Tag 7, forwardBearerToken__field_descriptor),
           (Data.ProtoLens.Tag 8, passThroughMatcher__field_descriptor),
           (Data.ProtoLens.Tag 9, authScopes__field_descriptor),
           (Data.ProtoLens.Tag 10, resources__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OAuth2Config'_unknownFields
        (\ x__ y__ -> x__ {_OAuth2Config'_unknownFields = y__})
  defMessage
    = OAuth2Config'_constructor
        {_OAuth2Config'tokenEndpoint = Prelude.Nothing,
         _OAuth2Config'authorizationEndpoint = Data.ProtoLens.fieldDefault,
         _OAuth2Config'credentials = Prelude.Nothing,
         _OAuth2Config'redirectUri = Data.ProtoLens.fieldDefault,
         _OAuth2Config'redirectPathMatcher = Prelude.Nothing,
         _OAuth2Config'signoutPath = Prelude.Nothing,
         _OAuth2Config'forwardBearerToken = Data.ProtoLens.fieldDefault,
         _OAuth2Config'passThroughMatcher = Data.Vector.Generic.empty,
         _OAuth2Config'authScopes = Data.Vector.Generic.empty,
         _OAuth2Config'resources = Data.Vector.Generic.empty,
         _OAuth2Config'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OAuth2Config
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                   -> Data.ProtoLens.Encoding.Bytes.Parser OAuth2Config
        loop
          x
          mutable'authScopes
          mutable'passThroughMatcher
          mutable'resources
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'authScopes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'authScopes)
                      frozen'passThroughMatcher <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'passThroughMatcher)
                      frozen'resources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'resources)
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
                              (Data.ProtoLens.Field.field @"vec'authScopes")
                              frozen'authScopes
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'passThroughMatcher")
                                 frozen'passThroughMatcher
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'resources")
                                    frozen'resources
                                    x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "token_endpoint"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tokenEndpoint") y x)
                                  mutable'authScopes
                                  mutable'passThroughMatcher
                                  mutable'resources
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
                                       "authorization_endpoint"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authorizationEndpoint") y x)
                                  mutable'authScopes
                                  mutable'passThroughMatcher
                                  mutable'resources
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "credentials"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"credentials") y x)
                                  mutable'authScopes
                                  mutable'passThroughMatcher
                                  mutable'resources
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "redirect_uri"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"redirectUri") y x)
                                  mutable'authScopes
                                  mutable'passThroughMatcher
                                  mutable'resources
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "redirect_path_matcher"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"redirectPathMatcher") y x)
                                  mutable'authScopes
                                  mutable'passThroughMatcher
                                  mutable'resources
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "signout_path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"signoutPath") y x)
                                  mutable'authScopes
                                  mutable'passThroughMatcher
                                  mutable'resources
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "forward_bearer_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"forwardBearerToken") y x)
                                  mutable'authScopes
                                  mutable'passThroughMatcher
                                  mutable'resources
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "pass_through_matcher"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'passThroughMatcher y)
                                loop x mutable'authScopes v mutable'resources
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "auth_scopes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'authScopes y)
                                loop x v mutable'passThroughMatcher mutable'resources
                        82
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "resources"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'resources y)
                                loop x mutable'authScopes mutable'passThroughMatcher v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'authScopes
                                  mutable'passThroughMatcher
                                  mutable'resources
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'authScopes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'passThroughMatcher <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'resources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'authScopes
                mutable'passThroughMatcher
                mutable'resources)
          "OAuth2Config"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'tokenEndpoint") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"authorizationEndpoint") _x
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
                          (Data.ProtoLens.Field.field @"maybe'credentials") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"redirectUri") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                (Data.ProtoLens.Field.field @"maybe'redirectPathMatcher") _x
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
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'signoutPath") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"forwardBearerToken") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0)
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
                                                Data.ProtoLens.encodeMessage
                                                _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'passThroughMatcher") _x))
                                  ((Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
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
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'authScopes") _x))
                                     ((Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                           (\ _v
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
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
                                           (Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"vec'resources") _x))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData OAuth2Config where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OAuth2Config'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OAuth2Config'tokenEndpoint x__)
                (Control.DeepSeq.deepseq
                   (_OAuth2Config'authorizationEndpoint x__)
                   (Control.DeepSeq.deepseq
                      (_OAuth2Config'credentials x__)
                      (Control.DeepSeq.deepseq
                         (_OAuth2Config'redirectUri x__)
                         (Control.DeepSeq.deepseq
                            (_OAuth2Config'redirectPathMatcher x__)
                            (Control.DeepSeq.deepseq
                               (_OAuth2Config'signoutPath x__)
                               (Control.DeepSeq.deepseq
                                  (_OAuth2Config'forwardBearerToken x__)
                                  (Control.DeepSeq.deepseq
                                     (_OAuth2Config'passThroughMatcher x__)
                                     (Control.DeepSeq.deepseq
                                        (_OAuth2Config'authScopes x__)
                                        (Control.DeepSeq.deepseq
                                           (_OAuth2Config'resources x__) ()))))))))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.clientId' @:: Lens' OAuth2Credentials Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.tokenSecret' @:: Lens' OAuth2Credentials Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.maybe'tokenSecret' @:: Lens' OAuth2Credentials (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.maybe'tokenFormation' @:: Lens' OAuth2Credentials (Prelude.Maybe OAuth2Credentials'TokenFormation)@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.maybe'hmacSecret' @:: Lens' OAuth2Credentials (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields.hmacSecret' @:: Lens' OAuth2Credentials Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig@ -}
data OAuth2Credentials
  = OAuth2Credentials'_constructor {_OAuth2Credentials'clientId :: !Data.Text.Text,
                                    _OAuth2Credentials'tokenSecret :: !(Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig),
                                    _OAuth2Credentials'tokenFormation :: !(Prelude.Maybe OAuth2Credentials'TokenFormation),
                                    _OAuth2Credentials'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OAuth2Credentials where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data OAuth2Credentials'TokenFormation
  = OAuth2Credentials'HmacSecret !Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField OAuth2Credentials "clientId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Credentials'clientId
           (\ x__ y__ -> x__ {_OAuth2Credentials'clientId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Credentials "tokenSecret" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Credentials'tokenSecret
           (\ x__ y__ -> x__ {_OAuth2Credentials'tokenSecret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OAuth2Credentials "maybe'tokenSecret" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Credentials'tokenSecret
           (\ x__ y__ -> x__ {_OAuth2Credentials'tokenSecret = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Credentials "maybe'tokenFormation" (Prelude.Maybe OAuth2Credentials'TokenFormation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Credentials'tokenFormation
           (\ x__ y__ -> x__ {_OAuth2Credentials'tokenFormation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OAuth2Credentials "maybe'hmacSecret" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Credentials'tokenFormation
           (\ x__ y__ -> x__ {_OAuth2Credentials'tokenFormation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (OAuth2Credentials'HmacSecret x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap OAuth2Credentials'HmacSecret y__))
instance Data.ProtoLens.Field.HasField OAuth2Credentials "hmacSecret" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OAuth2Credentials'tokenFormation
           (\ x__ y__ -> x__ {_OAuth2Credentials'tokenFormation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (OAuth2Credentials'HmacSecret x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap OAuth2Credentials'HmacSecret y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message OAuth2Credentials where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.oauth2.v3alpha.OAuth2Credentials"
  packedMessageDescriptor _
    = "\n\
      \\DC1OAuth2Credentials\DC2$\n\
      \\tclient_id\CAN\SOH \SOH(\tR\bclientIdB\a\250B\EOTr\STX\DLE\SOH\DC2g\n\
      \\ftoken_secret\CAN\STX \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigR\vtokenSecretB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2g\n\
      \\vhmac_secret\CAN\ETX \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigH\NULR\n\
      \hmacSecretB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\SYN\n\
      \\SItoken_formation\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clientId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clientId")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Credentials
        tokenSecret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "token_secret"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tokenSecret")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Credentials
        hmacSecret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hmac_secret"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hmacSecret")) ::
              Data.ProtoLens.FieldDescriptor OAuth2Credentials
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clientId__field_descriptor),
           (Data.ProtoLens.Tag 2, tokenSecret__field_descriptor),
           (Data.ProtoLens.Tag 3, hmacSecret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OAuth2Credentials'_unknownFields
        (\ x__ y__ -> x__ {_OAuth2Credentials'_unknownFields = y__})
  defMessage
    = OAuth2Credentials'_constructor
        {_OAuth2Credentials'clientId = Data.ProtoLens.fieldDefault,
         _OAuth2Credentials'tokenSecret = Prelude.Nothing,
         _OAuth2Credentials'tokenFormation = Prelude.Nothing,
         _OAuth2Credentials'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OAuth2Credentials
          -> Data.ProtoLens.Encoding.Bytes.Parser OAuth2Credentials
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
                                       "client_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clientId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "token_secret"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tokenSecret") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "hmac_secret"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hmacSecret") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OAuth2Credentials"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"clientId") _x
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
                       (Data.ProtoLens.Field.field @"maybe'tokenSecret") _x
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
                          (Data.ProtoLens.Field.field @"maybe'tokenFormation") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (OAuth2Credentials'HmacSecret v))
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
instance Control.DeepSeq.NFData OAuth2Credentials where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OAuth2Credentials'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OAuth2Credentials'clientId x__)
                (Control.DeepSeq.deepseq
                   (_OAuth2Credentials'tokenSecret x__)
                   (Control.DeepSeq.deepseq
                      (_OAuth2Credentials'tokenFormation x__) ())))
instance Control.DeepSeq.NFData OAuth2Credentials'TokenFormation where
  rnf (OAuth2Credentials'HmacSecret x__) = Control.DeepSeq.rnf x__
_OAuth2Credentials'HmacSecret ::
  Data.ProtoLens.Prism.Prism' OAuth2Credentials'TokenFormation Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig
_OAuth2Credentials'HmacSecret
  = Data.ProtoLens.Prism.prism'
      OAuth2Credentials'HmacSecret
      (\ p__
         -> case p__ of {
              (OAuth2Credentials'HmacSecret p__val) -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \8envoy/extensions/filters/http/oauth2/v3alpha/oauth.proto\DC2,envoy.extensions.filters.http.oauth2.v3alpha\SUB#envoy/config/core/v3/http_uri.proto\SUB,envoy/config/route/v3/route_components.proto\SUB6envoy/extensions/transport_sockets/tls/v3/secret.proto\SUB envoy/type/matcher/v3/path.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\163\STX\n\
    \\DC1OAuth2Credentials\DC2$\n\
    \\tclient_id\CAN\SOH \SOH(\tR\bclientIdB\a\250B\EOTr\STX\DLE\SOH\DC2g\n\
    \\ftoken_secret\CAN\STX \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigR\vtokenSecretB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2g\n\
    \\vhmac_secret\CAN\ETX \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigH\NULR\n\
    \hmacSecretB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\SYN\n\
    \\SItoken_formation\DC2\ETX\248B\SOH\"\169\ENQ\n\
    \\fOAuth2Config\DC2D\n\
    \\SOtoken_endpoint\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.HttpUriR\rtokenEndpoint\DC2>\n\
    \\SYNauthorization_endpoint\CAN\STX \SOH(\tR\NAKauthorizationEndpointB\a\250B\EOTr\STX\DLE\SOH\DC2k\n\
    \\vcredentials\CAN\ETX \SOH(\v2?.envoy.extensions.filters.http.oauth2.v3alpha.OAuth2CredentialsR\vcredentialsB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2*\n\
    \\fredirect_uri\CAN\EOT \SOH(\tR\vredirectUriB\a\250B\EOTr\STX\DLE\SOH\DC2`\n\
    \\NAKredirect_path_matcher\CAN\ENQ \SOH(\v2\".envoy.type.matcher.v3.PathMatcherR\DC3redirectPathMatcherB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2O\n\
    \\fsignout_path\CAN\ACK \SOH(\v2\".envoy.type.matcher.v3.PathMatcherR\vsignoutPathB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC20\n\
    \\DC4forward_bearer_token\CAN\a \SOH(\bR\DC2forwardBearerToken\DC2V\n\
    \\DC4pass_through_matcher\CAN\b \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\DC2passThroughMatcher\DC2\US\n\
    \\vauth_scopes\CAN\t \ETX(\tR\n\
    \authScopes\DC2\FS\n\
    \\tresources\CAN\n\
    \ \ETX(\tR\tresources\"\\\n\
    \\ACKOAuth2\DC2R\n\
    \\ACKconfig\CAN\SOH \SOH(\v2:.envoy.extensions.filters.http.oauth2.v3alpha.OAuth2ConfigR\ACKconfigBZ\n\
    \:io.envoyproxy.envoy.extensions.filters.http.oauth2.v3alphaB\n\
    \OauthProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\248\CAN\n\
    \\ACK\DC2\EOT\NUL\NULX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL5\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL-\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL6\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL@\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL*\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULS\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\SI\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\147\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL'\SOH2\134\SOH [#protodoc-title: OAuth]\n\
    \ OAuth :ref:`configuration overview <config_http_filters_oauth>`.\n\
    \ [#extension: envoy.filters.http.oauth2]\n\
    \\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\EM\n\
    \}\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\STX@\SUBp The client_id to be used in the authorize calls. This value will be URL encoded when sent to the OAuth server.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\EM\ETB?\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\EM\CAN>\n\
    \{\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\FS\STX\GS4\SUBm The secret used to retrieve the access token. This value will be URL encoded when sent to the OAuth server.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\FS\STX*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS+7\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS:;\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\GS\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\ETX\GS\a2\n\
    \B\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT \STX&\ETX\SUB4 Configures how the secret token should be created.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX \b\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX!\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX!\EOT&\n\
    \V\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT$\EOT%6\SUBH If present, the secret token will be a HMAC using the provided secret.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX$\EOT,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX$-8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX$;<\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX%\b5\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DC1\DC2\ETX%\t4\n\
    \3\n\
    \\STX\EOT\SOH\DC2\EOT,\NULR\SOH\SUB' OAuth config\n\
    \\n\
    \ [#next-free-field: 11]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX,\b\DC4\n\
    \V\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX.\STX,\SUBI Endpoint on the authorization server to retrieve the access token from.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX.\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX.\EM'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX.*+\n\
    \_\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX1\STXM\SUBR The endpoint redirect to for authorization in response to unauthorized requests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX1\t\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX1\"#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX1$L\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\SO\DC2\ETX1%K\n\
    \*\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX4\STXR\SUB\GS Credentials used for OAuth.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX4\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX4\DC4\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX4\"#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX4$Q\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\175\b\DC1\DC2\ETX4%P\n\
    \\205\STX\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX;\STXC\SUB\191\STX The redirect URI passed to the authorization endpoint. Supports header formatting\n\
    \ tokens. For more information, including details on header value syntax, see the\n\
    \ documentation on :ref:`custom request headers <config_http_conn_man_headers_custom_request_headers>`.\n\
    \\n\
    \ This URI should not contain any query parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX;\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX;\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\ETX;\SUBB\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\175\b\SO\DC2\ETX;\ESCA\n\
    \\136\SOH\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT>\STX?4\SUBz Matching criteria used to determine whether a path appears to be the result of a redirect from the authorization server.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETX>\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX>\RS3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX>67\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\ETX?\ACK3\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\175\b\DC1\DC2\ETX?\a2\n\
    \N\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXB\STX]\SUBA The path to sign a user out, clearing their credential cookies.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETXB\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXB\RS*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXB-.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\b\DC2\ETXB/\\\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ENQ\b\175\b\DC1\DC2\ETXB0[\n\
    \K\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXE\STX \SUB> Forward the OAuth token as a Bearer to upstream web service.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETXE\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXE\a\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXE\RS\US\n\
    \u\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETXH\STXB\SUBh Any request that matches any of the provided matchers will be passed through without OAuth validation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\ETXH\v(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETXH)=\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETXH@A\n\
    \\193\SOH\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETXM\STX\"\SUB\179\SOH Optional list of OAuth scopes to be claimed in the authorization request. If not specified,\n\
    \ defaults to \"user\" scope.\n\
    \ OAuth RFC https://tools.ietf.org/html/rfc6749#section-3.3\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\ETXM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETXM\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETXM !\n\
    \n\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETXQ\STX!\SUBa Optional resource parameter for authorization request\n\
    \ RFC: https://tools.ietf.org/html/rfc8707\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ENQ\DC2\ETXQ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETXQ\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETXQ\RS \n\
    \\FS\n\
    \\STX\EOT\STX\DC2\EOTU\NULX\SOH\SUB\DLE Filter config.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXU\b\SO\n\
    \`\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXW\STX\SUB\SUBS Leave this empty to disable OAuth2 for a specific route, using per filter config.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXW\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXW\SI\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXW\CAN\EMb\ACKproto3"