{- This file was auto-generated from envoy/extensions/filters/network/rocketmq_proxy/v3/route.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route (
        Route(), RouteAction(), RouteConfiguration(), RouteMatch()
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
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.match' @:: Lens' Route RouteMatch@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.maybe'match' @:: Lens' Route (Prelude.Maybe RouteMatch)@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.route' @:: Lens' Route RouteAction@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.maybe'route' @:: Lens' Route (Prelude.Maybe RouteAction)@ -}
data Route
  = Route'_constructor {_Route'match :: !(Prelude.Maybe RouteMatch),
                        _Route'route :: !(Prelude.Maybe RouteAction),
                        _Route'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Route where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Route "match" RouteMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'match (\ x__ y__ -> x__ {_Route'match = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Route "maybe'match" (Prelude.Maybe RouteMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'match (\ x__ y__ -> x__ {_Route'match = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Route "route" RouteAction where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'route (\ x__ y__ -> x__ {_Route'route = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Route "maybe'route" (Prelude.Maybe RouteAction) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'route (\ x__ y__ -> x__ {_Route'route = y__}))
        Prelude.id
instance Data.ProtoLens.Message Route where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.rocketmq_proxy.v3.Route"
  packedMessageDescriptor _
    = "\n\
      \\ENQRoute\DC2^\n\
      \\ENQmatch\CAN\SOH \SOH(\v2>.envoy.extensions.filters.network.rocketmq_proxy.v3.RouteMatchR\ENQmatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2_\n\
      \\ENQroute\CAN\STX \SOH(\v2?.envoy.extensions.filters.network.rocketmq_proxy.v3.RouteActionR\ENQrouteB\b\250B\ENQ\138\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        match__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RouteMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'match")) ::
              Data.ProtoLens.FieldDescriptor Route
        route__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RouteAction)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'route")) ::
              Data.ProtoLens.FieldDescriptor Route
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, match__field_descriptor),
           (Data.ProtoLens.Tag 2, route__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Route'_unknownFields
        (\ x__ y__ -> x__ {_Route'_unknownFields = y__})
  defMessage
    = Route'_constructor
        {_Route'match = Prelude.Nothing, _Route'route = Prelude.Nothing,
         _Route'_unknownFields = []}
  parseMessage
    = let
        loop :: Route -> Data.ProtoLens.Encoding.Bytes.Parser Route
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
                                       "route"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"route") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Route"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'route") _x
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
instance Control.DeepSeq.NFData Route where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Route'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Route'match x__) (Control.DeepSeq.deepseq (_Route'route x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.cluster' @:: Lens' RouteAction Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.metadataMatch' @:: Lens' RouteAction Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.maybe'metadataMatch' @:: Lens' RouteAction (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@ -}
data RouteAction
  = RouteAction'_constructor {_RouteAction'cluster :: !Data.Text.Text,
                              _RouteAction'metadataMatch :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                              _RouteAction'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteAction where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RouteAction "cluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'cluster
           (\ x__ y__ -> x__ {_RouteAction'cluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteAction "metadataMatch" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'metadataMatch
           (\ x__ y__ -> x__ {_RouteAction'metadataMatch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RouteAction "maybe'metadataMatch" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'metadataMatch
           (\ x__ y__ -> x__ {_RouteAction'metadataMatch = y__}))
        Prelude.id
instance Data.ProtoLens.Message RouteAction where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.rocketmq_proxy.v3.RouteAction"
  packedMessageDescriptor _
    = "\n\
      \\vRouteAction\DC2!\n\
      \\acluster\CAN\SOH \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2E\n\
      \\SOmetadata_match\CAN\STX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cluster")) ::
              Data.ProtoLens.FieldDescriptor RouteAction
        metadataMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadataMatch")) ::
              Data.ProtoLens.FieldDescriptor RouteAction
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cluster__field_descriptor),
           (Data.ProtoLens.Tag 2, metadataMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RouteAction'_unknownFields
        (\ x__ y__ -> x__ {_RouteAction'_unknownFields = y__})
  defMessage
    = RouteAction'_constructor
        {_RouteAction'cluster = Data.ProtoLens.fieldDefault,
         _RouteAction'metadataMatch = Prelude.Nothing,
         _RouteAction'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RouteAction -> Data.ProtoLens.Encoding.Bytes.Parser RouteAction
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
                                       "cluster"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"metadataMatch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RouteAction"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cluster") _x
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
                       (Data.ProtoLens.Field.field @"maybe'metadataMatch") _x
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
instance Control.DeepSeq.NFData RouteAction where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RouteAction'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RouteAction'cluster x__)
                (Control.DeepSeq.deepseq (_RouteAction'metadataMatch x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.name' @:: Lens' RouteConfiguration Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.routes' @:: Lens' RouteConfiguration [Route]@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.vec'routes' @:: Lens' RouteConfiguration (Data.Vector.Vector Route)@ -}
data RouteConfiguration
  = RouteConfiguration'_constructor {_RouteConfiguration'name :: !Data.Text.Text,
                                     _RouteConfiguration'routes :: !(Data.Vector.Vector Route),
                                     _RouteConfiguration'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteConfiguration where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RouteConfiguration "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'name
           (\ x__ y__ -> x__ {_RouteConfiguration'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "routes" [Route] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'routes
           (\ x__ y__ -> x__ {_RouteConfiguration'routes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteConfiguration "vec'routes" (Data.Vector.Vector Route) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'routes
           (\ x__ y__ -> x__ {_RouteConfiguration'routes = y__}))
        Prelude.id
instance Data.ProtoLens.Message RouteConfiguration where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.rocketmq_proxy.v3.RouteConfiguration"
  packedMessageDescriptor _
    = "\n\
      \\DC2RouteConfiguration\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2Q\n\
      \\ACKroutes\CAN\STX \ETX(\v29.envoy.extensions.filters.network.rocketmq_proxy.v3.RouteR\ACKroutes"
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
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        routes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "routes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Route)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"routes")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, routes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RouteConfiguration'_unknownFields
        (\ x__ y__ -> x__ {_RouteConfiguration'_unknownFields = y__})
  defMessage
    = RouteConfiguration'_constructor
        {_RouteConfiguration'name = Data.ProtoLens.fieldDefault,
         _RouteConfiguration'routes = Data.Vector.Generic.empty,
         _RouteConfiguration'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RouteConfiguration
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Route
             -> Data.ProtoLens.Encoding.Bytes.Parser RouteConfiguration
        loop x mutable'routes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'routes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'routes)
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
                              (Data.ProtoLens.Field.field @"vec'routes") frozen'routes x))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'routes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "routes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'routes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'routes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'routes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'routes)
          "RouteConfiguration"
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'routes") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RouteConfiguration where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RouteConfiguration'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RouteConfiguration'name x__)
                (Control.DeepSeq.deepseq (_RouteConfiguration'routes x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.topic' @:: Lens' RouteMatch Proto.Envoy.Type.Matcher.V3.String.StringMatcher@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.maybe'topic' @:: Lens' RouteMatch (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.headers' @:: Lens' RouteMatch [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher]@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route_Fields.vec'headers' @:: Lens' RouteMatch (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@ -}
data RouteMatch
  = RouteMatch'_constructor {_RouteMatch'topic :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher),
                             _RouteMatch'headers :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher),
                             _RouteMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RouteMatch "topic" Proto.Envoy.Type.Matcher.V3.String.StringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'topic (\ x__ y__ -> x__ {_RouteMatch'topic = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RouteMatch "maybe'topic" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'topic (\ x__ y__ -> x__ {_RouteMatch'topic = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteMatch "headers" [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'headers (\ x__ y__ -> x__ {_RouteMatch'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteMatch "vec'headers" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'headers (\ x__ y__ -> x__ {_RouteMatch'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Message RouteMatch where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.rocketmq_proxy.v3.RouteMatch"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \RouteMatch\DC2D\n\
      \\ENQtopic\CAN\SOH \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\ENQtopicB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2>\n\
      \\aheaders\CAN\STX \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        topic__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "topic"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'topic")) ::
              Data.ProtoLens.FieldDescriptor RouteMatch
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor RouteMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, topic__field_descriptor),
           (Data.ProtoLens.Tag 2, headers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RouteMatch'_unknownFields
        (\ x__ y__ -> x__ {_RouteMatch'_unknownFields = y__})
  defMessage
    = RouteMatch'_constructor
        {_RouteMatch'topic = Prelude.Nothing,
         _RouteMatch'headers = Data.Vector.Generic.empty,
         _RouteMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RouteMatch
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser RouteMatch
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
                                       "topic"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"topic") y x)
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
          "RouteMatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'topic") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RouteMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RouteMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RouteMatch'topic x__)
                (Control.DeepSeq.deepseq (_RouteMatch'headers x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \>envoy/extensions/filters/network/rocketmq_proxy/v3/route.proto\DC22envoy.extensions.filters.network.rocketmq_proxy.v3\SUB\USenvoy/config/core/v3/base.proto\SUB,envoy/config/route/v3/route_components.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"{\n\
    \\DC2RouteConfiguration\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2Q\n\
    \\ACKroutes\CAN\STX \ETX(\v29.envoy.extensions.filters.network.rocketmq_proxy.v3.RouteR\ACKroutes\"\200\SOH\n\
    \\ENQRoute\DC2^\n\
    \\ENQmatch\CAN\SOH \SOH(\v2>.envoy.extensions.filters.network.rocketmq_proxy.v3.RouteMatchR\ENQmatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2_\n\
    \\ENQroute\CAN\STX \SOH(\v2?.envoy.extensions.filters.network.rocketmq_proxy.v3.RouteActionR\ENQrouteB\b\250B\ENQ\138\SOH\STX\DLE\SOH\"\146\SOH\n\
    \\n\
    \RouteMatch\DC2D\n\
    \\ENQtopic\CAN\SOH \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\ENQtopicB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2>\n\
    \\aheaders\CAN\STX \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders\"w\n\
    \\vRouteAction\DC2!\n\
    \\acluster\CAN\SOH \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2E\n\
    \\SOmetadata_match\CAN\STX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatchBX\n\
    \@io.envoyproxy.envoy.extensions.filters.network.rocketmq_proxy.v3B\n\
    \RouteProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\218\r\n\
    \\ACK\DC2\EOT\NUL\NUL5\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL;\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL6\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL,\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULY\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULY\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\155\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\SUB\SOH2\142\SOH [#protodoc-title: Rocketmq Proxy Route Configuration]\n\
    \ Rocketmq Proxy :ref:`configuration overview <config_network_filters_rocketmq_proxy>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\SUB\n\
    \3\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\NAK\STX\DC2\SUB& The name of the route configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK\DLE\DC1\n\
    \\136\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\EM\STX\FS\SUB{ The list of routes that will be matched, in order, against incoming requests. The first route\n\
    \ that matches will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\EM\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\EM\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\EM\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\FS\NUL\"\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\FS\b\r\n\
    \)\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\RS\STXE\SUB\FS Route matching parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\RS\STX\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\RS\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\RS\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX\RS\ETBD\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC1\DC2\ETX\RS\CANC\n\
    \6\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX!\STXF\SUB) Route request to some upstream cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX!\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX!\SO\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX!\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX!\CANE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\DC1\DC2\ETX!\EMD\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT$\NUL-\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX$\b\DC2\n\
    \%\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX&\STXX\SUB\CAN The name of the topic.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX&\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX& %\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX&()\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX&*W\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\175\b\DC1\DC2\ETX&+V\n\
    \\214\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX,\STX5\SUB\200\STX Specifies a set of headers that the route should match on. The router will check the request\226\128\153s\n\
    \ headers against all the specified headers in the route config. A match will happen if all the\n\
    \ headers in the route are present in the request with the same values (or based on presence if\n\
    \ the value field is not in the config).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX,\v(\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX,)0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX,34\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT/\NUL5\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX/\b\DC3\n\
    \T\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX1\STX>\SUBG Indicates the upstream cluster to which the request should be routed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX1\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX1\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX1\NAK=\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\SO\DC2\ETX1\SYN<\n\
    \Z\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX4\STX-\SUBM Optional endpoint metadata match criteria used by the subset load balancer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX4\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX4\SUB(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX4+,b\ACKproto3"