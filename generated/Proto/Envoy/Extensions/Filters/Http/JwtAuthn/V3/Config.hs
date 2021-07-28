{- This file was auto-generated from envoy/extensions/filters/http/jwt_authn/v3/config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config (
        FilterStateRule(), FilterStateRule'RequiresEntry(),
        JwksAsyncFetch(), JwtAuthentication(),
        JwtAuthentication'ProvidersEntry(),
        JwtAuthentication'RequirementMapEntry(), JwtHeader(),
        JwtProvider(), JwtProvider'JwksSourceSpecifier(..),
        _JwtProvider'RemoteJwks, _JwtProvider'LocalJwks, JwtRequirement(),
        JwtRequirement'RequiresType(..), _JwtRequirement'ProviderName,
        _JwtRequirement'ProviderAndAudiences, _JwtRequirement'RequiresAny,
        _JwtRequirement'RequiresAll, _JwtRequirement'AllowMissingOrFailed,
        _JwtRequirement'AllowMissing, JwtRequirementAndList(),
        JwtRequirementOrList(), PerRouteConfig(),
        PerRouteConfig'RequirementSpecifier(..), _PerRouteConfig'Disabled,
        _PerRouteConfig'RequirementName, ProviderWithAudiences(),
        RemoteJwks(), RequirementRule(),
        RequirementRule'RequirementType(..), _RequirementRule'Requires,
        _RequirementRule'RequirementName
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
import qualified Proto.Envoy.Config.Core.V3.HttpUri
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Empty
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.name' @:: Lens' FilterStateRule Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.requires' @:: Lens' FilterStateRule (Data.Map.Map Data.Text.Text JwtRequirement)@ -}
data FilterStateRule
  = FilterStateRule'_constructor {_FilterStateRule'name :: !Data.Text.Text,
                                  _FilterStateRule'requires :: !(Data.Map.Map Data.Text.Text JwtRequirement),
                                  _FilterStateRule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterStateRule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterStateRule "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterStateRule'name
           (\ x__ y__ -> x__ {_FilterStateRule'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterStateRule "requires" (Data.Map.Map Data.Text.Text JwtRequirement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterStateRule'requires
           (\ x__ y__ -> x__ {_FilterStateRule'requires = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterStateRule where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.FilterStateRule"
  packedMessageDescriptor _
    = "\n\
      \\SIFilterStateRule\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2e\n\
      \\brequires\CAN\ETX \ETX(\v2I.envoy.extensions.filters.http.jwt_authn.v3.FilterStateRule.RequiresEntryR\brequires\SUBw\n\
      \\rRequiresEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2P\n\
      \\ENQvalue\CAN\STX \SOH(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementR\ENQvalue:\STX8\SOH:A\154\197\136\RS<\n\
      \:envoy.config.filter.http.jwt_authn.v2alpha.FilterStateRule"
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
              Data.ProtoLens.FieldDescriptor FilterStateRule
        requires__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requires"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FilterStateRule'RequiresEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"requires")) ::
              Data.ProtoLens.FieldDescriptor FilterStateRule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, requires__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterStateRule'_unknownFields
        (\ x__ y__ -> x__ {_FilterStateRule'_unknownFields = y__})
  defMessage
    = FilterStateRule'_constructor
        {_FilterStateRule'name = Data.ProtoLens.fieldDefault,
         _FilterStateRule'requires = Data.Map.empty,
         _FilterStateRule'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterStateRule
          -> Data.ProtoLens.Encoding.Bytes.Parser FilterStateRule
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
                        26
                          -> do !(entry :: FilterStateRule'RequiresEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                               (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                                                     (Prelude.fromIntegral
                                                                                        len)
                                                                                     Data.ProtoLens.parseMessage)
                                                                               "requires"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"requires")
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
          (do loop Data.ProtoLens.defMessage) "FilterStateRule"
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
                (Data.Monoid.mconcat
                   (Prelude.map
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                                          FilterStateRule'RequiresEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"requires") _x))))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FilterStateRule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterStateRule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterStateRule'name x__)
                (Control.DeepSeq.deepseq (_FilterStateRule'requires x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.key' @:: Lens' FilterStateRule'RequiresEntry Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.value' @:: Lens' FilterStateRule'RequiresEntry JwtRequirement@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'value' @:: Lens' FilterStateRule'RequiresEntry (Prelude.Maybe JwtRequirement)@ -}
data FilterStateRule'RequiresEntry
  = FilterStateRule'RequiresEntry'_constructor {_FilterStateRule'RequiresEntry'key :: !Data.Text.Text,
                                                _FilterStateRule'RequiresEntry'value :: !(Prelude.Maybe JwtRequirement),
                                                _FilterStateRule'RequiresEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterStateRule'RequiresEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterStateRule'RequiresEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterStateRule'RequiresEntry'key
           (\ x__ y__ -> x__ {_FilterStateRule'RequiresEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterStateRule'RequiresEntry "value" JwtRequirement where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterStateRule'RequiresEntry'value
           (\ x__ y__ -> x__ {_FilterStateRule'RequiresEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterStateRule'RequiresEntry "maybe'value" (Prelude.Maybe JwtRequirement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterStateRule'RequiresEntry'value
           (\ x__ y__ -> x__ {_FilterStateRule'RequiresEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterStateRule'RequiresEntry where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.FilterStateRule.RequiresEntry"
  packedMessageDescriptor _
    = "\n\
      \\rRequiresEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2P\n\
      \\ENQvalue\CAN\STX \SOH(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor FilterStateRule'RequiresEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtRequirement)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor FilterStateRule'RequiresEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterStateRule'RequiresEntry'_unknownFields
        (\ x__ y__
           -> x__ {_FilterStateRule'RequiresEntry'_unknownFields = y__})
  defMessage
    = FilterStateRule'RequiresEntry'_constructor
        {_FilterStateRule'RequiresEntry'key = Data.ProtoLens.fieldDefault,
         _FilterStateRule'RequiresEntry'value = Prelude.Nothing,
         _FilterStateRule'RequiresEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterStateRule'RequiresEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser FilterStateRule'RequiresEntry
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
          (do loop Data.ProtoLens.defMessage) "RequiresEntry"
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
instance Control.DeepSeq.NFData FilterStateRule'RequiresEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterStateRule'RequiresEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterStateRule'RequiresEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_FilterStateRule'RequiresEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.fastListener' @:: Lens' JwksAsyncFetch Prelude.Bool@ -}
data JwksAsyncFetch
  = JwksAsyncFetch'_constructor {_JwksAsyncFetch'fastListener :: !Prelude.Bool,
                                 _JwksAsyncFetch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JwksAsyncFetch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField JwksAsyncFetch "fastListener" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwksAsyncFetch'fastListener
           (\ x__ y__ -> x__ {_JwksAsyncFetch'fastListener = y__}))
        Prelude.id
instance Data.ProtoLens.Message JwksAsyncFetch where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.JwksAsyncFetch"
  packedMessageDescriptor _
    = "\n\
      \\SOJwksAsyncFetch\DC2#\n\
      \\rfast_listener\CAN\SOH \SOH(\bR\ffastListener"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fastListener__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fast_listener"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fastListener")) ::
              Data.ProtoLens.FieldDescriptor JwksAsyncFetch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fastListener__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JwksAsyncFetch'_unknownFields
        (\ x__ y__ -> x__ {_JwksAsyncFetch'_unknownFields = y__})
  defMessage
    = JwksAsyncFetch'_constructor
        {_JwksAsyncFetch'fastListener = Data.ProtoLens.fieldDefault,
         _JwksAsyncFetch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          JwksAsyncFetch
          -> Data.ProtoLens.Encoding.Bytes.Parser JwksAsyncFetch
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
                                       "fast_listener"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fastListener") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "JwksAsyncFetch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"fastListener") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData JwksAsyncFetch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JwksAsyncFetch'_unknownFields x__)
             (Control.DeepSeq.deepseq (_JwksAsyncFetch'fastListener x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.providers' @:: Lens' JwtAuthentication (Data.Map.Map Data.Text.Text JwtProvider)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.rules' @:: Lens' JwtAuthentication [RequirementRule]@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.vec'rules' @:: Lens' JwtAuthentication (Data.Vector.Vector RequirementRule)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.filterStateRules' @:: Lens' JwtAuthentication FilterStateRule@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'filterStateRules' @:: Lens' JwtAuthentication (Prelude.Maybe FilterStateRule)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.bypassCorsPreflight' @:: Lens' JwtAuthentication Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.requirementMap' @:: Lens' JwtAuthentication (Data.Map.Map Data.Text.Text JwtRequirement)@ -}
data JwtAuthentication
  = JwtAuthentication'_constructor {_JwtAuthentication'providers :: !(Data.Map.Map Data.Text.Text JwtProvider),
                                    _JwtAuthentication'rules :: !(Data.Vector.Vector RequirementRule),
                                    _JwtAuthentication'filterStateRules :: !(Prelude.Maybe FilterStateRule),
                                    _JwtAuthentication'bypassCorsPreflight :: !Prelude.Bool,
                                    _JwtAuthentication'requirementMap :: !(Data.Map.Map Data.Text.Text JwtRequirement),
                                    _JwtAuthentication'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JwtAuthentication where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField JwtAuthentication "providers" (Data.Map.Map Data.Text.Text JwtProvider) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'providers
           (\ x__ y__ -> x__ {_JwtAuthentication'providers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtAuthentication "rules" [RequirementRule] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'rules
           (\ x__ y__ -> x__ {_JwtAuthentication'rules = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField JwtAuthentication "vec'rules" (Data.Vector.Vector RequirementRule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'rules
           (\ x__ y__ -> x__ {_JwtAuthentication'rules = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtAuthentication "filterStateRules" FilterStateRule where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'filterStateRules
           (\ x__ y__ -> x__ {_JwtAuthentication'filterStateRules = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField JwtAuthentication "maybe'filterStateRules" (Prelude.Maybe FilterStateRule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'filterStateRules
           (\ x__ y__ -> x__ {_JwtAuthentication'filterStateRules = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtAuthentication "bypassCorsPreflight" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'bypassCorsPreflight
           (\ x__ y__ -> x__ {_JwtAuthentication'bypassCorsPreflight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtAuthentication "requirementMap" (Data.Map.Map Data.Text.Text JwtRequirement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'requirementMap
           (\ x__ y__ -> x__ {_JwtAuthentication'requirementMap = y__}))
        Prelude.id
instance Data.ProtoLens.Message JwtAuthentication where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.JwtAuthentication"
  packedMessageDescriptor _
    = "\n\
      \\DC1JwtAuthentication\DC2j\n\
      \\tproviders\CAN\SOH \ETX(\v2L.envoy.extensions.filters.http.jwt_authn.v3.JwtAuthentication.ProvidersEntryR\tproviders\DC2Q\n\
      \\ENQrules\CAN\STX \ETX(\v2;.envoy.extensions.filters.http.jwt_authn.v3.RequirementRuleR\ENQrules\DC2i\n\
      \\DC2filter_state_rules\CAN\ETX \SOH(\v2;.envoy.extensions.filters.http.jwt_authn.v3.FilterStateRuleR\DLEfilterStateRules\DC22\n\
      \\NAKbypass_cors_preflight\CAN\EOT \SOH(\bR\DC3bypassCorsPreflight\DC2z\n\
      \\SIrequirement_map\CAN\ENQ \ETX(\v2Q.envoy.extensions.filters.http.jwt_authn.v3.JwtAuthentication.RequirementMapEntryR\SOrequirementMap\SUBu\n\
      \\SOProvidersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2M\n\
      \\ENQvalue\CAN\STX \SOH(\v27.envoy.extensions.filters.http.jwt_authn.v3.JwtProviderR\ENQvalue:\STX8\SOH\SUB}\n\
      \\DC3RequirementMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2P\n\
      \\ENQvalue\CAN\STX \SOH(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementR\ENQvalue:\STX8\SOH:C\154\197\136\RS>\n\
      \<envoy.config.filter.http.jwt_authn.v2alpha.JwtAuthentication"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        providers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "providers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtAuthentication'ProvidersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"providers")) ::
              Data.ProtoLens.FieldDescriptor JwtAuthentication
        rules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequirementRule)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rules")) ::
              Data.ProtoLens.FieldDescriptor JwtAuthentication
        filterStateRules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_state_rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FilterStateRule)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filterStateRules")) ::
              Data.ProtoLens.FieldDescriptor JwtAuthentication
        bypassCorsPreflight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bypass_cors_preflight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bypassCorsPreflight")) ::
              Data.ProtoLens.FieldDescriptor JwtAuthentication
        requirementMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requirement_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtAuthentication'RequirementMapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"requirementMap")) ::
              Data.ProtoLens.FieldDescriptor JwtAuthentication
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, providers__field_descriptor),
           (Data.ProtoLens.Tag 2, rules__field_descriptor),
           (Data.ProtoLens.Tag 3, filterStateRules__field_descriptor),
           (Data.ProtoLens.Tag 4, bypassCorsPreflight__field_descriptor),
           (Data.ProtoLens.Tag 5, requirementMap__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JwtAuthentication'_unknownFields
        (\ x__ y__ -> x__ {_JwtAuthentication'_unknownFields = y__})
  defMessage
    = JwtAuthentication'_constructor
        {_JwtAuthentication'providers = Data.Map.empty,
         _JwtAuthentication'rules = Data.Vector.Generic.empty,
         _JwtAuthentication'filterStateRules = Prelude.Nothing,
         _JwtAuthentication'bypassCorsPreflight = Data.ProtoLens.fieldDefault,
         _JwtAuthentication'requirementMap = Data.Map.empty,
         _JwtAuthentication'_unknownFields = []}
  parseMessage
    = let
        loop ::
          JwtAuthentication
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RequirementRule
             -> Data.ProtoLens.Encoding.Bytes.Parser JwtAuthentication
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
                          -> do !(entry :: JwtAuthentication'ProvidersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                  (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                      Data.ProtoLens.Encoding.Bytes.isolate
                                                                                        (Prelude.fromIntegral
                                                                                           len)
                                                                                        Data.ProtoLens.parseMessage)
                                                                                  "providers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"providers")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'rules)
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rules"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rules y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter_state_rules"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"filterStateRules") y x)
                                  mutable'rules
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bypass_cors_preflight"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bypassCorsPreflight") y x)
                                  mutable'rules
                        42
                          -> do !(entry :: JwtAuthentication'RequirementMapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                                             (Prelude.fromIntegral
                                                                                                len)
                                                                                             Data.ProtoLens.parseMessage)
                                                                                       "requirement_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"requirementMap")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'rules)
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
          "JwtAuthentication"
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
                                       JwtAuthentication'ProvidersEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"providers") _x))))
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rules") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'filterStateRules") _x
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"bypassCorsPreflight") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      ((Data.Monoid.<>)
                         (Data.Monoid.mconcat
                            (Prelude.map
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"key")
                                             (Prelude.fst _v)
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"value")
                                                (Prelude.snd _v)
                                                (Data.ProtoLens.defMessage ::
                                                   JwtAuthentication'RequirementMapEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"requirementMap") _x))))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData JwtAuthentication where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JwtAuthentication'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_JwtAuthentication'providers x__)
                (Control.DeepSeq.deepseq
                   (_JwtAuthentication'rules x__)
                   (Control.DeepSeq.deepseq
                      (_JwtAuthentication'filterStateRules x__)
                      (Control.DeepSeq.deepseq
                         (_JwtAuthentication'bypassCorsPreflight x__)
                         (Control.DeepSeq.deepseq
                            (_JwtAuthentication'requirementMap x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.key' @:: Lens' JwtAuthentication'ProvidersEntry Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.value' @:: Lens' JwtAuthentication'ProvidersEntry JwtProvider@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'value' @:: Lens' JwtAuthentication'ProvidersEntry (Prelude.Maybe JwtProvider)@ -}
data JwtAuthentication'ProvidersEntry
  = JwtAuthentication'ProvidersEntry'_constructor {_JwtAuthentication'ProvidersEntry'key :: !Data.Text.Text,
                                                   _JwtAuthentication'ProvidersEntry'value :: !(Prelude.Maybe JwtProvider),
                                                   _JwtAuthentication'ProvidersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JwtAuthentication'ProvidersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField JwtAuthentication'ProvidersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'ProvidersEntry'key
           (\ x__ y__ -> x__ {_JwtAuthentication'ProvidersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtAuthentication'ProvidersEntry "value" JwtProvider where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'ProvidersEntry'value
           (\ x__ y__ -> x__ {_JwtAuthentication'ProvidersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField JwtAuthentication'ProvidersEntry "maybe'value" (Prelude.Maybe JwtProvider) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'ProvidersEntry'value
           (\ x__ y__ -> x__ {_JwtAuthentication'ProvidersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message JwtAuthentication'ProvidersEntry where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.JwtAuthentication.ProvidersEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOProvidersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2M\n\
      \\ENQvalue\CAN\STX \SOH(\v27.envoy.extensions.filters.http.jwt_authn.v3.JwtProviderR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor JwtAuthentication'ProvidersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtProvider)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor JwtAuthentication'ProvidersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JwtAuthentication'ProvidersEntry'_unknownFields
        (\ x__ y__
           -> x__ {_JwtAuthentication'ProvidersEntry'_unknownFields = y__})
  defMessage
    = JwtAuthentication'ProvidersEntry'_constructor
        {_JwtAuthentication'ProvidersEntry'key = Data.ProtoLens.fieldDefault,
         _JwtAuthentication'ProvidersEntry'value = Prelude.Nothing,
         _JwtAuthentication'ProvidersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          JwtAuthentication'ProvidersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser JwtAuthentication'ProvidersEntry
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
          (do loop Data.ProtoLens.defMessage) "ProvidersEntry"
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
instance Control.DeepSeq.NFData JwtAuthentication'ProvidersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JwtAuthentication'ProvidersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_JwtAuthentication'ProvidersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_JwtAuthentication'ProvidersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.key' @:: Lens' JwtAuthentication'RequirementMapEntry Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.value' @:: Lens' JwtAuthentication'RequirementMapEntry JwtRequirement@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'value' @:: Lens' JwtAuthentication'RequirementMapEntry (Prelude.Maybe JwtRequirement)@ -}
data JwtAuthentication'RequirementMapEntry
  = JwtAuthentication'RequirementMapEntry'_constructor {_JwtAuthentication'RequirementMapEntry'key :: !Data.Text.Text,
                                                        _JwtAuthentication'RequirementMapEntry'value :: !(Prelude.Maybe JwtRequirement),
                                                        _JwtAuthentication'RequirementMapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JwtAuthentication'RequirementMapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField JwtAuthentication'RequirementMapEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'RequirementMapEntry'key
           (\ x__ y__
              -> x__ {_JwtAuthentication'RequirementMapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtAuthentication'RequirementMapEntry "value" JwtRequirement where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'RequirementMapEntry'value
           (\ x__ y__
              -> x__ {_JwtAuthentication'RequirementMapEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField JwtAuthentication'RequirementMapEntry "maybe'value" (Prelude.Maybe JwtRequirement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtAuthentication'RequirementMapEntry'value
           (\ x__ y__
              -> x__ {_JwtAuthentication'RequirementMapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message JwtAuthentication'RequirementMapEntry where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.JwtAuthentication.RequirementMapEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC3RequirementMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2P\n\
      \\ENQvalue\CAN\STX \SOH(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor JwtAuthentication'RequirementMapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtRequirement)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor JwtAuthentication'RequirementMapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JwtAuthentication'RequirementMapEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_JwtAuthentication'RequirementMapEntry'_unknownFields = y__})
  defMessage
    = JwtAuthentication'RequirementMapEntry'_constructor
        {_JwtAuthentication'RequirementMapEntry'key = Data.ProtoLens.fieldDefault,
         _JwtAuthentication'RequirementMapEntry'value = Prelude.Nothing,
         _JwtAuthentication'RequirementMapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          JwtAuthentication'RequirementMapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser JwtAuthentication'RequirementMapEntry
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
          (do loop Data.ProtoLens.defMessage) "RequirementMapEntry"
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
instance Control.DeepSeq.NFData JwtAuthentication'RequirementMapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JwtAuthentication'RequirementMapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_JwtAuthentication'RequirementMapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_JwtAuthentication'RequirementMapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.name' @:: Lens' JwtHeader Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.valuePrefix' @:: Lens' JwtHeader Data.Text.Text@ -}
data JwtHeader
  = JwtHeader'_constructor {_JwtHeader'name :: !Data.Text.Text,
                            _JwtHeader'valuePrefix :: !Data.Text.Text,
                            _JwtHeader'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JwtHeader where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField JwtHeader "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtHeader'name (\ x__ y__ -> x__ {_JwtHeader'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtHeader "valuePrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtHeader'valuePrefix
           (\ x__ y__ -> x__ {_JwtHeader'valuePrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message JwtHeader where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.JwtHeader"
  packedMessageDescriptor _
    = "\n\
      \\tJwtHeader\DC2!\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\r\250B\n\
      \r\b\DLE\SOH\192\SOH\SOH\200\SOH\NUL\DC2.\n\
      \\fvalue_prefix\CAN\STX \SOH(\tR\vvaluePrefixB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL:;\154\197\136\RS6\n\
      \4envoy.config.filter.http.jwt_authn.v2alpha.JwtHeader"
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
              Data.ProtoLens.FieldDescriptor JwtHeader
        valuePrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"valuePrefix")) ::
              Data.ProtoLens.FieldDescriptor JwtHeader
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, valuePrefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JwtHeader'_unknownFields
        (\ x__ y__ -> x__ {_JwtHeader'_unknownFields = y__})
  defMessage
    = JwtHeader'_constructor
        {_JwtHeader'name = Data.ProtoLens.fieldDefault,
         _JwtHeader'valuePrefix = Data.ProtoLens.fieldDefault,
         _JwtHeader'_unknownFields = []}
  parseMessage
    = let
        loop :: JwtHeader -> Data.ProtoLens.Encoding.Bytes.Parser JwtHeader
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "value_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"valuePrefix") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "JwtHeader"
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
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"valuePrefix") _x
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
instance Control.DeepSeq.NFData JwtHeader where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JwtHeader'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_JwtHeader'name x__)
                (Control.DeepSeq.deepseq (_JwtHeader'valuePrefix x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.issuer' @:: Lens' JwtProvider Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.audiences' @:: Lens' JwtProvider [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.vec'audiences' @:: Lens' JwtProvider (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.forward' @:: Lens' JwtProvider Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.fromHeaders' @:: Lens' JwtProvider [JwtHeader]@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.vec'fromHeaders' @:: Lens' JwtProvider (Data.Vector.Vector JwtHeader)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.fromParams' @:: Lens' JwtProvider [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.vec'fromParams' @:: Lens' JwtProvider (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.forwardPayloadHeader' @:: Lens' JwtProvider Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.padForwardPayloadHeader' @:: Lens' JwtProvider Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.payloadInMetadata' @:: Lens' JwtProvider Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.clockSkewSeconds' @:: Lens' JwtProvider Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'jwksSourceSpecifier' @:: Lens' JwtProvider (Prelude.Maybe JwtProvider'JwksSourceSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'remoteJwks' @:: Lens' JwtProvider (Prelude.Maybe RemoteJwks)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.remoteJwks' @:: Lens' JwtProvider RemoteJwks@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'localJwks' @:: Lens' JwtProvider (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.localJwks' @:: Lens' JwtProvider Proto.Envoy.Config.Core.V3.Base.DataSource@ -}
data JwtProvider
  = JwtProvider'_constructor {_JwtProvider'issuer :: !Data.Text.Text,
                              _JwtProvider'audiences :: !(Data.Vector.Vector Data.Text.Text),
                              _JwtProvider'forward :: !Prelude.Bool,
                              _JwtProvider'fromHeaders :: !(Data.Vector.Vector JwtHeader),
                              _JwtProvider'fromParams :: !(Data.Vector.Vector Data.Text.Text),
                              _JwtProvider'forwardPayloadHeader :: !Data.Text.Text,
                              _JwtProvider'padForwardPayloadHeader :: !Prelude.Bool,
                              _JwtProvider'payloadInMetadata :: !Data.Text.Text,
                              _JwtProvider'clockSkewSeconds :: !Data.Word.Word32,
                              _JwtProvider'jwksSourceSpecifier :: !(Prelude.Maybe JwtProvider'JwksSourceSpecifier),
                              _JwtProvider'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JwtProvider where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data JwtProvider'JwksSourceSpecifier
  = JwtProvider'RemoteJwks !RemoteJwks |
    JwtProvider'LocalJwks !Proto.Envoy.Config.Core.V3.Base.DataSource
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField JwtProvider "issuer" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'issuer (\ x__ y__ -> x__ {_JwtProvider'issuer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtProvider "audiences" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'audiences
           (\ x__ y__ -> x__ {_JwtProvider'audiences = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField JwtProvider "vec'audiences" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'audiences
           (\ x__ y__ -> x__ {_JwtProvider'audiences = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtProvider "forward" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'forward
           (\ x__ y__ -> x__ {_JwtProvider'forward = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtProvider "fromHeaders" [JwtHeader] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'fromHeaders
           (\ x__ y__ -> x__ {_JwtProvider'fromHeaders = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField JwtProvider "vec'fromHeaders" (Data.Vector.Vector JwtHeader) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'fromHeaders
           (\ x__ y__ -> x__ {_JwtProvider'fromHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtProvider "fromParams" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'fromParams
           (\ x__ y__ -> x__ {_JwtProvider'fromParams = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField JwtProvider "vec'fromParams" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'fromParams
           (\ x__ y__ -> x__ {_JwtProvider'fromParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtProvider "forwardPayloadHeader" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'forwardPayloadHeader
           (\ x__ y__ -> x__ {_JwtProvider'forwardPayloadHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtProvider "padForwardPayloadHeader" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'padForwardPayloadHeader
           (\ x__ y__ -> x__ {_JwtProvider'padForwardPayloadHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtProvider "payloadInMetadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'payloadInMetadata
           (\ x__ y__ -> x__ {_JwtProvider'payloadInMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtProvider "clockSkewSeconds" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'clockSkewSeconds
           (\ x__ y__ -> x__ {_JwtProvider'clockSkewSeconds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtProvider "maybe'jwksSourceSpecifier" (Prelude.Maybe JwtProvider'JwksSourceSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'jwksSourceSpecifier
           (\ x__ y__ -> x__ {_JwtProvider'jwksSourceSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtProvider "maybe'remoteJwks" (Prelude.Maybe RemoteJwks) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'jwksSourceSpecifier
           (\ x__ y__ -> x__ {_JwtProvider'jwksSourceSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (JwtProvider'RemoteJwks x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap JwtProvider'RemoteJwks y__))
instance Data.ProtoLens.Field.HasField JwtProvider "remoteJwks" RemoteJwks where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'jwksSourceSpecifier
           (\ x__ y__ -> x__ {_JwtProvider'jwksSourceSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (JwtProvider'RemoteJwks x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap JwtProvider'RemoteJwks y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField JwtProvider "maybe'localJwks" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'jwksSourceSpecifier
           (\ x__ y__ -> x__ {_JwtProvider'jwksSourceSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (JwtProvider'LocalJwks x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap JwtProvider'LocalJwks y__))
instance Data.ProtoLens.Field.HasField JwtProvider "localJwks" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtProvider'jwksSourceSpecifier
           (\ x__ y__ -> x__ {_JwtProvider'jwksSourceSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (JwtProvider'LocalJwks x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap JwtProvider'LocalJwks y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message JwtProvider where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.JwtProvider"
  packedMessageDescriptor _
    = "\n\
      \\vJwtProvider\DC2\SYN\n\
      \\ACKissuer\CAN\SOH \SOH(\tR\ACKissuer\DC2\FS\n\
      \\taudiences\CAN\STX \ETX(\tR\taudiences\DC2Y\n\
      \\vremote_jwks\CAN\ETX \SOH(\v26.envoy.extensions.filters.http.jwt_authn.v3.RemoteJwksH\NULR\n\
      \remoteJwks\DC2A\n\
      \\n\
      \local_jwks\CAN\EOT \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\tlocalJwks\DC2\CAN\n\
      \\aforward\CAN\ENQ \SOH(\bR\aforward\DC2X\n\
      \\ffrom_headers\CAN\ACK \ETX(\v25.envoy.extensions.filters.http.jwt_authn.v3.JwtHeaderR\vfromHeaders\DC2\US\n\
      \\vfrom_params\CAN\a \ETX(\tR\n\
      \fromParams\DC2A\n\
      \\SYNforward_payload_header\CAN\b \SOH(\tR\DC4forwardPayloadHeaderB\v\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2;\n\
      \\SUBpad_forward_payload_header\CAN\v \SOH(\bR\ETBpadForwardPayloadHeader\DC2.\n\
      \\DC3payload_in_metadata\CAN\t \SOH(\tR\DC1payloadInMetadata\DC2,\n\
      \\DC2clock_skew_seconds\CAN\n\
      \ \SOH(\rR\DLEclockSkewSecondsB\FS\n\
      \\NAKjwks_source_specifier\DC2\ETX\248B\SOH:=\154\197\136\RS8\n\
      \6envoy.config.filter.http.jwt_authn.v2alpha.JwtProvider"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        issuer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "issuer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"issuer")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
        audiences__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "audiences"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"audiences")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
        forward__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "forward"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"forward")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
        fromHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtHeader)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"fromHeaders")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
        fromParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from_params"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"fromParams")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
        forwardPayloadHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "forward_payload_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"forwardPayloadHeader")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
        padForwardPayloadHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pad_forward_payload_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"padForwardPayloadHeader")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
        payloadInMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload_in_metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"payloadInMetadata")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
        clockSkewSeconds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clock_skew_seconds"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clockSkewSeconds")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
        remoteJwks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remote_jwks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RemoteJwks)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'remoteJwks")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
        localJwks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_jwks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localJwks")) ::
              Data.ProtoLens.FieldDescriptor JwtProvider
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, issuer__field_descriptor),
           (Data.ProtoLens.Tag 2, audiences__field_descriptor),
           (Data.ProtoLens.Tag 5, forward__field_descriptor),
           (Data.ProtoLens.Tag 6, fromHeaders__field_descriptor),
           (Data.ProtoLens.Tag 7, fromParams__field_descriptor),
           (Data.ProtoLens.Tag 8, forwardPayloadHeader__field_descriptor),
           (Data.ProtoLens.Tag 11, padForwardPayloadHeader__field_descriptor),
           (Data.ProtoLens.Tag 9, payloadInMetadata__field_descriptor),
           (Data.ProtoLens.Tag 10, clockSkewSeconds__field_descriptor),
           (Data.ProtoLens.Tag 3, remoteJwks__field_descriptor),
           (Data.ProtoLens.Tag 4, localJwks__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JwtProvider'_unknownFields
        (\ x__ y__ -> x__ {_JwtProvider'_unknownFields = y__})
  defMessage
    = JwtProvider'_constructor
        {_JwtProvider'issuer = Data.ProtoLens.fieldDefault,
         _JwtProvider'audiences = Data.Vector.Generic.empty,
         _JwtProvider'forward = Data.ProtoLens.fieldDefault,
         _JwtProvider'fromHeaders = Data.Vector.Generic.empty,
         _JwtProvider'fromParams = Data.Vector.Generic.empty,
         _JwtProvider'forwardPayloadHeader = Data.ProtoLens.fieldDefault,
         _JwtProvider'padForwardPayloadHeader = Data.ProtoLens.fieldDefault,
         _JwtProvider'payloadInMetadata = Data.ProtoLens.fieldDefault,
         _JwtProvider'clockSkewSeconds = Data.ProtoLens.fieldDefault,
         _JwtProvider'jwksSourceSpecifier = Prelude.Nothing,
         _JwtProvider'_unknownFields = []}
  parseMessage
    = let
        loop ::
          JwtProvider
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld JwtHeader
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                   -> Data.ProtoLens.Encoding.Bytes.Parser JwtProvider
        loop x mutable'audiences mutable'fromHeaders mutable'fromParams
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'audiences <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'audiences)
                      frozen'fromHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'fromHeaders)
                      frozen'fromParams <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'fromParams)
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
                              (Data.ProtoLens.Field.field @"vec'audiences")
                              frozen'audiences
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'fromHeaders")
                                 frozen'fromHeaders
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'fromParams")
                                    frozen'fromParams
                                    x))))
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
                                       "issuer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"issuer") y x)
                                  mutable'audiences
                                  mutable'fromHeaders
                                  mutable'fromParams
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
                                        "audiences"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'audiences y)
                                loop x v mutable'fromHeaders mutable'fromParams
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "forward"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"forward") y x)
                                  mutable'audiences
                                  mutable'fromHeaders
                                  mutable'fromParams
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "from_headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'fromHeaders y)
                                loop x mutable'audiences v mutable'fromParams
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "from_params"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fromParams y)
                                loop x mutable'audiences mutable'fromHeaders v
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "forward_payload_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"forwardPayloadHeader") y x)
                                  mutable'audiences
                                  mutable'fromHeaders
                                  mutable'fromParams
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pad_forward_payload_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"padForwardPayloadHeader") y x)
                                  mutable'audiences
                                  mutable'fromHeaders
                                  mutable'fromParams
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "payload_in_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"payloadInMetadata") y x)
                                  mutable'audiences
                                  mutable'fromHeaders
                                  mutable'fromParams
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "clock_skew_seconds"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clockSkewSeconds") y x)
                                  mutable'audiences
                                  mutable'fromHeaders
                                  mutable'fromParams
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "remote_jwks"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"remoteJwks") y x)
                                  mutable'audiences
                                  mutable'fromHeaders
                                  mutable'fromParams
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local_jwks"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"localJwks") y x)
                                  mutable'audiences
                                  mutable'fromHeaders
                                  mutable'fromParams
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'audiences
                                  mutable'fromHeaders
                                  mutable'fromParams
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'audiences <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'fromHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'fromParams <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'audiences
                mutable'fromHeaders
                mutable'fromParams)
          "JwtProvider"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"issuer") _x
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
                      (Data.ProtoLens.Field.field @"vec'audiences") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"forward") _x
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
                            (Data.ProtoLens.Field.field @"vec'fromHeaders") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
                               (Data.ProtoLens.Field.field @"vec'fromParams") _x))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"forwardPayloadHeader") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
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
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"padForwardPayloadHeader") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0)
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"payloadInMetadata") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"clockSkewSeconds") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'jwksSourceSpecifier")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just (JwtProvider'RemoteJwks v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage
                                                     v)
                                           (Prelude.Just (JwtProvider'LocalJwks v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage
                                                     v))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData JwtProvider where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JwtProvider'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_JwtProvider'issuer x__)
                (Control.DeepSeq.deepseq
                   (_JwtProvider'audiences x__)
                   (Control.DeepSeq.deepseq
                      (_JwtProvider'forward x__)
                      (Control.DeepSeq.deepseq
                         (_JwtProvider'fromHeaders x__)
                         (Control.DeepSeq.deepseq
                            (_JwtProvider'fromParams x__)
                            (Control.DeepSeq.deepseq
                               (_JwtProvider'forwardPayloadHeader x__)
                               (Control.DeepSeq.deepseq
                                  (_JwtProvider'padForwardPayloadHeader x__)
                                  (Control.DeepSeq.deepseq
                                     (_JwtProvider'payloadInMetadata x__)
                                     (Control.DeepSeq.deepseq
                                        (_JwtProvider'clockSkewSeconds x__)
                                        (Control.DeepSeq.deepseq
                                           (_JwtProvider'jwksSourceSpecifier x__) ()))))))))))
instance Control.DeepSeq.NFData JwtProvider'JwksSourceSpecifier where
  rnf (JwtProvider'RemoteJwks x__) = Control.DeepSeq.rnf x__
  rnf (JwtProvider'LocalJwks x__) = Control.DeepSeq.rnf x__
_JwtProvider'RemoteJwks ::
  Data.ProtoLens.Prism.Prism' JwtProvider'JwksSourceSpecifier RemoteJwks
_JwtProvider'RemoteJwks
  = Data.ProtoLens.Prism.prism'
      JwtProvider'RemoteJwks
      (\ p__
         -> case p__ of
              (JwtProvider'RemoteJwks p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_JwtProvider'LocalJwks ::
  Data.ProtoLens.Prism.Prism' JwtProvider'JwksSourceSpecifier Proto.Envoy.Config.Core.V3.Base.DataSource
_JwtProvider'LocalJwks
  = Data.ProtoLens.Prism.prism'
      JwtProvider'LocalJwks
      (\ p__
         -> case p__ of
              (JwtProvider'LocalJwks p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'requiresType' @:: Lens' JwtRequirement (Prelude.Maybe JwtRequirement'RequiresType)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'providerName' @:: Lens' JwtRequirement (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.providerName' @:: Lens' JwtRequirement Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'providerAndAudiences' @:: Lens' JwtRequirement (Prelude.Maybe ProviderWithAudiences)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.providerAndAudiences' @:: Lens' JwtRequirement ProviderWithAudiences@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'requiresAny' @:: Lens' JwtRequirement (Prelude.Maybe JwtRequirementOrList)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.requiresAny' @:: Lens' JwtRequirement JwtRequirementOrList@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'requiresAll' @:: Lens' JwtRequirement (Prelude.Maybe JwtRequirementAndList)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.requiresAll' @:: Lens' JwtRequirement JwtRequirementAndList@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'allowMissingOrFailed' @:: Lens' JwtRequirement (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.allowMissingOrFailed' @:: Lens' JwtRequirement Proto.Google.Protobuf.Empty.Empty@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'allowMissing' @:: Lens' JwtRequirement (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.allowMissing' @:: Lens' JwtRequirement Proto.Google.Protobuf.Empty.Empty@ -}
data JwtRequirement
  = JwtRequirement'_constructor {_JwtRequirement'requiresType :: !(Prelude.Maybe JwtRequirement'RequiresType),
                                 _JwtRequirement'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JwtRequirement where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data JwtRequirement'RequiresType
  = JwtRequirement'ProviderName !Data.Text.Text |
    JwtRequirement'ProviderAndAudiences !ProviderWithAudiences |
    JwtRequirement'RequiresAny !JwtRequirementOrList |
    JwtRequirement'RequiresAll !JwtRequirementAndList |
    JwtRequirement'AllowMissingOrFailed !Proto.Google.Protobuf.Empty.Empty |
    JwtRequirement'AllowMissing !Proto.Google.Protobuf.Empty.Empty
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField JwtRequirement "maybe'requiresType" (Prelude.Maybe JwtRequirement'RequiresType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JwtRequirement "maybe'providerName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (JwtRequirement'ProviderName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap JwtRequirement'ProviderName y__))
instance Data.ProtoLens.Field.HasField JwtRequirement "providerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (JwtRequirement'ProviderName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap JwtRequirement'ProviderName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField JwtRequirement "maybe'providerAndAudiences" (Prelude.Maybe ProviderWithAudiences) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (JwtRequirement'ProviderAndAudiences x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap JwtRequirement'ProviderAndAudiences y__))
instance Data.ProtoLens.Field.HasField JwtRequirement "providerAndAudiences" ProviderWithAudiences where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (JwtRequirement'ProviderAndAudiences x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap JwtRequirement'ProviderAndAudiences y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField JwtRequirement "maybe'requiresAny" (Prelude.Maybe JwtRequirementOrList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (JwtRequirement'RequiresAny x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap JwtRequirement'RequiresAny y__))
instance Data.ProtoLens.Field.HasField JwtRequirement "requiresAny" JwtRequirementOrList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (JwtRequirement'RequiresAny x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap JwtRequirement'RequiresAny y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField JwtRequirement "maybe'requiresAll" (Prelude.Maybe JwtRequirementAndList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (JwtRequirement'RequiresAll x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap JwtRequirement'RequiresAll y__))
instance Data.ProtoLens.Field.HasField JwtRequirement "requiresAll" JwtRequirementAndList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (JwtRequirement'RequiresAll x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap JwtRequirement'RequiresAll y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField JwtRequirement "maybe'allowMissingOrFailed" (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (JwtRequirement'AllowMissingOrFailed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap JwtRequirement'AllowMissingOrFailed y__))
instance Data.ProtoLens.Field.HasField JwtRequirement "allowMissingOrFailed" Proto.Google.Protobuf.Empty.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (JwtRequirement'AllowMissingOrFailed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap JwtRequirement'AllowMissingOrFailed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField JwtRequirement "maybe'allowMissing" (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (JwtRequirement'AllowMissing x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap JwtRequirement'AllowMissing y__))
instance Data.ProtoLens.Field.HasField JwtRequirement "allowMissing" Proto.Google.Protobuf.Empty.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirement'requiresType
           (\ x__ y__ -> x__ {_JwtRequirement'requiresType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (JwtRequirement'AllowMissing x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap JwtRequirement'AllowMissing y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message JwtRequirement where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.JwtRequirement"
  packedMessageDescriptor _
    = "\n\
      \\SOJwtRequirement\DC2%\n\
      \\rprovider_name\CAN\SOH \SOH(\tH\NULR\fproviderName\DC2y\n\
      \\SYNprovider_and_audiences\CAN\STX \SOH(\v2A.envoy.extensions.filters.http.jwt_authn.v3.ProviderWithAudiencesH\NULR\DC4providerAndAudiences\DC2e\n\
      \\frequires_any\CAN\ETX \SOH(\v2@.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementOrListH\NULR\vrequiresAny\DC2f\n\
      \\frequires_all\CAN\EOT \SOH(\v2A.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementAndListH\NULR\vrequiresAll\DC2O\n\
      \\ETBallow_missing_or_failed\CAN\ENQ \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\DC4allowMissingOrFailed\DC2=\n\
      \\rallow_missing\CAN\ACK \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\fallowMissingB\SI\n\
      \\rrequires_type:@\154\197\136\RS;\n\
      \9envoy.config.filter.http.jwt_authn.v2alpha.JwtRequirement"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        providerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "provider_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'providerName")) ::
              Data.ProtoLens.FieldDescriptor JwtRequirement
        providerAndAudiences__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "provider_and_audiences"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProviderWithAudiences)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'providerAndAudiences")) ::
              Data.ProtoLens.FieldDescriptor JwtRequirement
        requiresAny__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requires_any"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtRequirementOrList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requiresAny")) ::
              Data.ProtoLens.FieldDescriptor JwtRequirement
        requiresAll__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requires_all"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtRequirementAndList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requiresAll")) ::
              Data.ProtoLens.FieldDescriptor JwtRequirement
        allowMissingOrFailed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_missing_or_failed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Empty.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowMissingOrFailed")) ::
              Data.ProtoLens.FieldDescriptor JwtRequirement
        allowMissing__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_missing"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Empty.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowMissing")) ::
              Data.ProtoLens.FieldDescriptor JwtRequirement
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, providerName__field_descriptor),
           (Data.ProtoLens.Tag 2, providerAndAudiences__field_descriptor),
           (Data.ProtoLens.Tag 3, requiresAny__field_descriptor),
           (Data.ProtoLens.Tag 4, requiresAll__field_descriptor),
           (Data.ProtoLens.Tag 5, allowMissingOrFailed__field_descriptor),
           (Data.ProtoLens.Tag 6, allowMissing__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JwtRequirement'_unknownFields
        (\ x__ y__ -> x__ {_JwtRequirement'_unknownFields = y__})
  defMessage
    = JwtRequirement'_constructor
        {_JwtRequirement'requiresType = Prelude.Nothing,
         _JwtRequirement'_unknownFields = []}
  parseMessage
    = let
        loop ::
          JwtRequirement
          -> Data.ProtoLens.Encoding.Bytes.Parser JwtRequirement
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
                                       "provider_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"providerName") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "provider_and_audiences"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"providerAndAudiences") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "requires_any"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requiresAny") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "requires_all"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requiresAll") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "allow_missing_or_failed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowMissingOrFailed") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "allow_missing"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowMissing") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "JwtRequirement"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'requiresType") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (JwtRequirement'ProviderName v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (JwtRequirement'ProviderAndAudiences v))
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
                (Prelude.Just (JwtRequirement'RequiresAny v))
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
                (Prelude.Just (JwtRequirement'RequiresAll v))
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
                (Prelude.Just (JwtRequirement'AllowMissingOrFailed v))
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
                (Prelude.Just (JwtRequirement'AllowMissing v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
instance Control.DeepSeq.NFData JwtRequirement where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JwtRequirement'_unknownFields x__)
             (Control.DeepSeq.deepseq (_JwtRequirement'requiresType x__) ())
instance Control.DeepSeq.NFData JwtRequirement'RequiresType where
  rnf (JwtRequirement'ProviderName x__) = Control.DeepSeq.rnf x__
  rnf (JwtRequirement'ProviderAndAudiences x__)
    = Control.DeepSeq.rnf x__
  rnf (JwtRequirement'RequiresAny x__) = Control.DeepSeq.rnf x__
  rnf (JwtRequirement'RequiresAll x__) = Control.DeepSeq.rnf x__
  rnf (JwtRequirement'AllowMissingOrFailed x__)
    = Control.DeepSeq.rnf x__
  rnf (JwtRequirement'AllowMissing x__) = Control.DeepSeq.rnf x__
_JwtRequirement'ProviderName ::
  Data.ProtoLens.Prism.Prism' JwtRequirement'RequiresType Data.Text.Text
_JwtRequirement'ProviderName
  = Data.ProtoLens.Prism.prism'
      JwtRequirement'ProviderName
      (\ p__
         -> case p__ of
              (JwtRequirement'ProviderName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_JwtRequirement'ProviderAndAudiences ::
  Data.ProtoLens.Prism.Prism' JwtRequirement'RequiresType ProviderWithAudiences
_JwtRequirement'ProviderAndAudiences
  = Data.ProtoLens.Prism.prism'
      JwtRequirement'ProviderAndAudiences
      (\ p__
         -> case p__ of
              (JwtRequirement'ProviderAndAudiences p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_JwtRequirement'RequiresAny ::
  Data.ProtoLens.Prism.Prism' JwtRequirement'RequiresType JwtRequirementOrList
_JwtRequirement'RequiresAny
  = Data.ProtoLens.Prism.prism'
      JwtRequirement'RequiresAny
      (\ p__
         -> case p__ of
              (JwtRequirement'RequiresAny p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_JwtRequirement'RequiresAll ::
  Data.ProtoLens.Prism.Prism' JwtRequirement'RequiresType JwtRequirementAndList
_JwtRequirement'RequiresAll
  = Data.ProtoLens.Prism.prism'
      JwtRequirement'RequiresAll
      (\ p__
         -> case p__ of
              (JwtRequirement'RequiresAll p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_JwtRequirement'AllowMissingOrFailed ::
  Data.ProtoLens.Prism.Prism' JwtRequirement'RequiresType Proto.Google.Protobuf.Empty.Empty
_JwtRequirement'AllowMissingOrFailed
  = Data.ProtoLens.Prism.prism'
      JwtRequirement'AllowMissingOrFailed
      (\ p__
         -> case p__ of
              (JwtRequirement'AllowMissingOrFailed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_JwtRequirement'AllowMissing ::
  Data.ProtoLens.Prism.Prism' JwtRequirement'RequiresType Proto.Google.Protobuf.Empty.Empty
_JwtRequirement'AllowMissing
  = Data.ProtoLens.Prism.prism'
      JwtRequirement'AllowMissing
      (\ p__
         -> case p__ of
              (JwtRequirement'AllowMissing p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.requirements' @:: Lens' JwtRequirementAndList [JwtRequirement]@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.vec'requirements' @:: Lens' JwtRequirementAndList (Data.Vector.Vector JwtRequirement)@ -}
data JwtRequirementAndList
  = JwtRequirementAndList'_constructor {_JwtRequirementAndList'requirements :: !(Data.Vector.Vector JwtRequirement),
                                        _JwtRequirementAndList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JwtRequirementAndList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField JwtRequirementAndList "requirements" [JwtRequirement] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirementAndList'requirements
           (\ x__ y__ -> x__ {_JwtRequirementAndList'requirements = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField JwtRequirementAndList "vec'requirements" (Data.Vector.Vector JwtRequirement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirementAndList'requirements
           (\ x__ y__ -> x__ {_JwtRequirementAndList'requirements = y__}))
        Prelude.id
instance Data.ProtoLens.Message JwtRequirementAndList where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementAndList"
  packedMessageDescriptor _
    = "\n\
      \\NAKJwtRequirementAndList\DC2h\n\
      \\frequirements\CAN\SOH \ETX(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementR\frequirementsB\b\250B\ENQ\146\SOH\STX\b\STX:G\154\197\136\RSB\n\
      \@envoy.config.filter.http.jwt_authn.v2alpha.JwtRequirementAndList"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requirements__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requirements"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtRequirement)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requirements")) ::
              Data.ProtoLens.FieldDescriptor JwtRequirementAndList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requirements__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JwtRequirementAndList'_unknownFields
        (\ x__ y__ -> x__ {_JwtRequirementAndList'_unknownFields = y__})
  defMessage
    = JwtRequirementAndList'_constructor
        {_JwtRequirementAndList'requirements = Data.Vector.Generic.empty,
         _JwtRequirementAndList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          JwtRequirementAndList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld JwtRequirement
             -> Data.ProtoLens.Encoding.Bytes.Parser JwtRequirementAndList
        loop x mutable'requirements
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'requirements <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'requirements)
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
                              (Data.ProtoLens.Field.field @"vec'requirements")
                              frozen'requirements
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "requirements"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requirements y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'requirements
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'requirements <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'requirements)
          "JwtRequirementAndList"
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
                   (Data.ProtoLens.Field.field @"vec'requirements") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData JwtRequirementAndList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JwtRequirementAndList'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_JwtRequirementAndList'requirements x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.requirements' @:: Lens' JwtRequirementOrList [JwtRequirement]@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.vec'requirements' @:: Lens' JwtRequirementOrList (Data.Vector.Vector JwtRequirement)@ -}
data JwtRequirementOrList
  = JwtRequirementOrList'_constructor {_JwtRequirementOrList'requirements :: !(Data.Vector.Vector JwtRequirement),
                                       _JwtRequirementOrList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JwtRequirementOrList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField JwtRequirementOrList "requirements" [JwtRequirement] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirementOrList'requirements
           (\ x__ y__ -> x__ {_JwtRequirementOrList'requirements = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField JwtRequirementOrList "vec'requirements" (Data.Vector.Vector JwtRequirement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JwtRequirementOrList'requirements
           (\ x__ y__ -> x__ {_JwtRequirementOrList'requirements = y__}))
        Prelude.id
instance Data.ProtoLens.Message JwtRequirementOrList where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementOrList"
  packedMessageDescriptor _
    = "\n\
      \\DC4JwtRequirementOrList\DC2h\n\
      \\frequirements\CAN\SOH \ETX(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementR\frequirementsB\b\250B\ENQ\146\SOH\STX\b\STX:F\154\197\136\RSA\n\
      \?envoy.config.filter.http.jwt_authn.v2alpha.JwtRequirementOrList"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requirements__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requirements"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtRequirement)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requirements")) ::
              Data.ProtoLens.FieldDescriptor JwtRequirementOrList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requirements__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JwtRequirementOrList'_unknownFields
        (\ x__ y__ -> x__ {_JwtRequirementOrList'_unknownFields = y__})
  defMessage
    = JwtRequirementOrList'_constructor
        {_JwtRequirementOrList'requirements = Data.Vector.Generic.empty,
         _JwtRequirementOrList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          JwtRequirementOrList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld JwtRequirement
             -> Data.ProtoLens.Encoding.Bytes.Parser JwtRequirementOrList
        loop x mutable'requirements
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'requirements <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'requirements)
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
                              (Data.ProtoLens.Field.field @"vec'requirements")
                              frozen'requirements
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "requirements"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requirements y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'requirements
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'requirements <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'requirements)
          "JwtRequirementOrList"
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
                   (Data.ProtoLens.Field.field @"vec'requirements") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData JwtRequirementOrList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JwtRequirementOrList'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_JwtRequirementOrList'requirements x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'requirementSpecifier' @:: Lens' PerRouteConfig (Prelude.Maybe PerRouteConfig'RequirementSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'disabled' @:: Lens' PerRouteConfig (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.disabled' @:: Lens' PerRouteConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'requirementName' @:: Lens' PerRouteConfig (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.requirementName' @:: Lens' PerRouteConfig Data.Text.Text@ -}
data PerRouteConfig
  = PerRouteConfig'_constructor {_PerRouteConfig'requirementSpecifier :: !(Prelude.Maybe PerRouteConfig'RequirementSpecifier),
                                 _PerRouteConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerRouteConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PerRouteConfig'RequirementSpecifier
  = PerRouteConfig'Disabled !Prelude.Bool |
    PerRouteConfig'RequirementName !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PerRouteConfig "maybe'requirementSpecifier" (Prelude.Maybe PerRouteConfig'RequirementSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'requirementSpecifier
           (\ x__ y__ -> x__ {_PerRouteConfig'requirementSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerRouteConfig "maybe'disabled" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'requirementSpecifier
           (\ x__ y__ -> x__ {_PerRouteConfig'requirementSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerRouteConfig'Disabled x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerRouteConfig'Disabled y__))
instance Data.ProtoLens.Field.HasField PerRouteConfig "disabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'requirementSpecifier
           (\ x__ y__ -> x__ {_PerRouteConfig'requirementSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerRouteConfig'Disabled x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerRouteConfig'Disabled y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField PerRouteConfig "maybe'requirementName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'requirementSpecifier
           (\ x__ y__ -> x__ {_PerRouteConfig'requirementSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerRouteConfig'RequirementName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerRouteConfig'RequirementName y__))
instance Data.ProtoLens.Field.HasField PerRouteConfig "requirementName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'requirementSpecifier
           (\ x__ y__ -> x__ {_PerRouteConfig'requirementSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerRouteConfig'RequirementName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerRouteConfig'RequirementName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message PerRouteConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.PerRouteConfig"
  packedMessageDescriptor _
    = "\n\
      \\SOPerRouteConfig\DC2%\n\
      \\bdisabled\CAN\SOH \SOH(\bH\NULR\bdisabledB\a\250B\EOTj\STX\b\SOH\DC24\n\
      \\DLErequirement_name\CAN\STX \SOH(\tH\NULR\SIrequirementNameB\a\250B\EOTr\STX\DLE\SOHB\FS\n\
      \\NAKrequirement_specifier\DC2\ETX\248B\SOH"
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
              Data.ProtoLens.FieldDescriptor PerRouteConfig
        requirementName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requirement_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requirementName")) ::
              Data.ProtoLens.FieldDescriptor PerRouteConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, disabled__field_descriptor),
           (Data.ProtoLens.Tag 2, requirementName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerRouteConfig'_unknownFields
        (\ x__ y__ -> x__ {_PerRouteConfig'_unknownFields = y__})
  defMessage
    = PerRouteConfig'_constructor
        {_PerRouteConfig'requirementSpecifier = Prelude.Nothing,
         _PerRouteConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerRouteConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser PerRouteConfig
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "requirement_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requirementName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PerRouteConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'requirementSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (PerRouteConfig'Disabled v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (PerRouteConfig'RequirementName v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PerRouteConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PerRouteConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PerRouteConfig'requirementSpecifier x__) ())
instance Control.DeepSeq.NFData PerRouteConfig'RequirementSpecifier where
  rnf (PerRouteConfig'Disabled x__) = Control.DeepSeq.rnf x__
  rnf (PerRouteConfig'RequirementName x__) = Control.DeepSeq.rnf x__
_PerRouteConfig'Disabled ::
  Data.ProtoLens.Prism.Prism' PerRouteConfig'RequirementSpecifier Prelude.Bool
_PerRouteConfig'Disabled
  = Data.ProtoLens.Prism.prism'
      PerRouteConfig'Disabled
      (\ p__
         -> case p__ of
              (PerRouteConfig'Disabled p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PerRouteConfig'RequirementName ::
  Data.ProtoLens.Prism.Prism' PerRouteConfig'RequirementSpecifier Data.Text.Text
_PerRouteConfig'RequirementName
  = Data.ProtoLens.Prism.prism'
      PerRouteConfig'RequirementName
      (\ p__
         -> case p__ of
              (PerRouteConfig'RequirementName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.providerName' @:: Lens' ProviderWithAudiences Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.audiences' @:: Lens' ProviderWithAudiences [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.vec'audiences' @:: Lens' ProviderWithAudiences (Data.Vector.Vector Data.Text.Text)@ -}
data ProviderWithAudiences
  = ProviderWithAudiences'_constructor {_ProviderWithAudiences'providerName :: !Data.Text.Text,
                                        _ProviderWithAudiences'audiences :: !(Data.Vector.Vector Data.Text.Text),
                                        _ProviderWithAudiences'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProviderWithAudiences where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProviderWithAudiences "providerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProviderWithAudiences'providerName
           (\ x__ y__ -> x__ {_ProviderWithAudiences'providerName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProviderWithAudiences "audiences" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProviderWithAudiences'audiences
           (\ x__ y__ -> x__ {_ProviderWithAudiences'audiences = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProviderWithAudiences "vec'audiences" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProviderWithAudiences'audiences
           (\ x__ y__ -> x__ {_ProviderWithAudiences'audiences = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProviderWithAudiences where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.ProviderWithAudiences"
  packedMessageDescriptor _
    = "\n\
      \\NAKProviderWithAudiences\DC2#\n\
      \\rprovider_name\CAN\SOH \SOH(\tR\fproviderName\DC2\FS\n\
      \\taudiences\CAN\STX \ETX(\tR\taudiences:G\154\197\136\RSB\n\
      \@envoy.config.filter.http.jwt_authn.v2alpha.ProviderWithAudiences"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        providerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "provider_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"providerName")) ::
              Data.ProtoLens.FieldDescriptor ProviderWithAudiences
        audiences__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "audiences"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"audiences")) ::
              Data.ProtoLens.FieldDescriptor ProviderWithAudiences
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, providerName__field_descriptor),
           (Data.ProtoLens.Tag 2, audiences__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProviderWithAudiences'_unknownFields
        (\ x__ y__ -> x__ {_ProviderWithAudiences'_unknownFields = y__})
  defMessage
    = ProviderWithAudiences'_constructor
        {_ProviderWithAudiences'providerName = Data.ProtoLens.fieldDefault,
         _ProviderWithAudiences'audiences = Data.Vector.Generic.empty,
         _ProviderWithAudiences'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProviderWithAudiences
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ProviderWithAudiences
        loop x mutable'audiences
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'audiences <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'audiences)
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
                              (Data.ProtoLens.Field.field @"vec'audiences") frozen'audiences x))
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
                                       "provider_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"providerName") y x)
                                  mutable'audiences
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
                                        "audiences"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'audiences y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'audiences
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'audiences <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'audiences)
          "ProviderWithAudiences"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"providerName") _x
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
                      (Data.ProtoLens.Field.field @"vec'audiences") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ProviderWithAudiences where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProviderWithAudiences'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProviderWithAudiences'providerName x__)
                (Control.DeepSeq.deepseq
                   (_ProviderWithAudiences'audiences x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.httpUri' @:: Lens' RemoteJwks Proto.Envoy.Config.Core.V3.HttpUri.HttpUri@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'httpUri' @:: Lens' RemoteJwks (Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.cacheDuration' @:: Lens' RemoteJwks Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'cacheDuration' @:: Lens' RemoteJwks (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.asyncFetch' @:: Lens' RemoteJwks JwksAsyncFetch@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'asyncFetch' @:: Lens' RemoteJwks (Prelude.Maybe JwksAsyncFetch)@ -}
data RemoteJwks
  = RemoteJwks'_constructor {_RemoteJwks'httpUri :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri),
                             _RemoteJwks'cacheDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                             _RemoteJwks'asyncFetch :: !(Prelude.Maybe JwksAsyncFetch),
                             _RemoteJwks'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RemoteJwks where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RemoteJwks "httpUri" Proto.Envoy.Config.Core.V3.HttpUri.HttpUri where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteJwks'httpUri (\ x__ y__ -> x__ {_RemoteJwks'httpUri = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RemoteJwks "maybe'httpUri" (Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteJwks'httpUri (\ x__ y__ -> x__ {_RemoteJwks'httpUri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RemoteJwks "cacheDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteJwks'cacheDuration
           (\ x__ y__ -> x__ {_RemoteJwks'cacheDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RemoteJwks "maybe'cacheDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteJwks'cacheDuration
           (\ x__ y__ -> x__ {_RemoteJwks'cacheDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RemoteJwks "asyncFetch" JwksAsyncFetch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteJwks'asyncFetch
           (\ x__ y__ -> x__ {_RemoteJwks'asyncFetch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RemoteJwks "maybe'asyncFetch" (Prelude.Maybe JwksAsyncFetch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteJwks'asyncFetch
           (\ x__ y__ -> x__ {_RemoteJwks'asyncFetch = y__}))
        Prelude.id
instance Data.ProtoLens.Message RemoteJwks where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.RemoteJwks"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \RemoteJwks\DC28\n\
      \\bhttp_uri\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.HttpUriR\ahttpUri\DC2@\n\
      \\SOcache_duration\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\rcacheDuration\DC2[\n\
      \\vasync_fetch\CAN\ETX \SOH(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwksAsyncFetchR\n\
      \asyncFetch:<\154\197\136\RS7\n\
      \5envoy.config.filter.http.jwt_authn.v2alpha.RemoteJwks"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        httpUri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_uri"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.HttpUri.HttpUri)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpUri")) ::
              Data.ProtoLens.FieldDescriptor RemoteJwks
        cacheDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cache_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cacheDuration")) ::
              Data.ProtoLens.FieldDescriptor RemoteJwks
        asyncFetch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "async_fetch"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwksAsyncFetch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'asyncFetch")) ::
              Data.ProtoLens.FieldDescriptor RemoteJwks
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, httpUri__field_descriptor),
           (Data.ProtoLens.Tag 2, cacheDuration__field_descriptor),
           (Data.ProtoLens.Tag 3, asyncFetch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RemoteJwks'_unknownFields
        (\ x__ y__ -> x__ {_RemoteJwks'_unknownFields = y__})
  defMessage
    = RemoteJwks'_constructor
        {_RemoteJwks'httpUri = Prelude.Nothing,
         _RemoteJwks'cacheDuration = Prelude.Nothing,
         _RemoteJwks'asyncFetch = Prelude.Nothing,
         _RemoteJwks'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RemoteJwks -> Data.ProtoLens.Encoding.Bytes.Parser RemoteJwks
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
                                       "http_uri"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"httpUri") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cache_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cacheDuration") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "async_fetch"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"asyncFetch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RemoteJwks"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'httpUri") _x
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
                       (Data.ProtoLens.Field.field @"maybe'cacheDuration") _x
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
                          (Data.ProtoLens.Field.field @"maybe'asyncFetch") _x
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
instance Control.DeepSeq.NFData RemoteJwks where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RemoteJwks'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RemoteJwks'httpUri x__)
                (Control.DeepSeq.deepseq
                   (_RemoteJwks'cacheDuration x__)
                   (Control.DeepSeq.deepseq (_RemoteJwks'asyncFetch x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.match' @:: Lens' RequirementRule Proto.Envoy.Config.Route.V3.RouteComponents.RouteMatch@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'match' @:: Lens' RequirementRule (Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.RouteMatch)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'requirementType' @:: Lens' RequirementRule (Prelude.Maybe RequirementRule'RequirementType)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'requires' @:: Lens' RequirementRule (Prelude.Maybe JwtRequirement)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.requires' @:: Lens' RequirementRule JwtRequirement@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.maybe'requirementName' @:: Lens' RequirementRule (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields.requirementName' @:: Lens' RequirementRule Data.Text.Text@ -}
data RequirementRule
  = RequirementRule'_constructor {_RequirementRule'match :: !(Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.RouteMatch),
                                  _RequirementRule'requirementType :: !(Prelude.Maybe RequirementRule'RequirementType),
                                  _RequirementRule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequirementRule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data RequirementRule'RequirementType
  = RequirementRule'Requires !JwtRequirement |
    RequirementRule'RequirementName !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField RequirementRule "match" Proto.Envoy.Config.Route.V3.RouteComponents.RouteMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequirementRule'match
           (\ x__ y__ -> x__ {_RequirementRule'match = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequirementRule "maybe'match" (Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.RouteMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequirementRule'match
           (\ x__ y__ -> x__ {_RequirementRule'match = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequirementRule "maybe'requirementType" (Prelude.Maybe RequirementRule'RequirementType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequirementRule'requirementType
           (\ x__ y__ -> x__ {_RequirementRule'requirementType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequirementRule "maybe'requires" (Prelude.Maybe JwtRequirement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequirementRule'requirementType
           (\ x__ y__ -> x__ {_RequirementRule'requirementType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RequirementRule'Requires x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RequirementRule'Requires y__))
instance Data.ProtoLens.Field.HasField RequirementRule "requires" JwtRequirement where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequirementRule'requirementType
           (\ x__ y__ -> x__ {_RequirementRule'requirementType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RequirementRule'Requires x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RequirementRule'Requires y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField RequirementRule "maybe'requirementName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequirementRule'requirementType
           (\ x__ y__ -> x__ {_RequirementRule'requirementType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RequirementRule'RequirementName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RequirementRule'RequirementName y__))
instance Data.ProtoLens.Field.HasField RequirementRule "requirementName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequirementRule'requirementType
           (\ x__ y__ -> x__ {_RequirementRule'requirementType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RequirementRule'RequirementName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RequirementRule'RequirementName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message RequirementRule where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.jwt_authn.v3.RequirementRule"
  packedMessageDescriptor _
    = "\n\
      \\SIRequirementRule\DC2A\n\
      \\ENQmatch\CAN\SOH \SOH(\v2!.envoy.config.route.v3.RouteMatchR\ENQmatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2X\n\
      \\brequires\CAN\STX \SOH(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementH\NULR\brequires\DC24\n\
      \\DLErequirement_name\CAN\ETX \SOH(\tH\NULR\SIrequirementNameB\a\250B\EOTr\STX\DLE\SOHB\DC2\n\
      \\DLErequirement_type:A\154\197\136\RS<\n\
      \:envoy.config.filter.http.jwt_authn.v2alpha.RequirementRule"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        match__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.RouteMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'match")) ::
              Data.ProtoLens.FieldDescriptor RequirementRule
        requires__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requires"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JwtRequirement)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requires")) ::
              Data.ProtoLens.FieldDescriptor RequirementRule
        requirementName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requirement_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requirementName")) ::
              Data.ProtoLens.FieldDescriptor RequirementRule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, match__field_descriptor),
           (Data.ProtoLens.Tag 2, requires__field_descriptor),
           (Data.ProtoLens.Tag 3, requirementName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequirementRule'_unknownFields
        (\ x__ y__ -> x__ {_RequirementRule'_unknownFields = y__})
  defMessage
    = RequirementRule'_constructor
        {_RequirementRule'match = Prelude.Nothing,
         _RequirementRule'requirementType = Prelude.Nothing,
         _RequirementRule'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequirementRule
          -> Data.ProtoLens.Encoding.Bytes.Parser RequirementRule
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
                                       "match"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"match") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "requires"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requires") y x)
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
                                       "requirement_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requirementName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequirementRule"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'match") _x
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
                       (Data.ProtoLens.Field.field @"maybe'requirementType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (RequirementRule'Requires v))
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
                   (Prelude.Just (RequirementRule'RequirementName v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8
                             v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RequirementRule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequirementRule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequirementRule'match x__)
                (Control.DeepSeq.deepseq
                   (_RequirementRule'requirementType x__) ()))
instance Control.DeepSeq.NFData RequirementRule'RequirementType where
  rnf (RequirementRule'Requires x__) = Control.DeepSeq.rnf x__
  rnf (RequirementRule'RequirementName x__) = Control.DeepSeq.rnf x__
_RequirementRule'Requires ::
  Data.ProtoLens.Prism.Prism' RequirementRule'RequirementType JwtRequirement
_RequirementRule'Requires
  = Data.ProtoLens.Prism.prism'
      RequirementRule'Requires
      (\ p__
         -> case p__ of
              (RequirementRule'Requires p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_RequirementRule'RequirementName ::
  Data.ProtoLens.Prism.Prism' RequirementRule'RequirementType Data.Text.Text
_RequirementRule'RequirementName
  = Data.ProtoLens.Prism.prism'
      RequirementRule'RequirementName
      (\ p__
         -> case p__ of
              (RequirementRule'RequirementName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \7envoy/extensions/filters/http/jwt_authn/v3/config.proto\DC2*envoy.extensions.filters.http.jwt_authn.v3\SUB\USenvoy/config/core/v3/base.proto\SUB#envoy/config/core/v3/http_uri.proto\SUB,envoy/config/route/v3/route_components.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\ESCgoogle/protobuf/empty.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\177\ENQ\n\
    \\vJwtProvider\DC2\SYN\n\
    \\ACKissuer\CAN\SOH \SOH(\tR\ACKissuer\DC2\FS\n\
    \\taudiences\CAN\STX \ETX(\tR\taudiences\DC2Y\n\
    \\vremote_jwks\CAN\ETX \SOH(\v26.envoy.extensions.filters.http.jwt_authn.v3.RemoteJwksH\NULR\n\
    \remoteJwks\DC2A\n\
    \\n\
    \local_jwks\CAN\EOT \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\tlocalJwks\DC2\CAN\n\
    \\aforward\CAN\ENQ \SOH(\bR\aforward\DC2X\n\
    \\ffrom_headers\CAN\ACK \ETX(\v25.envoy.extensions.filters.http.jwt_authn.v3.JwtHeaderR\vfromHeaders\DC2\US\n\
    \\vfrom_params\CAN\a \ETX(\tR\n\
    \fromParams\DC2A\n\
    \\SYNforward_payload_header\CAN\b \SOH(\tR\DC4forwardPayloadHeaderB\v\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2;\n\
    \\SUBpad_forward_payload_header\CAN\v \SOH(\bR\ETBpadForwardPayloadHeader\DC2.\n\
    \\DC3payload_in_metadata\CAN\t \SOH(\tR\DC1payloadInMetadata\DC2,\n\
    \\DC2clock_skew_seconds\CAN\n\
    \ \SOH(\rR\DLEclockSkewSecondsB\FS\n\
    \\NAKjwks_source_specifier\DC2\ETX\248B\SOH:=\154\197\136\RS8\n\
    \6envoy.config.filter.http.jwt_authn.v2alpha.JwtProvider\"\163\STX\n\
    \\n\
    \RemoteJwks\DC28\n\
    \\bhttp_uri\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.HttpUriR\ahttpUri\DC2@\n\
    \\SOcache_duration\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\rcacheDuration\DC2[\n\
    \\vasync_fetch\CAN\ETX \SOH(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwksAsyncFetchR\n\
    \asyncFetch:<\154\197\136\RS7\n\
    \5envoy.config.filter.http.jwt_authn.v2alpha.RemoteJwks\"5\n\
    \\SOJwksAsyncFetch\DC2#\n\
    \\rfast_listener\CAN\SOH \SOH(\bR\ffastListener\"\155\SOH\n\
    \\tJwtHeader\DC2!\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\r\250B\n\
    \r\b\DLE\SOH\192\SOH\SOH\200\SOH\NUL\DC2.\n\
    \\fvalue_prefix\CAN\STX \SOH(\tR\vvaluePrefixB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL:;\154\197\136\RS6\n\
    \4envoy.config.filter.http.jwt_authn.v2alpha.JwtHeader\"\163\SOH\n\
    \\NAKProviderWithAudiences\DC2#\n\
    \\rprovider_name\CAN\SOH \SOH(\tR\fproviderName\DC2\FS\n\
    \\taudiences\CAN\STX \ETX(\tR\taudiences:G\154\197\136\RSB\n\
    \@envoy.config.filter.http.jwt_authn.v2alpha.ProviderWithAudiences\"\228\EOT\n\
    \\SOJwtRequirement\DC2%\n\
    \\rprovider_name\CAN\SOH \SOH(\tH\NULR\fproviderName\DC2y\n\
    \\SYNprovider_and_audiences\CAN\STX \SOH(\v2A.envoy.extensions.filters.http.jwt_authn.v3.ProviderWithAudiencesH\NULR\DC4providerAndAudiences\DC2e\n\
    \\frequires_any\CAN\ETX \SOH(\v2@.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementOrListH\NULR\vrequiresAny\DC2f\n\
    \\frequires_all\CAN\EOT \SOH(\v2A.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementAndListH\NULR\vrequiresAll\DC2O\n\
    \\ETBallow_missing_or_failed\CAN\ENQ \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\DC4allowMissingOrFailed\DC2=\n\
    \\rallow_missing\CAN\ACK \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\fallowMissingB\SI\n\
    \\rrequires_type:@\154\197\136\RS;\n\
    \9envoy.config.filter.http.jwt_authn.v2alpha.JwtRequirement\"\200\SOH\n\
    \\DC4JwtRequirementOrList\DC2h\n\
    \\frequirements\CAN\SOH \ETX(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementR\frequirementsB\b\250B\ENQ\146\SOH\STX\b\STX:F\154\197\136\RSA\n\
    \?envoy.config.filter.http.jwt_authn.v2alpha.JwtRequirementOrList\"\202\SOH\n\
    \\NAKJwtRequirementAndList\DC2h\n\
    \\frequirements\CAN\SOH \ETX(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementR\frequirementsB\b\250B\ENQ\146\SOH\STX\b\STX:G\154\197\136\RSB\n\
    \@envoy.config.filter.http.jwt_authn.v2alpha.JwtRequirementAndList\"\187\STX\n\
    \\SIRequirementRule\DC2A\n\
    \\ENQmatch\CAN\SOH \SOH(\v2!.envoy.config.route.v3.RouteMatchR\ENQmatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2X\n\
    \\brequires\CAN\STX \SOH(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementH\NULR\brequires\DC24\n\
    \\DLErequirement_name\CAN\ETX \SOH(\tH\NULR\SIrequirementNameB\a\250B\EOTr\STX\DLE\SOHB\DC2\n\
    \\DLErequirement_type:A\154\197\136\RS<\n\
    \:envoy.config.filter.http.jwt_authn.v2alpha.RequirementRule\"\209\STX\n\
    \\SIFilterStateRule\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2e\n\
    \\brequires\CAN\ETX \ETX(\v2I.envoy.extensions.filters.http.jwt_authn.v3.FilterStateRule.RequiresEntryR\brequires\SUBw\n\
    \\rRequiresEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2P\n\
    \\ENQvalue\CAN\STX \SOH(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementR\ENQvalue:\STX8\SOH:A\154\197\136\RS<\n\
    \:envoy.config.filter.http.jwt_authn.v2alpha.FilterStateRule\"\168\ACK\n\
    \\DC1JwtAuthentication\DC2j\n\
    \\tproviders\CAN\SOH \ETX(\v2L.envoy.extensions.filters.http.jwt_authn.v3.JwtAuthentication.ProvidersEntryR\tproviders\DC2Q\n\
    \\ENQrules\CAN\STX \ETX(\v2;.envoy.extensions.filters.http.jwt_authn.v3.RequirementRuleR\ENQrules\DC2i\n\
    \\DC2filter_state_rules\CAN\ETX \SOH(\v2;.envoy.extensions.filters.http.jwt_authn.v3.FilterStateRuleR\DLEfilterStateRules\DC22\n\
    \\NAKbypass_cors_preflight\CAN\EOT \SOH(\bR\DC3bypassCorsPreflight\DC2z\n\
    \\SIrequirement_map\CAN\ENQ \ETX(\v2Q.envoy.extensions.filters.http.jwt_authn.v3.JwtAuthentication.RequirementMapEntryR\SOrequirementMap\SUBu\n\
    \\SOProvidersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2M\n\
    \\ENQvalue\CAN\STX \SOH(\v27.envoy.extensions.filters.http.jwt_authn.v3.JwtProviderR\ENQvalue:\STX8\SOH\SUB}\n\
    \\DC3RequirementMapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2P\n\
    \\ENQvalue\CAN\STX \SOH(\v2:.envoy.extensions.filters.http.jwt_authn.v3.JwtRequirementR\ENQvalue:\STX8\SOH:C\154\197\136\RS>\n\
    \<envoy.config.filter.http.jwt_authn.v2alpha.JwtAuthentication\"\139\SOH\n\
    \\SOPerRouteConfig\DC2%\n\
    \\bdisabled\CAN\SOH \SOH(\bH\NULR\bdisabledB\a\250B\EOTj\STX\b\SOH\DC24\n\
    \\DLErequirement_name\CAN\STX \SOH(\tH\NULR\SIrequirementNameB\a\250B\EOTr\STX\DLE\SOHB\FS\n\
    \\NAKrequirement_specifier\DC2\ETX\248B\SOHBQ\n\
    \8io.envoyproxy.envoy.extensions.filters.http.jwt_authn.v3B\vConfigProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\139\156\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\239\EOT\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL3\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL-\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL6\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL%\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL'\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL+\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULQ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SI\NULQ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DLE\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC1\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \\232\t\n\
    \\STX\EOT\NUL\DC2\ENQ7\NUL\222\SOH\SOH\SUB\177\b Please see following for JWT authentication flow:\n\
    \\n\
    \ * `JSON Web Token (JWT) <https://tools.ietf.org/html/rfc7519>`_\n\
    \ * `The OAuth 2.0 Authorization Framework <https://tools.ietf.org/html/rfc6749>`_\n\
    \ * `OpenID Connect <http://openid.net/connect>`_\n\
    \\n\
    \ A JwtProvider message specifies how a JSON Web Token (JWT) can be verified. It specifies:\n\
    \\n\
    \ * issuer: the principal that issues the JWT. If specified, it has to match the *iss* field in JWT.\n\
    \ * allowed audiences: the ones in the token have to be listed here.\n\
    \ * how to fetch public key JWKS to verify the token signature.\n\
    \ * how to extract JWT token in the request.\n\
    \ * how to pass successfully verified token payload.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \     issuer: https://example.com\n\
    \     audiences:\n\
    \     - bookstore_android.apps.googleusercontent.com\n\
    \     - bookstore_web.apps.googleusercontent.com\n\
    \     remote_jwks:\n\
    \       http_uri:\n\
    \         uri: https://example.com/.well-known/jwks.json\n\
    \         cluster: example_jwks_cluster\n\
    \         timeout: 1s\n\
    \       cache_duration:\n\
    \         seconds: 300\n\
    \\n\
    \ [#next-free-field: 12]\n\
    \2\166\SOH [#protodoc-title: JWT Authentication]\n\
    \ JWT Authentication :ref:`configuration overview <config_http_filters_jwt_authn>`.\n\
    \ [#extension: envoy.filters.http.jwt_authn]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX7\b\DC3\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT8\STX9?\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT8\STX9?\n\
    \\238\b\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXO\STX\DC4\SUB\224\b Specify the `principal <https://tools.ietf.org/html/rfc7519#section-4.1.1>`_ that issued\n\
    \ the JWT, usually a URL or an email address.\n\
    \\n\
    \ It is optional. If specified, it has to match the *iss* field in JWT.\n\
    \\n\
    \ If a JWT has *iss* field and this field is specified, they have to match, otherwise the\n\
    \ JWT *iss* field is not checked.\n\
    \\n\
    \ Note: *JwtRequirement* :ref:`allow_missing <envoy_v3_api_field_extensions.filters.http.jwt_authn.v3.JwtRequirement.allow_missing>`\n\
    \ and :ref:`allow_missing_or_failed <envoy_v3_api_field_extensions.filters.http.jwt_authn.v3.JwtRequirement.allow_missing_or_failed>`\n\
    \ are implemented differently than other *JwtRequirements*. Hence the usage of this field\n\
    \ is different as follows if *allow_missing* or *allow_missing_or_failed* is used:\n\
    \\n\
    \ * If a JWT has *iss* field, it needs to be specified by this field in one of *JwtProviders*.\n\
    \ * If a JWT doesn't have *iss* field, one of *JwtProviders* should fill this field empty.\n\
    \ * Multiple *JwtProviders* should not have same value in this field.\n\
    \\n\
    \ Example: https://securetoken.google.com\n\
    \ Example: 1234567-compute@developer.gserviceaccount.com\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXO\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXO\DC2\DC3\n\
    \\132\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX]\STX \SUB\246\STX The list of JWT `audiences <https://tools.ietf.org/html/rfc7519#section-4.1.3>`_ are\n\
    \ allowed to access. A JWT containing any of these audiences will be accepted. If not specified,\n\
    \ will not check audiences in the token.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \     audiences:\n\
    \     - bookstore_android.apps.googleusercontent.com\n\
    \     - bookstore_web.apps.googleusercontent.com\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX]\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX]\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX]\RS\US\n\
    \\178\SOH\n\
    \\EOT\EOT\NUL\b\NUL\DC2\ENQa\STX\135\SOH\ETX\SUB\162\SOH `JSON Web Key Set (JWKS) <https://tools.ietf.org/html/rfc7517#appendix-A>`_ is needed to\n\
    \ validate signature of a JWT. This field specifies where to fetch JWKS.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETXa\b\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETXb\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETXb\EOT&\n\
    \\131\ETX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXs\EOT\US\SUB\245\STX JWKS can be fetched from remote server via HTTP/HTTPS. This field specifies the remote HTTP\n\
    \ URI and how the fetched JWKS should be cached.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    remote_jwks:\n\
    \      http_uri:\n\
    \        uri: https://www.googleapis.com/oauth2/v1/certs\n\
    \        cluster: jwt.www.googleapis.com|443\n\
    \        timeout: 1s\n\
    \      cache_duration:\n\
    \        seconds: 300\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXs\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXs\SI\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXs\GS\RS\n\
    \\191\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\134\SOH\EOT-\SUB\176\STX JWKS is in local data source. It could be either in a local file or embedded in the\n\
    \ inline_string.\n\
    \\n\
    \ Example: local file\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    local_jwks:\n\
    \      filename: /etc/envoy/jwks/jwks1.txt\n\
    \\n\
    \ Example: inline_string\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    local_jwks:\n\
    \      inline_string: ACADADADADA\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\EOT\134\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\134\SOH\RS(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\EOT\134\SOH+,\n\
    \\163\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\139\SOH\STX\DC3\SUB\148\SOH If false, the JWT is removed in the request after a success verification. If true, the JWT is\n\
    \ not removed in the request. Default value is false.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\EOT\139\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\139\SOH\a\SO\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\EOT\139\SOH\DC1\DC2\n\
    \\177\ACK\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT\166\SOH\STX&\SUB\162\ACK Two fields below define where to extract the JWT from an HTTP request.\n\
    \\n\
    \ If no explicit location is specified, the following default locations are tried in order:\n\
    \\n\
    \ 1. The Authorization header using the `Bearer schema\n\
    \ <https://tools.ietf.org/html/rfc6750#section-2.1>`_. Example::\n\
    \\n\
    \    Authorization: Bearer <token>.\n\
    \\n\
    \ 2. `access_token <https://tools.ietf.org/html/rfc6750#section-2.3>`_ query parameter.\n\
    \\n\
    \ Multiple JWTs can be verified for a request. Each JWT has to be extracted from the locations\n\
    \ its provider specified or from the default locations.\n\
    \\n\
    \ Specify the HTTP headers to extract JWT token. For examples, following config:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \   from_headers:\n\
    \   - name: x-goog-iap-jwt-assertion\n\
    \\n\
    \ can be used to extract token from header::\n\
    \\n\
    \   ``x-goog-iap-jwt-assertion: <JWT>``.\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\EOT\166\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\EOT\166\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\EOT\166\SOH\NAK!\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\EOT\166\SOH$%\n\
    \\254\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\181\SOH\STX\"\SUB\239\SOH JWT is sent in a query parameter. `jwt_params` represents the query parameter names.\n\
    \\n\
    \ For example, if config is:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \   from_params:\n\
    \   - jwt_token\n\
    \\n\
    \ The JWT format in query parameter is::\n\
    \\n\
    \    /path?jwt_token=<JWT>\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\EOT\181\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\EOT\181\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\181\SOH\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\181\SOH !\n\
    \\248\SOH\n\
    \\EOT\EOT\NUL\STX\a\DC2\ACK\189\SOH\STX\190\SOHU\SUB\231\SOH This field specifies the header name to forward a successfully verified JWT payload to the\n\
    \ backend. The forwarded data is::\n\
    \\n\
    \    base64url_encoded(jwt_payload_in_JSON)\n\
    \\n\
    \ If it is not specified, the payload will not be forwarded.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\EOT\189\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\189\SOH\t\US\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\EOT\189\SOH\"#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\b\DC2\EOT\190\SOH\ACKT\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\a\b\175\b\SO\DC2\EOT\190\SOH\aS\n\
    \\232\ETX\n\
    \\EOT\EOT\NUL\STX\b\DC2\EOT\199\SOH\STX'\SUB\217\ETX When :ref:`forward_payload_header <envoy_v3_api_field_extensions.filters.http.jwt_authn.v3.JwtProvider.forward_payload_header>`\n\
    \ is specified, the base64 encoded payload will be added to the headers.\n\
    \ Normally JWT based64 encode doesn't add padding. If this field is true,\n\
    \ the header will be padded.\n\
    \\n\
    \ This field is only relevant if :ref:`forward_payload_header <envoy_v3_api_field_extensions.filters.http.jwt_authn.v3.JwtProvider.forward_payload_header>`\n\
    \ is specified.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\EOT\199\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\199\SOH\a!\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\EOT\199\SOH$&\n\
    \\238\EOT\n\
    \\EOT\EOT\NUL\STX\t\DC2\EOT\217\SOH\STX!\SUB\223\EOT If non empty, successfully verified JWT payloads will be written to StreamInfo DynamicMetadata\n\
    \ in the format as: *namespace* is the jwt_authn filter name as **envoy.filters.http.jwt_authn**\n\
    \ The value is the *protobuf::Struct*. The value of this field will be the key for its *fields*\n\
    \ and the value is the *protobuf::Struct* converted from JWT JSON payload.\n\
    \\n\
    \ For example, if payload_in_metadata is *my_payload*:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \   envoy.filters.http.jwt_authn:\n\
    \     my_payload:\n\
    \       iss: https://example.com\n\
    \       sub: test@example.com\n\
    \       aud: https://example.com\n\
    \       exp: 1501281058\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\EOT\217\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\217\SOH\t\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\EOT\217\SOH\US \n\
    \\154\SOH\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\EOT\221\SOH\STX!\SUB\139\SOH Specify the clock skew in seconds when verifying JWT time constraint,\n\
    \ such as `exp`, and `nbf`. If not specified, default is 60 seconds.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\EOT\221\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\221\SOH\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\EOT\221\SOH\RS \n\
    \Y\n\
    \\STX\EOT\SOH\DC2\ACK\225\SOH\NUL\132\STX\SOH\SUBK This message specifies how to fetch JWKS from remote and how to cache it.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\225\SOH\b\DC2\n\
    \\r\n\
    \\ETX\EOT\SOH\a\DC2\ACK\226\SOH\STX\227\SOH>\n\
    \\DC2\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ACK\226\SOH\STX\227\SOH>\n\
    \\214\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\238\SOH\STX&\SUB\199\SOH The HTTP URI to fetch the JWKS. For example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    http_uri:\n\
    \      uri: https://www.googleapis.com/oauth2/v1/certs\n\
    \      cluster: jwt.www.googleapis.com|443\n\
    \      timeout: 1s\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\238\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\238\SOH\EM!\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\238\SOH$%\n\
    \\DEL\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\242\SOH\STX.\SUBq Duration after which the cached JWKS should be expired. If not specified, default cache\n\
    \ duration is 5 minutes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\242\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\242\SOH\ESC)\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\242\SOH,-\n\
    \\182\ENQ\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\131\STX\STX!\SUB\167\ENQ Fetch Jwks asynchronously in the main thread before the listener is activated.\n\
    \ Fetched Jwks can be used by all worker threads.\n\
    \\n\
    \ If this feature is not enabled:\n\
    \\n\
    \ * The Jwks is fetched on-demand when the requests come. During the fetching, first\n\
    \   few requests are paused until the Jwks is fetched.\n\
    \ * Each worker thread fetches its own Jwks since Jwks cache is per worker thread.\n\
    \\n\
    \ If this feature is enabled:\n\
    \\n\
    \ * Fetched Jwks is done in the main thread before the listener is activated. Its fetched\n\
    \   Jwks can be used by all worker threads. Each worker thread doesn't need to fetch its own.\n\
    \ * Jwks is ready when the requests come, not need to wait for the Jwks fetching.\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\EOT\131\STX\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\131\STX\DC1\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\131\STX\US \n\
    \\180\STX\n\
    \\STX\EOT\STX\DC2\ACK\138\STX\NUL\144\STX\SOH\SUB\165\STX Fetch Jwks asynchronously in the main thread when the filter config is parsed.\n\
    \ The listener is activated only after the Jwks is fetched.\n\
    \ When the Jwks is expired in the cache, it is fetched again in the main thread.\n\
    \ The fetched Jwks from the main thread can be used by all worker threads.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\138\STX\b\SYN\n\
    \\248\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\143\STX\STX\EM\SUB\233\SOH If false, the listener is activated after the initial fetch is completed.\n\
    \ The initial fetch result can be either successful or failed.\n\
    \ If true, it is activated without waiting for the initial fetch to complete.\n\
    \ Default is false.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\143\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\143\STX\a\DC4\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\143\STX\ETB\CAN\n\
    \N\n\
    \\STX\EOT\ETX\DC2\ACK\147\STX\NUL\160\STX\SOH\SUB@ This message specifies a header location to extract JWT token.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\147\STX\b\DC1\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\148\STX\STX\149\STX=\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\148\STX\STX\149\STX=\n\
    \'\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ACK\152\STX\STX\153\STX`\SUB\ETB The HTTP header name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\152\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\152\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\152\STX\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOT\153\STX\ACK_\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\SO\DC2\EOT\153\STX\a^\n\
    \\178\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ACK\158\STX\STX\159\STXV\SUB\161\SOH The value prefix. The value format is \"value_prefix<token>\"\n\
    \ For example, for \"Authorization: Bearer <token>\", value_prefix=\"Bearer \" with a space at the\n\
    \ end.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\158\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\158\STX\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\158\STX\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\EOT\159\STX\ACKU\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\SOH\b\175\b\SO\DC2\EOT\159\STX\aT\n\
    \;\n\
    \\STX\EOT\EOT\DC2\ACK\163\STX\NUL\172\STX\SOH\SUB- Specify a required provider with audiences.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\163\STX\b\GS\n\
    \\r\n\
    \\ETX\EOT\EOT\a\DC2\ACK\164\STX\STX\165\STXI\n\
    \\DC2\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ACK\164\STX\STX\165\STXI\n\
    \1\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\168\STX\STX\ESC\SUB# Specify a required provider name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\168\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\168\STX\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\168\STX\EM\SUB\n\
    \J\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\171\STX\STX \SUB< This field overrides the one specified in the JwtProvider.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\EOT\171\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\171\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\171\STX\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\171\STX\RS\US\n\
    \\163\v\n\
    \\STX\EOT\ENQ\DC2\ACK\231\STX\NUL\134\ETX\SOH\SUB\148\v This message specifies a Jwt requirement. An empty message means JWT verification is not\n\
    \ required. Here are some config examples:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \  # Example 1: not required with an empty message\n\
    \\n\
    \  # Example 2: require A\n\
    \  provider_name: provider-A\n\
    \\n\
    \  # Example 3: require A or B\n\
    \  requires_any:\n\
    \    requirements:\n\
    \      - provider_name: provider-A\n\
    \      - provider_name: provider-B\n\
    \\n\
    \  # Example 4: require A and B\n\
    \  requires_all:\n\
    \    requirements:\n\
    \      - provider_name: provider-A\n\
    \      - provider_name: provider-B\n\
    \\n\
    \  # Example 5: require A and (B or C)\n\
    \  requires_all:\n\
    \    requirements:\n\
    \      - provider_name: provider-A\n\
    \      - requires_any:\n\
    \        requirements:\n\
    \          - provider_name: provider-B\n\
    \          - provider_name: provider-C\n\
    \\n\
    \  # Example 6: require A or (B and C)\n\
    \  requires_any:\n\
    \    requirements:\n\
    \      - provider_name: provider-A\n\
    \      - requires_all:\n\
    \        requirements:\n\
    \          - provider_name: provider-B\n\
    \          - provider_name: provider-C\n\
    \\n\
    \  # Example 7: A is optional (if token from A is provided, it must be valid, but also allows\n\
    \  missing token.)\n\
    \  requires_any:\n\
    \    requirements:\n\
    \    - provider_name: provider-A\n\
    \    - allow_missing: {}\n\
    \\n\
    \  # Example 8: A is optional and B is required.\n\
    \  requires_all:\n\
    \    requirements:\n\
    \    - requires_any:\n\
    \        requirements:\n\
    \        - provider_name: provider-A\n\
    \        - allow_missing: {}\n\
    \    - provider_name: provider-B\n\
    \\n\
    \ [#next-free-field: 7]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\231\STX\b\SYN\n\
    \\r\n\
    \\ETX\EOT\ENQ\a\DC2\ACK\232\STX\STX\233\STXB\n\
    \\DC2\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\232\STX\STX\233\STXB\n\
    \\SO\n\
    \\EOT\EOT\ENQ\b\NUL\DC2\ACK\235\STX\STX\133\ETX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\SOH\DC2\EOT\235\STX\b\NAK\n\
    \1\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\237\STX\EOT\GS\SUB# Specify a required provider name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\237\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\237\STX\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\237\STX\ESC\FS\n\
    \;\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\240\STX\EOT5\SUB- Specify a required provider with audiences.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\240\STX\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\240\STX\SUB0\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\240\STX34\n\
    \z\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\244\STX\EOT*\SUBl Specify list of JwtRequirement. Their results are OR-ed.\n\
    \ If any one of them passes, the result is passed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\EOT\244\STX\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\244\STX\EM%\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\244\STX()\n\
    \\140\SOH\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\248\STX\EOT+\SUB~ Specify list of JwtRequirement. Their results are AND-ed.\n\
    \ All of them must pass, if one of them fails or missing, it fails.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\EOT\248\STX\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\248\STX\SUB&\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\248\STX)*\n\
    \\179\STX\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\EOT\254\STX\EOT6\SUB\164\STX The requirement is always satisfied even if JWT is missing or the JWT\n\
    \ verification fails. A typical usage is: this filter is used to only verify\n\
    \ JWTs and pass the verified JWT payloads to another filter, the other filter\n\
    \ will make decision. In this mode, all JWT tokens will be verified.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ACK\DC2\EOT\254\STX\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\EOT\254\STX\SUB1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\EOT\254\STX45\n\
    \\170\STX\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\EOT\132\ETX\EOT,\SUB\155\STX The requirement is satisfied if JWT is missing, but failed if JWT is\n\
    \ presented but invalid. Similar to allow_missing_or_failed, this is used\n\
    \ to only verify JWTs and pass the verified payload to another filter. The\n\
    \ different is this mode will reject requests with invalid tokens.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ACK\DC2\EOT\132\ETX\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\EOT\132\ETX\SUB'\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\EOT\132\ETX*+\n\
    \\140\SOH\n\
    \\STX\EOT\ACK\DC2\ACK\138\ETX\NUL\144\ETX\SOH\SUB~ This message specifies a list of RequiredProvider.\n\
    \ Their results are OR-ed; if any one of them passes, the result is passed\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\138\ETX\b\FS\n\
    \\r\n\
    \\ETX\EOT\ACK\a\DC2\ACK\139\ETX\STX\140\ETXH\n\
    \\DC2\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\ACK\139\ETX\STX\140\ETXH\n\
    \1\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\143\ETX\STXX\SUB# Specify a list of JwtRequirement.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\EOT\143\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\143\ETX\v\EM\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\143\ETX\SUB&\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\143\ETX)*\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\143\ETX+W\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\175\b\DC2\DC2\EOT\143\ETX,V\n\
    \\160\SOH\n\
    \\STX\EOT\a\DC2\ACK\148\ETX\NUL\154\ETX\SOH\SUB\145\SOH This message specifies a list of RequiredProvider.\n\
    \ Their results are AND-ed; all of them must pass, if one of them fails or missing, it fails.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\148\ETX\b\GS\n\
    \\r\n\
    \\ETX\EOT\a\a\DC2\ACK\149\ETX\STX\150\ETXI\n\
    \\DC2\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\ACK\149\ETX\STX\150\ETXI\n\
    \1\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\153\ETX\STXX\SUB# Specify a list of JwtRequirement.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\EOT\153\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\153\ETX\v\EM\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\153\ETX\SUB&\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\153\ETX)*\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\153\ETX+W\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\175\b\DC2\DC2\EOT\153\ETX,V\n\
    \\153\EOT\n\
    \\STX\EOT\b\DC2\ACK\177\ETX\NUL\205\ETX\SOH\SUB\138\EOT This message specifies a Jwt requirement for a specific Route condition.\n\
    \ Example 1:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    - match:\n\
    \        prefix: /healthz\n\
    \\n\
    \ In above example, \"requires\" field is empty for /healthz prefix match,\n\
    \ it means that requests matching the path prefix don't require JWT authentication.\n\
    \\n\
    \ Example 2:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    - match:\n\
    \        prefix: /\n\
    \      requires: { provider_name: provider-A }\n\
    \\n\
    \ In above example, all requests matched the path prefix require jwt authentication\n\
    \ from \"provider-A\".\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\177\ETX\b\ETB\n\
    \\r\n\
    \\ETX\EOT\b\a\DC2\ACK\178\ETX\STX\179\ETXC\n\
    \\DC2\n\
    \\b\EOT\b\a\211\136\225\ETX\SOH\DC2\ACK\178\ETX\STX\179\ETXC\n\
    \\222\SOH\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\191\ETX\STXU\SUB\207\SOH The route matching parameter. Only when the match is satisfied, the \"requires\" field will\n\
    \ apply.\n\
    \\n\
    \ For example: following match will match all requests.\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    match:\n\
    \      prefix: /\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\191\ETX\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\191\ETX\GS\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\191\ETX%&\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\191\ETX'T\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\175\b\DC1\DC2\EOT\191\ETX(S\n\
    \]\n\
    \\EOT\EOT\b\b\NUL\DC2\ACK\195\ETX\STX\204\ETX\ETX\SUBM Specify a Jwt requirement.\n\
    \ If not specified, Jwt verification is disabled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\b\NUL\SOH\DC2\EOT\195\ETX\b\CAN\n\
    \_\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\197\ETX\EOT \SUBQ Specify a Jwt requirement. Please see detail comment in message JwtRequirement.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\197\ETX\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\197\ETX\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\197\ETX\RS\US\n\
    \\128\STX\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\203\ETX\EOTI\SUB\241\SOH Use requirement_name to specify a Jwt requirement.\n\
    \ This requirement_name MUST be specified at the\n\
    \ :ref:`requirement_map <envoy_v3_api_field_extensions.filters.http.jwt_authn.v3.JwtAuthentication.requirement_map>`\n\
    \ in `JwtAuthentication`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\203\ETX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\203\ETX\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\203\ETX\RS\US\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\b\DC2\EOT\203\ETX H\n\
    \\DLE\n\
    \\b\EOT\b\STX\STX\b\175\b\SO\DC2\EOT\203\ETX!G\n\
    \\188\EOT\n\
    \\STX\EOT\t\DC2\ACK\224\ETX\NUL\234\ETX\SOH\SUB\173\EOT This message specifies Jwt requirements based on stream_info.filterState.\n\
    \ This FilterState should use `Router::StringAccessor` object to set a string value.\n\
    \ Other HTTP filters can use it to specify Jwt requirements dynamically.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    name: jwt_selector\n\
    \    requires:\n\
    \      issuer_1:\n\
    \        provider_name: issuer1\n\
    \      issuer_2:\n\
    \        provider_name: issuer2\n\
    \\n\
    \ If a filter set \"jwt_selector\" with \"issuer_1\" to FilterState for a request,\n\
    \ jwt_authn filter will use JwtRequirement{\"provider_name\": \"issuer1\"} to verify.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\224\ETX\b\ETB\n\
    \\r\n\
    \\ETX\EOT\t\a\DC2\ACK\225\ETX\STX\226\ETXC\n\
    \\DC2\n\
    \\b\EOT\t\a\211\136\225\ETX\SOH\DC2\ACK\225\ETX\STX\226\ETXC\n\
    \V\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\229\ETX\STX;\SUBH The filter state name to retrieve the `Router::StringAccessor` object.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\229\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\229\ETX\t\r\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\229\ETX\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\229\ETX\DC2:\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\175\b\SO\DC2\EOT\229\ETX\DC39\n\
    \\160\SOH\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\233\ETX\STX+\SUB\145\SOH A map of string keys to requirements. The string key is the string value\n\
    \ in the FilterState with the name specified in the *name* field above.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\233\ETX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\233\ETX\RS&\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\233\ETX)*\n\
    \\191\b\n\
    \\STX\EOT\n\
    \\DC2\ACK\151\EOT\NUL\223\EOT\SOH\SUB\176\b This is the Envoy HTTP filter config for JWT authentication.\n\
    \\n\
    \ For example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \   providers:\n\
    \      provider1:\n\
    \        issuer: issuer1\n\
    \        audiences:\n\
    \        - audience1\n\
    \        - audience2\n\
    \        remote_jwks:\n\
    \          http_uri:\n\
    \            uri: https://example.com/.well-known/jwks.json\n\
    \            cluster: example_jwks_cluster\n\
    \            timeout: 1s\n\
    \      provider2:\n\
    \        issuer: issuer2\n\
    \        local_jwks:\n\
    \          inline_string: jwks_string\n\
    \\n\
    \   rules:\n\
    \      # Not jwt verification is required for /health path\n\
    \      - match:\n\
    \          prefix: /health\n\
    \\n\
    \      # Jwt verification for provider1 is required for path prefixed with \"prefix\"\n\
    \      - match:\n\
    \          prefix: /prefix\n\
    \        requires:\n\
    \          provider_name: provider1\n\
    \\n\
    \      # Jwt verification for either provider1 or provider2 is required for all other requests.\n\
    \      - match:\n\
    \          prefix: /\n\
    \        requires:\n\
    \          requires_any:\n\
    \            requirements:\n\
    \              - provider_name: provider1\n\
    \              - provider_name: provider2\n\
    \\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\151\EOT\b\EM\n\
    \\r\n\
    \\ETX\EOT\n\
    \\a\DC2\ACK\152\EOT\STX\153\EOTE\n\
    \\DC2\n\
    \\b\EOT\n\
    \\a\211\136\225\ETX\SOH\DC2\ACK\152\EOT\STX\153\EOTE\n\
    \\203\ETX\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\175\EOT\STX)\SUB\188\ETX Map of provider names to JwtProviders.\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \   providers:\n\
    \     provider1:\n\
    \        issuer: issuer1\n\
    \        audiences:\n\
    \        - audience1\n\
    \        - audience2\n\
    \        remote_jwks:\n\
    \          http_uri:\n\
    \            uri: https://example.com/.well-known/jwks.json\n\
    \            cluster: example_jwks_cluster\n\
    \            timeout: 1s\n\
    \      provider2:\n\
    \        issuer: provider2\n\
    \        local_jwks:\n\
    \          inline_string: jwks_string\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\175\EOT\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\175\EOT\ESC$\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\175\EOT'(\n\
    \\222\ENQ\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\206\EOT\STX%\SUB\207\ENQ Specifies requirements based on the route matches. The first matched requirement will be\n\
    \ applied. If there are overlapped match conditions, please put the most specific match first.\n\
    \\n\
    \ Examples\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \   rules:\n\
    \     - match:\n\
    \         prefix: /healthz\n\
    \     - match:\n\
    \         prefix: /baz\n\
    \       requires:\n\
    \         provider_name: provider1\n\
    \     - match:\n\
    \         prefix: /foo\n\
    \       requires:\n\
    \         requires_any:\n\
    \           requirements:\n\
    \             - provider_name: provider1\n\
    \             - provider_name: provider2\n\
    \     - match:\n\
    \         prefix: /bar\n\
    \       requires:\n\
    \         requires_all:\n\
    \           requirements:\n\
    \             - provider_name: provider1\n\
    \             - provider_name: provider2\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\EOT\206\EOT\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\EOT\206\EOT\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\206\EOT\ESC \n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\206\EOT#$\n\
    \\128\STX\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\212\EOT\STX)\SUB\241\SOH This message specifies Jwt requirements based on stream_info.filterState.\n\
    \ Other HTTP filters can use it to specify Jwt requirements dynamically.\n\
    \ The *rules* field above is checked first, if it could not find any matches,\n\
    \ check this one.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\EOT\212\EOT\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\212\EOT\DC2$\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\212\EOT'(\n\
    \\193\SOH\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\EOT\217\EOT\STX!\SUB\178\SOH When set to true, bypass the `CORS preflight request\n\
    \ <http://www.w3.org/TR/cors/#cross-origin-request-with-preflight>`_ regardless of JWT\n\
    \ requirements specified in the rules.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\EOT\217\EOT\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\EOT\217\EOT\a\FS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\EOT\217\EOT\US \n\
    \\249\SOH\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\EOT\222\EOT\STX2\SUB\234\SOH A map of unique requirement_names to JwtRequirements.\n\
    \ :ref:`requirement_name <envoy_v3_api_field_extensions.filters.http.jwt_authn.v3.PerRouteConfig.requirement_name>`\n\
    \ in `PerRouteConfig` uses this map to specify a JwtRequirement.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ACK\DC2\EOT\222\EOT\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\EOT\222\EOT\RS-\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\EOT\222\EOT01\n\
    \)\n\
    \\STX\EOT\v\DC2\ACK\226\EOT\NUL\239\EOT\SOH\SUB\ESC Specify per-route config.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\226\EOT\b\SYN\n\
    \\SO\n\
    \\EOT\EOT\v\b\NUL\DC2\ACK\227\EOT\STX\238\EOT\ETX\n\
    \\r\n\
    \\ENQ\EOT\v\b\NUL\SOH\DC2\EOT\227\EOT\b\GS\n\
    \\r\n\
    \\ENQ\EOT\v\b\NUL\STX\DC2\EOT\228\EOT\EOT&\n\
    \\SI\n\
    \\a\EOT\v\b\NUL\STX\175\b\DC2\EOT\228\EOT\EOT&\n\
    \:\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\231\EOT\EOT>\SUB, Disable Jwt Authentication for this route.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\231\EOT\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\231\EOT\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\231\EOT\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\b\DC2\EOT\231\EOT\SYN=\n\
    \\DLE\n\
    \\b\EOT\v\STX\NUL\b\175\b\r\DC2\EOT\231\EOT\ETB<\n\
    \\191\STX\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\237\EOT\EOTI\SUB\176\STX Use requirement_name to specify a JwtRequirement.\n\
    \ This requirement_name MUST be specified at the\n\
    \ :ref:`requirement_map <envoy_v3_api_field_extensions.filters.http.jwt_authn.v3.JwtAuthentication.requirement_map>`\n\
    \ in `JwtAuthentication`. If no, the requests using this route will be rejected with 403.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\237\EOT\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\237\EOT\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\237\EOT\RS\US\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\b\DC2\EOT\237\EOT H\n\
    \\DLE\n\
    \\b\EOT\v\STX\SOH\b\175\b\SO\DC2\EOT\237\EOT!Gb\ACKproto3"