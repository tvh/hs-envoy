{- This file was auto-generated from envoy/extensions/filters/http/grpc_stats/v3/config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config (
        FilterConfig(), FilterConfig'PerMethodStatSpecifier(..),
        _FilterConfig'IndividualMethodStatsAllowlist,
        _FilterConfig'StatsForAllMethods, FilterObject()
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
import qualified Proto.Envoy.Config.Core.V3.GrpcMethodList
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config_Fields.emitFilterState' @:: Lens' FilterConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config_Fields.enableUpstreamStats' @:: Lens' FilterConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config_Fields.maybe'perMethodStatSpecifier' @:: Lens' FilterConfig (Prelude.Maybe FilterConfig'PerMethodStatSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config_Fields.maybe'individualMethodStatsAllowlist' @:: Lens' FilterConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcMethodList.GrpcMethodList)@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config_Fields.individualMethodStatsAllowlist' @:: Lens' FilterConfig Proto.Envoy.Config.Core.V3.GrpcMethodList.GrpcMethodList@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config_Fields.maybe'statsForAllMethods' @:: Lens' FilterConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config_Fields.statsForAllMethods' @:: Lens' FilterConfig Proto.Google.Protobuf.Wrappers.BoolValue@ -}
data FilterConfig
  = FilterConfig'_constructor {_FilterConfig'emitFilterState :: !Prelude.Bool,
                               _FilterConfig'enableUpstreamStats :: !Prelude.Bool,
                               _FilterConfig'perMethodStatSpecifier :: !(Prelude.Maybe FilterConfig'PerMethodStatSpecifier),
                               _FilterConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data FilterConfig'PerMethodStatSpecifier
  = FilterConfig'IndividualMethodStatsAllowlist !Proto.Envoy.Config.Core.V3.GrpcMethodList.GrpcMethodList |
    FilterConfig'StatsForAllMethods !Proto.Google.Protobuf.Wrappers.BoolValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField FilterConfig "emitFilterState" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'emitFilterState
           (\ x__ y__ -> x__ {_FilterConfig'emitFilterState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterConfig "enableUpstreamStats" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'enableUpstreamStats
           (\ x__ y__ -> x__ {_FilterConfig'enableUpstreamStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterConfig "maybe'perMethodStatSpecifier" (Prelude.Maybe FilterConfig'PerMethodStatSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'perMethodStatSpecifier
           (\ x__ y__ -> x__ {_FilterConfig'perMethodStatSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterConfig "maybe'individualMethodStatsAllowlist" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcMethodList.GrpcMethodList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'perMethodStatSpecifier
           (\ x__ y__ -> x__ {_FilterConfig'perMethodStatSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FilterConfig'IndividualMethodStatsAllowlist x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap FilterConfig'IndividualMethodStatsAllowlist y__))
instance Data.ProtoLens.Field.HasField FilterConfig "individualMethodStatsAllowlist" Proto.Envoy.Config.Core.V3.GrpcMethodList.GrpcMethodList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'perMethodStatSpecifier
           (\ x__ y__ -> x__ {_FilterConfig'perMethodStatSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FilterConfig'IndividualMethodStatsAllowlist x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap FilterConfig'IndividualMethodStatsAllowlist y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FilterConfig "maybe'statsForAllMethods" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'perMethodStatSpecifier
           (\ x__ y__ -> x__ {_FilterConfig'perMethodStatSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FilterConfig'StatsForAllMethods x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FilterConfig'StatsForAllMethods y__))
instance Data.ProtoLens.Field.HasField FilterConfig "statsForAllMethods" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'perMethodStatSpecifier
           (\ x__ y__ -> x__ {_FilterConfig'perMethodStatSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FilterConfig'StatsForAllMethods x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FilterConfig'StatsForAllMethods y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message FilterConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.grpc_stats.v3.FilterConfig"
  packedMessageDescriptor _
    = "\n\
      \\fFilterConfig\DC2*\n\
      \\DC1emit_filter_state\CAN\SOH \SOH(\bR\SIemitFilterState\DC2q\n\
      \!individual_method_stats_allowlist\CAN\STX \SOH(\v2$.envoy.config.core.v3.GrpcMethodListH\NULR\RSindividualMethodStatsAllowlist\DC2O\n\
      \\NAKstats_for_all_methods\CAN\ETX \SOH(\v2\SUB.google.protobuf.BoolValueH\NULR\DC2statsForAllMethods\DC22\n\
      \\NAKenable_upstream_stats\CAN\EOT \SOH(\bR\DC3enableUpstreamStatsB\ESC\n\
      \\EMper_method_stat_specifier:?\154\197\136\RS:\n\
      \8envoy.config.filter.http.grpc_stats.v2alpha.FilterConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        emitFilterState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "emit_filter_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"emitFilterState")) ::
              Data.ProtoLens.FieldDescriptor FilterConfig
        enableUpstreamStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_upstream_stats"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableUpstreamStats")) ::
              Data.ProtoLens.FieldDescriptor FilterConfig
        individualMethodStatsAllowlist__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "individual_method_stats_allowlist"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcMethodList.GrpcMethodList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'individualMethodStatsAllowlist")) ::
              Data.ProtoLens.FieldDescriptor FilterConfig
        statsForAllMethods__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats_for_all_methods"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'statsForAllMethods")) ::
              Data.ProtoLens.FieldDescriptor FilterConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, emitFilterState__field_descriptor),
           (Data.ProtoLens.Tag 4, enableUpstreamStats__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            individualMethodStatsAllowlist__field_descriptor),
           (Data.ProtoLens.Tag 3, statsForAllMethods__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterConfig'_unknownFields
        (\ x__ y__ -> x__ {_FilterConfig'_unknownFields = y__})
  defMessage
    = FilterConfig'_constructor
        {_FilterConfig'emitFilterState = Data.ProtoLens.fieldDefault,
         _FilterConfig'enableUpstreamStats = Data.ProtoLens.fieldDefault,
         _FilterConfig'perMethodStatSpecifier = Prelude.Nothing,
         _FilterConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterConfig -> Data.ProtoLens.Encoding.Bytes.Parser FilterConfig
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
                                       "emit_filter_state"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"emitFilterState") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enable_upstream_stats"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableUpstreamStats") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "individual_method_stats_allowlist"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"individualMethodStatsAllowlist")
                                     y
                                     x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stats_for_all_methods"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"statsForAllMethods") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FilterConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"emitFilterState") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"enableUpstreamStats") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'perMethodStatSpecifier") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (FilterConfig'IndividualMethodStatsAllowlist v))
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
                      (Prelude.Just (FilterConfig'StatsForAllMethods v))
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
instance Control.DeepSeq.NFData FilterConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterConfig'emitFilterState x__)
                (Control.DeepSeq.deepseq
                   (_FilterConfig'enableUpstreamStats x__)
                   (Control.DeepSeq.deepseq
                      (_FilterConfig'perMethodStatSpecifier x__) ())))
instance Control.DeepSeq.NFData FilterConfig'PerMethodStatSpecifier where
  rnf (FilterConfig'IndividualMethodStatsAllowlist x__)
    = Control.DeepSeq.rnf x__
  rnf (FilterConfig'StatsForAllMethods x__) = Control.DeepSeq.rnf x__
_FilterConfig'IndividualMethodStatsAllowlist ::
  Data.ProtoLens.Prism.Prism' FilterConfig'PerMethodStatSpecifier Proto.Envoy.Config.Core.V3.GrpcMethodList.GrpcMethodList
_FilterConfig'IndividualMethodStatsAllowlist
  = Data.ProtoLens.Prism.prism'
      FilterConfig'IndividualMethodStatsAllowlist
      (\ p__
         -> case p__ of
              (FilterConfig'IndividualMethodStatsAllowlist p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FilterConfig'StatsForAllMethods ::
  Data.ProtoLens.Prism.Prism' FilterConfig'PerMethodStatSpecifier Proto.Google.Protobuf.Wrappers.BoolValue
_FilterConfig'StatsForAllMethods
  = Data.ProtoLens.Prism.prism'
      FilterConfig'StatsForAllMethods
      (\ p__
         -> case p__ of
              (FilterConfig'StatsForAllMethods p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config_Fields.requestMessageCount' @:: Lens' FilterObject Data.Word.Word64@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config_Fields.responseMessageCount' @:: Lens' FilterObject Data.Word.Word64@ -}
data FilterObject
  = FilterObject'_constructor {_FilterObject'requestMessageCount :: !Data.Word.Word64,
                               _FilterObject'responseMessageCount :: !Data.Word.Word64,
                               _FilterObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterObject "requestMessageCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterObject'requestMessageCount
           (\ x__ y__ -> x__ {_FilterObject'requestMessageCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterObject "responseMessageCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterObject'responseMessageCount
           (\ x__ y__ -> x__ {_FilterObject'responseMessageCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterObject where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.grpc_stats.v3.FilterObject"
  packedMessageDescriptor _
    = "\n\
      \\fFilterObject\DC22\n\
      \\NAKrequest_message_count\CAN\SOH \SOH(\EOTR\DC3requestMessageCount\DC24\n\
      \\SYNresponse_message_count\CAN\STX \SOH(\EOTR\DC4responseMessageCount:?\154\197\136\RS:\n\
      \8envoy.config.filter.http.grpc_stats.v2alpha.FilterObject"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requestMessageCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_message_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestMessageCount")) ::
              Data.ProtoLens.FieldDescriptor FilterObject
        responseMessageCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_message_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseMessageCount")) ::
              Data.ProtoLens.FieldDescriptor FilterObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requestMessageCount__field_descriptor),
           (Data.ProtoLens.Tag 2, responseMessageCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterObject'_unknownFields
        (\ x__ y__ -> x__ {_FilterObject'_unknownFields = y__})
  defMessage
    = FilterObject'_constructor
        {_FilterObject'requestMessageCount = Data.ProtoLens.fieldDefault,
         _FilterObject'responseMessageCount = Data.ProtoLens.fieldDefault,
         _FilterObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterObject -> Data.ProtoLens.Encoding.Bytes.Parser FilterObject
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "request_message_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestMessageCount") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "response_message_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseMessageCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FilterObject"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"requestMessageCount") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"responseMessageCount") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FilterObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterObject'requestMessageCount x__)
                (Control.DeepSeq.deepseq
                   (_FilterObject'responseMessageCount x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \8envoy/extensions/filters/http/grpc_stats/v3/config.proto\DC2+envoy.extensions.filters.http.grpc_stats.v3\SUB+envoy/config/core/v3/grpc_method_list.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\144\ETX\n\
    \\fFilterConfig\DC2*\n\
    \\DC1emit_filter_state\CAN\SOH \SOH(\bR\SIemitFilterState\DC2q\n\
    \!individual_method_stats_allowlist\CAN\STX \SOH(\v2$.envoy.config.core.v3.GrpcMethodListH\NULR\RSindividualMethodStatsAllowlist\DC2O\n\
    \\NAKstats_for_all_methods\CAN\ETX \SOH(\v2\SUB.google.protobuf.BoolValueH\NULR\DC2statsForAllMethods\DC22\n\
    \\NAKenable_upstream_stats\CAN\EOT \SOH(\bR\DC3enableUpstreamStatsB\ESC\n\
    \\EMper_method_stat_specifier:?\154\197\136\RS:\n\
    \8envoy.config.filter.http.grpc_stats.v2alpha.FilterConfig\"\185\SOH\n\
    \\fFilterObject\DC22\n\
    \\NAKrequest_message_count\CAN\SOH \SOH(\EOTR\DC3requestMessageCount\DC24\n\
    \\SYNresponse_message_count\CAN\STX \SOH(\EOTR\DC4responseMessageCount:?\154\197\136\RS:\n\
    \8envoy.config.filter.http.grpc_stats.v2alpha.FilterObjectBR\n\
    \9io.envoyproxy.envoy.extensions.filters.http.grpc_stats.v3B\vConfigProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\219\NAK\n\
    \\ACK\DC2\EOT\NUL\NULI\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL5\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULR\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULR\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\222\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL=\SOH\SUB& gRPC statistics filter configuration\n\
    \2\169\SOH [#protodoc-title: gRPC statistics] gRPC statistics filter\n\
    \ :ref:`configuration overview <config_http_filters_grpc_stats>`.\n\
    \ [#extension: envoy.filters.http.grpc_stats]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\DC4\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SYN\STX\ETBA\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SYN\STX\ETBA\n\
    \q\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STX\GS\SUBd If true, the filter maintains a filter state object with the request and response message\n\
    \ counts.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ESC\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\a\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\GS\STX4\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\GS\b!\n\
    \\237\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX!\EOTH\SUB\223\SOH If set, specifies an allowlist of service/methods that will have individual stats\n\
    \ emitted for them. Any call that does not match the allowlist will be counted\n\
    \ in a stat with no method specifier: `cluster.<name>.grpc.*`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX!\EOT!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX!\"C\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX!FG\n\
    \\239\a\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX3\EOT8\SUB\225\a If set to true, emit stats for all service/method names.\n\
    \\n\
    \ If set to false, emit stats for all service/message types to the same stats without including\n\
    \ the service/method in the name, with prefix `cluster.<name>.grpc`. This can be useful if\n\
    \ service/method granularity is not needed, or if each cluster only receives a single method.\n\
    \\n\
    \ .. attention::\n\
    \   This option is only safe if all clients are trusted. If this option is enabled\n\
    \   with untrusted clients, the clients could cause unbounded growth in the number of stats in\n\
    \   Envoy, using unbounded memory and potentially slowing down stats pipelines.\n\
    \\n\
    \ .. attention::\n\
    \   If neither `individual_method_stats_allowlist` nor `stats_for_all_methods` is set, the\n\
    \   behavior will default to `stats_for_all_methods=false`. This default value is changed due\n\
    \   to the previous value being deprecated. This behavior can be changed with runtime override\n\
    \   `envoy.deprecated_features.grpc_stats_filter_enable_stats_for_all_methods_by_default`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX3\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX3\RS3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX367\n\
    \\203\ETX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX<\STX!\SUB\189\ETX If true, the filter will gather a histogram for the request time of the upstream.\n\
    \ It works with :ref:`stats_for_all_methods\n\
    \ <envoy_v3_api_field_extensions.filters.http.grpc_stats.v3.FilterConfig.stats_for_all_methods>`\n\
    \ and :ref:`individual_method_stats_allowlist\n\
    \ <envoy_v3_api_field_extensions.filters.http.grpc_stats.v3.FilterConfig.individual_method_stats_allowlist>` the same way\n\
    \ request_message_count and response_message_count works.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX<\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX<\a\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX<\US \n\
    \C\n\
    \\STX\EOT\SOH\DC2\EOT@\NULI\SOH\SUB7 gRPC statistics filter state object in protobuf form.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX@\b\DC4\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTA\STXBA\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTA\STXBA\n\
    \?\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXE\STX#\SUB2 Count of request messages in the request stream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXE\t\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXE!\"\n\
    \A\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXH\STX$\SUB4 Count of response messages in the response stream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXH\t\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXH\"#b\ACKproto3"