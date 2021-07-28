{- This file was auto-generated from envoy/service/discovery/v3/discovery.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Discovery.V3.Discovery (
        DeltaDiscoveryRequest(),
        DeltaDiscoveryRequest'InitialResourceVersionsEntry(),
        DeltaDiscoveryResponse(), DiscoveryRequest(), DiscoveryResponse(),
        Resource(), Resource'CacheControl()
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Rpc.Status
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.node' @:: Lens' DeltaDiscoveryRequest Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.maybe'node' @:: Lens' DeltaDiscoveryRequest (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.typeUrl' @:: Lens' DeltaDiscoveryRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.resourceNamesSubscribe' @:: Lens' DeltaDiscoveryRequest [Data.Text.Text]@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.vec'resourceNamesSubscribe' @:: Lens' DeltaDiscoveryRequest (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.resourceNamesUnsubscribe' @:: Lens' DeltaDiscoveryRequest [Data.Text.Text]@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.vec'resourceNamesUnsubscribe' @:: Lens' DeltaDiscoveryRequest (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.initialResourceVersions' @:: Lens' DeltaDiscoveryRequest (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.responseNonce' @:: Lens' DeltaDiscoveryRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.errorDetail' @:: Lens' DeltaDiscoveryRequest Proto.Google.Rpc.Status.Status@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.maybe'errorDetail' @:: Lens' DeltaDiscoveryRequest (Prelude.Maybe Proto.Google.Rpc.Status.Status)@ -}
data DeltaDiscoveryRequest
  = DeltaDiscoveryRequest'_constructor {_DeltaDiscoveryRequest'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                                        _DeltaDiscoveryRequest'typeUrl :: !Data.Text.Text,
                                        _DeltaDiscoveryRequest'resourceNamesSubscribe :: !(Data.Vector.Vector Data.Text.Text),
                                        _DeltaDiscoveryRequest'resourceNamesUnsubscribe :: !(Data.Vector.Vector Data.Text.Text),
                                        _DeltaDiscoveryRequest'initialResourceVersions :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                        _DeltaDiscoveryRequest'responseNonce :: !Data.Text.Text,
                                        _DeltaDiscoveryRequest'errorDetail :: !(Prelude.Maybe Proto.Google.Rpc.Status.Status),
                                        _DeltaDiscoveryRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeltaDiscoveryRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'node
           (\ x__ y__ -> x__ {_DeltaDiscoveryRequest'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'node
           (\ x__ y__ -> x__ {_DeltaDiscoveryRequest'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "typeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'typeUrl
           (\ x__ y__ -> x__ {_DeltaDiscoveryRequest'typeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "resourceNamesSubscribe" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'resourceNamesSubscribe
           (\ x__ y__
              -> x__ {_DeltaDiscoveryRequest'resourceNamesSubscribe = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "vec'resourceNamesSubscribe" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'resourceNamesSubscribe
           (\ x__ y__
              -> x__ {_DeltaDiscoveryRequest'resourceNamesSubscribe = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "resourceNamesUnsubscribe" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'resourceNamesUnsubscribe
           (\ x__ y__
              -> x__ {_DeltaDiscoveryRequest'resourceNamesUnsubscribe = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "vec'resourceNamesUnsubscribe" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'resourceNamesUnsubscribe
           (\ x__ y__
              -> x__ {_DeltaDiscoveryRequest'resourceNamesUnsubscribe = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "initialResourceVersions" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'initialResourceVersions
           (\ x__ y__
              -> x__ {_DeltaDiscoveryRequest'initialResourceVersions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "responseNonce" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'responseNonce
           (\ x__ y__ -> x__ {_DeltaDiscoveryRequest'responseNonce = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "errorDetail" Proto.Google.Rpc.Status.Status where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'errorDetail
           (\ x__ y__ -> x__ {_DeltaDiscoveryRequest'errorDetail = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest "maybe'errorDetail" (Prelude.Maybe Proto.Google.Rpc.Status.Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'errorDetail
           (\ x__ y__ -> x__ {_DeltaDiscoveryRequest'errorDetail = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeltaDiscoveryRequest where
  messageName _
    = Data.Text.pack "envoy.service.discovery.v3.DeltaDiscoveryRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKDeltaDiscoveryRequest\DC2.\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2\EM\n\
      \\btype_url\CAN\STX \SOH(\tR\atypeUrl\DC28\n\
      \\CANresource_names_subscribe\CAN\ETX \ETX(\tR\SYNresourceNamesSubscribe\DC2<\n\
      \\SUBresource_names_unsubscribe\CAN\EOT \ETX(\tR\CANresourceNamesUnsubscribe\DC2\138\SOH\n\
      \\EMinitial_resource_versions\CAN\ENQ \ETX(\v2N.envoy.service.discovery.v3.DeltaDiscoveryRequest.InitialResourceVersionsEntryR\ETBinitialResourceVersions\DC2%\n\
      \\SOresponse_nonce\CAN\ACK \SOH(\tR\rresponseNonce\DC25\n\
      \\ferror_detail\CAN\a \SOH(\v2\DC2.google.rpc.StatusR\verrorDetail\SUBJ\n\
      \\FSInitialResourceVersionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:)\154\197\136\RS$\n\
      \\"envoy.api.v2.DeltaDiscoveryRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Node)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryRequest
        typeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"typeUrl")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryRequest
        resourceNamesSubscribe__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_names_subscribe"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"resourceNamesSubscribe")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryRequest
        resourceNamesUnsubscribe__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_names_unsubscribe"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"resourceNamesUnsubscribe")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryRequest
        initialResourceVersions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_resource_versions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DeltaDiscoveryRequest'InitialResourceVersionsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"initialResourceVersions")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryRequest
        responseNonce__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_nonce"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseNonce")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryRequest
        errorDetail__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_detail"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Rpc.Status.Status)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errorDetail")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, node__field_descriptor),
           (Data.ProtoLens.Tag 2, typeUrl__field_descriptor),
           (Data.ProtoLens.Tag 3, resourceNamesSubscribe__field_descriptor),
           (Data.ProtoLens.Tag 4, resourceNamesUnsubscribe__field_descriptor),
           (Data.ProtoLens.Tag 5, initialResourceVersions__field_descriptor),
           (Data.ProtoLens.Tag 6, responseNonce__field_descriptor),
           (Data.ProtoLens.Tag 7, errorDetail__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeltaDiscoveryRequest'_unknownFields
        (\ x__ y__ -> x__ {_DeltaDiscoveryRequest'_unknownFields = y__})
  defMessage
    = DeltaDiscoveryRequest'_constructor
        {_DeltaDiscoveryRequest'node = Prelude.Nothing,
         _DeltaDiscoveryRequest'typeUrl = Data.ProtoLens.fieldDefault,
         _DeltaDiscoveryRequest'resourceNamesSubscribe = Data.Vector.Generic.empty,
         _DeltaDiscoveryRequest'resourceNamesUnsubscribe = Data.Vector.Generic.empty,
         _DeltaDiscoveryRequest'initialResourceVersions = Data.Map.empty,
         _DeltaDiscoveryRequest'responseNonce = Data.ProtoLens.fieldDefault,
         _DeltaDiscoveryRequest'errorDetail = Prelude.Nothing,
         _DeltaDiscoveryRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeltaDiscoveryRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser DeltaDiscoveryRequest
        loop
          x
          mutable'resourceNamesSubscribe
          mutable'resourceNamesUnsubscribe
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'resourceNamesSubscribe <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'resourceNamesSubscribe)
                      frozen'resourceNamesUnsubscribe <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                              mutable'resourceNamesUnsubscribe)
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
                              (Data.ProtoLens.Field.field @"vec'resourceNamesSubscribe")
                              frozen'resourceNamesSubscribe
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'resourceNamesUnsubscribe")
                                 frozen'resourceNamesUnsubscribe
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                                  mutable'resourceNamesSubscribe
                                  mutable'resourceNamesUnsubscribe
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
                                       "type_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typeUrl") y x)
                                  mutable'resourceNamesSubscribe
                                  mutable'resourceNamesUnsubscribe
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "resource_names_subscribe"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'resourceNamesSubscribe y)
                                loop x v mutable'resourceNamesUnsubscribe
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "resource_names_unsubscribe"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'resourceNamesUnsubscribe y)
                                loop x mutable'resourceNamesSubscribe v
                        42
                          -> do !(entry :: DeltaDiscoveryRequest'InitialResourceVersionsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                                    (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                        Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                          (Prelude.fromIntegral
                                                                                                             len)
                                                                                                          Data.ProtoLens.parseMessage)
                                                                                                    "initial_resource_versions"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"initialResourceVersions")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'resourceNamesSubscribe
                                     mutable'resourceNamesUnsubscribe)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "response_nonce"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseNonce") y x)
                                  mutable'resourceNamesSubscribe
                                  mutable'resourceNamesUnsubscribe
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error_detail"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorDetail") y x)
                                  mutable'resourceNamesSubscribe
                                  mutable'resourceNamesUnsubscribe
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'resourceNamesSubscribe
                                  mutable'resourceNamesUnsubscribe
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'resourceNamesSubscribe <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'resourceNamesUnsubscribe <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'resourceNamesSubscribe
                mutable'resourceNamesUnsubscribe)
          "DeltaDiscoveryRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"typeUrl") _x
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
                                 Data.Text.Encoding.encodeUtf8
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'resourceNamesSubscribe") _x))
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
                                    Data.Text.Encoding.encodeUtf8
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'resourceNamesUnsubscribe") _x))
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
                                                   DeltaDiscoveryRequest'InitialResourceVersionsEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"initialResourceVersions") _x))))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"responseNonce") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'errorDetail") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData DeltaDiscoveryRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeltaDiscoveryRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DeltaDiscoveryRequest'node x__)
                (Control.DeepSeq.deepseq
                   (_DeltaDiscoveryRequest'typeUrl x__)
                   (Control.DeepSeq.deepseq
                      (_DeltaDiscoveryRequest'resourceNamesSubscribe x__)
                      (Control.DeepSeq.deepseq
                         (_DeltaDiscoveryRequest'resourceNamesUnsubscribe x__)
                         (Control.DeepSeq.deepseq
                            (_DeltaDiscoveryRequest'initialResourceVersions x__)
                            (Control.DeepSeq.deepseq
                               (_DeltaDiscoveryRequest'responseNonce x__)
                               (Control.DeepSeq.deepseq
                                  (_DeltaDiscoveryRequest'errorDetail x__) ())))))))
{- | Fields :
     
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.key' @:: Lens' DeltaDiscoveryRequest'InitialResourceVersionsEntry Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.value' @:: Lens' DeltaDiscoveryRequest'InitialResourceVersionsEntry Data.Text.Text@ -}
data DeltaDiscoveryRequest'InitialResourceVersionsEntry
  = DeltaDiscoveryRequest'InitialResourceVersionsEntry'_constructor {_DeltaDiscoveryRequest'InitialResourceVersionsEntry'key :: !Data.Text.Text,
                                                                     _DeltaDiscoveryRequest'InitialResourceVersionsEntry'value :: !Data.Text.Text,
                                                                     _DeltaDiscoveryRequest'InitialResourceVersionsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeltaDiscoveryRequest'InitialResourceVersionsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest'InitialResourceVersionsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'InitialResourceVersionsEntry'key
           (\ x__ y__
              -> x__
                   {_DeltaDiscoveryRequest'InitialResourceVersionsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryRequest'InitialResourceVersionsEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryRequest'InitialResourceVersionsEntry'value
           (\ x__ y__
              -> x__
                   {_DeltaDiscoveryRequest'InitialResourceVersionsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeltaDiscoveryRequest'InitialResourceVersionsEntry where
  messageName _
    = Data.Text.pack
        "envoy.service.discovery.v3.DeltaDiscoveryRequest.InitialResourceVersionsEntry"
  packedMessageDescriptor _
    = "\n\
      \\FSInitialResourceVersionsEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryRequest'InitialResourceVersionsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryRequest'InitialResourceVersionsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeltaDiscoveryRequest'InitialResourceVersionsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_DeltaDiscoveryRequest'InitialResourceVersionsEntry'_unknownFields = y__})
  defMessage
    = DeltaDiscoveryRequest'InitialResourceVersionsEntry'_constructor
        {_DeltaDiscoveryRequest'InitialResourceVersionsEntry'key = Data.ProtoLens.fieldDefault,
         _DeltaDiscoveryRequest'InitialResourceVersionsEntry'value = Data.ProtoLens.fieldDefault,
         _DeltaDiscoveryRequest'InitialResourceVersionsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeltaDiscoveryRequest'InitialResourceVersionsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser DeltaDiscoveryRequest'InitialResourceVersionsEntry
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
          (do loop Data.ProtoLens.defMessage) "InitialResourceVersionsEntry"
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
instance Control.DeepSeq.NFData DeltaDiscoveryRequest'InitialResourceVersionsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeltaDiscoveryRequest'InitialResourceVersionsEntry'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_DeltaDiscoveryRequest'InitialResourceVersionsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_DeltaDiscoveryRequest'InitialResourceVersionsEntry'value x__)
                   ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.systemVersionInfo' @:: Lens' DeltaDiscoveryResponse Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.resources' @:: Lens' DeltaDiscoveryResponse [Resource]@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.vec'resources' @:: Lens' DeltaDiscoveryResponse (Data.Vector.Vector Resource)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.typeUrl' @:: Lens' DeltaDiscoveryResponse Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.removedResources' @:: Lens' DeltaDiscoveryResponse [Data.Text.Text]@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.vec'removedResources' @:: Lens' DeltaDiscoveryResponse (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.nonce' @:: Lens' DeltaDiscoveryResponse Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.controlPlane' @:: Lens' DeltaDiscoveryResponse Proto.Envoy.Config.Core.V3.Base.ControlPlane@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.maybe'controlPlane' @:: Lens' DeltaDiscoveryResponse (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.ControlPlane)@ -}
data DeltaDiscoveryResponse
  = DeltaDiscoveryResponse'_constructor {_DeltaDiscoveryResponse'systemVersionInfo :: !Data.Text.Text,
                                         _DeltaDiscoveryResponse'resources :: !(Data.Vector.Vector Resource),
                                         _DeltaDiscoveryResponse'typeUrl :: !Data.Text.Text,
                                         _DeltaDiscoveryResponse'removedResources :: !(Data.Vector.Vector Data.Text.Text),
                                         _DeltaDiscoveryResponse'nonce :: !Data.Text.Text,
                                         _DeltaDiscoveryResponse'controlPlane :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.ControlPlane),
                                         _DeltaDiscoveryResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeltaDiscoveryResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeltaDiscoveryResponse "systemVersionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryResponse'systemVersionInfo
           (\ x__ y__
              -> x__ {_DeltaDiscoveryResponse'systemVersionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryResponse "resources" [Resource] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryResponse'resources
           (\ x__ y__ -> x__ {_DeltaDiscoveryResponse'resources = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DeltaDiscoveryResponse "vec'resources" (Data.Vector.Vector Resource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryResponse'resources
           (\ x__ y__ -> x__ {_DeltaDiscoveryResponse'resources = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryResponse "typeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryResponse'typeUrl
           (\ x__ y__ -> x__ {_DeltaDiscoveryResponse'typeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryResponse "removedResources" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryResponse'removedResources
           (\ x__ y__
              -> x__ {_DeltaDiscoveryResponse'removedResources = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DeltaDiscoveryResponse "vec'removedResources" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryResponse'removedResources
           (\ x__ y__
              -> x__ {_DeltaDiscoveryResponse'removedResources = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryResponse "nonce" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryResponse'nonce
           (\ x__ y__ -> x__ {_DeltaDiscoveryResponse'nonce = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeltaDiscoveryResponse "controlPlane" Proto.Envoy.Config.Core.V3.Base.ControlPlane where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryResponse'controlPlane
           (\ x__ y__ -> x__ {_DeltaDiscoveryResponse'controlPlane = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeltaDiscoveryResponse "maybe'controlPlane" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.ControlPlane) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeltaDiscoveryResponse'controlPlane
           (\ x__ y__ -> x__ {_DeltaDiscoveryResponse'controlPlane = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeltaDiscoveryResponse where
  messageName _
    = Data.Text.pack
        "envoy.service.discovery.v3.DeltaDiscoveryResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNDeltaDiscoveryResponse\DC2.\n\
      \\DC3system_version_info\CAN\SOH \SOH(\tR\DC1systemVersionInfo\DC2B\n\
      \\tresources\CAN\STX \ETX(\v2$.envoy.service.discovery.v3.ResourceR\tresources\DC2\EM\n\
      \\btype_url\CAN\EOT \SOH(\tR\atypeUrl\DC2+\n\
      \\DC1removed_resources\CAN\ACK \ETX(\tR\DLEremovedResources\DC2\DC4\n\
      \\ENQnonce\CAN\ENQ \SOH(\tR\ENQnonce\DC2G\n\
      \\rcontrol_plane\CAN\a \SOH(\v2\".envoy.config.core.v3.ControlPlaneR\fcontrolPlane:*\154\197\136\RS%\n\
      \#envoy.api.v2.DeltaDiscoveryResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        systemVersionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "system_version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"systemVersionInfo")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryResponse
        resources__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resources"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Resource)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"resources")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryResponse
        typeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"typeUrl")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryResponse
        removedResources__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "removed_resources"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"removedResources")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryResponse
        nonce__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nonce"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"nonce")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryResponse
        controlPlane__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "control_plane"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.ControlPlane)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'controlPlane")) ::
              Data.ProtoLens.FieldDescriptor DeltaDiscoveryResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, systemVersionInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, resources__field_descriptor),
           (Data.ProtoLens.Tag 4, typeUrl__field_descriptor),
           (Data.ProtoLens.Tag 6, removedResources__field_descriptor),
           (Data.ProtoLens.Tag 5, nonce__field_descriptor),
           (Data.ProtoLens.Tag 7, controlPlane__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeltaDiscoveryResponse'_unknownFields
        (\ x__ y__ -> x__ {_DeltaDiscoveryResponse'_unknownFields = y__})
  defMessage
    = DeltaDiscoveryResponse'_constructor
        {_DeltaDiscoveryResponse'systemVersionInfo = Data.ProtoLens.fieldDefault,
         _DeltaDiscoveryResponse'resources = Data.Vector.Generic.empty,
         _DeltaDiscoveryResponse'typeUrl = Data.ProtoLens.fieldDefault,
         _DeltaDiscoveryResponse'removedResources = Data.Vector.Generic.empty,
         _DeltaDiscoveryResponse'nonce = Data.ProtoLens.fieldDefault,
         _DeltaDiscoveryResponse'controlPlane = Prelude.Nothing,
         _DeltaDiscoveryResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeltaDiscoveryResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Resource
                -> Data.ProtoLens.Encoding.Bytes.Parser DeltaDiscoveryResponse
        loop x mutable'removedResources mutable'resources
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'removedResources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'removedResources)
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
                              (Data.ProtoLens.Field.field @"vec'removedResources")
                              frozen'removedResources
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'resources") frozen'resources x)))
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
                                       "system_version_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"systemVersionInfo") y x)
                                  mutable'removedResources
                                  mutable'resources
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "resources"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'resources y)
                                loop x mutable'removedResources v
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
                                       "type_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typeUrl") y x)
                                  mutable'removedResources
                                  mutable'resources
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "removed_resources"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'removedResources y)
                                loop x v mutable'resources
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
                                       "nonce"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nonce") y x)
                                  mutable'removedResources
                                  mutable'resources
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "control_plane"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"controlPlane") y x)
                                  mutable'removedResources
                                  mutable'resources
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'removedResources
                                  mutable'resources
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'removedResources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'resources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'removedResources
                mutable'resources)
          "DeltaDiscoveryResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"systemVersionInfo") _x
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'resources") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"typeUrl") _x
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
                                    Data.Text.Encoding.encodeUtf8
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'removedResources") _x))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nonce") _x
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'controlPlane") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData DeltaDiscoveryResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeltaDiscoveryResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DeltaDiscoveryResponse'systemVersionInfo x__)
                (Control.DeepSeq.deepseq
                   (_DeltaDiscoveryResponse'resources x__)
                   (Control.DeepSeq.deepseq
                      (_DeltaDiscoveryResponse'typeUrl x__)
                      (Control.DeepSeq.deepseq
                         (_DeltaDiscoveryResponse'removedResources x__)
                         (Control.DeepSeq.deepseq
                            (_DeltaDiscoveryResponse'nonce x__)
                            (Control.DeepSeq.deepseq
                               (_DeltaDiscoveryResponse'controlPlane x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.versionInfo' @:: Lens' DiscoveryRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.node' @:: Lens' DiscoveryRequest Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.maybe'node' @:: Lens' DiscoveryRequest (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.resourceNames' @:: Lens' DiscoveryRequest [Data.Text.Text]@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.vec'resourceNames' @:: Lens' DiscoveryRequest (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.typeUrl' @:: Lens' DiscoveryRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.responseNonce' @:: Lens' DiscoveryRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.errorDetail' @:: Lens' DiscoveryRequest Proto.Google.Rpc.Status.Status@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.maybe'errorDetail' @:: Lens' DiscoveryRequest (Prelude.Maybe Proto.Google.Rpc.Status.Status)@ -}
data DiscoveryRequest
  = DiscoveryRequest'_constructor {_DiscoveryRequest'versionInfo :: !Data.Text.Text,
                                   _DiscoveryRequest'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                                   _DiscoveryRequest'resourceNames :: !(Data.Vector.Vector Data.Text.Text),
                                   _DiscoveryRequest'typeUrl :: !Data.Text.Text,
                                   _DiscoveryRequest'responseNonce :: !Data.Text.Text,
                                   _DiscoveryRequest'errorDetail :: !(Prelude.Maybe Proto.Google.Rpc.Status.Status),
                                   _DiscoveryRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DiscoveryRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DiscoveryRequest "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryRequest'versionInfo
           (\ x__ y__ -> x__ {_DiscoveryRequest'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DiscoveryRequest "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryRequest'node
           (\ x__ y__ -> x__ {_DiscoveryRequest'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DiscoveryRequest "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryRequest'node
           (\ x__ y__ -> x__ {_DiscoveryRequest'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DiscoveryRequest "resourceNames" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryRequest'resourceNames
           (\ x__ y__ -> x__ {_DiscoveryRequest'resourceNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DiscoveryRequest "vec'resourceNames" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryRequest'resourceNames
           (\ x__ y__ -> x__ {_DiscoveryRequest'resourceNames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DiscoveryRequest "typeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryRequest'typeUrl
           (\ x__ y__ -> x__ {_DiscoveryRequest'typeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DiscoveryRequest "responseNonce" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryRequest'responseNonce
           (\ x__ y__ -> x__ {_DiscoveryRequest'responseNonce = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DiscoveryRequest "errorDetail" Proto.Google.Rpc.Status.Status where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryRequest'errorDetail
           (\ x__ y__ -> x__ {_DiscoveryRequest'errorDetail = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DiscoveryRequest "maybe'errorDetail" (Prelude.Maybe Proto.Google.Rpc.Status.Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryRequest'errorDetail
           (\ x__ y__ -> x__ {_DiscoveryRequest'errorDetail = y__}))
        Prelude.id
instance Data.ProtoLens.Message DiscoveryRequest where
  messageName _
    = Data.Text.pack "envoy.service.discovery.v3.DiscoveryRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLEDiscoveryRequest\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2.\n\
      \\EOTnode\CAN\STX \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2%\n\
      \\SOresource_names\CAN\ETX \ETX(\tR\rresourceNames\DC2\EM\n\
      \\btype_url\CAN\EOT \SOH(\tR\atypeUrl\DC2%\n\
      \\SOresponse_nonce\CAN\ENQ \SOH(\tR\rresponseNonce\DC25\n\
      \\ferror_detail\CAN\ACK \SOH(\v2\DC2.google.rpc.StatusR\verrorDetail:$\154\197\136\RS\US\n\
      \\GSenvoy.api.v2.DiscoveryRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryRequest
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Node)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryRequest
        resourceNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"resourceNames")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryRequest
        typeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"typeUrl")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryRequest
        responseNonce__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_nonce"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseNonce")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryRequest
        errorDetail__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_detail"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Rpc.Status.Status)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errorDetail")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, node__field_descriptor),
           (Data.ProtoLens.Tag 3, resourceNames__field_descriptor),
           (Data.ProtoLens.Tag 4, typeUrl__field_descriptor),
           (Data.ProtoLens.Tag 5, responseNonce__field_descriptor),
           (Data.ProtoLens.Tag 6, errorDetail__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DiscoveryRequest'_unknownFields
        (\ x__ y__ -> x__ {_DiscoveryRequest'_unknownFields = y__})
  defMessage
    = DiscoveryRequest'_constructor
        {_DiscoveryRequest'versionInfo = Data.ProtoLens.fieldDefault,
         _DiscoveryRequest'node = Prelude.Nothing,
         _DiscoveryRequest'resourceNames = Data.Vector.Generic.empty,
         _DiscoveryRequest'typeUrl = Data.ProtoLens.fieldDefault,
         _DiscoveryRequest'responseNonce = Data.ProtoLens.fieldDefault,
         _DiscoveryRequest'errorDetail = Prelude.Nothing,
         _DiscoveryRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DiscoveryRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser DiscoveryRequest
        loop x mutable'resourceNames
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'resourceNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'resourceNames)
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
                              (Data.ProtoLens.Field.field @"vec'resourceNames")
                              frozen'resourceNames
                              x))
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                                  mutable'resourceNames
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                                  mutable'resourceNames
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "resource_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'resourceNames y)
                                loop x v
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
                                       "type_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typeUrl") y x)
                                  mutable'resourceNames
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
                                       "response_nonce"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseNonce") y x)
                                  mutable'resourceNames
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error_detail"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorDetail") y x)
                                  mutable'resourceNames
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'resourceNames
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'resourceNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'resourceNames)
          "DiscoveryRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
                                 Data.Text.Encoding.encodeUtf8
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'resourceNames") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"typeUrl") _x
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
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"responseNonce") _x
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'errorDetail") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData DiscoveryRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DiscoveryRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DiscoveryRequest'versionInfo x__)
                (Control.DeepSeq.deepseq
                   (_DiscoveryRequest'node x__)
                   (Control.DeepSeq.deepseq
                      (_DiscoveryRequest'resourceNames x__)
                      (Control.DeepSeq.deepseq
                         (_DiscoveryRequest'typeUrl x__)
                         (Control.DeepSeq.deepseq
                            (_DiscoveryRequest'responseNonce x__)
                            (Control.DeepSeq.deepseq
                               (_DiscoveryRequest'errorDetail x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.versionInfo' @:: Lens' DiscoveryResponse Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.resources' @:: Lens' DiscoveryResponse [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.vec'resources' @:: Lens' DiscoveryResponse (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.canary' @:: Lens' DiscoveryResponse Prelude.Bool@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.typeUrl' @:: Lens' DiscoveryResponse Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.nonce' @:: Lens' DiscoveryResponse Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.controlPlane' @:: Lens' DiscoveryResponse Proto.Envoy.Config.Core.V3.Base.ControlPlane@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.maybe'controlPlane' @:: Lens' DiscoveryResponse (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.ControlPlane)@ -}
data DiscoveryResponse
  = DiscoveryResponse'_constructor {_DiscoveryResponse'versionInfo :: !Data.Text.Text,
                                    _DiscoveryResponse'resources :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                    _DiscoveryResponse'canary :: !Prelude.Bool,
                                    _DiscoveryResponse'typeUrl :: !Data.Text.Text,
                                    _DiscoveryResponse'nonce :: !Data.Text.Text,
                                    _DiscoveryResponse'controlPlane :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.ControlPlane),
                                    _DiscoveryResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DiscoveryResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DiscoveryResponse "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryResponse'versionInfo
           (\ x__ y__ -> x__ {_DiscoveryResponse'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DiscoveryResponse "resources" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryResponse'resources
           (\ x__ y__ -> x__ {_DiscoveryResponse'resources = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DiscoveryResponse "vec'resources" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryResponse'resources
           (\ x__ y__ -> x__ {_DiscoveryResponse'resources = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DiscoveryResponse "canary" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryResponse'canary
           (\ x__ y__ -> x__ {_DiscoveryResponse'canary = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DiscoveryResponse "typeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryResponse'typeUrl
           (\ x__ y__ -> x__ {_DiscoveryResponse'typeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DiscoveryResponse "nonce" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryResponse'nonce
           (\ x__ y__ -> x__ {_DiscoveryResponse'nonce = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DiscoveryResponse "controlPlane" Proto.Envoy.Config.Core.V3.Base.ControlPlane where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryResponse'controlPlane
           (\ x__ y__ -> x__ {_DiscoveryResponse'controlPlane = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DiscoveryResponse "maybe'controlPlane" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.ControlPlane) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DiscoveryResponse'controlPlane
           (\ x__ y__ -> x__ {_DiscoveryResponse'controlPlane = y__}))
        Prelude.id
instance Data.ProtoLens.Message DiscoveryResponse where
  messageName _
    = Data.Text.pack "envoy.service.discovery.v3.DiscoveryResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1DiscoveryResponse\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC22\n\
      \\tresources\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\tresources\DC2\SYN\n\
      \\ACKcanary\CAN\ETX \SOH(\bR\ACKcanary\DC2\EM\n\
      \\btype_url\CAN\EOT \SOH(\tR\atypeUrl\DC2\DC4\n\
      \\ENQnonce\CAN\ENQ \SOH(\tR\ENQnonce\DC2G\n\
      \\rcontrol_plane\CAN\ACK \SOH(\v2\".envoy.config.core.v3.ControlPlaneR\fcontrolPlane:%\154\197\136\RS \n\
      \\RSenvoy.api.v2.DiscoveryResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryResponse
        resources__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resources"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"resources")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryResponse
        canary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "canary"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"canary")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryResponse
        typeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"typeUrl")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryResponse
        nonce__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nonce"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"nonce")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryResponse
        controlPlane__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "control_plane"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.ControlPlane)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'controlPlane")) ::
              Data.ProtoLens.FieldDescriptor DiscoveryResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, resources__field_descriptor),
           (Data.ProtoLens.Tag 3, canary__field_descriptor),
           (Data.ProtoLens.Tag 4, typeUrl__field_descriptor),
           (Data.ProtoLens.Tag 5, nonce__field_descriptor),
           (Data.ProtoLens.Tag 6, controlPlane__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DiscoveryResponse'_unknownFields
        (\ x__ y__ -> x__ {_DiscoveryResponse'_unknownFields = y__})
  defMessage
    = DiscoveryResponse'_constructor
        {_DiscoveryResponse'versionInfo = Data.ProtoLens.fieldDefault,
         _DiscoveryResponse'resources = Data.Vector.Generic.empty,
         _DiscoveryResponse'canary = Data.ProtoLens.fieldDefault,
         _DiscoveryResponse'typeUrl = Data.ProtoLens.fieldDefault,
         _DiscoveryResponse'nonce = Data.ProtoLens.fieldDefault,
         _DiscoveryResponse'controlPlane = Prelude.Nothing,
         _DiscoveryResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DiscoveryResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser DiscoveryResponse
        loop x mutable'resources
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'resources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
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
                              (Data.ProtoLens.Field.field @"vec'resources") frozen'resources x))
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                                  mutable'resources
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "resources"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'resources y)
                                loop x v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "canary"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"canary") y x)
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
                                       "type_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typeUrl") y x)
                                  mutable'resources
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
                                       "nonce"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nonce") y x)
                                  mutable'resources
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "control_plane"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"controlPlane") y x)
                                  mutable'resources
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'resources
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'resources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'resources)
          "DiscoveryResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'resources") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"canary") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"typeUrl") _x
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
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nonce") _x
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'controlPlane") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData DiscoveryResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DiscoveryResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DiscoveryResponse'versionInfo x__)
                (Control.DeepSeq.deepseq
                   (_DiscoveryResponse'resources x__)
                   (Control.DeepSeq.deepseq
                      (_DiscoveryResponse'canary x__)
                      (Control.DeepSeq.deepseq
                         (_DiscoveryResponse'typeUrl x__)
                         (Control.DeepSeq.deepseq
                            (_DiscoveryResponse'nonce x__)
                            (Control.DeepSeq.deepseq
                               (_DiscoveryResponse'controlPlane x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.name' @:: Lens' Resource Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.aliases' @:: Lens' Resource [Data.Text.Text]@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.vec'aliases' @:: Lens' Resource (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.version' @:: Lens' Resource Data.Text.Text@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.resource' @:: Lens' Resource Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.maybe'resource' @:: Lens' Resource (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.ttl' @:: Lens' Resource Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.maybe'ttl' @:: Lens' Resource (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.cacheControl' @:: Lens' Resource Resource'CacheControl@
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.maybe'cacheControl' @:: Lens' Resource (Prelude.Maybe Resource'CacheControl)@ -}
data Resource
  = Resource'_constructor {_Resource'name :: !Data.Text.Text,
                           _Resource'aliases :: !(Data.Vector.Vector Data.Text.Text),
                           _Resource'version :: !Data.Text.Text,
                           _Resource'resource :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                           _Resource'ttl :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _Resource'cacheControl :: !(Prelude.Maybe Resource'CacheControl),
                           _Resource'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Resource where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Resource "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'name (\ x__ y__ -> x__ {_Resource'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Resource "aliases" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'aliases (\ x__ y__ -> x__ {_Resource'aliases = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Resource "vec'aliases" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'aliases (\ x__ y__ -> x__ {_Resource'aliases = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Resource "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'version (\ x__ y__ -> x__ {_Resource'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Resource "resource" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'resource (\ x__ y__ -> x__ {_Resource'resource = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Resource "maybe'resource" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'resource (\ x__ y__ -> x__ {_Resource'resource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Resource "ttl" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'ttl (\ x__ y__ -> x__ {_Resource'ttl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Resource "maybe'ttl" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'ttl (\ x__ y__ -> x__ {_Resource'ttl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Resource "cacheControl" Resource'CacheControl where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'cacheControl
           (\ x__ y__ -> x__ {_Resource'cacheControl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Resource "maybe'cacheControl" (Prelude.Maybe Resource'CacheControl) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'cacheControl
           (\ x__ y__ -> x__ {_Resource'cacheControl = y__}))
        Prelude.id
instance Data.ProtoLens.Message Resource where
  messageName _
    = Data.Text.pack "envoy.service.discovery.v3.Resource"
  packedMessageDescriptor _
    = "\n\
      \\bResource\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname\DC2\CAN\n\
      \\aaliases\CAN\EOT \ETX(\tR\aaliases\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\tR\aversion\DC20\n\
      \\bresource\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\bresource\DC2+\n\
      \\ETXttl\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\ETXttl\DC2V\n\
      \\rcache_control\CAN\a \SOH(\v21.envoy.service.discovery.v3.Resource.CacheControlR\fcacheControl\SUB0\n\
      \\fCacheControl\DC2 \n\
      \\fdo_not_cache\CAN\SOH \SOH(\bR\n\
      \doNotCache:\FS\154\197\136\RS\ETB\n\
      \\NAKenvoy.api.v2.Resource"
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
              Data.ProtoLens.FieldDescriptor Resource
        aliases__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "aliases"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"aliases")) ::
              Data.ProtoLens.FieldDescriptor Resource
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor Resource
        resource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resource")) ::
              Data.ProtoLens.FieldDescriptor Resource
        ttl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ttl"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ttl")) ::
              Data.ProtoLens.FieldDescriptor Resource
        cacheControl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cache_control"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Resource'CacheControl)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cacheControl")) ::
              Data.ProtoLens.FieldDescriptor Resource
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, name__field_descriptor),
           (Data.ProtoLens.Tag 4, aliases__field_descriptor),
           (Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, resource__field_descriptor),
           (Data.ProtoLens.Tag 6, ttl__field_descriptor),
           (Data.ProtoLens.Tag 7, cacheControl__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Resource'_unknownFields
        (\ x__ y__ -> x__ {_Resource'_unknownFields = y__})
  defMessage
    = Resource'_constructor
        {_Resource'name = Data.ProtoLens.fieldDefault,
         _Resource'aliases = Data.Vector.Generic.empty,
         _Resource'version = Data.ProtoLens.fieldDefault,
         _Resource'resource = Prelude.Nothing,
         _Resource'ttl = Prelude.Nothing,
         _Resource'cacheControl = Prelude.Nothing,
         _Resource'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Resource
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser Resource
        loop x mutable'aliases
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'aliases <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'aliases)
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
                              (Data.ProtoLens.Field.field @"vec'aliases") frozen'aliases x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
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
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'aliases
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "aliases"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'aliases y)
                                loop x v
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
                                       "version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                                  mutable'aliases
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "resource"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resource") y x)
                                  mutable'aliases
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ttl"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ttl") y x)
                                  mutable'aliases
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cache_control"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cacheControl") y x)
                                  mutable'aliases
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'aliases
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'aliases <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'aliases)
          "Resource"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                              Data.Text.Encoding.encodeUtf8
                              _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'aliases") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'resource") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ttl") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'cacheControl") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Resource where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Resource'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Resource'name x__)
                (Control.DeepSeq.deepseq
                   (_Resource'aliases x__)
                   (Control.DeepSeq.deepseq
                      (_Resource'version x__)
                      (Control.DeepSeq.deepseq
                         (_Resource'resource x__)
                         (Control.DeepSeq.deepseq
                            (_Resource'ttl x__)
                            (Control.DeepSeq.deepseq (_Resource'cacheControl x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Service.Discovery.V3.Discovery_Fields.doNotCache' @:: Lens' Resource'CacheControl Prelude.Bool@ -}
data Resource'CacheControl
  = Resource'CacheControl'_constructor {_Resource'CacheControl'doNotCache :: !Prelude.Bool,
                                        _Resource'CacheControl'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Resource'CacheControl where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Resource'CacheControl "doNotCache" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Resource'CacheControl'doNotCache
           (\ x__ y__ -> x__ {_Resource'CacheControl'doNotCache = y__}))
        Prelude.id
instance Data.ProtoLens.Message Resource'CacheControl where
  messageName _
    = Data.Text.pack "envoy.service.discovery.v3.Resource.CacheControl"
  packedMessageDescriptor _
    = "\n\
      \\fCacheControl\DC2 \n\
      \\fdo_not_cache\CAN\SOH \SOH(\bR\n\
      \doNotCache"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        doNotCache__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "do_not_cache"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"doNotCache")) ::
              Data.ProtoLens.FieldDescriptor Resource'CacheControl
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, doNotCache__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Resource'CacheControl'_unknownFields
        (\ x__ y__ -> x__ {_Resource'CacheControl'_unknownFields = y__})
  defMessage
    = Resource'CacheControl'_constructor
        {_Resource'CacheControl'doNotCache = Data.ProtoLens.fieldDefault,
         _Resource'CacheControl'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Resource'CacheControl
          -> Data.ProtoLens.Encoding.Bytes.Parser Resource'CacheControl
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
                                       "do_not_cache"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doNotCache") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CacheControl"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"doNotCache") _x
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
instance Control.DeepSeq.NFData Resource'CacheControl where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Resource'CacheControl'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Resource'CacheControl'doNotCache x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*envoy/service/discovery/v3/discovery.proto\DC2\SUBenvoy.service.discovery.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\ETBgoogle/rpc/status.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\171\STX\n\
    \\DLEDiscoveryRequest\DC2!\n\
    \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2.\n\
    \\EOTnode\CAN\STX \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2%\n\
    \\SOresource_names\CAN\ETX \ETX(\tR\rresourceNames\DC2\EM\n\
    \\btype_url\CAN\EOT \SOH(\tR\atypeUrl\DC2%\n\
    \\SOresponse_nonce\CAN\ENQ \SOH(\tR\rresponseNonce\DC25\n\
    \\ferror_detail\CAN\ACK \SOH(\v2\DC2.google.rpc.StatusR\verrorDetail:$\154\197\136\RS\US\n\
    \\GSenvoy.api.v2.DiscoveryRequest\"\163\STX\n\
    \\DC1DiscoveryResponse\DC2!\n\
    \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC22\n\
    \\tresources\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\tresources\DC2\SYN\n\
    \\ACKcanary\CAN\ETX \SOH(\bR\ACKcanary\DC2\EM\n\
    \\btype_url\CAN\EOT \SOH(\tR\atypeUrl\DC2\DC4\n\
    \\ENQnonce\CAN\ENQ \SOH(\tR\ENQnonce\DC2G\n\
    \\rcontrol_plane\CAN\ACK \SOH(\v2\".envoy.config.core.v3.ControlPlaneR\fcontrolPlane:%\154\197\136\RS \n\
    \\RSenvoy.api.v2.DiscoveryResponse\"\188\EOT\n\
    \\NAKDeltaDiscoveryRequest\DC2.\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2\EM\n\
    \\btype_url\CAN\STX \SOH(\tR\atypeUrl\DC28\n\
    \\CANresource_names_subscribe\CAN\ETX \ETX(\tR\SYNresourceNamesSubscribe\DC2<\n\
    \\SUBresource_names_unsubscribe\CAN\EOT \ETX(\tR\CANresourceNamesUnsubscribe\DC2\138\SOH\n\
    \\EMinitial_resource_versions\CAN\ENQ \ETX(\v2N.envoy.service.discovery.v3.DeltaDiscoveryRequest.InitialResourceVersionsEntryR\ETBinitialResourceVersions\DC2%\n\
    \\SOresponse_nonce\CAN\ACK \SOH(\tR\rresponseNonce\DC25\n\
    \\ferror_detail\CAN\a \SOH(\v2\DC2.google.rpc.StatusR\verrorDetail\SUBJ\n\
    \\FSInitialResourceVersionsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:)\154\197\136\RS$\n\
    \\"envoy.api.v2.DeltaDiscoveryRequest\"\223\STX\n\
    \\SYNDeltaDiscoveryResponse\DC2.\n\
    \\DC3system_version_info\CAN\SOH \SOH(\tR\DC1systemVersionInfo\DC2B\n\
    \\tresources\CAN\STX \ETX(\v2$.envoy.service.discovery.v3.ResourceR\tresources\DC2\EM\n\
    \\btype_url\CAN\EOT \SOH(\tR\atypeUrl\DC2+\n\
    \\DC1removed_resources\CAN\ACK \ETX(\tR\DLEremovedResources\DC2\DC4\n\
    \\ENQnonce\CAN\ENQ \SOH(\tR\ENQnonce\DC2G\n\
    \\rcontrol_plane\CAN\a \SOH(\v2\".envoy.config.core.v3.ControlPlaneR\fcontrolPlane:*\154\197\136\RS%\n\
    \#envoy.api.v2.DeltaDiscoveryResponse\"\217\STX\n\
    \\bResource\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\tR\EOTname\DC2\CAN\n\
    \\aaliases\CAN\EOT \ETX(\tR\aaliases\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\tR\aversion\DC20\n\
    \\bresource\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\bresource\DC2+\n\
    \\ETXttl\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\ETXttl\DC2V\n\
    \\rcache_control\CAN\a \SOH(\v21.envoy.service.discovery.v3.Resource.CacheControlR\fcacheControl\SUB0\n\
    \\fCacheControl\DC2 \n\
    \\fdo_not_cache\CAN\SOH \SOH(\bR\n\
    \doNotCache:\FS\154\197\136\RS\ETB\n\
    \\NAKenvoy.api.v2.ResourceBD\n\
    \(io.envoyproxy.envoy.service.discovery.v3B\SODiscoveryProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\168f\n\
    \\a\DC2\ENQ\NUL\NUL\150\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL#\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULA\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NULA\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\202\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL@\SOH\SUB\135\SOH A DiscoveryRequest requests a set of versioned resources of the same type for\n\
    \ a given Envoy node on some API.\n\
    \ [#next-free-field: 7]\n\
    \24 [#protodoc-title: Common discovery API components]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\CAN\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\CAN\STX_\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\CAN\STX_\n\
    \\140\EOT\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX!\STX\SUB\SUB\254\ETX The version_info provided in the request messages will be the version_info\n\
    \ received with the most recent successfully processed response or empty on\n\
    \ the first request. It is expected that no new request is sent after a\n\
    \ response is received until the Envoy instance is ready to ACK/NACK the new\n\
    \ configuration. ACK/NACK takes place by returning the new API config version\n\
    \ as applied or the previous API config version respectively. Each type_url\n\
    \ (see below) has an independent version associated with it.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX!\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX!\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX!\CAN\EM\n\
    \+\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX$\STX\US\SUB\RS The node making the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX$\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX$\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX$\GS\RS\n\
    \\180\ETX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX,\STX%\SUB\166\ETX List of resources to subscribe to, e.g. list of cluster names or a route\n\
    \ configuration name. If this is empty, all resources for the API are\n\
    \ returned. LDS/CDS may have empty resource_names, which will cause all\n\
    \ resources for the Envoy instance to be returned. The LDS and CDS responses\n\
    \ will then imply a number of resources that need to be fetched via EDS/RDS,\n\
    \ which will be explicitly enumerated in resource_names.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX,\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX,\DC2 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX,#$\n\
    \\232\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX2\STX\SYN\SUB\218\SOH Type of the resource that is being requested, e.g.\n\
    \ \"type.googleapis.com/envoy.api.v2.ClusterLoadAssignment\". This is implicit\n\
    \ in requests made via singleton xDS APIs such as CDS, LDS, etc. but is\n\
    \ required for ADS.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX2\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX2\DC4\NAK\n\
    \\240\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX9\STX\FS\SUB\226\STX nonce corresponding to DiscoveryResponse being ACK/NACKed. See above\n\
    \ discussion on version_info and the DiscoveryResponse nonce comment. This\n\
    \ may be empty only if 1) this is a non-persistent-stream xDS such as HTTP,\n\
    \ or 2) the client has not yet accepted an update in this xDS stream (unlike\n\
    \ delta, where it is populated only for new explicit ACKs).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX9\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX9\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX9\SUB\ESC\n\
    \\149\ETX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX?\STX%\SUB\135\ETX This is populated when the previous :ref:`DiscoveryResponse <envoy_v3_api_msg_service.discovery.v3.DiscoveryResponse>`\n\
    \ failed to update configuration. The *message* field in *error_details* provides the Envoy\n\
    \ internal exception related to the failure. It is only intended for consumption during manual\n\
    \ debugging, the string provided is not guaranteed to be stable across Envoy versions.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX?\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX?\DC4 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX?#$\n\
    \#\n\
    \\STX\EOT\SOH\DC2\EOTC\NULl\SOH\SUB\ETB [#next-free-field: 7]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXC\b\EM\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETXD\STX`\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETXD\STX`\n\
    \0\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXG\STX\SUB\SUB# The version of the response data.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXG\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXG\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXG\CAN\EM\n\
    \d\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXJ\STX-\SUBW The response resources. These resources are typed and depend on the API being called.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXJ\v\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXJ\US(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXJ+,\n\
    \\199\ENQ\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXZ\STX\DC2\SUB\185\ENQ [#not-implemented-hide:]\n\
    \ Canary is used to support two Envoy command line flags:\n\
    \\n\
    \ * --terminate-on-canary-transition-failure. When set, Envoy is able to\n\
    \   terminate if it detects that configuration is stuck at canary. Consider\n\
    \   this example sequence of updates:\n\
    \   - Management server applies a canary config successfully.\n\
    \   - Management server rolls back to a production config.\n\
    \   - Envoy rejects the new production config.\n\
    \   Since there is no sensible way to continue receiving configuration\n\
    \   updates, Envoy will then terminate and apply production config from a\n\
    \   clean slate.\n\
    \ * --dry-run-canary. When set, a canary response will never be applied, only\n\
    \   validated via a dry run.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXZ\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXZ\a\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXZ\DLE\DC1\n\
    \\170\SOH\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX^\STX\SYN\SUB\156\SOH Type URL for resources. Identifies the xDS API when muxing over ADS.\n\
    \ Must be consistent with the type_url in the 'resources' repeated Any (if non-empty).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX^\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX^\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX^\DC4\NAK\n\
    \\195\EOT\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXh\STX\DC3\SUB\181\EOT For gRPC based subscriptions, the nonce provides a way to explicitly ack a\n\
    \ specific DiscoveryResponse in a following DiscoveryRequest. Additional\n\
    \ messages may have been sent by Envoy to the management server for the\n\
    \ previous version on the stream prior to this DiscoveryResponse, that were\n\
    \ unprocessed at response send time. The nonce allows the management server\n\
    \ to ignore any further DiscoveryRequests for the previous version until a\n\
    \ DiscoveryRequest bearing the nonce. The nonce is optional and is not\n\
    \ required for non-stream based xDS implementations.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETXh\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXh\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXh\DC1\DC2\n\
    \A\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXk\STX0\SUB4 The control plane instance that sent the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETXk\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXk\RS+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXk./\n\
    \\201\SO\n\
    \\STX\EOT\STX\DC2\ACK\143\SOH\NUL\201\SOH\SOH\SUB\186\SO DeltaDiscoveryRequest and DeltaDiscoveryResponse are used in a new gRPC\n\
    \ endpoint for Delta xDS.\n\
    \\n\
    \ With Delta xDS, the DeltaDiscoveryResponses do not need to include a full\n\
    \ snapshot of the tracked resources. Instead, DeltaDiscoveryResponses are a\n\
    \ diff to the state of a xDS client.\n\
    \ In Delta XDS there are per-resource versions, which allow tracking state at\n\
    \ the resource granularity.\n\
    \ An xDS Delta session is always in the context of a gRPC bidirectional\n\
    \ stream. This allows the xDS server to keep track of the state of xDS clients\n\
    \ connected to it.\n\
    \\n\
    \ In Delta xDS the nonce field is required and used to pair\n\
    \ DeltaDiscoveryResponse to a DeltaDiscoveryRequest ACK or NACK.\n\
    \ Optionally, a response message level system_version_info is present for\n\
    \ debugging purposes only.\n\
    \\n\
    \ DeltaDiscoveryRequest plays two independent roles. Any DeltaDiscoveryRequest\n\
    \ can be either or both of: [1] informing the server of what resources the\n\
    \ client has gained/lost interest in (using resource_names_subscribe and\n\
    \ resource_names_unsubscribe), or [2] (N)ACKing an earlier resource update from\n\
    \ the server (using response_nonce, with presence of error_detail making it a NACK).\n\
    \ Additionally, the first message (for a given type_url) of a reconnected gRPC stream\n\
    \ has a third role: informing the server of the resources (and their versions)\n\
    \ that the client already possesses, using the initial_resource_versions field.\n\
    \\n\
    \ As with state-of-the-world, when multiple resource types are multiplexed (ADS),\n\
    \ all requests/acknowledgments/updates are logically walled off by type_url:\n\
    \ a Cluster ACK exists in a completely separate world from a prior Route NACK.\n\
    \ In particular, initial_resource_versions being sent at the \"start\" of every\n\
    \ gRPC stream actually entails a message for each type_url, each with its own\n\
    \ initial_resource_versions.\n\
    \ [#next-free-field: 8]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\143\SOH\b\GS\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT\144\SOH\STXd\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT\144\SOH\STXd\n\
    \,\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\147\SOH\STX\US\SUB\RS The node making the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\147\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\147\SOH\SYN\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\147\SOH\GS\RS\n\
    \\252\SOH\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\153\SOH\STX\SYN\SUB\237\SOH Type of the resource that is being requested, e.g.\n\
    \ \"type.googleapis.com/envoy.api.v2.ClusterLoadAssignment\". This does not need to be set if\n\
    \ resources are only referenced via *xds_resource_subscribe* and\n\
    \ *xds_resources_unsubscribe*.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\EOT\153\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\153\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\153\SOH\DC4\NAK\n\
    \\198\t\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\176\SOH\STX/\SUB\183\t DeltaDiscoveryRequests allow the client to add or remove individual\n\
    \ resources to the set of tracked resources in the context of a stream.\n\
    \ All resource names in the resource_names_subscribe list are added to the\n\
    \ set of tracked resources and all resource names in the resource_names_unsubscribe\n\
    \ list are removed from the set of tracked resources.\n\
    \\n\
    \ *Unlike* state-of-the-world xDS, an empty resource_names_subscribe or\n\
    \ resource_names_unsubscribe list simply means that no resources are to be\n\
    \ added or removed to the resource list.\n\
    \ *Like* state-of-the-world xDS, the server must send updates for all tracked\n\
    \ resources, but can also send updates for resources the client has not subscribed to.\n\
    \\n\
    \ NOTE: the server must respond with all resources listed in resource_names_subscribe,\n\
    \ even if it believes the client has the most recent version of them. The reason:\n\
    \ the client may have dropped them, but then regained interest before it had a chance\n\
    \ to send the unsubscribe message. See DeltaSubscriptionStateTest.RemoveThenAdd.\n\
    \\n\
    \ These two fields can be set in any DeltaDiscoveryRequest, including ACKs\n\
    \ and initial_resource_versions.\n\
    \\n\
    \ A list of Resource names to add to the list of tracked resources.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\EOT\176\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\EOT\176\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\176\SOH\DC2*\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\176\SOH-.\n\
    \V\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\179\SOH\STX1\SUBH A list of Resource names to remove from the list of tracked resources.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\EOT\179\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\EOT\179\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\179\SOH\DC2,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\179\SOH/0\n\
    \\164\ENQ\n\
    \\EOT\EOT\STX\STX\EOT\DC2\EOT\189\SOH\STX4\SUB\149\ENQ Informs the server of the versions of the resources the xDS client knows of, to enable the\n\
    \ client to continue the same logical xDS session even in the face of gRPC stream reconnection.\n\
    \ It will not be populated: [1] in the very first stream of a session, since the client will\n\
    \ not yet have any resources,  [2] in any message after the first in a stream (for a given\n\
    \ type_url), since the server will already be correctly tracking the client's state.\n\
    \ (In ADS, the first message *of each type_url* of a reconnected stream populates this map.)\n\
    \ The map's keys are names of xDS resources known to the xDS client.\n\
    \ The map's values are opaque resource versions.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\EOT\189\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\EOT\189\SOH\SYN/\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\EOT\189\SOH23\n\
    \\136\STX\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\EOT\195\SOH\STX\FS\SUB\249\SOH When the DeltaDiscoveryRequest is a ACK or NACK message in response\n\
    \ to a previous DeltaDiscoveryResponse, the response_nonce must be the\n\
    \ nonce in the DeltaDiscoveryResponse.\n\
    \ Otherwise (unlike in DiscoveryRequest) response_nonce must be omitted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\EOT\195\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\EOT\195\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\EOT\195\SOH\SUB\ESC\n\
    \\142\STX\n\
    \\EOT\EOT\STX\STX\ACK\DC2\EOT\200\SOH\STX%\SUB\255\SOH This is populated when the previous :ref:`DiscoveryResponse <envoy_v3_api_msg_service.discovery.v3.DiscoveryResponse>`\n\
    \ failed to update configuration. The *message* field in *error_details*\n\
    \ provides the Envoy internal exception related to the failure.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\EOT\200\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\EOT\200\SOH\DC4 \n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\EOT\200\SOH#$\n\
    \%\n\
    \\STX\EOT\ETX\DC2\ACK\204\SOH\NUL\232\SOH\SOH\SUB\ETB [#next-free-field: 8]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\204\SOH\b\RS\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\205\SOH\STX\206\SOH,\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\205\SOH\STX\206\SOH,\n\
    \F\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\209\SOH\STX!\SUB8 The version of the response data (used for debugging).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\209\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\209\SOH\t\FS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\209\SOH\US \n\
    \n\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\213\SOH\STX\"\SUB` The response resources. These are typed resources, whose types must match\n\
    \ the type_url field.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\EOT\213\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\EOT\213\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\213\SOH\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\213\SOH !\n\
    \\210\SOH\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\219\SOH\STX\SYN\SUB\167\SOH Type URL for resources. Identifies the xDS API when muxing over ADS.\n\
    \ Must be consistent with the type_url in the Any within 'resources' if 'resources' is non-empty.\n\
    \2\SUB field id 3 IS available!\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\EOT\219\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\219\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\219\SOH\DC4\NAK\n\
    \\162\SOH\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\223\SOH\STX(\SUB\147\SOH Resources names of resources that have be deleted and to be removed from the xDS Client.\n\
    \ Removed resources for missing resources can be ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\EOT\223\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\EOT\223\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\223\SOH\DC2#\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\223\SOH&'\n\
    \\155\SOH\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOT\227\SOH\STX\DC3\SUB\140\SOH The nonce provides a way for DeltaDiscoveryRequests to uniquely\n\
    \ reference a DeltaDiscoveryResponse when (N)ACKing. The nonce is required.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\EOT\227\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\EOT\227\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\EOT\227\SOH\DC1\DC2\n\
    \\\\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\EOT\231\SOH\STX0\SUBN [#not-implemented-hide:]\n\
    \ The control plane instance that sent the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\EOT\231\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\EOT\231\SOH\RS+\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\EOT\231\SOH./\n\
    \%\n\
    \\STX\EOT\EOT\DC2\ACK\235\SOH\NUL\150\STX\SOH\SUB\ETB [#next-free-field: 8]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\235\SOH\b\DLE\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOT\236\SOH\STXW\n\
    \\DLE\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\EOT\236\SOH\STXW\n\
    \V\n\
    \\EOT\EOT\EOT\ETX\NUL\DC2\ACK\240\SOH\STX\245\SOH\ETX\SUBF Cache control properties for the resource.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\ETX\NUL\SOH\DC2\EOT\240\SOH\n\
    \\SYN\n\
    \\220\SOH\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\NUL\DC2\EOT\244\SOH\EOT\SUB\SUB\203\SOH If true, xDS proxies may not cache this resource.\n\
    \ Note that this does not apply to clients other than xDS proxies, which must cache resources\n\
    \ for their own use, regardless of the value of this field.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ENQ\DC2\EOT\244\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\SOH\DC2\EOT\244\SOH\t\NAK\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ETX\DC2\EOT\244\SOH\CAN\EM\n\
    \`\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\248\SOH\STX\DC2\SUBR The resource's name, to distinguish it from others of the same type of resource.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\248\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\248\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\248\SOH\DLE\DC1\n\
    \S\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\251\SOH\STX\RS\SUBE The aliases are a list of other names that this resource can go by.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\EOT\251\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\251\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\251\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\251\SOH\FS\GS\n\
    \f\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\255\SOH\STX\NAK\SUBX The resource level version. It allows xDS to track the state of individual\n\
    \ resources.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\EOT\255\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\255\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\255\SOH\DC3\DC4\n\
    \+\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\130\STX\STX#\SUB\GS The resource being tracked.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\EOT\130\STX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\130\STX\SYN\RS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\130\STX!\"\n\
    \\247\ACK\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOT\145\STX\STX#\SUB\232\ACK Time-to-live value for the resource. For each resource, a timer is started. The timer is\n\
    \ reset each time the resource is received with a new TTL. If the resource is received with\n\
    \ no TTL set, the timer is removed for the resource. Upon expiration of the timer, the\n\
    \ configuration for the resource will be removed.\n\
    \\n\
    \ The TTL can be refreshed or changed by sending a response that doesn't change the resource\n\
    \ version. In this case the resource field does not need to be populated, which allows for\n\
    \ light-weight \"heartbeat\" updates to keep a resource with a TTL alive.\n\
    \\n\
    \ The TTL feature is meant to support configurations that should be removed in the event of\n\
    \ a management server failure. For example, the feature may be used for fault injection\n\
    \ testing where the fault injection should be terminated in the event that Envoy loses contact\n\
    \ with the management server.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ACK\DC2\EOT\145\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\EOT\145\STX\ESC\RS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\EOT\145\STX!\"\n\
    \T\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\EOT\149\STX\STX!\SUBF Cache control properties for the resource.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ACK\DC2\EOT\149\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\EOT\149\STX\SI\FS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\EOT\149\STX\US b\ACKproto3"