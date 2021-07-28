{- This file was auto-generated from envoy/extensions/filters/http/health_check/v3/health_check.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck (
        HealthCheck(), HealthCheck'ClusterMinHealthyPercentagesEntry()
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
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck_Fields.passThroughMode' @:: Lens' HealthCheck Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck_Fields.maybe'passThroughMode' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck_Fields.cacheTime' @:: Lens' HealthCheck Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck_Fields.maybe'cacheTime' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck_Fields.clusterMinHealthyPercentages' @:: Lens' HealthCheck (Data.Map.Map Data.Text.Text Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck_Fields.headers' @:: Lens' HealthCheck [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher]@
         * 'Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck_Fields.vec'headers' @:: Lens' HealthCheck (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@ -}
data HealthCheck
  = HealthCheck'_constructor {_HealthCheck'passThroughMode :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                              _HealthCheck'cacheTime :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _HealthCheck'clusterMinHealthyPercentages :: !(Data.Map.Map Data.Text.Text Proto.Envoy.Type.V3.Percent.Percent),
                              _HealthCheck'headers :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher),
                              _HealthCheck'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheck where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheck "passThroughMode" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'passThroughMode
           (\ x__ y__ -> x__ {_HealthCheck'passThroughMode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'passThroughMode" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'passThroughMode
           (\ x__ y__ -> x__ {_HealthCheck'passThroughMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "cacheTime" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'cacheTime
           (\ x__ y__ -> x__ {_HealthCheck'cacheTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'cacheTime" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'cacheTime
           (\ x__ y__ -> x__ {_HealthCheck'cacheTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "clusterMinHealthyPercentages" (Data.Map.Map Data.Text.Text Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'clusterMinHealthyPercentages
           (\ x__ y__
              -> x__ {_HealthCheck'clusterMinHealthyPercentages = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "headers" [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'headers
           (\ x__ y__ -> x__ {_HealthCheck'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HealthCheck "vec'headers" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'headers
           (\ x__ y__ -> x__ {_HealthCheck'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheck where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.health_check.v3.HealthCheck"
  packedMessageDescriptor _
    = "\n\
      \\vHealthCheck\DC2P\n\
      \\DC1pass_through_mode\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\SIpassThroughModeB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC28\n\
      \\n\
      \cache_time\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\tcacheTime\DC2\163\SOH\n\
      \\UScluster_min_healthy_percentages\CAN\EOT \ETX(\v2\\.envoy.extensions.filters.http.health_check.v3.HealthCheck.ClusterMinHealthyPercentagesEntryR\FSclusterMinHealthyPercentages\DC2>\n\
      \\aheaders\CAN\ENQ \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders\SUBg\n\
      \!ClusterMinHealthyPercentagesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2,\n\
      \\ENQvalue\CAN\STX \SOH(\v2\SYN.envoy.type.v3.PercentR\ENQvalue:\STX8\SOH:;\154\197\136\RS6\n\
      \4envoy.config.filter.http.health_check.v2.HealthCheckJ\EOT\b\STX\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        passThroughMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pass_through_mode"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'passThroughMode")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        cacheTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cache_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cacheTime")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        clusterMinHealthyPercentages__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_min_healthy_percentages"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheck'ClusterMinHealthyPercentagesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"clusterMinHealthyPercentages")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, passThroughMode__field_descriptor),
           (Data.ProtoLens.Tag 3, cacheTime__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            clusterMinHealthyPercentages__field_descriptor),
           (Data.ProtoLens.Tag 5, headers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheck'_unknownFields
        (\ x__ y__ -> x__ {_HealthCheck'_unknownFields = y__})
  defMessage
    = HealthCheck'_constructor
        {_HealthCheck'passThroughMode = Prelude.Nothing,
         _HealthCheck'cacheTime = Prelude.Nothing,
         _HealthCheck'clusterMinHealthyPercentages = Data.Map.empty,
         _HealthCheck'headers = Data.Vector.Generic.empty,
         _HealthCheck'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheck
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheck
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
                                       "pass_through_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"passThroughMode") y x)
                                  mutable'headers
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cache_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cacheTime") y x)
                                  mutable'headers
                        34
                          -> do !(entry :: HealthCheck'ClusterMinHealthyPercentagesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                               (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                     (Prelude.fromIntegral
                                                                                                        len)
                                                                                                     Data.ProtoLens.parseMessage)
                                                                                               "cluster_min_healthy_percentages"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"clusterMinHealthyPercentages")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'headers)
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'headers y)
                                loop x v
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
          "HealthCheck"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'passThroughMode") _x
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
                       (Data.ProtoLens.Field.field @"maybe'cacheTime") _x
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
                   (Data.Monoid.mconcat
                      (Prelude.map
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
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"key")
                                       (Prelude.fst _v)
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"value")
                                          (Prelude.snd _v)
                                          (Data.ProtoLens.defMessage ::
                                             HealthCheck'ClusterMinHealthyPercentagesEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"clusterMinHealthyPercentages") _x))))
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
                                    Data.ProtoLens.encodeMessage
                                    _v))
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'headers") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData HealthCheck where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheck'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheck'passThroughMode x__)
                (Control.DeepSeq.deepseq
                   (_HealthCheck'cacheTime x__)
                   (Control.DeepSeq.deepseq
                      (_HealthCheck'clusterMinHealthyPercentages x__)
                      (Control.DeepSeq.deepseq (_HealthCheck'headers x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck_Fields.key' @:: Lens' HealthCheck'ClusterMinHealthyPercentagesEntry Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck_Fields.value' @:: Lens' HealthCheck'ClusterMinHealthyPercentagesEntry Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Extensions.Filters.Http.HealthCheck.V3.HealthCheck_Fields.maybe'value' @:: Lens' HealthCheck'ClusterMinHealthyPercentagesEntry (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@ -}
data HealthCheck'ClusterMinHealthyPercentagesEntry
  = HealthCheck'ClusterMinHealthyPercentagesEntry'_constructor {_HealthCheck'ClusterMinHealthyPercentagesEntry'key :: !Data.Text.Text,
                                                                _HealthCheck'ClusterMinHealthyPercentagesEntry'value :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                                                _HealthCheck'ClusterMinHealthyPercentagesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheck'ClusterMinHealthyPercentagesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheck'ClusterMinHealthyPercentagesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'ClusterMinHealthyPercentagesEntry'key
           (\ x__ y__
              -> x__ {_HealthCheck'ClusterMinHealthyPercentagesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'ClusterMinHealthyPercentagesEntry "value" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'ClusterMinHealthyPercentagesEntry'value
           (\ x__ y__
              -> x__
                   {_HealthCheck'ClusterMinHealthyPercentagesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck'ClusterMinHealthyPercentagesEntry "maybe'value" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'ClusterMinHealthyPercentagesEntry'value
           (\ x__ y__
              -> x__
                   {_HealthCheck'ClusterMinHealthyPercentagesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheck'ClusterMinHealthyPercentagesEntry where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.health_check.v3.HealthCheck.ClusterMinHealthyPercentagesEntry"
  packedMessageDescriptor _
    = "\n\
      \!ClusterMinHealthyPercentagesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2,\n\
      \\ENQvalue\CAN\STX \SOH(\v2\SYN.envoy.type.v3.PercentR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor HealthCheck'ClusterMinHealthyPercentagesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'ClusterMinHealthyPercentagesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheck'ClusterMinHealthyPercentagesEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_HealthCheck'ClusterMinHealthyPercentagesEntry'_unknownFields = y__})
  defMessage
    = HealthCheck'ClusterMinHealthyPercentagesEntry'_constructor
        {_HealthCheck'ClusterMinHealthyPercentagesEntry'key = Data.ProtoLens.fieldDefault,
         _HealthCheck'ClusterMinHealthyPercentagesEntry'value = Prelude.Nothing,
         _HealthCheck'ClusterMinHealthyPercentagesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheck'ClusterMinHealthyPercentagesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheck'ClusterMinHealthyPercentagesEntry
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
          (do loop Data.ProtoLens.defMessage)
          "ClusterMinHealthyPercentagesEntry"
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
instance Control.DeepSeq.NFData HealthCheck'ClusterMinHealthyPercentagesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheck'ClusterMinHealthyPercentagesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheck'ClusterMinHealthyPercentagesEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_HealthCheck'ClusterMinHealthyPercentagesEntry'value x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \@envoy/extensions/filters/http/health_check/v3/health_check.proto\DC2-envoy.extensions.filters.http.health_check.v3\SUB,envoy/config/route/v3/route_components.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\171\EOT\n\
    \\vHealthCheck\DC2P\n\
    \\DC1pass_through_mode\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\SIpassThroughModeB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC28\n\
    \\n\
    \cache_time\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\tcacheTime\DC2\163\SOH\n\
    \\UScluster_min_healthy_percentages\CAN\EOT \ETX(\v2\\.envoy.extensions.filters.http.health_check.v3.HealthCheck.ClusterMinHealthyPercentagesEntryR\FSclusterMinHealthyPercentages\DC2>\n\
    \\aheaders\CAN\ENQ \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders\SUBg\n\
    \!ClusterMinHealthyPercentagesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2,\n\
    \\ENQvalue\CAN\STX \SOH(\v2\SYN.envoy.type.v3.PercentR\ENQvalue:\STX8\SOH:;\154\197\136\RS6\n\
    \4envoy.config.filter.http.health_check.v2.HealthCheckJ\EOT\b\STX\DLE\ETXBY\n\
    \;io.envoyproxy.envoy.extensions.filters.http.health_check.v3B\DLEHealthCheckProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\130\f\n\
    \\ACK\DC2\EOT\NUL\NUL3\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL6\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL6\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL%\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULT\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NULT\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\198\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL3\SOH\SUB\ETB [#next-free-field: 6]\n\
    \2\160\SOH [#protodoc-title: Health check]\n\
    \ Health check :ref:`configuration overview <config_http_filters_health_check>`.\n\
    \ [#extension: envoy.filters.http.health_check]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\DC3\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\EM\STX\SUB=\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\EM\STX\SUB=\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX\FS\STX\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\FS\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\FS\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\FS\v\f\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STX`\SUBD Specifies whether the filter operates in pass through mode or not.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\US\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\FS-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US01\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\US2_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\US3^\n\
    \\137\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX#\STX*\SUB| If operating in pass through mode, the amount of time in milliseconds\n\
    \ that the filter should cache the upstream response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX#\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX#\ESC%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX#()\n\
    \\232\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX-\STXC\SUB\218\STX If operating in non-pass-through mode, specifies a set of upstream cluster\n\
    \ names and the minimum percentage of servers in each of those clusters that\n\
    \ must be healthy or degraded in order for the filter to return a 200.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \    This value is interpreted as an integer by truncating, so 12.50% will be calculated\n\
    \    as if it were 12%.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX-\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX-\US>\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX-AB\n\
    \\246\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX2\STX5\SUB\232\SOH Specifies a set of health check request headers to match on. The health check filter will\n\
    \ check a request\226\128\153s headers against all the specified headers. To specify the health check\n\
    \ endpoint, set the ``:path`` header to match on.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX2\v(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX2)0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX234b\ACKproto3"