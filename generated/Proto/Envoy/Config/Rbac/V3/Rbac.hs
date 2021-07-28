{- This file was auto-generated from envoy/config/rbac/v3/rbac.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Rbac.V3.Rbac (
        Permission(), Permission'Rule(..), _Permission'AndRules,
        _Permission'OrRules, _Permission'Any, _Permission'Header,
        _Permission'UrlPath, _Permission'DestinationIp,
        _Permission'DestinationPort, _Permission'Metadata,
        _Permission'NotRule, _Permission'RequestedServerName,
        Permission'Set(), Policy(), Principal(), Principal'Identifier(..),
        _Principal'AndIds, _Principal'OrIds, _Principal'Any,
        _Principal'Authenticated', _Principal'SourceIp,
        _Principal'DirectRemoteIp, _Principal'RemoteIp, _Principal'Header,
        _Principal'UrlPath, _Principal'Metadata, _Principal'NotId,
        Principal'Authenticated(), Principal'Set(), RBAC(),
        RBAC'Action(..), RBAC'Action(), RBAC'Action'UnrecognizedValue,
        RBAC'PoliciesEntry()
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Type.Matcher.V3.Metadata
import qualified Proto.Envoy.Type.Matcher.V3.Path
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Google.Api.Expr.V1alpha1.Checked
import qualified Proto.Google.Api.Expr.V1alpha1.Syntax
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'rule' @:: Lens' Permission (Prelude.Maybe Permission'Rule)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'andRules' @:: Lens' Permission (Prelude.Maybe Permission'Set)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.andRules' @:: Lens' Permission Permission'Set@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'orRules' @:: Lens' Permission (Prelude.Maybe Permission'Set)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.orRules' @:: Lens' Permission Permission'Set@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'any' @:: Lens' Permission (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.any' @:: Lens' Permission Prelude.Bool@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'header' @:: Lens' Permission (Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.header' @:: Lens' Permission Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'urlPath' @:: Lens' Permission (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Path.PathMatcher)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.urlPath' @:: Lens' Permission Proto.Envoy.Type.Matcher.V3.Path.PathMatcher@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'destinationIp' @:: Lens' Permission (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.CidrRange)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.destinationIp' @:: Lens' Permission Proto.Envoy.Config.Core.V3.Address.CidrRange@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'destinationPort' @:: Lens' Permission (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.destinationPort' @:: Lens' Permission Data.Word.Word32@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'metadata' @:: Lens' Permission (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.metadata' @:: Lens' Permission Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'notRule' @:: Lens' Permission (Prelude.Maybe Permission)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.notRule' @:: Lens' Permission Permission@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'requestedServerName' @:: Lens' Permission (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.requestedServerName' @:: Lens' Permission Proto.Envoy.Type.Matcher.V3.String.StringMatcher@ -}
data Permission
  = Permission'_constructor {_Permission'rule :: !(Prelude.Maybe Permission'Rule),
                             _Permission'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Permission where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Permission'Rule
  = Permission'AndRules !Permission'Set |
    Permission'OrRules !Permission'Set |
    Permission'Any !Prelude.Bool |
    Permission'Header !Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher |
    Permission'UrlPath !Proto.Envoy.Type.Matcher.V3.Path.PathMatcher |
    Permission'DestinationIp !Proto.Envoy.Config.Core.V3.Address.CidrRange |
    Permission'DestinationPort !Data.Word.Word32 |
    Permission'Metadata !Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher |
    Permission'NotRule !Permission |
    Permission'RequestedServerName !Proto.Envoy.Type.Matcher.V3.String.StringMatcher
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Permission "maybe'rule" (Prelude.Maybe Permission'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Permission "maybe'andRules" (Prelude.Maybe Permission'Set) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Permission'AndRules x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Permission'AndRules y__))
instance Data.ProtoLens.Field.HasField Permission "andRules" Permission'Set where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Permission'AndRules x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Permission'AndRules y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Permission "maybe'orRules" (Prelude.Maybe Permission'Set) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Permission'OrRules x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Permission'OrRules y__))
instance Data.ProtoLens.Field.HasField Permission "orRules" Permission'Set where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Permission'OrRules x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Permission'OrRules y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Permission "maybe'any" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Permission'Any x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Permission'Any y__))
instance Data.ProtoLens.Field.HasField Permission "any" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Permission'Any x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Permission'Any y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Permission "maybe'header" (Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Permission'Header x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Permission'Header y__))
instance Data.ProtoLens.Field.HasField Permission "header" Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Permission'Header x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Permission'Header y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Permission "maybe'urlPath" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Path.PathMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Permission'UrlPath x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Permission'UrlPath y__))
instance Data.ProtoLens.Field.HasField Permission "urlPath" Proto.Envoy.Type.Matcher.V3.Path.PathMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Permission'UrlPath x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Permission'UrlPath y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Permission "maybe'destinationIp" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.CidrRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Permission'DestinationIp x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Permission'DestinationIp y__))
instance Data.ProtoLens.Field.HasField Permission "destinationIp" Proto.Envoy.Config.Core.V3.Address.CidrRange where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Permission'DestinationIp x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Permission'DestinationIp y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Permission "maybe'destinationPort" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Permission'DestinationPort x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Permission'DestinationPort y__))
instance Data.ProtoLens.Field.HasField Permission "destinationPort" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Permission'DestinationPort x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Permission'DestinationPort y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Permission "maybe'metadata" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Permission'Metadata x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Permission'Metadata y__))
instance Data.ProtoLens.Field.HasField Permission "metadata" Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Permission'Metadata x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Permission'Metadata y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Permission "maybe'notRule" (Prelude.Maybe Permission) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Permission'NotRule x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Permission'NotRule y__))
instance Data.ProtoLens.Field.HasField Permission "notRule" Permission where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Permission'NotRule x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Permission'NotRule y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Permission "maybe'requestedServerName" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Permission'RequestedServerName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Permission'RequestedServerName y__))
instance Data.ProtoLens.Field.HasField Permission "requestedServerName" Proto.Envoy.Type.Matcher.V3.String.StringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'rule (\ x__ y__ -> x__ {_Permission'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Permission'RequestedServerName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Permission'RequestedServerName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Permission where
  messageName _ = Data.Text.pack "envoy.config.rbac.v3.Permission"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Permission\DC2C\n\
      \\tand_rules\CAN\SOH \SOH(\v2$.envoy.config.rbac.v3.Permission.SetH\NULR\bandRules\DC2A\n\
      \\bor_rules\CAN\STX \SOH(\v2$.envoy.config.rbac.v3.Permission.SetH\NULR\aorRules\DC2\ESC\n\
      \\ETXany\CAN\ETX \SOH(\bH\NULR\ETXanyB\a\250B\EOTj\STX\b\SOH\DC2>\n\
      \\ACKheader\CAN\EOT \SOH(\v2$.envoy.config.route.v3.HeaderMatcherH\NULR\ACKheader\DC2?\n\
      \\burl_path\CAN\n\
      \ \SOH(\v2\".envoy.type.matcher.v3.PathMatcherH\NULR\aurlPath\DC2H\n\
      \\SOdestination_ip\CAN\ENQ \SOH(\v2\US.envoy.config.core.v3.CidrRangeH\NULR\rdestinationIp\DC26\n\
      \\DLEdestination_port\CAN\ACK \SOH(\rH\NULR\SIdestinationPortB\t\250B\ACK*\EOT\CAN\255\255\ETX\DC2D\n\
      \\bmetadata\CAN\a \SOH(\v2&.envoy.type.matcher.v3.MetadataMatcherH\NULR\bmetadata\DC2=\n\
      \\bnot_rule\CAN\b \SOH(\v2 .envoy.config.rbac.v3.PermissionH\NULR\anotRule\DC2Z\n\
      \\NAKrequested_server_name\CAN\t \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\DC3requestedServerName\SUBs\n\
      \\ETXSet\DC2@\n\
      \\ENQrules\CAN\SOH \ETX(\v2 .envoy.config.rbac.v3.PermissionR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\SOH:*\154\197\136\RS%\n\
      \#envoy.config.rbac.v2.Permission.SetB\v\n\
      \\EOTrule\DC2\ETX\248B\SOH:&\154\197\136\RS!\n\
      \\USenvoy.config.rbac.v2.Permission"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        andRules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "and_rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Permission'Set)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'andRules")) ::
              Data.ProtoLens.FieldDescriptor Permission
        orRules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "or_rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Permission'Set)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'orRules")) ::
              Data.ProtoLens.FieldDescriptor Permission
        any__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'any")) ::
              Data.ProtoLens.FieldDescriptor Permission
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor Permission
        urlPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url_path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Path.PathMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'urlPath")) ::
              Data.ProtoLens.FieldDescriptor Permission
        destinationIp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "destination_ip"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.CidrRange)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'destinationIp")) ::
              Data.ProtoLens.FieldDescriptor Permission
        destinationPort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "destination_port"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'destinationPort")) ::
              Data.ProtoLens.FieldDescriptor Permission
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor Permission
        notRule__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_rule"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Permission)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'notRule")) ::
              Data.ProtoLens.FieldDescriptor Permission
        requestedServerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requested_server_name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestedServerName")) ::
              Data.ProtoLens.FieldDescriptor Permission
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, andRules__field_descriptor),
           (Data.ProtoLens.Tag 2, orRules__field_descriptor),
           (Data.ProtoLens.Tag 3, any__field_descriptor),
           (Data.ProtoLens.Tag 4, header__field_descriptor),
           (Data.ProtoLens.Tag 10, urlPath__field_descriptor),
           (Data.ProtoLens.Tag 5, destinationIp__field_descriptor),
           (Data.ProtoLens.Tag 6, destinationPort__field_descriptor),
           (Data.ProtoLens.Tag 7, metadata__field_descriptor),
           (Data.ProtoLens.Tag 8, notRule__field_descriptor),
           (Data.ProtoLens.Tag 9, requestedServerName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Permission'_unknownFields
        (\ x__ y__ -> x__ {_Permission'_unknownFields = y__})
  defMessage
    = Permission'_constructor
        {_Permission'rule = Prelude.Nothing,
         _Permission'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Permission -> Data.ProtoLens.Encoding.Bytes.Parser Permission
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
                                       "and_rules"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"andRules") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "or_rules"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"orRules") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "any"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"any") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "url_path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"urlPath") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "destination_ip"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"destinationIp") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "destination_port"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"destinationPort") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "not_rule"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"notRule") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "requested_server_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestedServerName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Permission"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rule") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Permission'AndRules v))
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
                (Prelude.Just (Permission'OrRules v))
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
                (Prelude.Just (Permission'Any v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (Permission'Header v))
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
                (Prelude.Just (Permission'UrlPath v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Permission'DestinationIp v))
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
                (Prelude.Just (Permission'DestinationPort v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                (Prelude.Just (Permission'Metadata v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Permission'NotRule v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Permission'RequestedServerName v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
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
instance Control.DeepSeq.NFData Permission where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Permission'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Permission'rule x__) ())
instance Control.DeepSeq.NFData Permission'Rule where
  rnf (Permission'AndRules x__) = Control.DeepSeq.rnf x__
  rnf (Permission'OrRules x__) = Control.DeepSeq.rnf x__
  rnf (Permission'Any x__) = Control.DeepSeq.rnf x__
  rnf (Permission'Header x__) = Control.DeepSeq.rnf x__
  rnf (Permission'UrlPath x__) = Control.DeepSeq.rnf x__
  rnf (Permission'DestinationIp x__) = Control.DeepSeq.rnf x__
  rnf (Permission'DestinationPort x__) = Control.DeepSeq.rnf x__
  rnf (Permission'Metadata x__) = Control.DeepSeq.rnf x__
  rnf (Permission'NotRule x__) = Control.DeepSeq.rnf x__
  rnf (Permission'RequestedServerName x__) = Control.DeepSeq.rnf x__
_Permission'AndRules ::
  Data.ProtoLens.Prism.Prism' Permission'Rule Permission'Set
_Permission'AndRules
  = Data.ProtoLens.Prism.prism'
      Permission'AndRules
      (\ p__
         -> case p__ of
              (Permission'AndRules p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Permission'OrRules ::
  Data.ProtoLens.Prism.Prism' Permission'Rule Permission'Set
_Permission'OrRules
  = Data.ProtoLens.Prism.prism'
      Permission'OrRules
      (\ p__
         -> case p__ of
              (Permission'OrRules p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Permission'Any ::
  Data.ProtoLens.Prism.Prism' Permission'Rule Prelude.Bool
_Permission'Any
  = Data.ProtoLens.Prism.prism'
      Permission'Any
      (\ p__
         -> case p__ of
              (Permission'Any p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Permission'Header ::
  Data.ProtoLens.Prism.Prism' Permission'Rule Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher
_Permission'Header
  = Data.ProtoLens.Prism.prism'
      Permission'Header
      (\ p__
         -> case p__ of
              (Permission'Header p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Permission'UrlPath ::
  Data.ProtoLens.Prism.Prism' Permission'Rule Proto.Envoy.Type.Matcher.V3.Path.PathMatcher
_Permission'UrlPath
  = Data.ProtoLens.Prism.prism'
      Permission'UrlPath
      (\ p__
         -> case p__ of
              (Permission'UrlPath p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Permission'DestinationIp ::
  Data.ProtoLens.Prism.Prism' Permission'Rule Proto.Envoy.Config.Core.V3.Address.CidrRange
_Permission'DestinationIp
  = Data.ProtoLens.Prism.prism'
      Permission'DestinationIp
      (\ p__
         -> case p__ of
              (Permission'DestinationIp p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Permission'DestinationPort ::
  Data.ProtoLens.Prism.Prism' Permission'Rule Data.Word.Word32
_Permission'DestinationPort
  = Data.ProtoLens.Prism.prism'
      Permission'DestinationPort
      (\ p__
         -> case p__ of
              (Permission'DestinationPort p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Permission'Metadata ::
  Data.ProtoLens.Prism.Prism' Permission'Rule Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher
_Permission'Metadata
  = Data.ProtoLens.Prism.prism'
      Permission'Metadata
      (\ p__
         -> case p__ of
              (Permission'Metadata p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Permission'NotRule ::
  Data.ProtoLens.Prism.Prism' Permission'Rule Permission
_Permission'NotRule
  = Data.ProtoLens.Prism.prism'
      Permission'NotRule
      (\ p__
         -> case p__ of
              (Permission'NotRule p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Permission'RequestedServerName ::
  Data.ProtoLens.Prism.Prism' Permission'Rule Proto.Envoy.Type.Matcher.V3.String.StringMatcher
_Permission'RequestedServerName
  = Data.ProtoLens.Prism.prism'
      Permission'RequestedServerName
      (\ p__
         -> case p__ of
              (Permission'RequestedServerName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.rules' @:: Lens' Permission'Set [Permission]@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.vec'rules' @:: Lens' Permission'Set (Data.Vector.Vector Permission)@ -}
data Permission'Set
  = Permission'Set'_constructor {_Permission'Set'rules :: !(Data.Vector.Vector Permission),
                                 _Permission'Set'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Permission'Set where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Permission'Set "rules" [Permission] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'Set'rules
           (\ x__ y__ -> x__ {_Permission'Set'rules = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Permission'Set "vec'rules" (Data.Vector.Vector Permission) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permission'Set'rules
           (\ x__ y__ -> x__ {_Permission'Set'rules = y__}))
        Prelude.id
instance Data.ProtoLens.Message Permission'Set where
  messageName _
    = Data.Text.pack "envoy.config.rbac.v3.Permission.Set"
  packedMessageDescriptor _
    = "\n\
      \\ETXSet\DC2@\n\
      \\ENQrules\CAN\SOH \ETX(\v2 .envoy.config.rbac.v3.PermissionR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\SOH:*\154\197\136\RS%\n\
      \#envoy.config.rbac.v2.Permission.Set"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Permission)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rules")) ::
              Data.ProtoLens.FieldDescriptor Permission'Set
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, rules__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Permission'Set'_unknownFields
        (\ x__ y__ -> x__ {_Permission'Set'_unknownFields = y__})
  defMessage
    = Permission'Set'_constructor
        {_Permission'Set'rules = Data.Vector.Generic.empty,
         _Permission'Set'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Permission'Set
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Permission
             -> Data.ProtoLens.Encoding.Bytes.Parser Permission'Set
        loop x mutable'rules
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'rules)
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
                              (Data.ProtoLens.Field.field @"vec'rules") frozen'rules x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rules"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rules y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rules
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rules)
          "Set"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rules") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Permission'Set where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Permission'Set'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Permission'Set'rules x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.permissions' @:: Lens' Policy [Permission]@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.vec'permissions' @:: Lens' Policy (Data.Vector.Vector Permission)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.principals' @:: Lens' Policy [Principal]@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.vec'principals' @:: Lens' Policy (Data.Vector.Vector Principal)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.condition' @:: Lens' Policy Proto.Google.Api.Expr.V1alpha1.Syntax.Expr@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'condition' @:: Lens' Policy (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Expr)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.checkedCondition' @:: Lens' Policy Proto.Google.Api.Expr.V1alpha1.Checked.CheckedExpr@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'checkedCondition' @:: Lens' Policy (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Checked.CheckedExpr)@ -}
data Policy
  = Policy'_constructor {_Policy'permissions :: !(Data.Vector.Vector Permission),
                         _Policy'principals :: !(Data.Vector.Vector Principal),
                         _Policy'condition :: !(Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Expr),
                         _Policy'checkedCondition :: !(Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Checked.CheckedExpr),
                         _Policy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Policy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Policy "permissions" [Permission] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'permissions (\ x__ y__ -> x__ {_Policy'permissions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Policy "vec'permissions" (Data.Vector.Vector Permission) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'permissions (\ x__ y__ -> x__ {_Policy'permissions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Policy "principals" [Principal] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'principals (\ x__ y__ -> x__ {_Policy'principals = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Policy "vec'principals" (Data.Vector.Vector Principal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'principals (\ x__ y__ -> x__ {_Policy'principals = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Policy "condition" Proto.Google.Api.Expr.V1alpha1.Syntax.Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'condition (\ x__ y__ -> x__ {_Policy'condition = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Policy "maybe'condition" (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'condition (\ x__ y__ -> x__ {_Policy'condition = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Policy "checkedCondition" Proto.Google.Api.Expr.V1alpha1.Checked.CheckedExpr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'checkedCondition
           (\ x__ y__ -> x__ {_Policy'checkedCondition = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Policy "maybe'checkedCondition" (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Checked.CheckedExpr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'checkedCondition
           (\ x__ y__ -> x__ {_Policy'checkedCondition = y__}))
        Prelude.id
instance Data.ProtoLens.Message Policy where
  messageName _ = Data.Text.pack "envoy.config.rbac.v3.Policy"
  packedMessageDescriptor _
    = "\n\
      \\ACKPolicy\DC2L\n\
      \\vpermissions\CAN\SOH \ETX(\v2 .envoy.config.rbac.v3.PermissionR\vpermissionsB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2I\n\
      \\n\
      \principals\CAN\STX \ETX(\v2\US.envoy.config.rbac.v3.PrincipalR\n\
      \principalsB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2Z\n\
      \\tcondition\CAN\ETX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\tconditionB\FS\242\152\254\143\ENQ\SYN\DC2\DC4expression_specifier\DC2p\n\
      \\DC1checked_condition\CAN\EOT \SOH(\v2%.google.api.expr.v1alpha1.CheckedExprR\DLEcheckedConditionB\FS\242\152\254\143\ENQ\SYN\DC2\DC4expression_specifier:\"\154\197\136\RS\GS\n\
      \\ESCenvoy.config.rbac.v2.Policy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        permissions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "permissions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Permission)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"permissions")) ::
              Data.ProtoLens.FieldDescriptor Policy
        principals__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "principals"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Principal)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"principals")) ::
              Data.ProtoLens.FieldDescriptor Policy
        condition__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "condition"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Api.Expr.V1alpha1.Syntax.Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'condition")) ::
              Data.ProtoLens.FieldDescriptor Policy
        checkedCondition__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "checked_condition"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Api.Expr.V1alpha1.Checked.CheckedExpr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'checkedCondition")) ::
              Data.ProtoLens.FieldDescriptor Policy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, permissions__field_descriptor),
           (Data.ProtoLens.Tag 2, principals__field_descriptor),
           (Data.ProtoLens.Tag 3, condition__field_descriptor),
           (Data.ProtoLens.Tag 4, checkedCondition__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Policy'_unknownFields
        (\ x__ y__ -> x__ {_Policy'_unknownFields = y__})
  defMessage
    = Policy'_constructor
        {_Policy'permissions = Data.Vector.Generic.empty,
         _Policy'principals = Data.Vector.Generic.empty,
         _Policy'condition = Prelude.Nothing,
         _Policy'checkedCondition = Prelude.Nothing,
         _Policy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Policy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Permission
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Principal
                -> Data.ProtoLens.Encoding.Bytes.Parser Policy
        loop x mutable'permissions mutable'principals
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'permissions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'permissions)
                      frozen'principals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'principals)
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
                              (Data.ProtoLens.Field.field @"vec'permissions")
                              frozen'permissions
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'principals")
                                 frozen'principals
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
                                        "permissions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'permissions y)
                                loop x v mutable'principals
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "principals"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'principals y)
                                loop x mutable'permissions v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "condition"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"condition") y x)
                                  mutable'permissions
                                  mutable'principals
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "checked_condition"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"checkedCondition") y x)
                                  mutable'permissions
                                  mutable'principals
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'permissions
                                  mutable'principals
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'permissions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'principals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'permissions mutable'principals)
          "Policy"
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
                   (Data.ProtoLens.Field.field @"vec'permissions") _x))
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
                      (Data.ProtoLens.Field.field @"vec'principals") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'condition") _x
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
                             (Data.ProtoLens.Field.field @"maybe'checkedCondition") _x
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
instance Control.DeepSeq.NFData Policy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Policy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Policy'permissions x__)
                (Control.DeepSeq.deepseq
                   (_Policy'principals x__)
                   (Control.DeepSeq.deepseq
                      (_Policy'condition x__)
                      (Control.DeepSeq.deepseq (_Policy'checkedCondition x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'identifier' @:: Lens' Principal (Prelude.Maybe Principal'Identifier)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'andIds' @:: Lens' Principal (Prelude.Maybe Principal'Set)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.andIds' @:: Lens' Principal Principal'Set@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'orIds' @:: Lens' Principal (Prelude.Maybe Principal'Set)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.orIds' @:: Lens' Principal Principal'Set@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'any' @:: Lens' Principal (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.any' @:: Lens' Principal Prelude.Bool@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'authenticated' @:: Lens' Principal (Prelude.Maybe Principal'Authenticated)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.authenticated' @:: Lens' Principal Principal'Authenticated@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'sourceIp' @:: Lens' Principal (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.CidrRange)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.sourceIp' @:: Lens' Principal Proto.Envoy.Config.Core.V3.Address.CidrRange@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'directRemoteIp' @:: Lens' Principal (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.CidrRange)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.directRemoteIp' @:: Lens' Principal Proto.Envoy.Config.Core.V3.Address.CidrRange@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'remoteIp' @:: Lens' Principal (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.CidrRange)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.remoteIp' @:: Lens' Principal Proto.Envoy.Config.Core.V3.Address.CidrRange@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'header' @:: Lens' Principal (Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.header' @:: Lens' Principal Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'urlPath' @:: Lens' Principal (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Path.PathMatcher)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.urlPath' @:: Lens' Principal Proto.Envoy.Type.Matcher.V3.Path.PathMatcher@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'metadata' @:: Lens' Principal (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.metadata' @:: Lens' Principal Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'notId' @:: Lens' Principal (Prelude.Maybe Principal)@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.notId' @:: Lens' Principal Principal@ -}
data Principal
  = Principal'_constructor {_Principal'identifier :: !(Prelude.Maybe Principal'Identifier),
                            _Principal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Principal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Principal'Identifier
  = Principal'AndIds !Principal'Set |
    Principal'OrIds !Principal'Set |
    Principal'Any !Prelude.Bool |
    Principal'Authenticated' !Principal'Authenticated |
    Principal'SourceIp !Proto.Envoy.Config.Core.V3.Address.CidrRange |
    Principal'DirectRemoteIp !Proto.Envoy.Config.Core.V3.Address.CidrRange |
    Principal'RemoteIp !Proto.Envoy.Config.Core.V3.Address.CidrRange |
    Principal'Header !Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher |
    Principal'UrlPath !Proto.Envoy.Type.Matcher.V3.Path.PathMatcher |
    Principal'Metadata !Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher |
    Principal'NotId !Principal
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Principal "maybe'identifier" (Prelude.Maybe Principal'Identifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Principal "maybe'andIds" (Prelude.Maybe Principal'Set) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'AndIds x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'AndIds y__))
instance Data.ProtoLens.Field.HasField Principal "andIds" Principal'Set where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'AndIds x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'AndIds y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Principal "maybe'orIds" (Prelude.Maybe Principal'Set) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'OrIds x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'OrIds y__))
instance Data.ProtoLens.Field.HasField Principal "orIds" Principal'Set where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'OrIds x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'OrIds y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Principal "maybe'any" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'Any x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'Any y__))
instance Data.ProtoLens.Field.HasField Principal "any" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'Any x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'Any y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Principal "maybe'authenticated" (Prelude.Maybe Principal'Authenticated) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'Authenticated' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'Authenticated' y__))
instance Data.ProtoLens.Field.HasField Principal "authenticated" Principal'Authenticated where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'Authenticated' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'Authenticated' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Principal "maybe'sourceIp" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.CidrRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'SourceIp x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'SourceIp y__))
instance Data.ProtoLens.Field.HasField Principal "sourceIp" Proto.Envoy.Config.Core.V3.Address.CidrRange where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'SourceIp x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'SourceIp y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Principal "maybe'directRemoteIp" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.CidrRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'DirectRemoteIp x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'DirectRemoteIp y__))
instance Data.ProtoLens.Field.HasField Principal "directRemoteIp" Proto.Envoy.Config.Core.V3.Address.CidrRange where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'DirectRemoteIp x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'DirectRemoteIp y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Principal "maybe'remoteIp" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.CidrRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'RemoteIp x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'RemoteIp y__))
instance Data.ProtoLens.Field.HasField Principal "remoteIp" Proto.Envoy.Config.Core.V3.Address.CidrRange where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'RemoteIp x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'RemoteIp y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Principal "maybe'header" (Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'Header x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'Header y__))
instance Data.ProtoLens.Field.HasField Principal "header" Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'Header x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'Header y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Principal "maybe'urlPath" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Path.PathMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'UrlPath x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'UrlPath y__))
instance Data.ProtoLens.Field.HasField Principal "urlPath" Proto.Envoy.Type.Matcher.V3.Path.PathMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'UrlPath x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'UrlPath y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Principal "maybe'metadata" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'Metadata x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'Metadata y__))
instance Data.ProtoLens.Field.HasField Principal "metadata" Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'Metadata x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'Metadata y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Principal "maybe'notId" (Prelude.Maybe Principal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Principal'NotId x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Principal'NotId y__))
instance Data.ProtoLens.Field.HasField Principal "notId" Principal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'identifier
           (\ x__ y__ -> x__ {_Principal'identifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Principal'NotId x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Principal'NotId y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Principal where
  messageName _ = Data.Text.pack "envoy.config.rbac.v3.Principal"
  packedMessageDescriptor _
    = "\n\
      \\tPrincipal\DC2>\n\
      \\aand_ids\CAN\SOH \SOH(\v2#.envoy.config.rbac.v3.Principal.SetH\NULR\ACKandIds\DC2<\n\
      \\ACKor_ids\CAN\STX \SOH(\v2#.envoy.config.rbac.v3.Principal.SetH\NULR\ENQorIds\DC2\ESC\n\
      \\ETXany\CAN\ETX \SOH(\bH\NULR\ETXanyB\a\250B\EOTj\STX\b\SOH\DC2U\n\
      \\rauthenticated\CAN\EOT \SOH(\v2-.envoy.config.rbac.v3.Principal.AuthenticatedH\NULR\rauthenticated\DC2K\n\
      \\tsource_ip\CAN\ENQ \SOH(\v2\US.envoy.config.core.v3.CidrRangeH\NULR\bsourceIpB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2K\n\
      \\DLEdirect_remote_ip\CAN\n\
      \ \SOH(\v2\US.envoy.config.core.v3.CidrRangeH\NULR\SOdirectRemoteIp\DC2>\n\
      \\tremote_ip\CAN\v \SOH(\v2\US.envoy.config.core.v3.CidrRangeH\NULR\bremoteIp\DC2>\n\
      \\ACKheader\CAN\ACK \SOH(\v2$.envoy.config.route.v3.HeaderMatcherH\NULR\ACKheader\DC2?\n\
      \\burl_path\CAN\t \SOH(\v2\".envoy.type.matcher.v3.PathMatcherH\NULR\aurlPath\DC2D\n\
      \\bmetadata\CAN\a \SOH(\v2&.envoy.type.matcher.v3.MetadataMatcherH\NULR\bmetadata\DC28\n\
      \\ACKnot_id\CAN\b \SOH(\v2\US.envoy.config.rbac.v3.PrincipalH\NULR\ENQnotId\SUBm\n\
      \\ETXSet\DC2;\n\
      \\ETXids\CAN\SOH \ETX(\v2\US.envoy.config.rbac.v3.PrincipalR\ETXidsB\b\250B\ENQ\146\SOH\STX\b\SOH:)\154\197\136\RS$\n\
      \\"envoy.config.rbac.v2.Principal.Set\SUB\151\SOH\n\
      \\rAuthenticated\DC2K\n\
      \\SOprincipal_name\CAN\STX \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\rprincipalName:3\154\197\136\RS.\n\
      \,envoy.config.rbac.v2.Principal.AuthenticatedJ\EOT\b\SOH\DLE\STXB\DC1\n\
      \\n\
      \identifier\DC2\ETX\248B\SOH:%\154\197\136\RS \n\
      \\RSenvoy.config.rbac.v2.Principal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        andIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "and_ids"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Principal'Set)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'andIds")) ::
              Data.ProtoLens.FieldDescriptor Principal
        orIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "or_ids"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Principal'Set)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'orIds")) ::
              Data.ProtoLens.FieldDescriptor Principal
        any__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'any")) ::
              Data.ProtoLens.FieldDescriptor Principal
        authenticated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authenticated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Principal'Authenticated)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'authenticated")) ::
              Data.ProtoLens.FieldDescriptor Principal
        sourceIp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_ip"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.CidrRange)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceIp")) ::
              Data.ProtoLens.FieldDescriptor Principal
        directRemoteIp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "direct_remote_ip"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.CidrRange)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'directRemoteIp")) ::
              Data.ProtoLens.FieldDescriptor Principal
        remoteIp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remote_ip"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.CidrRange)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'remoteIp")) ::
              Data.ProtoLens.FieldDescriptor Principal
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor Principal
        urlPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url_path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Path.PathMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'urlPath")) ::
              Data.ProtoLens.FieldDescriptor Principal
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor Principal
        notId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Principal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'notId")) ::
              Data.ProtoLens.FieldDescriptor Principal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, andIds__field_descriptor),
           (Data.ProtoLens.Tag 2, orIds__field_descriptor),
           (Data.ProtoLens.Tag 3, any__field_descriptor),
           (Data.ProtoLens.Tag 4, authenticated__field_descriptor),
           (Data.ProtoLens.Tag 5, sourceIp__field_descriptor),
           (Data.ProtoLens.Tag 10, directRemoteIp__field_descriptor),
           (Data.ProtoLens.Tag 11, remoteIp__field_descriptor),
           (Data.ProtoLens.Tag 6, header__field_descriptor),
           (Data.ProtoLens.Tag 9, urlPath__field_descriptor),
           (Data.ProtoLens.Tag 7, metadata__field_descriptor),
           (Data.ProtoLens.Tag 8, notId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Principal'_unknownFields
        (\ x__ y__ -> x__ {_Principal'_unknownFields = y__})
  defMessage
    = Principal'_constructor
        {_Principal'identifier = Prelude.Nothing,
         _Principal'_unknownFields = []}
  parseMessage
    = let
        loop :: Principal -> Data.ProtoLens.Encoding.Bytes.Parser Principal
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
                                       "and_ids"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"andIds") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "or_ids"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"orIds") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "any"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"any") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "authenticated"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authenticated") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "source_ip"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceIp") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "direct_remote_ip"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"directRemoteIp") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "remote_ip"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"remoteIp") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "url_path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"urlPath") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "not_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"notId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Principal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'identifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Principal'AndIds v))
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
                (Prelude.Just (Principal'OrIds v))
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
                (Prelude.Just (Principal'Any v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (Principal'Authenticated' v))
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
                (Prelude.Just (Principal'SourceIp v))
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
                (Prelude.Just (Principal'DirectRemoteIp v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Principal'RemoteIp v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Principal'Header v))
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
                (Prelude.Just (Principal'UrlPath v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Principal'Metadata v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Principal'NotId v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
instance Control.DeepSeq.NFData Principal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Principal'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Principal'identifier x__) ())
instance Control.DeepSeq.NFData Principal'Identifier where
  rnf (Principal'AndIds x__) = Control.DeepSeq.rnf x__
  rnf (Principal'OrIds x__) = Control.DeepSeq.rnf x__
  rnf (Principal'Any x__) = Control.DeepSeq.rnf x__
  rnf (Principal'Authenticated' x__) = Control.DeepSeq.rnf x__
  rnf (Principal'SourceIp x__) = Control.DeepSeq.rnf x__
  rnf (Principal'DirectRemoteIp x__) = Control.DeepSeq.rnf x__
  rnf (Principal'RemoteIp x__) = Control.DeepSeq.rnf x__
  rnf (Principal'Header x__) = Control.DeepSeq.rnf x__
  rnf (Principal'UrlPath x__) = Control.DeepSeq.rnf x__
  rnf (Principal'Metadata x__) = Control.DeepSeq.rnf x__
  rnf (Principal'NotId x__) = Control.DeepSeq.rnf x__
_Principal'AndIds ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Principal'Set
_Principal'AndIds
  = Data.ProtoLens.Prism.prism'
      Principal'AndIds
      (\ p__
         -> case p__ of
              (Principal'AndIds p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Principal'OrIds ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Principal'Set
_Principal'OrIds
  = Data.ProtoLens.Prism.prism'
      Principal'OrIds
      (\ p__
         -> case p__ of
              (Principal'OrIds p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Principal'Any ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Prelude.Bool
_Principal'Any
  = Data.ProtoLens.Prism.prism'
      Principal'Any
      (\ p__
         -> case p__ of
              (Principal'Any p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Principal'Authenticated' ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Principal'Authenticated
_Principal'Authenticated'
  = Data.ProtoLens.Prism.prism'
      Principal'Authenticated'
      (\ p__
         -> case p__ of
              (Principal'Authenticated' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Principal'SourceIp ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Proto.Envoy.Config.Core.V3.Address.CidrRange
_Principal'SourceIp
  = Data.ProtoLens.Prism.prism'
      Principal'SourceIp
      (\ p__
         -> case p__ of
              (Principal'SourceIp p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Principal'DirectRemoteIp ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Proto.Envoy.Config.Core.V3.Address.CidrRange
_Principal'DirectRemoteIp
  = Data.ProtoLens.Prism.prism'
      Principal'DirectRemoteIp
      (\ p__
         -> case p__ of
              (Principal'DirectRemoteIp p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Principal'RemoteIp ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Proto.Envoy.Config.Core.V3.Address.CidrRange
_Principal'RemoteIp
  = Data.ProtoLens.Prism.prism'
      Principal'RemoteIp
      (\ p__
         -> case p__ of
              (Principal'RemoteIp p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Principal'Header ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher
_Principal'Header
  = Data.ProtoLens.Prism.prism'
      Principal'Header
      (\ p__
         -> case p__ of
              (Principal'Header p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Principal'UrlPath ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Proto.Envoy.Type.Matcher.V3.Path.PathMatcher
_Principal'UrlPath
  = Data.ProtoLens.Prism.prism'
      Principal'UrlPath
      (\ p__
         -> case p__ of
              (Principal'UrlPath p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Principal'Metadata ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher
_Principal'Metadata
  = Data.ProtoLens.Prism.prism'
      Principal'Metadata
      (\ p__
         -> case p__ of
              (Principal'Metadata p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Principal'NotId ::
  Data.ProtoLens.Prism.Prism' Principal'Identifier Principal
_Principal'NotId
  = Data.ProtoLens.Prism.prism'
      Principal'NotId
      (\ p__
         -> case p__ of
              (Principal'NotId p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.principalName' @:: Lens' Principal'Authenticated Proto.Envoy.Type.Matcher.V3.String.StringMatcher@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'principalName' @:: Lens' Principal'Authenticated (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@ -}
data Principal'Authenticated
  = Principal'Authenticated'_constructor {_Principal'Authenticated'principalName :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher),
                                          _Principal'Authenticated'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Principal'Authenticated where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Principal'Authenticated "principalName" Proto.Envoy.Type.Matcher.V3.String.StringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'Authenticated'principalName
           (\ x__ y__ -> x__ {_Principal'Authenticated'principalName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Principal'Authenticated "maybe'principalName" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'Authenticated'principalName
           (\ x__ y__ -> x__ {_Principal'Authenticated'principalName = y__}))
        Prelude.id
instance Data.ProtoLens.Message Principal'Authenticated where
  messageName _
    = Data.Text.pack "envoy.config.rbac.v3.Principal.Authenticated"
  packedMessageDescriptor _
    = "\n\
      \\rAuthenticated\DC2K\n\
      \\SOprincipal_name\CAN\STX \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\rprincipalName:3\154\197\136\RS.\n\
      \,envoy.config.rbac.v2.Principal.AuthenticatedJ\EOT\b\SOH\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        principalName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "principal_name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'principalName")) ::
              Data.ProtoLens.FieldDescriptor Principal'Authenticated
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, principalName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Principal'Authenticated'_unknownFields
        (\ x__ y__ -> x__ {_Principal'Authenticated'_unknownFields = y__})
  defMessage
    = Principal'Authenticated'_constructor
        {_Principal'Authenticated'principalName = Prelude.Nothing,
         _Principal'Authenticated'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Principal'Authenticated
          -> Data.ProtoLens.Encoding.Bytes.Parser Principal'Authenticated
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "principal_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"principalName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Authenticated"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'principalName") _x
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Principal'Authenticated where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Principal'Authenticated'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Principal'Authenticated'principalName x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.ids' @:: Lens' Principal'Set [Principal]@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.vec'ids' @:: Lens' Principal'Set (Data.Vector.Vector Principal)@ -}
data Principal'Set
  = Principal'Set'_constructor {_Principal'Set'ids :: !(Data.Vector.Vector Principal),
                                _Principal'Set'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Principal'Set where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Principal'Set "ids" [Principal] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'Set'ids (\ x__ y__ -> x__ {_Principal'Set'ids = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Principal'Set "vec'ids" (Data.Vector.Vector Principal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'Set'ids (\ x__ y__ -> x__ {_Principal'Set'ids = y__}))
        Prelude.id
instance Data.ProtoLens.Message Principal'Set where
  messageName _ = Data.Text.pack "envoy.config.rbac.v3.Principal.Set"
  packedMessageDescriptor _
    = "\n\
      \\ETXSet\DC2;\n\
      \\ETXids\CAN\SOH \ETX(\v2\US.envoy.config.rbac.v3.PrincipalR\ETXidsB\b\250B\ENQ\146\SOH\STX\b\SOH:)\154\197\136\RS$\n\
      \\"envoy.config.rbac.v2.Principal.Set"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ids__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ids"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Principal)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ids")) ::
              Data.ProtoLens.FieldDescriptor Principal'Set
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ids__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Principal'Set'_unknownFields
        (\ x__ y__ -> x__ {_Principal'Set'_unknownFields = y__})
  defMessage
    = Principal'Set'_constructor
        {_Principal'Set'ids = Data.Vector.Generic.empty,
         _Principal'Set'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Principal'Set
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Principal
             -> Data.ProtoLens.Encoding.Bytes.Parser Principal'Set
        loop x mutable'ids
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'ids)
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
                              (Data.ProtoLens.Field.field @"vec'ids") frozen'ids x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ids y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ids
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ids)
          "Set"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ids") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Principal'Set where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Principal'Set'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Principal'Set'ids x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.action' @:: Lens' RBAC RBAC'Action@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.policies' @:: Lens' RBAC (Data.Map.Map Data.Text.Text Policy)@ -}
data RBAC
  = RBAC'_constructor {_RBAC'action :: !RBAC'Action,
                       _RBAC'policies :: !(Data.Map.Map Data.Text.Text Policy),
                       _RBAC'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RBAC where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RBAC "action" RBAC'Action where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'action (\ x__ y__ -> x__ {_RBAC'action = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RBAC "policies" (Data.Map.Map Data.Text.Text Policy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'policies (\ x__ y__ -> x__ {_RBAC'policies = y__}))
        Prelude.id
instance Data.ProtoLens.Message RBAC where
  messageName _ = Data.Text.pack "envoy.config.rbac.v3.RBAC"
  packedMessageDescriptor _
    = "\n\
      \\EOTRBAC\DC2C\n\
      \\ACKaction\CAN\SOH \SOH(\SO2!.envoy.config.rbac.v3.RBAC.ActionR\ACKactionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2D\n\
      \\bpolicies\CAN\STX \ETX(\v2(.envoy.config.rbac.v3.RBAC.PoliciesEntryR\bpolicies\SUBY\n\
      \\rPoliciesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC22\n\
      \\ENQvalue\CAN\STX \SOH(\v2\FS.envoy.config.rbac.v3.PolicyR\ENQvalue:\STX8\SOH\"&\n\
      \\ACKAction\DC2\t\n\
      \\ENQALLOW\DLE\NUL\DC2\b\n\
      \\EOTDENY\DLE\SOH\DC2\a\n\
      \\ETXLOG\DLE\STX: \154\197\136\RS\ESC\n\
      \\EMenvoy.config.rbac.v2.RBAC"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        action__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "action"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RBAC'Action)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"action")) ::
              Data.ProtoLens.FieldDescriptor RBAC
        policies__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policies"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RBAC'PoliciesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"policies")) ::
              Data.ProtoLens.FieldDescriptor RBAC
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, action__field_descriptor),
           (Data.ProtoLens.Tag 2, policies__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RBAC'_unknownFields
        (\ x__ y__ -> x__ {_RBAC'_unknownFields = y__})
  defMessage
    = RBAC'_constructor
        {_RBAC'action = Data.ProtoLens.fieldDefault,
         _RBAC'policies = Data.Map.empty, _RBAC'_unknownFields = []}
  parseMessage
    = let
        loop :: RBAC -> Data.ProtoLens.Encoding.Bytes.Parser RBAC
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
                                       "action"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"action") y x)
                        18
                          -> do !(entry :: RBAC'PoliciesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                        Data.ProtoLens.Encoding.Bytes.isolate
                                                                          (Prelude.fromIntegral len)
                                                                          Data.ProtoLens.parseMessage)
                                                                    "policies"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"policies")
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
          (do loop Data.ProtoLens.defMessage) "RBAC"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"action") _x
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
                                       (Data.ProtoLens.defMessage :: RBAC'PoliciesEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"policies") _x))))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RBAC where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RBAC'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RBAC'action x__)
                (Control.DeepSeq.deepseq (_RBAC'policies x__) ()))
newtype RBAC'Action'UnrecognizedValue
  = RBAC'Action'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RBAC'Action
  = RBAC'ALLOW |
    RBAC'DENY |
    RBAC'LOG |
    RBAC'Action'Unrecognized !RBAC'Action'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RBAC'Action where
  maybeToEnum 0 = Prelude.Just RBAC'ALLOW
  maybeToEnum 1 = Prelude.Just RBAC'DENY
  maybeToEnum 2 = Prelude.Just RBAC'LOG
  maybeToEnum k
    = Prelude.Just
        (RBAC'Action'Unrecognized
           (RBAC'Action'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum RBAC'ALLOW = "ALLOW"
  showEnum RBAC'DENY = "DENY"
  showEnum RBAC'LOG = "LOG"
  showEnum
    (RBAC'Action'Unrecognized (RBAC'Action'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ALLOW" = Prelude.Just RBAC'ALLOW
    | (Prelude.==) k "DENY" = Prelude.Just RBAC'DENY
    | (Prelude.==) k "LOG" = Prelude.Just RBAC'LOG
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RBAC'Action where
  minBound = RBAC'ALLOW
  maxBound = RBAC'LOG
instance Prelude.Enum RBAC'Action where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Action: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum RBAC'ALLOW = 0
  fromEnum RBAC'DENY = 1
  fromEnum RBAC'LOG = 2
  fromEnum
    (RBAC'Action'Unrecognized (RBAC'Action'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RBAC'LOG
    = Prelude.error
        "RBAC'Action.succ: bad argument RBAC'LOG. This value would be out of bounds."
  succ RBAC'ALLOW = RBAC'DENY
  succ RBAC'DENY = RBAC'LOG
  succ (RBAC'Action'Unrecognized _)
    = Prelude.error
        "RBAC'Action.succ: bad argument: unrecognized value"
  pred RBAC'ALLOW
    = Prelude.error
        "RBAC'Action.pred: bad argument RBAC'ALLOW. This value would be out of bounds."
  pred RBAC'DENY = RBAC'ALLOW
  pred RBAC'LOG = RBAC'DENY
  pred (RBAC'Action'Unrecognized _)
    = Prelude.error
        "RBAC'Action.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RBAC'Action where
  fieldDefault = RBAC'ALLOW
instance Control.DeepSeq.NFData RBAC'Action where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.key' @:: Lens' RBAC'PoliciesEntry Data.Text.Text@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.value' @:: Lens' RBAC'PoliciesEntry Policy@
         * 'Proto.Envoy.Config.Rbac.V3.Rbac_Fields.maybe'value' @:: Lens' RBAC'PoliciesEntry (Prelude.Maybe Policy)@ -}
data RBAC'PoliciesEntry
  = RBAC'PoliciesEntry'_constructor {_RBAC'PoliciesEntry'key :: !Data.Text.Text,
                                     _RBAC'PoliciesEntry'value :: !(Prelude.Maybe Policy),
                                     _RBAC'PoliciesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RBAC'PoliciesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RBAC'PoliciesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'PoliciesEntry'key
           (\ x__ y__ -> x__ {_RBAC'PoliciesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RBAC'PoliciesEntry "value" Policy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'PoliciesEntry'value
           (\ x__ y__ -> x__ {_RBAC'PoliciesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RBAC'PoliciesEntry "maybe'value" (Prelude.Maybe Policy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'PoliciesEntry'value
           (\ x__ y__ -> x__ {_RBAC'PoliciesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message RBAC'PoliciesEntry where
  messageName _
    = Data.Text.pack "envoy.config.rbac.v3.RBAC.PoliciesEntry"
  packedMessageDescriptor _
    = "\n\
      \\rPoliciesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC22\n\
      \\ENQvalue\CAN\STX \SOH(\v2\FS.envoy.config.rbac.v3.PolicyR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor RBAC'PoliciesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Policy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor RBAC'PoliciesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RBAC'PoliciesEntry'_unknownFields
        (\ x__ y__ -> x__ {_RBAC'PoliciesEntry'_unknownFields = y__})
  defMessage
    = RBAC'PoliciesEntry'_constructor
        {_RBAC'PoliciesEntry'key = Data.ProtoLens.fieldDefault,
         _RBAC'PoliciesEntry'value = Prelude.Nothing,
         _RBAC'PoliciesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RBAC'PoliciesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser RBAC'PoliciesEntry
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
          (do loop Data.ProtoLens.defMessage) "PoliciesEntry"
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
instance Control.DeepSeq.NFData RBAC'PoliciesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RBAC'PoliciesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RBAC'PoliciesEntry'key x__)
                (Control.DeepSeq.deepseq (_RBAC'PoliciesEntry'value x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USenvoy/config/rbac/v3/rbac.proto\DC2\DC4envoy.config.rbac.v3\SUB\"envoy/config/core/v3/address.proto\SUB,envoy/config/route/v3/route_components.proto\SUB$envoy/type/matcher/v3/metadata.proto\SUB envoy/type/matcher/v3/path.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB&google/api/expr/v1alpha1/checked.proto\SUB%google/api/expr/v1alpha1/syntax.proto\SUB#envoy/annotations/deprecation.proto\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\182\STX\n\
    \\EOTRBAC\DC2C\n\
    \\ACKaction\CAN\SOH \SOH(\SO2!.envoy.config.rbac.v3.RBAC.ActionR\ACKactionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2D\n\
    \\bpolicies\CAN\STX \ETX(\v2(.envoy.config.rbac.v3.RBAC.PoliciesEntryR\bpolicies\SUBY\n\
    \\rPoliciesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC22\n\
    \\ENQvalue\CAN\STX \SOH(\v2\FS.envoy.config.rbac.v3.PolicyR\ENQvalue:\STX8\SOH\"&\n\
    \\ACKAction\DC2\t\n\
    \\ENQALLOW\DLE\NUL\DC2\b\n\
    \\EOTDENY\DLE\SOH\DC2\a\n\
    \\ETXLOG\DLE\STX: \154\197\136\RS\ESC\n\
    \\EMenvoy.config.rbac.v2.RBAC\"\147\ETX\n\
    \\ACKPolicy\DC2L\n\
    \\vpermissions\CAN\SOH \ETX(\v2 .envoy.config.rbac.v3.PermissionR\vpermissionsB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2I\n\
    \\n\
    \principals\CAN\STX \ETX(\v2\US.envoy.config.rbac.v3.PrincipalR\n\
    \principalsB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2Z\n\
    \\tcondition\CAN\ETX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\tconditionB\FS\242\152\254\143\ENQ\SYN\DC2\DC4expression_specifier\DC2p\n\
    \\DC1checked_condition\CAN\EOT \SOH(\v2%.google.api.expr.v1alpha1.CheckedExprR\DLEcheckedConditionB\FS\242\152\254\143\ENQ\SYN\DC2\DC4expression_specifier:\"\154\197\136\RS\GS\n\
    \\ESCenvoy.config.rbac.v2.Policy\"\191\ACK\n\
    \\n\
    \Permission\DC2C\n\
    \\tand_rules\CAN\SOH \SOH(\v2$.envoy.config.rbac.v3.Permission.SetH\NULR\bandRules\DC2A\n\
    \\bor_rules\CAN\STX \SOH(\v2$.envoy.config.rbac.v3.Permission.SetH\NULR\aorRules\DC2\ESC\n\
    \\ETXany\CAN\ETX \SOH(\bH\NULR\ETXanyB\a\250B\EOTj\STX\b\SOH\DC2>\n\
    \\ACKheader\CAN\EOT \SOH(\v2$.envoy.config.route.v3.HeaderMatcherH\NULR\ACKheader\DC2?\n\
    \\burl_path\CAN\n\
    \ \SOH(\v2\".envoy.type.matcher.v3.PathMatcherH\NULR\aurlPath\DC2H\n\
    \\SOdestination_ip\CAN\ENQ \SOH(\v2\US.envoy.config.core.v3.CidrRangeH\NULR\rdestinationIp\DC26\n\
    \\DLEdestination_port\CAN\ACK \SOH(\rH\NULR\SIdestinationPortB\t\250B\ACK*\EOT\CAN\255\255\ETX\DC2D\n\
    \\bmetadata\CAN\a \SOH(\v2&.envoy.type.matcher.v3.MetadataMatcherH\NULR\bmetadata\DC2=\n\
    \\bnot_rule\CAN\b \SOH(\v2 .envoy.config.rbac.v3.PermissionH\NULR\anotRule\DC2Z\n\
    \\NAKrequested_server_name\CAN\t \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\DC3requestedServerName\SUBs\n\
    \\ETXSet\DC2@\n\
    \\ENQrules\CAN\SOH \ETX(\v2 .envoy.config.rbac.v3.PermissionR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\SOH:*\154\197\136\RS%\n\
    \#envoy.config.rbac.v2.Permission.SetB\v\n\
    \\EOTrule\DC2\ETX\248B\SOH:&\154\197\136\RS!\n\
    \\USenvoy.config.rbac.v2.Permission\"\155\b\n\
    \\tPrincipal\DC2>\n\
    \\aand_ids\CAN\SOH \SOH(\v2#.envoy.config.rbac.v3.Principal.SetH\NULR\ACKandIds\DC2<\n\
    \\ACKor_ids\CAN\STX \SOH(\v2#.envoy.config.rbac.v3.Principal.SetH\NULR\ENQorIds\DC2\ESC\n\
    \\ETXany\CAN\ETX \SOH(\bH\NULR\ETXanyB\a\250B\EOTj\STX\b\SOH\DC2U\n\
    \\rauthenticated\CAN\EOT \SOH(\v2-.envoy.config.rbac.v3.Principal.AuthenticatedH\NULR\rauthenticated\DC2K\n\
    \\tsource_ip\CAN\ENQ \SOH(\v2\US.envoy.config.core.v3.CidrRangeH\NULR\bsourceIpB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2K\n\
    \\DLEdirect_remote_ip\CAN\n\
    \ \SOH(\v2\US.envoy.config.core.v3.CidrRangeH\NULR\SOdirectRemoteIp\DC2>\n\
    \\tremote_ip\CAN\v \SOH(\v2\US.envoy.config.core.v3.CidrRangeH\NULR\bremoteIp\DC2>\n\
    \\ACKheader\CAN\ACK \SOH(\v2$.envoy.config.route.v3.HeaderMatcherH\NULR\ACKheader\DC2?\n\
    \\burl_path\CAN\t \SOH(\v2\".envoy.type.matcher.v3.PathMatcherH\NULR\aurlPath\DC2D\n\
    \\bmetadata\CAN\a \SOH(\v2&.envoy.type.matcher.v3.MetadataMatcherH\NULR\bmetadata\DC28\n\
    \\ACKnot_id\CAN\b \SOH(\v2\US.envoy.config.rbac.v3.PrincipalH\NULR\ENQnotId\SUBm\n\
    \\ETXSet\DC2;\n\
    \\ETXids\CAN\SOH \ETX(\v2\US.envoy.config.rbac.v3.PrincipalR\ETXidsB\b\250B\ENQ\146\SOH\STX\b\SOH:)\154\197\136\RS$\n\
    \\"envoy.config.rbac.v2.Principal.Set\SUB\151\SOH\n\
    \\rAuthenticated\DC2K\n\
    \\SOprincipal_name\CAN\STX \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\rprincipalName:3\154\197\136\RS.\n\
    \,envoy.config.rbac.v2.Principal.AuthenticatedJ\EOT\b\SOH\DLE\STXB\DC1\n\
    \\n\
    \identifier\DC2\ETX\248B\SOH:%\154\197\136\RS \n\
    \\RSenvoy.config.rbac.v2.PrincipalB9\n\
    \\"io.envoyproxy.envoy.config.rbac.v3B\tRbacProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\164Z\n\
    \\a\DC2\ENQ\NUL\NUL\170\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL6\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL*\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL,\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL0\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\v\NUL/\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL-\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL(\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\SI\NUL'\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\DLE\NUL+\n\
    \\t\n\
    \\STX\ETX\v\DC2\ETX\DC1\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DC3\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC4\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC4\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\NAK\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\NAK\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SYN\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SYN\NULF\n\
    \\146\SO\n\
    \\STX\EOT\NUL\DC2\EOTH\NULm\SOH\SUB\206\r Role Based Access Control (RBAC) provides service-level and method-level access control for a\n\
    \ service. Requests are allowed or denied based on the `action` and whether a matching policy is\n\
    \ found. For instance, if the action is ALLOW and a matching policy is found the request should be\n\
    \ allowed.\n\
    \\n\
    \ RBAC can also be used to make access logging decisions by communicating with access loggers\n\
    \ through dynamic metadata. When the action is LOG and at least one policy matches, the\n\
    \ `access_log_hint` value in the shared key namespace 'envoy.common' is set to `true` indicating\n\
    \ the request should be logged.\n\
    \\n\
    \ Here is an example of RBAC configuration. It has two policies:\n\
    \\n\
    \ * Service account \"cluster.local/ns/default/sa/admin\" has full access to the service, and so\n\
    \   does \"cluster.local/ns/default/sa/superuser\".\n\
    \\n\
    \ * Any user can read (\"GET\") the service at paths with prefix \"/products\", so long as the\n\
    \   destination port is either 80 or 443.\n\
    \\n\
    \  .. code-block:: yaml\n\
    \\n\
    \   action: ALLOW\n\
    \   policies:\n\
    \     \"service-admin\":\n\
    \       permissions:\n\
    \         - any: true\n\
    \       principals:\n\
    \         - authenticated:\n\
    \             principal_name:\n\
    \               exact: \"cluster.local/ns/default/sa/admin\"\n\
    \         - authenticated:\n\
    \             principal_name:\n\
    \               exact: \"cluster.local/ns/default/sa/superuser\"\n\
    \     \"product-viewer\":\n\
    \       permissions:\n\
    \           - and_rules:\n\
    \               rules:\n\
    \                 - header: { name: \":method\", exact_match: \"GET\" }\n\
    \                 - url_path:\n\
    \                     path: { prefix: \"/products\" }\n\
    \                 - or_rules:\n\
    \                     rules:\n\
    \                       - destination_port: 80\n\
    \                       - destination_port: 443\n\
    \       principals:\n\
    \         - any: true\n\
    \\n\
    \25 [#protodoc-title: Role Based Access Control (RBAC)]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXH\b\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETXI\STX[\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETXI\STX[\n\
    \J\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOTL\STXX\ETX\SUB< Should we do safe-list or block-list style access control?\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETXL\a\r\n\
    \\146\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETXO\EOT\SO\SUB\130\SOH The policies grant access to principals. The rest are denied. This is safe-list style\n\
    \ access control. This is the default type.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETXO\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETXO\f\r\n\
    \x\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETXS\EOT\r\SUBi The policies deny access to principals. The rest are allowed. This is block-list style\n\
    \ access control.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETXS\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETXS\v\f\n\
    \\131\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETXW\EOT\f\SUBt The policies set the `access_log_hint` dynamic metadata key based on if requests match.\n\
    \ All requests are allowed.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETXW\EOT\a\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETXW\n\
    \\v\n\
    \\244\EOT\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXh\STXC\SUB\230\EOT The action to take if a policy matches. Every action either allows or denies a request,\n\
    \ and can also carry out action-specific operations.\n\
    \\n\
    \ Actions:\n\
    \\n\
    \  * ALLOW: Allows the request if and only if there is a policy that matches\n\
    \    the request.\n\
    \  * DENY: Allows the request if and only if there are no policies that\n\
    \    match the request.\n\
    \  * LOG: Allows all requests. If at least one policy matches, the dynamic\n\
    \    metadata key `access_log_hint` is set to the value `true` under the shared\n\
    \    key namespace 'envoy.common'. If no policies match, it is set to `false`.\n\
    \    Other actions do not modify this key.\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXh\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXh\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXh\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXh\DC4B\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\ETXh\NAKA\n\
    \\180\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXl\STX#\SUB\166\SOH Maps from policy name to policy. A match occurs when at least one policy matches the request.\n\
    \ The policies are evaluated in lexicographic order of the policy name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXl\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXl\SYN\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXl!\"\n\
    \\158\STX\n\
    \\STX\EOT\SOH\DC2\ENQs\NUL\141\SOH\SOH\SUB\144\STX Policy specifies a role and the principals that are assigned/denied the role.\n\
    \ A policy matches if and only if at least one of its permissions match the\n\
    \ action taking place AND at least one of its principals match the downstream\n\
    \ AND the condition is true if specified.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXs\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETXt\STX]\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETXt\STX]\n\
    \\223\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXy\STXS\SUB\209\SOH Required. The set of permissions that define a role. Each permission is\n\
    \ matched with OR semantics. To match all actions for this policy, a single\n\
    \ Permission with the `any` field set to true should be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETXy\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXy\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXy\SYN!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXy$%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXy&R\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC2\DC2\ETXy'Q\n\
    \\134\STX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DEL\STXQ\SUB\248\SOH Required. The set of principals that are assigned/denied the role based on\n\
    \ \226\128\156action\226\128\157. Each principal is matched with OR semantics. To match all\n\
    \ downstreams for this policy, a single Principal with the `any` field set to\n\
    \ true should be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DEL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\DEL\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DEL\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DEL\"#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX\DEL$P\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\DC2\DC2\ETX\DEL%O\n\
    \\145\STX\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ACK\133\SOH\STX\134\SOHR\SUB\128\STX An optional symbolic expression specifying an access control\n\
    \ :ref:`condition <arch_overview_condition>`. The condition is combined\n\
    \ with the permissions and the principals as a clause with AND semantics.\n\
    \ Only be used when checked_condition is not used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\EOT\133\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\133\SOH )\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\133\SOH,-\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\EOT\134\SOH\ACKQ\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\STX\STX\b\142\227\255Q\STX\DC2\EOT\134\SOH\aP\n\
    \\159\SOH\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ACK\139\SOH\STX\140\SOHR\SUB\142\SOH [#not-implemented-hide:]\n\
    \ An optional symbolic expression that has been successfully type checked.\n\
    \ Only be used when condition is not used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\EOT\139\SOH\STX&\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\139\SOH'8\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\139\SOH;<\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\EOT\140\SOH\ACKQ\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\STX\ETX\b\142\227\255Q\STX\DC2\EOT\140\SOH\aP\n\
    \l\n\
    \\STX\EOT\STX\DC2\ACK\145\SOH\NUL\214\SOH\SOH\SUB^ Permission defines an action (or actions) that a principal can take.\n\
    \ [#next-free-field: 11]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\145\SOH\b\DC2\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT\146\SOH\STXa\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT\146\SOH\STXa\n\
    \\159\SOH\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\ACK\150\SOH\STX\155\SOH\ETX\SUB\142\SOH Used in the `and_rules` and `or_rules` fields in the `rule` oneof. Depending on the context,\n\
    \ each are applied with the associated behavior.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\EOT\150\SOH\n\
    \\r\n\
    \\SI\n\
    \\ENQ\EOT\STX\ETX\NUL\a\DC2\ACK\151\SOH\EOT\152\SOH.\n\
    \\DC4\n\
    \\n\
    \\EOT\STX\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\151\SOH\EOT\152\SOH.\n\
    \\SO\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\EOT\154\SOH\EOTO\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\EOT\DC2\EOT\154\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ACK\DC2\EOT\154\SOH\r\ETB\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\EOT\154\SOH\CAN\GS\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\EOT\154\SOH !\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\b\DC2\EOT\154\SOH\"N\n\
    \\DC2\n\
    \\n\
    \\EOT\STX\ETX\NUL\STX\NUL\b\175\b\DC2\DC2\EOT\154\SOH#M\n\
    \\SO\n\
    \\EOT\EOT\STX\b\NUL\DC2\ACK\157\SOH\STX\213\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\EOT\157\SOH\b\f\n\
    \\r\n\
    \\ENQ\EOT\STX\b\NUL\STX\DC2\EOT\158\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\STX\b\NUL\STX\175\b\DC2\EOT\158\SOH\EOT&\n\
    \Q\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\161\SOH\EOT\SYN\SUBC A set of rules that all must match in order to define the action.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\161\SOH\EOT\a\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\161\SOH\b\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\161\SOH\DC4\NAK\n\
    \[\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\164\SOH\EOT\NAK\SUBM A set of rules where at least one must match in order to define the action.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\164\SOH\EOT\a\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\164\SOH\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\164\SOH\DC3\DC4\n\
    \7\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\167\SOH\EOT9\SUB) When any is set, it matches any action.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\EOT\167\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\167\SOH\t\f\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\167\SOH\SI\DLE\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\EOT\167\SOH\DC18\n\
    \\DLE\n\
    \\b\EOT\STX\STX\STX\b\175\b\r\DC2\EOT\167\SOH\DC27\n\
    \\175\STX\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\173\SOH\EOT&\SUB\160\STX A header (or pseudo-header such as :path or :method) on the incoming HTTP request. Only\n\
    \ available for HTTP request.\n\
    \ Note: the pseudo-header :path includes the query and fragment string. Use the `url_path`\n\
    \ field if you want to match the URL path without the query and fragment string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\EOT\173\SOH\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\173\SOH\ESC!\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\173\SOH$%\n\
    \Q\n\
    \\EOT\EOT\STX\STX\EOT\DC2\EOT\176\SOH\EOT.\SUBC A URL path on the incoming HTTP request. Only available for HTTP.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\EOT\176\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\EOT\176\SOH (\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\EOT\176\SOH+-\n\
    \?\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\EOT\179\SOH\EOT)\SUB1 A CIDR block that describes the destination IP.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ACK\DC2\EOT\179\SOH\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\EOT\179\SOH\SYN$\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\EOT\179\SOH'(\n\
    \P\n\
    \\EOT\EOT\STX\STX\ACK\DC2\EOT\182\SOH\EOTI\SUBB A port number that describes the destination port connecting to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\EOT\182\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\EOT\182\SOH\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\EOT\182\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\b\DC2\EOT\182\SOH H\n\
    \\DLE\n\
    \\b\EOT\STX\STX\ACK\b\175\b\ENQ\DC2\EOT\182\SOH!G\n\
    \P\n\
    \\EOT\EOT\STX\STX\a\DC2\EOT\185\SOH\EOT1\SUBB Metadata that describes additional information about the action.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\EOT\185\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\EOT\185\SOH$,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\EOT\185\SOH/0\n\
    \\232\SOH\n\
    \\EOT\EOT\STX\STX\b\DC2\EOT\190\SOH\EOT\FS\SUB\217\SOH Negates matching the provided permission. For instance, if the value of\n\
    \ `not_rule` would match, this permission would not match. Conversely, if\n\
    \ the value of `not_rule` would not match, this permission would match.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\ACK\DC2\EOT\190\SOH\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\EOT\190\SOH\SI\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\EOT\190\SOH\SUB\ESC\n\
    \\143\ACK\n\
    \\EOT\EOT\STX\STX\t\DC2\EOT\212\SOH\EOT<\SUB\128\ACK The request server from the client's connection request. This is\n\
    \ typically TLS SNI.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   The behavior of this field may be affected by how Envoy is configured\n\
    \   as explained below.\n\
    \\n\
    \   * If the :ref:`TLS Inspector <config_listener_filters_tls_inspector>`\n\
    \     filter is not added, and if a `FilterChainMatch` is not defined for\n\
    \     the :ref:`server name\n\
    \     <envoy_v3_api_field_config.listener.v3.FilterChainMatch.server_names>`,\n\
    \     a TLS connection's requested SNI server name will be treated as if it\n\
    \     wasn't present.\n\
    \\n\
    \   * A :ref:`listener filter <arch_overview_listener_filters>` may\n\
    \     overwrite a connection's requested server name within Envoy.\n\
    \\n\
    \ Please refer to :ref:`this FAQ entry <faq_how_to_setup_sni>` to learn to\n\
    \ setup SNI.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\t\ACK\DC2\EOT\212\SOH\EOT!\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\t\SOH\DC2\EOT\212\SOH\"7\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\t\ETX\DC2\EOT\212\SOH:;\n\
    \y\n\
    \\STX\EOT\ETX\DC2\ACK\219\SOH\NUL\170\STX\SOH\SUBk Principal defines an identity or a group of identities for a downstream\n\
    \ subject.\n\
    \ [#next-free-field: 12]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\219\SOH\b\DC1\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOT\220\SOH\STX`\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOT\220\SOH\STX`\n\
    \\161\SOH\n\
    \\EOT\EOT\ETX\ETX\NUL\DC2\ACK\224\SOH\STX\229\SOH\ETX\SUB\144\SOH Used in the `and_ids` and `or_ids` fields in the `identifier` oneof.\n\
    \ Depending on the context, each are applied with the associated behavior.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\NUL\SOH\DC2\EOT\224\SOH\n\
    \\r\n\
    \\SI\n\
    \\ENQ\EOT\ETX\ETX\NUL\a\DC2\ACK\225\SOH\EOT\226\SOH-\n\
    \\DC4\n\
    \\n\
    \\EOT\ETX\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\225\SOH\EOT\226\SOH-\n\
    \\SO\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\NUL\DC2\EOT\228\SOH\EOTL\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\EOT\DC2\EOT\228\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ACK\DC2\EOT\228\SOH\r\SYN\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\SOH\DC2\EOT\228\SOH\ETB\SUB\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ETX\DC2\EOT\228\SOH\GS\RS\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\b\DC2\EOT\228\SOH\USK\n\
    \\DC2\n\
    \\n\
    \\EOT\ETX\ETX\NUL\STX\NUL\b\175\b\DC2\DC2\EOT\228\SOH J\n\
    \=\n\
    \\EOT\EOT\ETX\ETX\SOH\DC2\ACK\232\SOH\STX\242\SOH\ETX\SUB- Authentication attributes for a downstream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\SOH\SOH\DC2\EOT\232\SOH\n\
    \\ETB\n\
    \\SI\n\
    \\ENQ\EOT\ETX\ETX\SOH\a\DC2\ACK\233\SOH\EOT\234\SOH7\n\
    \\DC4\n\
    \\n\
    \\EOT\ETX\ETX\SOH\a\211\136\225\ETX\SOH\DC2\ACK\233\SOH\EOT\234\SOH7\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\SOH\t\DC2\EOT\236\SOH\EOT\SI\n\
    \\SO\n\
    \\ACK\EOT\ETX\ETX\SOH\t\NUL\DC2\EOT\236\SOH\r\SO\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\t\NUL\SOH\DC2\EOT\236\SOH\r\SO\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\t\NUL\STX\DC2\EOT\236\SOH\r\SO\n\
    \\215\SOH\n\
    \\ACK\EOT\ETX\ETX\SOH\STX\NUL\DC2\EOT\241\SOH\EOT5\SUB\198\SOH The name of the principal. If set, The URI SAN or DNS SAN in that order\n\
    \ is used from the certificate, otherwise the subject field is used. If\n\
    \ unset, it applies to any user that is authenticated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\NUL\ACK\DC2\EOT\241\SOH\EOT!\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\NUL\SOH\DC2\EOT\241\SOH\"0\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\NUL\ETX\DC2\EOT\241\SOH34\n\
    \\SO\n\
    \\EOT\EOT\ETX\b\NUL\DC2\ACK\244\SOH\STX\169\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\EOT\244\SOH\b\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\b\NUL\STX\DC2\EOT\245\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\ETX\b\NUL\STX\175\b\DC2\EOT\245\SOH\EOT&\n\
    \\\\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\249\SOH\EOT\DC4\SUBN A set of identifiers that all must match in order to define the\n\
    \ downstream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\249\SOH\EOT\a\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\249\SOH\b\SI\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\249\SOH\DC2\DC3\n\
    \`\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\253\SOH\EOT\DC3\SUBR A set of identifiers at least one must match in order to define the\n\
    \ downstream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\EOT\253\SOH\EOT\a\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\253\SOH\b\SO\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\253\SOH\DC1\DC2\n\
    \;\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\128\STX\EOT9\SUB- When any is set, it matches any downstream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\EOT\128\STX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\128\STX\t\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\128\STX\SI\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\EOT\128\STX\DC18\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\STX\b\175\b\r\DC2\EOT\128\STX\DC27\n\
    \F\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\131\STX\EOT$\SUB8 Authenticated attributes that identify the downstream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\EOT\131\STX\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\131\STX\DC2\US\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\131\STX\"#\n\
    \\129\SOH\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ACK\135\STX\EOT\136\STXU\SUBq A CIDR block that describes the downstream IP.\n\
    \ This address will honor proxy protocol, but will not honor XFF.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\EOT\135\STX\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\EOT\135\STX\SYN\US\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\EOT\135\STX\"#\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\b\DC2\EOT\136\STX\bT\n\
    \\SO\n\
    \\ACK\EOT\ETX\STX\EOT\b\ETX\DC2\EOT\136\STX\t\SUB\n\
    \\DC1\n\
    \\t\EOT\ETX\STX\EOT\b\242\232\128K\DC2\EOT\136\STX\FSS\n\
    \\160\STX\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\EOT\143\STX\EOT,\SUB\145\STX A CIDR block that describes the downstream remote/origin address.\n\
    \ Note: This is always the physical peer even if the\n\
    \ :ref:`remote_ip <envoy_v3_api_field_config.rbac.v3.Principal.remote_ip>` is\n\
    \ inferred from for example the x-forwarder-for header, proxy protocol,\n\
    \ etc.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\EOT\143\STX\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\EOT\143\STX\SYN&\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\EOT\143\STX)+\n\
    \\219\STX\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\EOT\151\STX\EOT%\SUB\204\STX A CIDR block that describes the downstream remote/origin address.\n\
    \ Note: This may not be the physical peer and could be different from the\n\
    \ :ref:`direct_remote_ip\n\
    \ <envoy_v3_api_field_config.rbac.v3.Principal.direct_remote_ip>`. E.g, if the\n\
    \ remote ip is inferred from for example the x-forwarder-for header, proxy\n\
    \ protocol, etc.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ACK\DC2\EOT\151\STX\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\EOT\151\STX\SYN\US\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\EOT\151\STX\"$\n\
    \\175\STX\n\
    \\EOT\EOT\ETX\STX\a\DC2\EOT\157\STX\EOT&\SUB\160\STX A header (or pseudo-header such as :path or :method) on the incoming HTTP\n\
    \ request. Only available for HTTP request. Note: the pseudo-header :path\n\
    \ includes the query and fragment string. Use the `url_path` field if you\n\
    \ want to match the URL path without the query and fragment string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ACK\DC2\EOT\157\STX\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\EOT\157\STX\ESC!\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\EOT\157\STX$%\n\
    \Q\n\
    \\EOT\EOT\ETX\STX\b\DC2\EOT\160\STX\EOT-\SUBC A URL path on the incoming HTTP request. Only available for HTTP.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\ACK\DC2\EOT\160\STX\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\EOT\160\STX (\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\EOT\160\STX+,\n\
    \S\n\
    \\EOT\EOT\ETX\STX\t\DC2\EOT\163\STX\EOT1\SUBE Metadata that describes additional information about the principal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\ACK\DC2\EOT\163\STX\EOT#\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\EOT\163\STX$,\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\EOT\163\STX/0\n\
    \\225\SOH\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\EOT\168\STX\EOT\EM\SUB\210\SOH Negates matching the provided principal. For instance, if the value of\n\
    \ `not_id` would match, this principal would not match. Conversely, if the\n\
    \ value of `not_id` would not match, this principal would match.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ACK\DC2\EOT\168\STX\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\EOT\168\STX\SO\DC4\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\EOT\168\STX\ETB\CANb\ACKproto3"