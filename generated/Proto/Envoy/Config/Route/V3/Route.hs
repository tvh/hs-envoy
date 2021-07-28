{- This file was auto-generated from envoy/config/route/v3/route.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Route.V3.Route (
        ClusterSpecifierPlugin(), RouteConfiguration(), Vhds()
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
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.extension' @:: Lens' ClusterSpecifierPlugin Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.maybe'extension' @:: Lens' ClusterSpecifierPlugin (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@ -}
data ClusterSpecifierPlugin
  = ClusterSpecifierPlugin'_constructor {_ClusterSpecifierPlugin'extension :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                         _ClusterSpecifierPlugin'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterSpecifierPlugin where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterSpecifierPlugin "extension" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterSpecifierPlugin'extension
           (\ x__ y__ -> x__ {_ClusterSpecifierPlugin'extension = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterSpecifierPlugin "maybe'extension" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterSpecifierPlugin'extension
           (\ x__ y__ -> x__ {_ClusterSpecifierPlugin'extension = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterSpecifierPlugin where
  messageName _
    = Data.Text.pack "envoy.config.route.v3.ClusterSpecifierPlugin"
  packedMessageDescriptor _
    = "\n\
      \\SYNClusterSpecifierPlugin\DC2H\n\
      \\textension\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\textension"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        extension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extension")) ::
              Data.ProtoLens.FieldDescriptor ClusterSpecifierPlugin
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, extension__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterSpecifierPlugin'_unknownFields
        (\ x__ y__ -> x__ {_ClusterSpecifierPlugin'_unknownFields = y__})
  defMessage
    = ClusterSpecifierPlugin'_constructor
        {_ClusterSpecifierPlugin'extension = Prelude.Nothing,
         _ClusterSpecifierPlugin'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterSpecifierPlugin
          -> Data.ProtoLens.Encoding.Bytes.Parser ClusterSpecifierPlugin
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
                                       "extension"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"extension") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ClusterSpecifierPlugin"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'extension") _x
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
instance Control.DeepSeq.NFData ClusterSpecifierPlugin where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterSpecifierPlugin'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterSpecifierPlugin'extension x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.name' @:: Lens' RouteConfiguration Data.Text.Text@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.virtualHosts' @:: Lens' RouteConfiguration [Proto.Envoy.Config.Route.V3.RouteComponents.VirtualHost]@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.vec'virtualHosts' @:: Lens' RouteConfiguration (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.VirtualHost)@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.vhds' @:: Lens' RouteConfiguration Vhds@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.maybe'vhds' @:: Lens' RouteConfiguration (Prelude.Maybe Vhds)@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.internalOnlyHeaders' @:: Lens' RouteConfiguration [Data.Text.Text]@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.vec'internalOnlyHeaders' @:: Lens' RouteConfiguration (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.responseHeadersToAdd' @:: Lens' RouteConfiguration [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.vec'responseHeadersToAdd' @:: Lens' RouteConfiguration (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.responseHeadersToRemove' @:: Lens' RouteConfiguration [Data.Text.Text]@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.vec'responseHeadersToRemove' @:: Lens' RouteConfiguration (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.requestHeadersToAdd' @:: Lens' RouteConfiguration [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.vec'requestHeadersToAdd' @:: Lens' RouteConfiguration (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.requestHeadersToRemove' @:: Lens' RouteConfiguration [Data.Text.Text]@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.vec'requestHeadersToRemove' @:: Lens' RouteConfiguration (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.mostSpecificHeaderMutationsWins' @:: Lens' RouteConfiguration Prelude.Bool@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.validateClusters' @:: Lens' RouteConfiguration Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.maybe'validateClusters' @:: Lens' RouteConfiguration (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.maxDirectResponseBodySizeBytes' @:: Lens' RouteConfiguration Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.maybe'maxDirectResponseBodySizeBytes' @:: Lens' RouteConfiguration (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.clusterSpecifierPlugins' @:: Lens' RouteConfiguration [ClusterSpecifierPlugin]@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.vec'clusterSpecifierPlugins' @:: Lens' RouteConfiguration (Data.Vector.Vector ClusterSpecifierPlugin)@ -}
data RouteConfiguration
  = RouteConfiguration'_constructor {_RouteConfiguration'name :: !Data.Text.Text,
                                     _RouteConfiguration'virtualHosts :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.VirtualHost),
                                     _RouteConfiguration'vhds :: !(Prelude.Maybe Vhds),
                                     _RouteConfiguration'internalOnlyHeaders :: !(Data.Vector.Vector Data.Text.Text),
                                     _RouteConfiguration'responseHeadersToAdd :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                     _RouteConfiguration'responseHeadersToRemove :: !(Data.Vector.Vector Data.Text.Text),
                                     _RouteConfiguration'requestHeadersToAdd :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                     _RouteConfiguration'requestHeadersToRemove :: !(Data.Vector.Vector Data.Text.Text),
                                     _RouteConfiguration'mostSpecificHeaderMutationsWins :: !Prelude.Bool,
                                     _RouteConfiguration'validateClusters :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                     _RouteConfiguration'maxDirectResponseBodySizeBytes :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                     _RouteConfiguration'clusterSpecifierPlugins :: !(Data.Vector.Vector ClusterSpecifierPlugin),
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
instance Data.ProtoLens.Field.HasField RouteConfiguration "virtualHosts" [Proto.Envoy.Config.Route.V3.RouteComponents.VirtualHost] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'virtualHosts
           (\ x__ y__ -> x__ {_RouteConfiguration'virtualHosts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteConfiguration "vec'virtualHosts" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.VirtualHost) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'virtualHosts
           (\ x__ y__ -> x__ {_RouteConfiguration'virtualHosts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "vhds" Vhds where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'vhds
           (\ x__ y__ -> x__ {_RouteConfiguration'vhds = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RouteConfiguration "maybe'vhds" (Prelude.Maybe Vhds) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'vhds
           (\ x__ y__ -> x__ {_RouteConfiguration'vhds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "internalOnlyHeaders" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'internalOnlyHeaders
           (\ x__ y__ -> x__ {_RouteConfiguration'internalOnlyHeaders = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteConfiguration "vec'internalOnlyHeaders" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'internalOnlyHeaders
           (\ x__ y__ -> x__ {_RouteConfiguration'internalOnlyHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "responseHeadersToAdd" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'responseHeadersToAdd
           (\ x__ y__
              -> x__ {_RouteConfiguration'responseHeadersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteConfiguration "vec'responseHeadersToAdd" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'responseHeadersToAdd
           (\ x__ y__
              -> x__ {_RouteConfiguration'responseHeadersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "responseHeadersToRemove" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'responseHeadersToRemove
           (\ x__ y__
              -> x__ {_RouteConfiguration'responseHeadersToRemove = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteConfiguration "vec'responseHeadersToRemove" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'responseHeadersToRemove
           (\ x__ y__
              -> x__ {_RouteConfiguration'responseHeadersToRemove = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "requestHeadersToAdd" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'requestHeadersToAdd
           (\ x__ y__ -> x__ {_RouteConfiguration'requestHeadersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteConfiguration "vec'requestHeadersToAdd" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'requestHeadersToAdd
           (\ x__ y__ -> x__ {_RouteConfiguration'requestHeadersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "requestHeadersToRemove" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'requestHeadersToRemove
           (\ x__ y__
              -> x__ {_RouteConfiguration'requestHeadersToRemove = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteConfiguration "vec'requestHeadersToRemove" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'requestHeadersToRemove
           (\ x__ y__
              -> x__ {_RouteConfiguration'requestHeadersToRemove = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "mostSpecificHeaderMutationsWins" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'mostSpecificHeaderMutationsWins
           (\ x__ y__
              -> x__
                   {_RouteConfiguration'mostSpecificHeaderMutationsWins = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "validateClusters" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'validateClusters
           (\ x__ y__ -> x__ {_RouteConfiguration'validateClusters = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RouteConfiguration "maybe'validateClusters" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'validateClusters
           (\ x__ y__ -> x__ {_RouteConfiguration'validateClusters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "maxDirectResponseBodySizeBytes" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'maxDirectResponseBodySizeBytes
           (\ x__ y__
              -> x__ {_RouteConfiguration'maxDirectResponseBodySizeBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RouteConfiguration "maybe'maxDirectResponseBodySizeBytes" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'maxDirectResponseBodySizeBytes
           (\ x__ y__
              -> x__ {_RouteConfiguration'maxDirectResponseBodySizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "clusterSpecifierPlugins" [ClusterSpecifierPlugin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'clusterSpecifierPlugins
           (\ x__ y__
              -> x__ {_RouteConfiguration'clusterSpecifierPlugins = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteConfiguration "vec'clusterSpecifierPlugins" (Data.Vector.Vector ClusterSpecifierPlugin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'clusterSpecifierPlugins
           (\ x__ y__
              -> x__ {_RouteConfiguration'clusterSpecifierPlugins = y__}))
        Prelude.id
instance Data.ProtoLens.Message RouteConfiguration where
  messageName _
    = Data.Text.pack "envoy.config.route.v3.RouteConfiguration"
  packedMessageDescriptor _
    = "\n\
      \\DC2RouteConfiguration\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2G\n\
      \\rvirtual_hosts\CAN\STX \ETX(\v2\".envoy.config.route.v3.VirtualHostR\fvirtualHosts\DC2/\n\
      \\EOTvhds\CAN\t \SOH(\v2\ESC.envoy.config.route.v3.VhdsR\EOTvhds\DC2D\n\
      \\NAKinternal_only_headers\CAN\ETX \ETX(\tR\DC3internalOnlyHeadersB\DLE\250B\r\146\SOH\n\
      \\"\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2i\n\
      \\ETBresponse_headers_to_add\CAN\EOT \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC4responseHeadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a\DC2M\n\
      \\SUBresponse_headers_to_remove\CAN\ENQ \ETX(\tR\ETBresponseHeadersToRemoveB\DLE\250B\r\146\SOH\n\
      \\"\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2g\n\
      \\SYNrequest_headers_to_add\CAN\ACK \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC3requestHeadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a\DC2K\n\
      \\EMrequest_headers_to_remove\CAN\b \ETX(\tR\SYNrequestHeadersToRemoveB\DLE\250B\r\146\SOH\n\
      \\"\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2L\n\
      \#most_specific_header_mutations_wins\CAN\n\
      \ \SOH(\bR\USmostSpecificHeaderMutationsWins\DC2G\n\
      \\DC1validate_clusters\CAN\a \SOH(\v2\SUB.google.protobuf.BoolValueR\DLEvalidateClusters\DC2i\n\
      \#max_direct_response_body_size_bytes\CAN\v \SOH(\v2\FS.google.protobuf.UInt32ValueR\RSmaxDirectResponseBodySizeBytes\DC2i\n\
      \\EMcluster_specifier_plugins\CAN\f \ETX(\v2-.envoy.config.route.v3.ClusterSpecifierPluginR\ETBclusterSpecifierPlugins:&\154\197\136\RS!\n\
      \\USenvoy.api.v2.RouteConfiguration"
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
        virtualHosts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "virtual_hosts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.VirtualHost)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"virtualHosts")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        vhds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vhds"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Vhds)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vhds")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        internalOnlyHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "internal_only_headers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"internalOnlyHeaders")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        responseHeadersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_headers_to_add"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"responseHeadersToAdd")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        responseHeadersToRemove__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_headers_to_remove"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"responseHeadersToRemove")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        requestHeadersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers_to_add"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requestHeadersToAdd")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        requestHeadersToRemove__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers_to_remove"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requestHeadersToRemove")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        mostSpecificHeaderMutationsWins__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "most_specific_header_mutations_wins"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mostSpecificHeaderMutationsWins")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        validateClusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validate_clusters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validateClusters")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        maxDirectResponseBodySizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_direct_response_body_size_bytes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'maxDirectResponseBodySizeBytes")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        clusterSpecifierPlugins__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_specifier_plugins"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClusterSpecifierPlugin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clusterSpecifierPlugins")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, virtualHosts__field_descriptor),
           (Data.ProtoLens.Tag 9, vhds__field_descriptor),
           (Data.ProtoLens.Tag 3, internalOnlyHeaders__field_descriptor),
           (Data.ProtoLens.Tag 4, responseHeadersToAdd__field_descriptor),
           (Data.ProtoLens.Tag 5, responseHeadersToRemove__field_descriptor),
           (Data.ProtoLens.Tag 6, requestHeadersToAdd__field_descriptor),
           (Data.ProtoLens.Tag 8, requestHeadersToRemove__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            mostSpecificHeaderMutationsWins__field_descriptor),
           (Data.ProtoLens.Tag 7, validateClusters__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            maxDirectResponseBodySizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 12, clusterSpecifierPlugins__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RouteConfiguration'_unknownFields
        (\ x__ y__ -> x__ {_RouteConfiguration'_unknownFields = y__})
  defMessage
    = RouteConfiguration'_constructor
        {_RouteConfiguration'name = Data.ProtoLens.fieldDefault,
         _RouteConfiguration'virtualHosts = Data.Vector.Generic.empty,
         _RouteConfiguration'vhds = Prelude.Nothing,
         _RouteConfiguration'internalOnlyHeaders = Data.Vector.Generic.empty,
         _RouteConfiguration'responseHeadersToAdd = Data.Vector.Generic.empty,
         _RouteConfiguration'responseHeadersToRemove = Data.Vector.Generic.empty,
         _RouteConfiguration'requestHeadersToAdd = Data.Vector.Generic.empty,
         _RouteConfiguration'requestHeadersToRemove = Data.Vector.Generic.empty,
         _RouteConfiguration'mostSpecificHeaderMutationsWins = Data.ProtoLens.fieldDefault,
         _RouteConfiguration'validateClusters = Prelude.Nothing,
         _RouteConfiguration'maxDirectResponseBodySizeBytes = Prelude.Nothing,
         _RouteConfiguration'clusterSpecifierPlugins = Data.Vector.Generic.empty,
         _RouteConfiguration'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RouteConfiguration
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClusterSpecifierPlugin
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.VirtualHost
                               -> Data.ProtoLens.Encoding.Bytes.Parser RouteConfiguration
        loop
          x
          mutable'clusterSpecifierPlugins
          mutable'internalOnlyHeaders
          mutable'requestHeadersToAdd
          mutable'requestHeadersToRemove
          mutable'responseHeadersToAdd
          mutable'responseHeadersToRemove
          mutable'virtualHosts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'clusterSpecifierPlugins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                             mutable'clusterSpecifierPlugins)
                      frozen'internalOnlyHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'internalOnlyHeaders)
                      frozen'requestHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'requestHeadersToAdd)
                      frozen'requestHeadersToRemove <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'requestHeadersToRemove)
                      frozen'responseHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'responseHeadersToAdd)
                      frozen'responseHeadersToRemove <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                             mutable'responseHeadersToRemove)
                      frozen'virtualHosts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'virtualHosts)
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
                              (Data.ProtoLens.Field.field @"vec'clusterSpecifierPlugins")
                              frozen'clusterSpecifierPlugins
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'internalOnlyHeaders")
                                 frozen'internalOnlyHeaders
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'requestHeadersToAdd")
                                    frozen'requestHeadersToAdd
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'requestHeadersToRemove")
                                       frozen'requestHeadersToRemove
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'responseHeadersToAdd")
                                          frozen'responseHeadersToAdd
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field
                                                @"vec'responseHeadersToRemove")
                                             frozen'responseHeadersToRemove
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"vec'virtualHosts")
                                                frozen'virtualHosts
                                                x))))))))
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
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "virtual_hosts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'virtualHosts y)
                                loop
                                  x
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  v
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "vhds"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vhds") y x)
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
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
                                        "internal_only_headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'internalOnlyHeaders y)
                                loop
                                  x
                                  mutable'clusterSpecifierPlugins
                                  v
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "response_headers_to_add"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'responseHeadersToAdd y)
                                loop
                                  x
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  v
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "response_headers_to_remove"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'responseHeadersToRemove y)
                                loop
                                  x
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  v
                                  mutable'virtualHosts
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "request_headers_to_add"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requestHeadersToAdd y)
                                loop
                                  x
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  v
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
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
                                        "request_headers_to_remove"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requestHeadersToRemove y)
                                loop
                                  x
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  v
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "most_specific_header_mutations_wins"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mostSpecificHeaderMutationsWins")
                                     y
                                     x)
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validate_clusters"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validateClusters") y x)
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_direct_response_body_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxDirectResponseBodySizeBytes")
                                     y
                                     x)
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
                        98
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "cluster_specifier_plugins"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'clusterSpecifierPlugins y)
                                loop
                                  x
                                  v
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'clusterSpecifierPlugins
                                  mutable'internalOnlyHeaders
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                                  mutable'responseHeadersToAdd
                                  mutable'responseHeadersToRemove
                                  mutable'virtualHosts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'clusterSpecifierPlugins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   Data.ProtoLens.Encoding.Growing.new
              mutable'internalOnlyHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'requestHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'requestHeadersToRemove <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'responseHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'responseHeadersToRemove <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   Data.ProtoLens.Encoding.Growing.new
              mutable'virtualHosts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'clusterSpecifierPlugins
                mutable'internalOnlyHeaders
                mutable'requestHeadersToAdd
                mutable'requestHeadersToRemove
                mutable'responseHeadersToAdd
                mutable'responseHeadersToRemove
                mutable'virtualHosts)
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'virtualHosts") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vhds") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
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
                            (Data.ProtoLens.Field.field @"vec'internalOnlyHeaders") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                               (Data.ProtoLens.Field.field @"vec'responseHeadersToAdd") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
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
                                          Data.Text.Encoding.encodeUtf8
                                          _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'responseHeadersToRemove") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
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
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'requestHeadersToAdd") _x))
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
                                        (Data.ProtoLens.Field.field @"vec'requestHeadersToRemove")
                                        _x))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field
                                                 @"mostSpecificHeaderMutationsWins")
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
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'validateClusters")
                                               _x
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
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage
                                                     _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'maxDirectResponseBodySizeBytes")
                                                  _x
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
                                              (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                 (\ _v
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            98)
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
                                                            _v))
                                                 (Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"vec'clusterSpecifierPlugins")
                                                    _x))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData RouteConfiguration where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RouteConfiguration'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RouteConfiguration'name x__)
                (Control.DeepSeq.deepseq
                   (_RouteConfiguration'virtualHosts x__)
                   (Control.DeepSeq.deepseq
                      (_RouteConfiguration'vhds x__)
                      (Control.DeepSeq.deepseq
                         (_RouteConfiguration'internalOnlyHeaders x__)
                         (Control.DeepSeq.deepseq
                            (_RouteConfiguration'responseHeadersToAdd x__)
                            (Control.DeepSeq.deepseq
                               (_RouteConfiguration'responseHeadersToRemove x__)
                               (Control.DeepSeq.deepseq
                                  (_RouteConfiguration'requestHeadersToAdd x__)
                                  (Control.DeepSeq.deepseq
                                     (_RouteConfiguration'requestHeadersToRemove x__)
                                     (Control.DeepSeq.deepseq
                                        (_RouteConfiguration'mostSpecificHeaderMutationsWins x__)
                                        (Control.DeepSeq.deepseq
                                           (_RouteConfiguration'validateClusters x__)
                                           (Control.DeepSeq.deepseq
                                              (_RouteConfiguration'maxDirectResponseBodySizeBytes
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_RouteConfiguration'clusterSpecifierPlugins x__)
                                                 ()))))))))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.configSource' @:: Lens' Vhds Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Config.Route.V3.Route_Fields.maybe'configSource' @:: Lens' Vhds (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@ -}
data Vhds
  = Vhds'_constructor {_Vhds'configSource :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                       _Vhds'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Vhds where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Vhds "configSource" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vhds'configSource (\ x__ y__ -> x__ {_Vhds'configSource = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Vhds "maybe'configSource" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vhds'configSource (\ x__ y__ -> x__ {_Vhds'configSource = y__}))
        Prelude.id
instance Data.ProtoLens.Message Vhds where
  messageName _ = Data.Text.pack "envoy.config.route.v3.Vhds"
  packedMessageDescriptor _
    = "\n\
      \\EOTVhds\DC2Q\n\
      \\rconfig_source\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\fconfigSourceB\b\250B\ENQ\138\SOH\STX\DLE\SOH:\CAN\154\197\136\RS\DC3\n\
      \\DC1envoy.api.v2.Vhds"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        configSource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_source"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'configSource")) ::
              Data.ProtoLens.FieldDescriptor Vhds
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, configSource__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Vhds'_unknownFields
        (\ x__ y__ -> x__ {_Vhds'_unknownFields = y__})
  defMessage
    = Vhds'_constructor
        {_Vhds'configSource = Prelude.Nothing, _Vhds'_unknownFields = []}
  parseMessage
    = let
        loop :: Vhds -> Data.ProtoLens.Encoding.Bytes.Parser Vhds
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
                                       "config_source"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configSource") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Vhds"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'configSource") _x
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
instance Control.DeepSeq.NFData Vhds where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Vhds'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Vhds'configSource x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!envoy/config/route/v3/route.proto\DC2\NAKenvoy.config.route.v3\SUB\USenvoy/config/core/v3/base.proto\SUB(envoy/config/core/v3/config_source.proto\SUB$envoy/config/core/v3/extension.proto\SUB,envoy/config/route/v3/route_components.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\237\a\n\
    \\DC2RouteConfiguration\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2G\n\
    \\rvirtual_hosts\CAN\STX \ETX(\v2\".envoy.config.route.v3.VirtualHostR\fvirtualHosts\DC2/\n\
    \\EOTvhds\CAN\t \SOH(\v2\ESC.envoy.config.route.v3.VhdsR\EOTvhds\DC2D\n\
    \\NAKinternal_only_headers\CAN\ETX \ETX(\tR\DC3internalOnlyHeadersB\DLE\250B\r\146\SOH\n\
    \\"\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2i\n\
    \\ETBresponse_headers_to_add\CAN\EOT \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC4responseHeadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a\DC2M\n\
    \\SUBresponse_headers_to_remove\CAN\ENQ \ETX(\tR\ETBresponseHeadersToRemoveB\DLE\250B\r\146\SOH\n\
    \\"\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2g\n\
    \\SYNrequest_headers_to_add\CAN\ACK \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC3requestHeadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a\DC2K\n\
    \\EMrequest_headers_to_remove\CAN\b \ETX(\tR\SYNrequestHeadersToRemoveB\DLE\250B\r\146\SOH\n\
    \\"\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2L\n\
    \#most_specific_header_mutations_wins\CAN\n\
    \ \SOH(\bR\USmostSpecificHeaderMutationsWins\DC2G\n\
    \\DC1validate_clusters\CAN\a \SOH(\v2\SUB.google.protobuf.BoolValueR\DLEvalidateClusters\DC2i\n\
    \#max_direct_response_body_size_bytes\CAN\v \SOH(\v2\FS.google.protobuf.UInt32ValueR\RSmaxDirectResponseBodySizeBytes\DC2i\n\
    \\EMcluster_specifier_plugins\CAN\f \ETX(\v2-.envoy.config.route.v3.ClusterSpecifierPluginR\ETBclusterSpecifierPlugins:&\154\197\136\RS!\n\
    \\USenvoy.api.v2.RouteConfiguration\"b\n\
    \\SYNClusterSpecifierPlugin\DC2H\n\
    \\textension\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\textension\"s\n\
    \\EOTVhds\DC2Q\n\
    \\rconfig_source\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\fconfigSourceB\b\250B\ENQ\138\SOH\STX\DLE\SOH:\CAN\154\197\136\RS\DC3\n\
    \\DC1envoy.api.v2.VhdsB;\n\
    \#io.envoyproxy.envoy.config.route.v3B\n\
    \RouteProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\222/\n\
    \\a\DC2\ENQ\NUL\NUL\141\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL2\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL6\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL'\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL+\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SI\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DLE\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC1\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \\212\SOH\n\
    \\STX\EOT\NUL\DC2\ENQ\EM\NUL\128\SOH\SOH\SUB\CAN [#next-free-field: 13]\n\
    \2\172\SOH [#protodoc-title: HTTP route configuration]\n\
    \ * Routing :ref:`architecture overview <arch_overview_http_routing>`\n\
    \ * HTTP :ref:`router filter <config_http_filters_router>`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\SUB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SUB\STXa\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\SUB\STXa\n\
    \\163\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX \STX\DC2\SUB\149\STX The name of the route configuration. For example, it might match\n\
    \ :ref:`route_config_name\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.Rds.route_config_name>` in\n\
    \ :ref:`envoy_v3_api_msg_extensions.filters.network.http_connection_manager.v3.Rds`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX \t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX \DLE\DC1\n\
    \F\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX#\STX)\SUB9 An array of virtual hosts that make up the route table.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX#\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX#\ETB$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX#'(\n\
    \\216\ETX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX+\STX\DLE\SUB\202\ETX An array of virtual hosts will be dynamically loaded via the VHDS API.\n\
    \ Both *virtual_hosts* and *vhds* fields will be used when present. *virtual_hosts* can be used\n\
    \ for a base routing table or for infrequently changing virtual hosts. *vhds* is used for\n\
    \ on-demand discovery of virtual hosts. The contents of these two fields will be merged to\n\
    \ generate a routing table for a given RouteConfiguration, with *vhds* derived configuration\n\
    \ taking precedence.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX+\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX+\a\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX+\SO\SI\n\
    \\165\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT1\STX3\EOT\SUB\150\STX Optionally specifies a list of HTTP headers that the connection manager\n\
    \ will consider to be internal only. If they are found on external requests they will be cleaned\n\
    \ prior to filter invocation. See :ref:`config_http_conn_man_headers_x-envoy-internal` for more\n\
    \ information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX1\DC2'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX1*+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\EOT1,3\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\DC2\DC2\ETX2\EOTc\n\
    \\231\ETX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT;\STX<6\SUB\216\ETX Specifies a list of HTTP headers that should be added to each response that\n\
    \ the connection manager encodes. Headers specified at this level are applied\n\
    \ after headers from any enclosed :ref:`envoy_v3_api_msg_config.route.v3.VirtualHost` or\n\
    \ :ref:`envoy_v3_api_msg_config.route.v3.RouteAction`. For more information, including details on\n\
    \ header value syntax, see the documentation on :ref:`custom request headers\n\
    \ <config_http_conn_man_headers_custom_request_headers>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX;\v$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX;%<\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX;?@\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX<\ACK5\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\DC2\DC2\ETX<\a4\n\
    \\128\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT@\STXB\EOT\SUBr Specifies a list of HTTP headers that should be removed from each response\n\
    \ that the connection manager encodes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX@\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX@\DC2,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX@/0\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\EOT@1B\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\DC2\DC2\ETXA\EOTc\n\
    \\232\ETX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOTJ\STXK6\SUB\217\ETX Specifies a list of HTTP headers that should be added to each request\n\
    \ routed by the HTTP connection manager. Headers specified at this level are\n\
    \ applied after headers from any enclosed :ref:`envoy_v3_api_msg_config.route.v3.VirtualHost` or\n\
    \ :ref:`envoy_v3_api_msg_config.route.v3.RouteAction`. For more information, including details on\n\
    \ header value syntax, see the documentation on :ref:`custom request headers\n\
    \ <config_http_conn_man_headers_custom_request_headers>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXJ\v$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXJ%;\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXJ>?\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\ETXK\ACK5\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\175\b\DC2\DC2\ETXK\a4\n\
    \\129\SOH\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOTO\STXQ\EOT\SUBs Specifies a list of HTTP headers that should be removed from each request\n\
    \ routed by the HTTP connection manager.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETXO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXO\DC2+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXO./\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\b\DC2\EOTO0Q\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\a\b\175\b\DC2\DC2\ETXP\EOTc\n\
    \\128\ETX\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX]\STX0\SUB\242\STX By default, headers that should be added/removed are evaluated from most to least specific:\n\
    \\n\
    \ * route level\n\
    \ * virtual host level\n\
    \ * connection manager level\n\
    \\n\
    \ To allow setting overrides at the route or virtual host level, this order can be reversed\n\
    \ by setting this option to true. Defaults to false.\n\
    \\n\
    \ [#next-major-version: In the v3 API, this will default to true.]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX]\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX]\a*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX]-/\n\
    \\182\a\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETXl\STX2\SUB\168\a An optional boolean that specifies whether the clusters that the route\n\
    \ table refers to will be validated by the cluster manager. If set to true\n\
    \ and a route refers to a non-existent cluster, the route table will not\n\
    \ load. If set to false and a route refers to a non-existent cluster, the\n\
    \ route table will load and the router filter will return a 404 if the route\n\
    \ is selected at runtime. This setting defaults to true if the route table\n\
    \ is statically defined via the :ref:`route_config\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.route_config>`\n\
    \ option. This setting default to false if the route table is loaded dynamically via the\n\
    \ :ref:`rds\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.rds>`\n\
    \ option. Users may wish to override the default behavior in certain cases (for example when\n\
    \ using CDS with a static route table).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETXl\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETXl\FS-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETXl01\n\
    \\130\EOT\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETXy\STXG\SUB\244\ETX The maximum bytes of the response :ref:`direct response body\n\
    \ <envoy_v3_api_field_config.route.v3.DirectResponseAction.body>` size. If not specified the default\n\
    \ is 4096.\n\
    \\n\
    \ .. warning::\n\
    \\n\
    \   Envoy currently holds the content of :ref:`direct response body\n\
    \   <envoy_v3_api_field_config.route.v3.DirectResponseAction.body>` in memory. Be careful setting\n\
    \   this to be larger than the default 4KB, since the allocated memory for direct response body\n\
    \   is not subject to data plane buffering controls.\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETXy\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETXy\RSA\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETXyDF\n\
    \\135\STX\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETX\DEL\STXA\SUB\249\SOH [#not-implemented-hide:]\n\
    \ A list of plugins and their configurations which may be used by a\n\
    \ :ref:`envoy_v3_api_field_config.route.v3.RouteAction.cluster_specifier_plugin`\n\
    \ within the route. All *extension.name* fields in this list must be unique.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\EOT\DC2\ETX\DEL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\ETX\DEL\v!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETX\DEL\";\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETX\DEL>@\n\
    \=\n\
    \\STX\EOT\SOH\DC2\ACK\131\SOH\NUL\134\SOH\SOH\SUB/ Configuration for a cluster specifier plugin.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\131\SOH\b\RS\n\
    \D\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\133\SOH\STX-\SUB6 The name of the plugin and its opaque configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\133\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\133\SOH\US(\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\133\SOH+,\n\
    \\f\n\
    \\STX\EOT\STX\DC2\ACK\136\SOH\NUL\141\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\136\SOH\b\f\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT\137\SOH\STXS\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT\137\SOH\STXS\n\
    \8\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\140\SOH\STXW\SUB* Configuration source specifier for VHDS.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\140\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\140\SOH\ETB$\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\140\SOH'(\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\EOT\140\SOH)V\n\
    \\DLE\n\
    \\b\EOT\STX\STX\NUL\b\175\b\DC1\DC2\EOT\140\SOH*Ub\ACKproto3"