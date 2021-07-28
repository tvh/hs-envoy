{- This file was auto-generated from envoy/config/endpoint/v3/endpoint.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Endpoint.V3.Endpoint (
        ClusterLoadAssignment(),
        ClusterLoadAssignment'NamedEndpointsEntry(),
        ClusterLoadAssignment'Policy(),
        ClusterLoadAssignment'Policy'DropOverload()
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
import qualified Proto.Envoy.Config.Endpoint.V3.EndpointComponents
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.clusterName' @:: Lens' ClusterLoadAssignment Data.Text.Text@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.endpoints' @:: Lens' ClusterLoadAssignment [Proto.Envoy.Config.Endpoint.V3.EndpointComponents.LocalityLbEndpoints]@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.vec'endpoints' @:: Lens' ClusterLoadAssignment (Data.Vector.Vector Proto.Envoy.Config.Endpoint.V3.EndpointComponents.LocalityLbEndpoints)@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.namedEndpoints' @:: Lens' ClusterLoadAssignment (Data.Map.Map Data.Text.Text Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint)@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.policy' @:: Lens' ClusterLoadAssignment ClusterLoadAssignment'Policy@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.maybe'policy' @:: Lens' ClusterLoadAssignment (Prelude.Maybe ClusterLoadAssignment'Policy)@ -}
data ClusterLoadAssignment
  = ClusterLoadAssignment'_constructor {_ClusterLoadAssignment'clusterName :: !Data.Text.Text,
                                        _ClusterLoadAssignment'endpoints :: !(Data.Vector.Vector Proto.Envoy.Config.Endpoint.V3.EndpointComponents.LocalityLbEndpoints),
                                        _ClusterLoadAssignment'namedEndpoints :: !(Data.Map.Map Data.Text.Text Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint),
                                        _ClusterLoadAssignment'policy :: !(Prelude.Maybe ClusterLoadAssignment'Policy),
                                        _ClusterLoadAssignment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterLoadAssignment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment "clusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'clusterName
           (\ x__ y__ -> x__ {_ClusterLoadAssignment'clusterName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment "endpoints" [Proto.Envoy.Config.Endpoint.V3.EndpointComponents.LocalityLbEndpoints] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'endpoints
           (\ x__ y__ -> x__ {_ClusterLoadAssignment'endpoints = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment "vec'endpoints" (Data.Vector.Vector Proto.Envoy.Config.Endpoint.V3.EndpointComponents.LocalityLbEndpoints) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'endpoints
           (\ x__ y__ -> x__ {_ClusterLoadAssignment'endpoints = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment "namedEndpoints" (Data.Map.Map Data.Text.Text Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'namedEndpoints
           (\ x__ y__ -> x__ {_ClusterLoadAssignment'namedEndpoints = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment "policy" ClusterLoadAssignment'Policy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'policy
           (\ x__ y__ -> x__ {_ClusterLoadAssignment'policy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment "maybe'policy" (Prelude.Maybe ClusterLoadAssignment'Policy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'policy
           (\ x__ y__ -> x__ {_ClusterLoadAssignment'policy = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterLoadAssignment where
  messageName _
    = Data.Text.pack "envoy.config.endpoint.v3.ClusterLoadAssignment"
  packedMessageDescriptor _
    = "\n\
      \\NAKClusterLoadAssignment\DC2*\n\
      \\fcluster_name\CAN\SOH \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC2K\n\
      \\tendpoints\CAN\STX \ETX(\v2-.envoy.config.endpoint.v3.LocalityLbEndpointsR\tendpoints\DC2l\n\
      \\SInamed_endpoints\CAN\ENQ \ETX(\v2C.envoy.config.endpoint.v3.ClusterLoadAssignment.NamedEndpointsEntryR\SOnamedEndpoints\DC2N\n\
      \\ACKpolicy\CAN\EOT \SOH(\v26.envoy.config.endpoint.v3.ClusterLoadAssignment.PolicyR\ACKpolicy\SUB\195\EOT\n\
      \\ACKPolicy\DC2j\n\
      \\SOdrop_overloads\CAN\STX \ETX(\v2C.envoy.config.endpoint.v3.ClusterLoadAssignment.Policy.DropOverloadR\rdropOverloads\DC2^\n\
      \\ETBoverprovisioning_factor\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SYNoverprovisioningFactorB\a\250B\EOT*\STX \NUL\DC2U\n\
      \\DC4endpoint_stale_after\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2endpointStaleAfterB\b\250B\ENQ\170\SOH\STX*\NUL\SUB\189\SOH\n\
      \\fDropOverload\DC2#\n\
      \\bcategory\CAN\SOH \SOH(\tR\bcategoryB\a\250B\EOTr\STX\DLE\SOH\DC2I\n\
      \\SIdrop_percentage\CAN\STX \SOH(\v2 .envoy.type.v3.FractionalPercentR\SOdropPercentage:=\154\197\136\RS8\n\
      \6envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload:0\154\197\136\RS+\n\
      \)envoy.api.v2.ClusterLoadAssignment.PolicyJ\EOT\b\SOH\DLE\STXJ\EOT\b\ENQ\DLE\ACKR\CANdisable_overprovisioning\SUBe\n\
      \\DC3NamedEndpointsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC28\n\
      \\ENQvalue\CAN\STX \SOH(\v2\".envoy.config.endpoint.v3.EndpointR\ENQvalue:\STX8\SOH:)\154\197\136\RS$\n\
      \\"envoy.api.v2.ClusterLoadAssignment"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clusterName")) ::
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment
        endpoints__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoints"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Endpoint.V3.EndpointComponents.LocalityLbEndpoints)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"endpoints")) ::
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment
        namedEndpoints__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "named_endpoints"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClusterLoadAssignment'NamedEndpointsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"namedEndpoints")) ::
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment
        policy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClusterLoadAssignment'Policy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'policy")) ::
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusterName__field_descriptor),
           (Data.ProtoLens.Tag 2, endpoints__field_descriptor),
           (Data.ProtoLens.Tag 5, namedEndpoints__field_descriptor),
           (Data.ProtoLens.Tag 4, policy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterLoadAssignment'_unknownFields
        (\ x__ y__ -> x__ {_ClusterLoadAssignment'_unknownFields = y__})
  defMessage
    = ClusterLoadAssignment'_constructor
        {_ClusterLoadAssignment'clusterName = Data.ProtoLens.fieldDefault,
         _ClusterLoadAssignment'endpoints = Data.Vector.Generic.empty,
         _ClusterLoadAssignment'namedEndpoints = Data.Map.empty,
         _ClusterLoadAssignment'policy = Prelude.Nothing,
         _ClusterLoadAssignment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterLoadAssignment
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Endpoint.V3.EndpointComponents.LocalityLbEndpoints
             -> Data.ProtoLens.Encoding.Bytes.Parser ClusterLoadAssignment
        loop x mutable'endpoints
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'endpoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'endpoints)
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
                              (Data.ProtoLens.Field.field @"vec'endpoints") frozen'endpoints x))
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
                                       "cluster_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clusterName") y x)
                                  mutable'endpoints
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "endpoints"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'endpoints y)
                                loop x v
                        42
                          -> do !(entry :: ClusterLoadAssignment'NamedEndpointsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                           (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                               Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                 (Prelude.fromIntegral
                                                                                                    len)
                                                                                                 Data.ProtoLens.parseMessage)
                                                                                           "named_endpoints"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"namedEndpoints")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'endpoints)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"policy") y x)
                                  mutable'endpoints
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'endpoints
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'endpoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'endpoints)
          "ClusterLoadAssignment"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"clusterName") _x
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
                      (Data.ProtoLens.Field.field @"vec'endpoints") _x))
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
                                             ClusterLoadAssignment'NamedEndpointsEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"namedEndpoints") _x))))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'policy") _x
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
instance Control.DeepSeq.NFData ClusterLoadAssignment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterLoadAssignment'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterLoadAssignment'clusterName x__)
                (Control.DeepSeq.deepseq
                   (_ClusterLoadAssignment'endpoints x__)
                   (Control.DeepSeq.deepseq
                      (_ClusterLoadAssignment'namedEndpoints x__)
                      (Control.DeepSeq.deepseq (_ClusterLoadAssignment'policy x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.key' @:: Lens' ClusterLoadAssignment'NamedEndpointsEntry Data.Text.Text@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.value' @:: Lens' ClusterLoadAssignment'NamedEndpointsEntry Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.maybe'value' @:: Lens' ClusterLoadAssignment'NamedEndpointsEntry (Prelude.Maybe Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint)@ -}
data ClusterLoadAssignment'NamedEndpointsEntry
  = ClusterLoadAssignment'NamedEndpointsEntry'_constructor {_ClusterLoadAssignment'NamedEndpointsEntry'key :: !Data.Text.Text,
                                                            _ClusterLoadAssignment'NamedEndpointsEntry'value :: !(Prelude.Maybe Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint),
                                                            _ClusterLoadAssignment'NamedEndpointsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterLoadAssignment'NamedEndpointsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'NamedEndpointsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'NamedEndpointsEntry'key
           (\ x__ y__
              -> x__ {_ClusterLoadAssignment'NamedEndpointsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'NamedEndpointsEntry "value" Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'NamedEndpointsEntry'value
           (\ x__ y__
              -> x__ {_ClusterLoadAssignment'NamedEndpointsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'NamedEndpointsEntry "maybe'value" (Prelude.Maybe Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'NamedEndpointsEntry'value
           (\ x__ y__
              -> x__ {_ClusterLoadAssignment'NamedEndpointsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterLoadAssignment'NamedEndpointsEntry where
  messageName _
    = Data.Text.pack
        "envoy.config.endpoint.v3.ClusterLoadAssignment.NamedEndpointsEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC3NamedEndpointsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC28\n\
      \\ENQvalue\CAN\STX \SOH(\v2\".envoy.config.endpoint.v3.EndpointR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment'NamedEndpointsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment'NamedEndpointsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterLoadAssignment'NamedEndpointsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_ClusterLoadAssignment'NamedEndpointsEntry'_unknownFields = y__})
  defMessage
    = ClusterLoadAssignment'NamedEndpointsEntry'_constructor
        {_ClusterLoadAssignment'NamedEndpointsEntry'key = Data.ProtoLens.fieldDefault,
         _ClusterLoadAssignment'NamedEndpointsEntry'value = Prelude.Nothing,
         _ClusterLoadAssignment'NamedEndpointsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterLoadAssignment'NamedEndpointsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ClusterLoadAssignment'NamedEndpointsEntry
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
          (do loop Data.ProtoLens.defMessage) "NamedEndpointsEntry"
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
instance Control.DeepSeq.NFData ClusterLoadAssignment'NamedEndpointsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterLoadAssignment'NamedEndpointsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterLoadAssignment'NamedEndpointsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ClusterLoadAssignment'NamedEndpointsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.dropOverloads' @:: Lens' ClusterLoadAssignment'Policy [ClusterLoadAssignment'Policy'DropOverload]@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.vec'dropOverloads' @:: Lens' ClusterLoadAssignment'Policy (Data.Vector.Vector ClusterLoadAssignment'Policy'DropOverload)@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.overprovisioningFactor' @:: Lens' ClusterLoadAssignment'Policy Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.maybe'overprovisioningFactor' @:: Lens' ClusterLoadAssignment'Policy (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.endpointStaleAfter' @:: Lens' ClusterLoadAssignment'Policy Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.maybe'endpointStaleAfter' @:: Lens' ClusterLoadAssignment'Policy (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data ClusterLoadAssignment'Policy
  = ClusterLoadAssignment'Policy'_constructor {_ClusterLoadAssignment'Policy'dropOverloads :: !(Data.Vector.Vector ClusterLoadAssignment'Policy'DropOverload),
                                               _ClusterLoadAssignment'Policy'overprovisioningFactor :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                               _ClusterLoadAssignment'Policy'endpointStaleAfter :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                               _ClusterLoadAssignment'Policy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterLoadAssignment'Policy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'Policy "dropOverloads" [ClusterLoadAssignment'Policy'DropOverload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'Policy'dropOverloads
           (\ x__ y__
              -> x__ {_ClusterLoadAssignment'Policy'dropOverloads = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'Policy "vec'dropOverloads" (Data.Vector.Vector ClusterLoadAssignment'Policy'DropOverload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'Policy'dropOverloads
           (\ x__ y__
              -> x__ {_ClusterLoadAssignment'Policy'dropOverloads = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'Policy "overprovisioningFactor" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'Policy'overprovisioningFactor
           (\ x__ y__
              -> x__
                   {_ClusterLoadAssignment'Policy'overprovisioningFactor = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'Policy "maybe'overprovisioningFactor" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'Policy'overprovisioningFactor
           (\ x__ y__
              -> x__
                   {_ClusterLoadAssignment'Policy'overprovisioningFactor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'Policy "endpointStaleAfter" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'Policy'endpointStaleAfter
           (\ x__ y__
              -> x__ {_ClusterLoadAssignment'Policy'endpointStaleAfter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'Policy "maybe'endpointStaleAfter" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'Policy'endpointStaleAfter
           (\ x__ y__
              -> x__ {_ClusterLoadAssignment'Policy'endpointStaleAfter = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterLoadAssignment'Policy where
  messageName _
    = Data.Text.pack
        "envoy.config.endpoint.v3.ClusterLoadAssignment.Policy"
  packedMessageDescriptor _
    = "\n\
      \\ACKPolicy\DC2j\n\
      \\SOdrop_overloads\CAN\STX \ETX(\v2C.envoy.config.endpoint.v3.ClusterLoadAssignment.Policy.DropOverloadR\rdropOverloads\DC2^\n\
      \\ETBoverprovisioning_factor\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SYNoverprovisioningFactorB\a\250B\EOT*\STX \NUL\DC2U\n\
      \\DC4endpoint_stale_after\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2endpointStaleAfterB\b\250B\ENQ\170\SOH\STX*\NUL\SUB\189\SOH\n\
      \\fDropOverload\DC2#\n\
      \\bcategory\CAN\SOH \SOH(\tR\bcategoryB\a\250B\EOTr\STX\DLE\SOH\DC2I\n\
      \\SIdrop_percentage\CAN\STX \SOH(\v2 .envoy.type.v3.FractionalPercentR\SOdropPercentage:=\154\197\136\RS8\n\
      \6envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload:0\154\197\136\RS+\n\
      \)envoy.api.v2.ClusterLoadAssignment.PolicyJ\EOT\b\SOH\DLE\STXJ\EOT\b\ENQ\DLE\ACKR\CANdisable_overprovisioning"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dropOverloads__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drop_overloads"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClusterLoadAssignment'Policy'DropOverload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dropOverloads")) ::
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment'Policy
        overprovisioningFactor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overprovisioning_factor"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'overprovisioningFactor")) ::
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment'Policy
        endpointStaleAfter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint_stale_after"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endpointStaleAfter")) ::
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment'Policy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, dropOverloads__field_descriptor),
           (Data.ProtoLens.Tag 3, overprovisioningFactor__field_descriptor),
           (Data.ProtoLens.Tag 4, endpointStaleAfter__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterLoadAssignment'Policy'_unknownFields
        (\ x__ y__
           -> x__ {_ClusterLoadAssignment'Policy'_unknownFields = y__})
  defMessage
    = ClusterLoadAssignment'Policy'_constructor
        {_ClusterLoadAssignment'Policy'dropOverloads = Data.Vector.Generic.empty,
         _ClusterLoadAssignment'Policy'overprovisioningFactor = Prelude.Nothing,
         _ClusterLoadAssignment'Policy'endpointStaleAfter = Prelude.Nothing,
         _ClusterLoadAssignment'Policy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterLoadAssignment'Policy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClusterLoadAssignment'Policy'DropOverload
             -> Data.ProtoLens.Encoding.Bytes.Parser ClusterLoadAssignment'Policy
        loop x mutable'dropOverloads
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dropOverloads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'dropOverloads)
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
                              (Data.ProtoLens.Field.field @"vec'dropOverloads")
                              frozen'dropOverloads
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "drop_overloads"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dropOverloads y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "overprovisioning_factor"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"overprovisioningFactor") y x)
                                  mutable'dropOverloads
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "endpoint_stale_after"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"endpointStaleAfter") y x)
                                  mutable'dropOverloads
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dropOverloads
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dropOverloads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'dropOverloads)
          "Policy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
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
                   (Data.ProtoLens.Field.field @"vec'dropOverloads") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'overprovisioningFactor") _x
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
                          (Data.ProtoLens.Field.field @"maybe'endpointStaleAfter") _x
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ClusterLoadAssignment'Policy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterLoadAssignment'Policy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterLoadAssignment'Policy'dropOverloads x__)
                (Control.DeepSeq.deepseq
                   (_ClusterLoadAssignment'Policy'overprovisioningFactor x__)
                   (Control.DeepSeq.deepseq
                      (_ClusterLoadAssignment'Policy'endpointStaleAfter x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.category' @:: Lens' ClusterLoadAssignment'Policy'DropOverload Data.Text.Text@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.dropPercentage' @:: Lens' ClusterLoadAssignment'Policy'DropOverload Proto.Envoy.Type.V3.Percent.FractionalPercent@
         * 'Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields.maybe'dropPercentage' @:: Lens' ClusterLoadAssignment'Policy'DropOverload (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent)@ -}
data ClusterLoadAssignment'Policy'DropOverload
  = ClusterLoadAssignment'Policy'DropOverload'_constructor {_ClusterLoadAssignment'Policy'DropOverload'category :: !Data.Text.Text,
                                                            _ClusterLoadAssignment'Policy'DropOverload'dropPercentage :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent),
                                                            _ClusterLoadAssignment'Policy'DropOverload'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterLoadAssignment'Policy'DropOverload where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'Policy'DropOverload "category" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'Policy'DropOverload'category
           (\ x__ y__
              -> x__
                   {_ClusterLoadAssignment'Policy'DropOverload'category = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'Policy'DropOverload "dropPercentage" Proto.Envoy.Type.V3.Percent.FractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'Policy'DropOverload'dropPercentage
           (\ x__ y__
              -> x__
                   {_ClusterLoadAssignment'Policy'DropOverload'dropPercentage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterLoadAssignment'Policy'DropOverload "maybe'dropPercentage" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterLoadAssignment'Policy'DropOverload'dropPercentage
           (\ x__ y__
              -> x__
                   {_ClusterLoadAssignment'Policy'DropOverload'dropPercentage = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterLoadAssignment'Policy'DropOverload where
  messageName _
    = Data.Text.pack
        "envoy.config.endpoint.v3.ClusterLoadAssignment.Policy.DropOverload"
  packedMessageDescriptor _
    = "\n\
      \\fDropOverload\DC2#\n\
      \\bcategory\CAN\SOH \SOH(\tR\bcategoryB\a\250B\EOTr\STX\DLE\SOH\DC2I\n\
      \\SIdrop_percentage\CAN\STX \SOH(\v2 .envoy.type.v3.FractionalPercentR\SOdropPercentage:=\154\197\136\RS8\n\
      \6envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        category__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "category"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"category")) ::
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment'Policy'DropOverload
        dropPercentage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drop_percentage"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.FractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dropPercentage")) ::
              Data.ProtoLens.FieldDescriptor ClusterLoadAssignment'Policy'DropOverload
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, category__field_descriptor),
           (Data.ProtoLens.Tag 2, dropPercentage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterLoadAssignment'Policy'DropOverload'_unknownFields
        (\ x__ y__
           -> x__
                {_ClusterLoadAssignment'Policy'DropOverload'_unknownFields = y__})
  defMessage
    = ClusterLoadAssignment'Policy'DropOverload'_constructor
        {_ClusterLoadAssignment'Policy'DropOverload'category = Data.ProtoLens.fieldDefault,
         _ClusterLoadAssignment'Policy'DropOverload'dropPercentage = Prelude.Nothing,
         _ClusterLoadAssignment'Policy'DropOverload'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterLoadAssignment'Policy'DropOverload
          -> Data.ProtoLens.Encoding.Bytes.Parser ClusterLoadAssignment'Policy'DropOverload
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
                                       "category"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"category") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "drop_percentage"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dropPercentage") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DropOverload"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"category") _x
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
                       (Data.ProtoLens.Field.field @"maybe'dropPercentage") _x
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
instance Control.DeepSeq.NFData ClusterLoadAssignment'Policy'DropOverload where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterLoadAssignment'Policy'DropOverload'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterLoadAssignment'Policy'DropOverload'category x__)
                (Control.DeepSeq.deepseq
                   (_ClusterLoadAssignment'Policy'DropOverload'dropPercentage x__)
                   ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'envoy/config/endpoint/v3/endpoint.proto\DC2\CANenvoy.config.endpoint.v3\SUB2envoy/config/endpoint/v3/endpoint_components.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\166\b\n\
    \\NAKClusterLoadAssignment\DC2*\n\
    \\fcluster_name\CAN\SOH \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC2K\n\
    \\tendpoints\CAN\STX \ETX(\v2-.envoy.config.endpoint.v3.LocalityLbEndpointsR\tendpoints\DC2l\n\
    \\SInamed_endpoints\CAN\ENQ \ETX(\v2C.envoy.config.endpoint.v3.ClusterLoadAssignment.NamedEndpointsEntryR\SOnamedEndpoints\DC2N\n\
    \\ACKpolicy\CAN\EOT \SOH(\v26.envoy.config.endpoint.v3.ClusterLoadAssignment.PolicyR\ACKpolicy\SUB\195\EOT\n\
    \\ACKPolicy\DC2j\n\
    \\SOdrop_overloads\CAN\STX \ETX(\v2C.envoy.config.endpoint.v3.ClusterLoadAssignment.Policy.DropOverloadR\rdropOverloads\DC2^\n\
    \\ETBoverprovisioning_factor\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SYNoverprovisioningFactorB\a\250B\EOT*\STX \NUL\DC2U\n\
    \\DC4endpoint_stale_after\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2endpointStaleAfterB\b\250B\ENQ\170\SOH\STX*\NUL\SUB\189\SOH\n\
    \\fDropOverload\DC2#\n\
    \\bcategory\CAN\SOH \SOH(\tR\bcategoryB\a\250B\EOTr\STX\DLE\SOH\DC2I\n\
    \\SIdrop_percentage\CAN\STX \SOH(\v2 .envoy.type.v3.FractionalPercentR\SOdropPercentage:=\154\197\136\RS8\n\
    \6envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload:0\154\197\136\RS+\n\
    \)envoy.api.v2.ClusterLoadAssignment.PolicyJ\EOT\b\SOH\DLE\STXJ\EOT\b\ENQ\DLE\ACKR\CANdisable_overprovisioning\SUBe\n\
    \\DC3NamedEndpointsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC28\n\
    \\ENQvalue\CAN\STX \SOH(\v2\".envoy.config.endpoint.v3.EndpointR\ENQvalue:\STX8\SOH:)\154\197\136\RS$\n\
    \\"envoy.api.v2.ClusterLoadAssignmentBA\n\
    \&io.envoyproxy.envoy.config.endpoint.v3B\rEndpointProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\162\"\n\
    \\ACK\DC2\EOT\NUL\NULu\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL<\n\
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
    \\SOH\b\DC2\ETX\SO\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\251\ENQ\n\
    \\STX\EOT\NUL\DC2\EOT \NULu\SOH\SUB\227\EOT Each route from RDS will map to a single cluster or traffic split across\n\
    \ clusters using weights expressed in the RDS WeightedCluster.\n\
    \\n\
    \ With EDS, each cluster is treated independently from a LB perspective, with\n\
    \ LB taking place between the Localities within a cluster and at a finer\n\
    \ granularity between the hosts within a locality. The percentage of traffic\n\
    \ for each endpoint is determined by both its load_balancing_weight, and the\n\
    \ load_balancing_weight of its locality. First, a locality will be selected,\n\
    \ then an endpoint within that locality will be chose based on its weight.\n\
    \ [#next-free-field: 6]\n\
    \2\136\SOH [#protodoc-title: Endpoint configuration]\n\
    \ Endpoint discovery :ref:`architecture overview <arch_overview_service_discovery_types_eds>`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX \b\GS\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX!\STXd\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX!\STXd\n\
    \F\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT%\STXd\ETX\SUB8 Load balancing policy settings.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX%\n\
    \\DLE\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT&\EOT'4\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT&\EOT'4\n\
    \*\n\
    \\ACK\EOT\NUL\ETX\NUL\ETX\NUL\DC2\EOT*\EOT3\ENQ\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\SOH\DC2\ETX*\f\CAN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\a\DC2\EOT+\ACK,C\n\
    \\DC4\n\
    \\f\EOT\NUL\ETX\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT+\ACK,C\n\
    \A\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\DC2\ETX/\ACKC\SUB0 Identifier for the policy specifying the drop.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX/\ACK\f\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX/\r\NAK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX/\CAN\EM\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\b\DC2\ETX/\SUBB\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETX/\ESCA\n\
    \Q\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\DC2\ETX2\ACK4\SUB@ Percentage of traffic that should be dropped for the category.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX2\ACK\US\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX2 /\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX223\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\t\DC2\ETX5\EOT\DC2\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\t\NUL\DC2\ETX5\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\SOH\DC2\ETX5\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\STX\DC2\ETX5\r\SO\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\t\SOH\DC2\ETX5\DLE\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\SOH\SOH\DC2\ETX5\DLE\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\SOH\STX\DC2\ETX5\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\n\
    \\DC2\ETX7\EOT(\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\n\
    \\NUL\DC2\ETX7\r'\n\
    \\201\ACK\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXM\EOT-\SUB\185\ACK Action to trim the overall incoming traffic to protect the upstream\n\
    \ hosts. This action allows protection in case the hosts are unable to\n\
    \ recover from an outage, or unable to autoscale or unable to handle\n\
    \ incoming traffic volume for any reason.\n\
    \\n\
    \ At the client each category is applied one after the other to generate\n\
    \ the 'actual' drop percentage on all outgoing traffic. For example:\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \  { \"drop_overloads\": [\n\
    \      { \"category\": \"throttle\", \"drop_percentage\": 60 }\n\
    \      { \"category\": \"lb\", \"drop_percentage\": 50 }\n\
    \  ]}\n\
    \\n\
    \ The actual drop percentages applied to the traffic at the clients will be\n\
    \    \"throttle\"_drop = 60%\n\
    \    \"lb\"_drop = 20%  // 50% of the remaining 'actual' load, which is 40%.\n\
    \    actual_outgoing_load = 20% // remaining after applying all categories.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETXM\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETXM\r\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXM\SUB(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXM+,\n\
    \\164\ENQ\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX]\EOT`\SUB\148\ENQ Priority levels and localities are considered overprovisioned with this\n\
    \ factor (in percentage). This means that we don't consider a priority\n\
    \ level or locality unhealthy until the fraction of healthy hosts\n\
    \ multiplied by the overprovisioning factor drops below 100.\n\
    \ With the default value 140(1.4), Envoy doesn't consider a priority level\n\
    \ or a locality unhealthy until their percentage of healthy hosts drops\n\
    \ below 72%. For example:\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \  { \"overprovisioning_factor\": 100 }\n\
    \\n\
    \ Read more at :ref:`priority levels <arch_overview_load_balancing_priority_levels>` and\n\
    \ :ref:`localities <arch_overview_load_balancing_locality_weighted_lb>`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX]\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX] 7\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX]:;\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\b\DC2\ETX]<_\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\SOH\b\175\b\ENQ\DC2\ETX]=^\n\
    \\144\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETXc\EOT\\\SUB\128\STX The max time until which the endpoints from this assignment can be used.\n\
    \ If no new assignments are received before this time expires the endpoints\n\
    \ are considered stale and should be marked unhealthy.\n\
    \ Defaults to 0 which means endpoints never go stale.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETXc\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETXc\GS1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETXc45\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\b\DC2\ETXc6[\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\STX\b\175\b\NAK\DC2\ETXc7Z\n\
    \\146\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXj\STXC\SUB\132\STX Name of the cluster. This will be the :ref:`service_name\n\
    \ <envoy_v3_api_field_config.cluster.v3.Cluster.EdsClusterConfig.service_name>` value if specified\n\
    \ in the cluster :ref:`EdsClusterConfig\n\
    \ <envoy_v3_api_msg_config.cluster.v3.Cluster.EdsClusterConfig>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXj\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXj\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXj\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXj\SUBB\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETXj\ESCA\n\
    \4\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXm\STX-\SUB' List of endpoints to load balance to.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXm\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXm\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXm\US(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXm+,\n\
    \n\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXq\STX,\SUBa Map of named endpoints that can be referenced in LocalityLbEndpoints.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXq\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXq\CAN'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXq*+\n\
    \.\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXt\STX\DC4\SUB! Load balancing policy settings.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXt\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXt\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXt\DC2\DC3b\ACKproto3"