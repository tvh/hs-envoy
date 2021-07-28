{- This file was auto-generated from envoy/extensions/filters/http/cache/v3alpha/cache.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache (
        CacheConfig(), CacheConfig'KeyCreatorParams()
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
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.typedConfig' @:: Lens' CacheConfig Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.maybe'typedConfig' @:: Lens' CacheConfig (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.allowedVaryHeaders' @:: Lens' CacheConfig [Proto.Envoy.Type.Matcher.V3.String.StringMatcher]@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.vec'allowedVaryHeaders' @:: Lens' CacheConfig (Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.keyCreatorParams' @:: Lens' CacheConfig CacheConfig'KeyCreatorParams@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.maybe'keyCreatorParams' @:: Lens' CacheConfig (Prelude.Maybe CacheConfig'KeyCreatorParams)@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.maxBodyBytes' @:: Lens' CacheConfig Data.Word.Word32@ -}
data CacheConfig
  = CacheConfig'_constructor {_CacheConfig'typedConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                              _CacheConfig'allowedVaryHeaders :: !(Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher),
                              _CacheConfig'keyCreatorParams :: !(Prelude.Maybe CacheConfig'KeyCreatorParams),
                              _CacheConfig'maxBodyBytes :: !Data.Word.Word32,
                              _CacheConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CacheConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CacheConfig "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'typedConfig
           (\ x__ y__ -> x__ {_CacheConfig'typedConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CacheConfig "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'typedConfig
           (\ x__ y__ -> x__ {_CacheConfig'typedConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CacheConfig "allowedVaryHeaders" [Proto.Envoy.Type.Matcher.V3.String.StringMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'allowedVaryHeaders
           (\ x__ y__ -> x__ {_CacheConfig'allowedVaryHeaders = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CacheConfig "vec'allowedVaryHeaders" (Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'allowedVaryHeaders
           (\ x__ y__ -> x__ {_CacheConfig'allowedVaryHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CacheConfig "keyCreatorParams" CacheConfig'KeyCreatorParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'keyCreatorParams
           (\ x__ y__ -> x__ {_CacheConfig'keyCreatorParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CacheConfig "maybe'keyCreatorParams" (Prelude.Maybe CacheConfig'KeyCreatorParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'keyCreatorParams
           (\ x__ y__ -> x__ {_CacheConfig'keyCreatorParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CacheConfig "maxBodyBytes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'maxBodyBytes
           (\ x__ y__ -> x__ {_CacheConfig'maxBodyBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message CacheConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.cache.v3alpha.CacheConfig"
  packedMessageDescriptor _
    = "\n\
      \\vCacheConfig\DC2A\n\
      \\ftyped_config\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfigB\b\250B\ENQ\162\SOH\STX\b\SOH\DC2V\n\
      \\DC4allowed_vary_headers\CAN\STX \ETX(\v2$.envoy.type.matcher.v3.StringMatcherR\DC2allowedVaryHeaders\DC2w\n\
      \\DC2key_creator_params\CAN\ETX \SOH(\v2I.envoy.extensions.filters.http.cache.v3alpha.CacheConfig.KeyCreatorParamsR\DLEkeyCreatorParams\DC2$\n\
      \\SOmax_body_bytes\CAN\EOT \SOH(\rR\fmaxBodyBytes\SUB\252\STX\n\
      \\DLEKeyCreatorParams\DC2%\n\
      \\SOexclude_scheme\CAN\SOH \SOH(\bR\rexcludeScheme\DC2!\n\
      \\fexclude_host\CAN\STX \SOH(\bR\vexcludeHost\DC2h\n\
      \\EMquery_parameters_included\CAN\ETX \ETX(\v2,.envoy.config.route.v3.QueryParameterMatcherR\ETBqueryParametersIncluded\DC2h\n\
      \\EMquery_parameters_excluded\CAN\EOT \ETX(\v2,.envoy.config.route.v3.QueryParameterMatcherR\ETBqueryParametersExcluded:J\154\197\136\RSE\n\
      \Cenvoy.config.filter.http.cache.v2alpha.CacheConfig.KeyCreatorParams:9\154\197\136\RS4\n\
      \2envoy.config.filter.http.cache.v2alpha.CacheConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor CacheConfig
        allowedVaryHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowed_vary_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"allowedVaryHeaders")) ::
              Data.ProtoLens.FieldDescriptor CacheConfig
        keyCreatorParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key_creator_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CacheConfig'KeyCreatorParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'keyCreatorParams")) ::
              Data.ProtoLens.FieldDescriptor CacheConfig
        maxBodyBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_body_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxBodyBytes")) ::
              Data.ProtoLens.FieldDescriptor CacheConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, typedConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, allowedVaryHeaders__field_descriptor),
           (Data.ProtoLens.Tag 3, keyCreatorParams__field_descriptor),
           (Data.ProtoLens.Tag 4, maxBodyBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CacheConfig'_unknownFields
        (\ x__ y__ -> x__ {_CacheConfig'_unknownFields = y__})
  defMessage
    = CacheConfig'_constructor
        {_CacheConfig'typedConfig = Prelude.Nothing,
         _CacheConfig'allowedVaryHeaders = Data.Vector.Generic.empty,
         _CacheConfig'keyCreatorParams = Prelude.Nothing,
         _CacheConfig'maxBodyBytes = Data.ProtoLens.fieldDefault,
         _CacheConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CacheConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Type.Matcher.V3.String.StringMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser CacheConfig
        loop x mutable'allowedVaryHeaders
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'allowedVaryHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'allowedVaryHeaders)
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
                              (Data.ProtoLens.Field.field @"vec'allowedVaryHeaders")
                              frozen'allowedVaryHeaders
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                                  mutable'allowedVaryHeaders
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "allowed_vary_headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'allowedVaryHeaders y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "key_creator_params"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"keyCreatorParams") y x)
                                  mutable'allowedVaryHeaders
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_body_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxBodyBytes") y x)
                                  mutable'allowedVaryHeaders
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'allowedVaryHeaders
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'allowedVaryHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'allowedVaryHeaders)
          "CacheConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'typedConfig") _x
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
                      (Data.ProtoLens.Field.field @"vec'allowedVaryHeaders") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'keyCreatorParams") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"maxBodyBytes") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CacheConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CacheConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CacheConfig'typedConfig x__)
                (Control.DeepSeq.deepseq
                   (_CacheConfig'allowedVaryHeaders x__)
                   (Control.DeepSeq.deepseq
                      (_CacheConfig'keyCreatorParams x__)
                      (Control.DeepSeq.deepseq (_CacheConfig'maxBodyBytes x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.excludeScheme' @:: Lens' CacheConfig'KeyCreatorParams Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.excludeHost' @:: Lens' CacheConfig'KeyCreatorParams Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.queryParametersIncluded' @:: Lens' CacheConfig'KeyCreatorParams [Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher]@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.vec'queryParametersIncluded' @:: Lens' CacheConfig'KeyCreatorParams (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.queryParametersExcluded' @:: Lens' CacheConfig'KeyCreatorParams [Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher]@
         * 'Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields.vec'queryParametersExcluded' @:: Lens' CacheConfig'KeyCreatorParams (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher)@ -}
data CacheConfig'KeyCreatorParams
  = CacheConfig'KeyCreatorParams'_constructor {_CacheConfig'KeyCreatorParams'excludeScheme :: !Prelude.Bool,
                                               _CacheConfig'KeyCreatorParams'excludeHost :: !Prelude.Bool,
                                               _CacheConfig'KeyCreatorParams'queryParametersIncluded :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher),
                                               _CacheConfig'KeyCreatorParams'queryParametersExcluded :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher),
                                               _CacheConfig'KeyCreatorParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CacheConfig'KeyCreatorParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CacheConfig'KeyCreatorParams "excludeScheme" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'KeyCreatorParams'excludeScheme
           (\ x__ y__
              -> x__ {_CacheConfig'KeyCreatorParams'excludeScheme = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CacheConfig'KeyCreatorParams "excludeHost" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'KeyCreatorParams'excludeHost
           (\ x__ y__
              -> x__ {_CacheConfig'KeyCreatorParams'excludeHost = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CacheConfig'KeyCreatorParams "queryParametersIncluded" [Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'KeyCreatorParams'queryParametersIncluded
           (\ x__ y__
              -> x__
                   {_CacheConfig'KeyCreatorParams'queryParametersIncluded = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CacheConfig'KeyCreatorParams "vec'queryParametersIncluded" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'KeyCreatorParams'queryParametersIncluded
           (\ x__ y__
              -> x__
                   {_CacheConfig'KeyCreatorParams'queryParametersIncluded = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CacheConfig'KeyCreatorParams "queryParametersExcluded" [Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'KeyCreatorParams'queryParametersExcluded
           (\ x__ y__
              -> x__
                   {_CacheConfig'KeyCreatorParams'queryParametersExcluded = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CacheConfig'KeyCreatorParams "vec'queryParametersExcluded" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CacheConfig'KeyCreatorParams'queryParametersExcluded
           (\ x__ y__
              -> x__
                   {_CacheConfig'KeyCreatorParams'queryParametersExcluded = y__}))
        Prelude.id
instance Data.ProtoLens.Message CacheConfig'KeyCreatorParams where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.cache.v3alpha.CacheConfig.KeyCreatorParams"
  packedMessageDescriptor _
    = "\n\
      \\DLEKeyCreatorParams\DC2%\n\
      \\SOexclude_scheme\CAN\SOH \SOH(\bR\rexcludeScheme\DC2!\n\
      \\fexclude_host\CAN\STX \SOH(\bR\vexcludeHost\DC2h\n\
      \\EMquery_parameters_included\CAN\ETX \ETX(\v2,.envoy.config.route.v3.QueryParameterMatcherR\ETBqueryParametersIncluded\DC2h\n\
      \\EMquery_parameters_excluded\CAN\EOT \ETX(\v2,.envoy.config.route.v3.QueryParameterMatcherR\ETBqueryParametersExcluded:J\154\197\136\RSE\n\
      \Cenvoy.config.filter.http.cache.v2alpha.CacheConfig.KeyCreatorParams"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        excludeScheme__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exclude_scheme"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"excludeScheme")) ::
              Data.ProtoLens.FieldDescriptor CacheConfig'KeyCreatorParams
        excludeHost__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exclude_host"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"excludeHost")) ::
              Data.ProtoLens.FieldDescriptor CacheConfig'KeyCreatorParams
        queryParametersIncluded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query_parameters_included"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"queryParametersIncluded")) ::
              Data.ProtoLens.FieldDescriptor CacheConfig'KeyCreatorParams
        queryParametersExcluded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query_parameters_excluded"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"queryParametersExcluded")) ::
              Data.ProtoLens.FieldDescriptor CacheConfig'KeyCreatorParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, excludeScheme__field_descriptor),
           (Data.ProtoLens.Tag 2, excludeHost__field_descriptor),
           (Data.ProtoLens.Tag 3, queryParametersIncluded__field_descriptor),
           (Data.ProtoLens.Tag 4, queryParametersExcluded__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CacheConfig'KeyCreatorParams'_unknownFields
        (\ x__ y__
           -> x__ {_CacheConfig'KeyCreatorParams'_unknownFields = y__})
  defMessage
    = CacheConfig'KeyCreatorParams'_constructor
        {_CacheConfig'KeyCreatorParams'excludeScheme = Data.ProtoLens.fieldDefault,
         _CacheConfig'KeyCreatorParams'excludeHost = Data.ProtoLens.fieldDefault,
         _CacheConfig'KeyCreatorParams'queryParametersIncluded = Data.Vector.Generic.empty,
         _CacheConfig'KeyCreatorParams'queryParametersExcluded = Data.Vector.Generic.empty,
         _CacheConfig'KeyCreatorParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CacheConfig'KeyCreatorParams
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.QueryParameterMatcher
                -> Data.ProtoLens.Encoding.Bytes.Parser CacheConfig'KeyCreatorParams
        loop
          x
          mutable'queryParametersExcluded
          mutable'queryParametersIncluded
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'queryParametersExcluded <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                             mutable'queryParametersExcluded)
                      frozen'queryParametersIncluded <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                             mutable'queryParametersIncluded)
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
                              (Data.ProtoLens.Field.field @"vec'queryParametersExcluded")
                              frozen'queryParametersExcluded
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'queryParametersIncluded")
                                 frozen'queryParametersIncluded
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "exclude_scheme"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"excludeScheme") y x)
                                  mutable'queryParametersExcluded
                                  mutable'queryParametersIncluded
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "exclude_host"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"excludeHost") y x)
                                  mutable'queryParametersExcluded
                                  mutable'queryParametersIncluded
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "query_parameters_included"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'queryParametersIncluded y)
                                loop x mutable'queryParametersExcluded v
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "query_parameters_excluded"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'queryParametersExcluded y)
                                loop x v mutable'queryParametersIncluded
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'queryParametersExcluded
                                  mutable'queryParametersIncluded
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'queryParametersExcluded <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   Data.ProtoLens.Encoding.Growing.new
              mutable'queryParametersIncluded <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'queryParametersExcluded
                mutable'queryParametersIncluded)
          "KeyCreatorParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"excludeScheme") _x
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
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"excludeHost") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
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
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'queryParametersIncluded") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
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
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'queryParametersExcluded") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CacheConfig'KeyCreatorParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CacheConfig'KeyCreatorParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CacheConfig'KeyCreatorParams'excludeScheme x__)
                (Control.DeepSeq.deepseq
                   (_CacheConfig'KeyCreatorParams'excludeHost x__)
                   (Control.DeepSeq.deepseq
                      (_CacheConfig'KeyCreatorParams'queryParametersIncluded x__)
                      (Control.DeepSeq.deepseq
                         (_CacheConfig'KeyCreatorParams'queryParametersExcluded x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \7envoy/extensions/filters/http/cache/v3alpha/cache.proto\DC2+envoy.extensions.filters.http.cache.v3alpha\SUB,envoy/config/route/v3/route_components.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB\EMgoogle/protobuf/any.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\129\ACK\n\
    \\vCacheConfig\DC2A\n\
    \\ftyped_config\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfigB\b\250B\ENQ\162\SOH\STX\b\SOH\DC2V\n\
    \\DC4allowed_vary_headers\CAN\STX \ETX(\v2$.envoy.type.matcher.v3.StringMatcherR\DC2allowedVaryHeaders\DC2w\n\
    \\DC2key_creator_params\CAN\ETX \SOH(\v2I.envoy.extensions.filters.http.cache.v3alpha.CacheConfig.KeyCreatorParamsR\DLEkeyCreatorParams\DC2$\n\
    \\SOmax_body_bytes\CAN\EOT \SOH(\rR\fmaxBodyBytes\SUB\252\STX\n\
    \\DLEKeyCreatorParams\DC2%\n\
    \\SOexclude_scheme\CAN\SOH \SOH(\bR\rexcludeScheme\DC2!\n\
    \\fexclude_host\CAN\STX \SOH(\bR\vexcludeHost\DC2h\n\
    \\EMquery_parameters_included\CAN\ETX \ETX(\v2,.envoy.config.route.v3.QueryParameterMatcherR\ETBqueryParametersIncluded\DC2h\n\
    \\EMquery_parameters_excluded\CAN\EOT \ETX(\v2,.envoy.config.route.v3.QueryParameterMatcherR\ETBqueryParametersExcluded:J\154\197\136\RSE\n\
    \Cenvoy.config.filter.http.cache.v2alpha.CacheConfig.KeyCreatorParams:9\154\197\136\RS4\n\
    \2envoy.config.filter.http.cache.v2alpha.CacheConfigBY\n\
    \9io.envoyproxy.envoy.extensions.filters.http.cache.v3alphaB\n\
    \CacheProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\171\SYN\n\
    \\ACK\DC2\EOT\NUL\NULQ\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL6\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL,\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULR\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NULR\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\DLE\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\\\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NULQ\SOH\SUB( [#extension: envoy.filters.http.cache]\n\
    \2& [#protodoc-title: HTTP Cache Filter]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\DC3\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\ETB\STX\CAN;\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ETB\STX\CAN;\n\
    \y\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\FS\STX1\ETX\SUBk [#not-implemented-hide:]\n\
    \ Modifies cache key creation by restricting which parts of the URL are included.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\FS\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT\GS\EOT\RSN\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT\GS\EOT\RSN\n\
    \\160\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\"\EOT\FS\SUB\144\SOH If true, exclude the URL scheme from the cache key. Set to true if your origins always\n\
    \ produce the same response for http and https requests.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\"\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\"\t\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\"\SUB\ESC\n\
    \\129\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX&\EOT\SUB\SUBr If true, exclude the host from the cache key. Set to true if your origins' responses don't\n\
    \ ever depend on host.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX&\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX&\t\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX&\CAN\EM\n\
    \\208\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX+\EOTQ\SUB\192\SOH If *query_parameters_included* is nonempty, only query parameters matched\n\
    \ by one or more of its matchers are included in the cache key. Any other\n\
    \ query params will not affect cache lookup.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX+\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETX+\r2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX+3L\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX+OP\n\
    \\240\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETX0\EOTQ\SUB\224\SOH If *query_parameters_excluded* is nonempty, query parameters matched by one\n\
    \ or more of its matchers are excluded from the cache key (even if also\n\
    \ matched by *query_parameters_included*), and will not affect cache lookup.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\EOT\DC2\ETX0\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ACK\DC2\ETX0\r2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETX03L\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETX0OP\n\
    \t\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX5\STXQ\SUBg Config specific to the cache storage implementation.\n\
    \ [#extension-category: envoy.filters.http.cache]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX5\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX5\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX5%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX5'P\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC4\DC2\ETX5(O\n\
    \\212\EOT\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXC\STXB\SUB\198\EOT List of matching rules that defines allowed *Vary* headers.\n\
    \\n\
    \ The *vary* response header holds a list of header names that affect the\n\
    \ contents of a response, as described by\n\
    \ https://httpwg.org/specs/rfc7234.html#caching.negotiated.responses.\n\
    \\n\
    \ During insertion, *allowed_vary_headers* acts as a allowlist: if a\n\
    \ response's *vary* header mentions any header names that aren't matched by any rules in\n\
    \ *allowed_vary_headers*, that response will not be cached.\n\
    \\n\
    \ During lookup, *allowed_vary_headers* controls what request headers will be\n\
    \ sent to the cache storage implementation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXC\v(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXC)=\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXC@A\n\
    \\170\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXI\STX*\SUB\156\SOH [#not-implemented-hide:]\n\
    \ <TODO(toddmgreer) implement key customization>\n\
    \\n\
    \ Modifies cache key creation by restricting which parts of the URL are included.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXI\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXI\DC3%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXI()\n\
    \\136\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXP\STX\FS\SUB\250\SOH [#not-implemented-hide:]\n\
    \ <TODO(toddmgreer) implement size limit>\n\
    \\n\
    \ Max body size the cache filter will insert into a cache. 0 means unlimited (though the cache\n\
    \ storage implementation may have its own limit beyond which it will reject insertions).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXP\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXP\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXP\SUB\ESCb\ACKproto3"