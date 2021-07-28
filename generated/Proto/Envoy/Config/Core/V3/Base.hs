{- This file was auto-generated from envoy/config/core/v3/base.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.Base (
        AsyncDataSource(), AsyncDataSource'Specifier(..),
        _AsyncDataSource'Local, _AsyncDataSource'Remote, BuildVersion(),
        ControlPlane(), DataSource(), DataSource'Specifier(..),
        _DataSource'Filename, _DataSource'InlineBytes,
        _DataSource'InlineString, Extension(), HeaderMap(), HeaderValue(),
        HeaderValueOption(), Locality(), Metadata(),
        Metadata'FilterMetadataEntry(),
        Metadata'TypedFilterMetadataEntry(), Node(),
        Node'UserAgentVersionType(..), _Node'UserAgentVersion,
        _Node'UserAgentBuildVersion, Node'DynamicParametersEntry(),
        RemoteDataSource(), RequestMethod(..), RequestMethod(),
        RequestMethod'UnrecognizedValue, RetryPolicy(),
        RoutingPriority(..), RoutingPriority(),
        RoutingPriority'UnrecognizedValue, RuntimeDouble(),
        RuntimeFeatureFlag(), RuntimeFractionalPercent(), RuntimePercent(),
        RuntimeUInt32(), TrafficDirection(..), TrafficDirection(),
        TrafficDirection'UnrecognizedValue, TransportSocket(),
        TransportSocket'ConfigType(..), _TransportSocket'TypedConfig,
        WatchedDirectory()
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
import qualified Proto.Envoy.Config.Core.V3.Backoff
import qualified Proto.Envoy.Config.Core.V3.HttpUri
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Envoy.Type.V3.SemanticVersion
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
import qualified Proto.Xds.Core.V3.ContextParams
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'specifier' @:: Lens' AsyncDataSource (Prelude.Maybe AsyncDataSource'Specifier)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'local' @:: Lens' AsyncDataSource (Prelude.Maybe DataSource)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.local' @:: Lens' AsyncDataSource DataSource@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'remote' @:: Lens' AsyncDataSource (Prelude.Maybe RemoteDataSource)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.remote' @:: Lens' AsyncDataSource RemoteDataSource@ -}
data AsyncDataSource
  = AsyncDataSource'_constructor {_AsyncDataSource'specifier :: !(Prelude.Maybe AsyncDataSource'Specifier),
                                  _AsyncDataSource'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AsyncDataSource where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AsyncDataSource'Specifier
  = AsyncDataSource'Local !DataSource |
    AsyncDataSource'Remote !RemoteDataSource
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AsyncDataSource "maybe'specifier" (Prelude.Maybe AsyncDataSource'Specifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AsyncDataSource'specifier
           (\ x__ y__ -> x__ {_AsyncDataSource'specifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AsyncDataSource "maybe'local" (Prelude.Maybe DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AsyncDataSource'specifier
           (\ x__ y__ -> x__ {_AsyncDataSource'specifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AsyncDataSource'Local x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AsyncDataSource'Local y__))
instance Data.ProtoLens.Field.HasField AsyncDataSource "local" DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AsyncDataSource'specifier
           (\ x__ y__ -> x__ {_AsyncDataSource'specifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AsyncDataSource'Local x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AsyncDataSource'Local y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AsyncDataSource "maybe'remote" (Prelude.Maybe RemoteDataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AsyncDataSource'specifier
           (\ x__ y__ -> x__ {_AsyncDataSource'specifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AsyncDataSource'Remote x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AsyncDataSource'Remote y__))
instance Data.ProtoLens.Field.HasField AsyncDataSource "remote" RemoteDataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AsyncDataSource'specifier
           (\ x__ y__ -> x__ {_AsyncDataSource'specifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AsyncDataSource'Remote x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AsyncDataSource'Remote y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message AsyncDataSource where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.AsyncDataSource"
  packedMessageDescriptor _
    = "\n\
      \\SIAsyncDataSource\DC28\n\
      \\ENQlocal\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\ENQlocal\DC2@\n\
      \\ACKremote\CAN\STX \SOH(\v2&.envoy.config.core.v3.RemoteDataSourceH\NULR\ACKremoteB\DLE\n\
      \\tspecifier\DC2\ETX\248B\SOH:(\154\197\136\RS#\n\
      \!envoy.api.v2.core.AsyncDataSource"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        local__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'local")) ::
              Data.ProtoLens.FieldDescriptor AsyncDataSource
        remote__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remote"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RemoteDataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'remote")) ::
              Data.ProtoLens.FieldDescriptor AsyncDataSource
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, local__field_descriptor),
           (Data.ProtoLens.Tag 2, remote__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AsyncDataSource'_unknownFields
        (\ x__ y__ -> x__ {_AsyncDataSource'_unknownFields = y__})
  defMessage
    = AsyncDataSource'_constructor
        {_AsyncDataSource'specifier = Prelude.Nothing,
         _AsyncDataSource'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AsyncDataSource
          -> Data.ProtoLens.Encoding.Bytes.Parser AsyncDataSource
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
                                       "local"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"local") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "remote"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"remote") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AsyncDataSource"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'specifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (AsyncDataSource'Local v))
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
                (Prelude.Just (AsyncDataSource'Remote v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
instance Control.DeepSeq.NFData AsyncDataSource where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AsyncDataSource'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AsyncDataSource'specifier x__) ())
instance Control.DeepSeq.NFData AsyncDataSource'Specifier where
  rnf (AsyncDataSource'Local x__) = Control.DeepSeq.rnf x__
  rnf (AsyncDataSource'Remote x__) = Control.DeepSeq.rnf x__
_AsyncDataSource'Local ::
  Data.ProtoLens.Prism.Prism' AsyncDataSource'Specifier DataSource
_AsyncDataSource'Local
  = Data.ProtoLens.Prism.prism'
      AsyncDataSource'Local
      (\ p__
         -> case p__ of
              (AsyncDataSource'Local p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AsyncDataSource'Remote ::
  Data.ProtoLens.Prism.Prism' AsyncDataSource'Specifier RemoteDataSource
_AsyncDataSource'Remote
  = Data.ProtoLens.Prism.prism'
      AsyncDataSource'Remote
      (\ p__
         -> case p__ of
              (AsyncDataSource'Remote p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.version' @:: Lens' BuildVersion Proto.Envoy.Type.V3.SemanticVersion.SemanticVersion@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'version' @:: Lens' BuildVersion (Prelude.Maybe Proto.Envoy.Type.V3.SemanticVersion.SemanticVersion)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.metadata' @:: Lens' BuildVersion Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'metadata' @:: Lens' BuildVersion (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@ -}
data BuildVersion
  = BuildVersion'_constructor {_BuildVersion'version :: !(Prelude.Maybe Proto.Envoy.Type.V3.SemanticVersion.SemanticVersion),
                               _BuildVersion'metadata :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                               _BuildVersion'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BuildVersion where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BuildVersion "version" Proto.Envoy.Type.V3.SemanticVersion.SemanticVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildVersion'version
           (\ x__ y__ -> x__ {_BuildVersion'version = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BuildVersion "maybe'version" (Prelude.Maybe Proto.Envoy.Type.V3.SemanticVersion.SemanticVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildVersion'version
           (\ x__ y__ -> x__ {_BuildVersion'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BuildVersion "metadata" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildVersion'metadata
           (\ x__ y__ -> x__ {_BuildVersion'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BuildVersion "maybe'metadata" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildVersion'metadata
           (\ x__ y__ -> x__ {_BuildVersion'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message BuildVersion where
  messageName _ = Data.Text.pack "envoy.config.core.v3.BuildVersion"
  packedMessageDescriptor _
    = "\n\
      \\fBuildVersion\DC28\n\
      \\aversion\CAN\SOH \SOH(\v2\RS.envoy.type.v3.SemanticVersionR\aversion\DC23\n\
      \\bmetadata\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\bmetadata:%\154\197\136\RS \n\
      \\RSenvoy.api.v2.core.BuildVersion"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.SemanticVersion.SemanticVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'version")) ::
              Data.ProtoLens.FieldDescriptor BuildVersion
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor BuildVersion
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BuildVersion'_unknownFields
        (\ x__ y__ -> x__ {_BuildVersion'_unknownFields = y__})
  defMessage
    = BuildVersion'_constructor
        {_BuildVersion'version = Prelude.Nothing,
         _BuildVersion'metadata = Prelude.Nothing,
         _BuildVersion'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BuildVersion -> Data.ProtoLens.Encoding.Bytes.Parser BuildVersion
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BuildVersion"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'version") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
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
instance Control.DeepSeq.NFData BuildVersion where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BuildVersion'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BuildVersion'version x__)
                (Control.DeepSeq.deepseq (_BuildVersion'metadata x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.identifier' @:: Lens' ControlPlane Data.Text.Text@ -}
data ControlPlane
  = ControlPlane'_constructor {_ControlPlane'identifier :: !Data.Text.Text,
                               _ControlPlane'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ControlPlane where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ControlPlane "identifier" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ControlPlane'identifier
           (\ x__ y__ -> x__ {_ControlPlane'identifier = y__}))
        Prelude.id
instance Data.ProtoLens.Message ControlPlane where
  messageName _ = Data.Text.pack "envoy.config.core.v3.ControlPlane"
  packedMessageDescriptor _
    = "\n\
      \\fControlPlane\DC2\RS\n\
      \\n\
      \identifier\CAN\SOH \SOH(\tR\n\
      \identifier:%\154\197\136\RS \n\
      \\RSenvoy.api.v2.core.ControlPlane"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        identifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identifier"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identifier")) ::
              Data.ProtoLens.FieldDescriptor ControlPlane
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identifier__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ControlPlane'_unknownFields
        (\ x__ y__ -> x__ {_ControlPlane'_unknownFields = y__})
  defMessage
    = ControlPlane'_constructor
        {_ControlPlane'identifier = Data.ProtoLens.fieldDefault,
         _ControlPlane'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ControlPlane -> Data.ProtoLens.Encoding.Bytes.Parser ControlPlane
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
                                       "identifier"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identifier") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ControlPlane"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"identifier") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ControlPlane where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ControlPlane'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ControlPlane'identifier x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'specifier' @:: Lens' DataSource (Prelude.Maybe DataSource'Specifier)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'filename' @:: Lens' DataSource (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.filename' @:: Lens' DataSource Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'inlineBytes' @:: Lens' DataSource (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.inlineBytes' @:: Lens' DataSource Data.ByteString.ByteString@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'inlineString' @:: Lens' DataSource (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.inlineString' @:: Lens' DataSource Data.Text.Text@ -}
data DataSource
  = DataSource'_constructor {_DataSource'specifier :: !(Prelude.Maybe DataSource'Specifier),
                             _DataSource'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DataSource where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DataSource'Specifier
  = DataSource'Filename !Data.Text.Text |
    DataSource'InlineBytes !Data.ByteString.ByteString |
    DataSource'InlineString !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DataSource "maybe'specifier" (Prelude.Maybe DataSource'Specifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DataSource'specifier
           (\ x__ y__ -> x__ {_DataSource'specifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DataSource "maybe'filename" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DataSource'specifier
           (\ x__ y__ -> x__ {_DataSource'specifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DataSource'Filename x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DataSource'Filename y__))
instance Data.ProtoLens.Field.HasField DataSource "filename" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DataSource'specifier
           (\ x__ y__ -> x__ {_DataSource'specifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DataSource'Filename x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DataSource'Filename y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DataSource "maybe'inlineBytes" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DataSource'specifier
           (\ x__ y__ -> x__ {_DataSource'specifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DataSource'InlineBytes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DataSource'InlineBytes y__))
instance Data.ProtoLens.Field.HasField DataSource "inlineBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DataSource'specifier
           (\ x__ y__ -> x__ {_DataSource'specifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DataSource'InlineBytes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DataSource'InlineBytes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DataSource "maybe'inlineString" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DataSource'specifier
           (\ x__ y__ -> x__ {_DataSource'specifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DataSource'InlineString x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DataSource'InlineString y__))
instance Data.ProtoLens.Field.HasField DataSource "inlineString" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DataSource'specifier
           (\ x__ y__ -> x__ {_DataSource'specifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DataSource'InlineString x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DataSource'InlineString y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message DataSource where
  messageName _ = Data.Text.pack "envoy.config.core.v3.DataSource"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \DataSource\DC2%\n\
      \\bfilename\CAN\SOH \SOH(\tH\NULR\bfilenameB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
      \\finline_bytes\CAN\STX \SOH(\fH\NULR\vinlineBytes\DC2%\n\
      \\rinline_string\CAN\ETX \SOH(\tH\NULR\finlineStringB\DLE\n\
      \\tspecifier\DC2\ETX\248B\SOH:#\154\197\136\RS\RS\n\
      \\FSenvoy.api.v2.core.DataSource"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        filename__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filename"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filename")) ::
              Data.ProtoLens.FieldDescriptor DataSource
        inlineBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inline_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inlineBytes")) ::
              Data.ProtoLens.FieldDescriptor DataSource
        inlineString__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inline_string"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inlineString")) ::
              Data.ProtoLens.FieldDescriptor DataSource
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, filename__field_descriptor),
           (Data.ProtoLens.Tag 2, inlineBytes__field_descriptor),
           (Data.ProtoLens.Tag 3, inlineString__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DataSource'_unknownFields
        (\ x__ y__ -> x__ {_DataSource'_unknownFields = y__})
  defMessage
    = DataSource'_constructor
        {_DataSource'specifier = Prelude.Nothing,
         _DataSource'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DataSource -> Data.ProtoLens.Encoding.Bytes.Parser DataSource
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
                                       "filename"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"filename") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "inline_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"inlineBytes") y x)
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
                                       "inline_string"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inlineString") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DataSource"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'specifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (DataSource'Filename v))
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
                (Prelude.Just (DataSource'InlineBytes v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (DataSource'InlineString v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DataSource where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DataSource'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DataSource'specifier x__) ())
instance Control.DeepSeq.NFData DataSource'Specifier where
  rnf (DataSource'Filename x__) = Control.DeepSeq.rnf x__
  rnf (DataSource'InlineBytes x__) = Control.DeepSeq.rnf x__
  rnf (DataSource'InlineString x__) = Control.DeepSeq.rnf x__
_DataSource'Filename ::
  Data.ProtoLens.Prism.Prism' DataSource'Specifier Data.Text.Text
_DataSource'Filename
  = Data.ProtoLens.Prism.prism'
      DataSource'Filename
      (\ p__
         -> case p__ of
              (DataSource'Filename p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DataSource'InlineBytes ::
  Data.ProtoLens.Prism.Prism' DataSource'Specifier Data.ByteString.ByteString
_DataSource'InlineBytes
  = Data.ProtoLens.Prism.prism'
      DataSource'InlineBytes
      (\ p__
         -> case p__ of
              (DataSource'InlineBytes p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DataSource'InlineString ::
  Data.ProtoLens.Prism.Prism' DataSource'Specifier Data.Text.Text
_DataSource'InlineString
  = Data.ProtoLens.Prism.prism'
      DataSource'InlineString
      (\ p__
         -> case p__ of
              (DataSource'InlineString p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.name' @:: Lens' Extension Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.category' @:: Lens' Extension Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.typeDescriptor' @:: Lens' Extension Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.version' @:: Lens' Extension BuildVersion@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'version' @:: Lens' Extension (Prelude.Maybe BuildVersion)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.disabled' @:: Lens' Extension Prelude.Bool@ -}
data Extension
  = Extension'_constructor {_Extension'name :: !Data.Text.Text,
                            _Extension'category :: !Data.Text.Text,
                            _Extension'typeDescriptor :: !Data.Text.Text,
                            _Extension'version :: !(Prelude.Maybe BuildVersion),
                            _Extension'disabled :: !Prelude.Bool,
                            _Extension'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Extension where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Extension "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Extension'name (\ x__ y__ -> x__ {_Extension'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Extension "category" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Extension'category (\ x__ y__ -> x__ {_Extension'category = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Extension "typeDescriptor" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Extension'typeDescriptor
           (\ x__ y__ -> x__ {_Extension'typeDescriptor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Extension "version" BuildVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Extension'version (\ x__ y__ -> x__ {_Extension'version = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Extension "maybe'version" (Prelude.Maybe BuildVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Extension'version (\ x__ y__ -> x__ {_Extension'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Extension "disabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Extension'disabled (\ x__ y__ -> x__ {_Extension'disabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message Extension where
  messageName _ = Data.Text.pack "envoy.config.core.v3.Extension"
  packedMessageDescriptor _
    = "\n\
      \\tExtension\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SUB\n\
      \\bcategory\CAN\STX \SOH(\tR\bcategory\DC2'\n\
      \\SItype_descriptor\CAN\ETX \SOH(\tR\SOtypeDescriptor\DC2<\n\
      \\aversion\CAN\EOT \SOH(\v2\".envoy.config.core.v3.BuildVersionR\aversion\DC2\SUB\n\
      \\bdisabled\CAN\ENQ \SOH(\bR\bdisabled:\"\154\197\136\RS\GS\n\
      \\ESCenvoy.api.v2.core.Extension"
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
              Data.ProtoLens.FieldDescriptor Extension
        category__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "category"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"category")) ::
              Data.ProtoLens.FieldDescriptor Extension
        typeDescriptor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_descriptor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"typeDescriptor")) ::
              Data.ProtoLens.FieldDescriptor Extension
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BuildVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'version")) ::
              Data.ProtoLens.FieldDescriptor Extension
        disabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disabled")) ::
              Data.ProtoLens.FieldDescriptor Extension
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, category__field_descriptor),
           (Data.ProtoLens.Tag 3, typeDescriptor__field_descriptor),
           (Data.ProtoLens.Tag 4, version__field_descriptor),
           (Data.ProtoLens.Tag 5, disabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Extension'_unknownFields
        (\ x__ y__ -> x__ {_Extension'_unknownFields = y__})
  defMessage
    = Extension'_constructor
        {_Extension'name = Data.ProtoLens.fieldDefault,
         _Extension'category = Data.ProtoLens.fieldDefault,
         _Extension'typeDescriptor = Data.ProtoLens.fieldDefault,
         _Extension'version = Prelude.Nothing,
         _Extension'disabled = Data.ProtoLens.fieldDefault,
         _Extension'_unknownFields = []}
  parseMessage
    = let
        loop :: Extension -> Data.ProtoLens.Encoding.Bytes.Parser Extension
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
                                       "category"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"category") y x)
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
                                       "type_descriptor"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"typeDescriptor") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disabled"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"disabled") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Extension"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"category") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"typeDescriptor") _x
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
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'version") _x
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
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"disabled") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Extension where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Extension'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Extension'name x__)
                (Control.DeepSeq.deepseq
                   (_Extension'category x__)
                   (Control.DeepSeq.deepseq
                      (_Extension'typeDescriptor x__)
                      (Control.DeepSeq.deepseq
                         (_Extension'version x__)
                         (Control.DeepSeq.deepseq (_Extension'disabled x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.headers' @:: Lens' HeaderMap [HeaderValue]@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.vec'headers' @:: Lens' HeaderMap (Data.Vector.Vector HeaderValue)@ -}
data HeaderMap
  = HeaderMap'_constructor {_HeaderMap'headers :: !(Data.Vector.Vector HeaderValue),
                            _HeaderMap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeaderMap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HeaderMap "headers" [HeaderValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderMap'headers (\ x__ y__ -> x__ {_HeaderMap'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HeaderMap "vec'headers" (Data.Vector.Vector HeaderValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderMap'headers (\ x__ y__ -> x__ {_HeaderMap'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Message HeaderMap where
  messageName _ = Data.Text.pack "envoy.config.core.v3.HeaderMap"
  packedMessageDescriptor _
    = "\n\
      \\tHeaderMap\DC2;\n\
      \\aheaders\CAN\SOH \ETX(\v2!.envoy.config.core.v3.HeaderValueR\aheaders:\"\154\197\136\RS\GS\n\
      \\ESCenvoy.api.v2.core.HeaderMap"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HeaderValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor HeaderMap
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HeaderMap'_unknownFields
        (\ x__ y__ -> x__ {_HeaderMap'_unknownFields = y__})
  defMessage
    = HeaderMap'_constructor
        {_HeaderMap'headers = Data.Vector.Generic.empty,
         _HeaderMap'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HeaderMap
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HeaderValue
             -> Data.ProtoLens.Encoding.Bytes.Parser HeaderMap
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
          "HeaderMap"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'headers") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HeaderMap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HeaderMap'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HeaderMap'headers x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.key' @:: Lens' HeaderValue Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.value' @:: Lens' HeaderValue Data.Text.Text@ -}
data HeaderValue
  = HeaderValue'_constructor {_HeaderValue'key :: !Data.Text.Text,
                              _HeaderValue'value :: !Data.Text.Text,
                              _HeaderValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeaderValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HeaderValue "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderValue'key (\ x__ y__ -> x__ {_HeaderValue'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HeaderValue "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderValue'value (\ x__ y__ -> x__ {_HeaderValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message HeaderValue where
  messageName _ = Data.Text.pack "envoy.config.core.v3.HeaderValue"
  packedMessageDescriptor _
    = "\n\
      \\vHeaderValue\DC2#\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkeyB\DC1\250B\SOr\f\DLE\SOH(\128\128\SOH\192\SOH\SOH\200\SOH\NUL\DC2%\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalueB\SI\250B\fr\n\
      \(\128\128\SOH\192\SOH\STX\200\SOH\NUL:$\154\197\136\RS\US\n\
      \\GSenvoy.api.v2.core.HeaderValue"
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
              Data.ProtoLens.FieldDescriptor HeaderValue
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor HeaderValue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HeaderValue'_unknownFields
        (\ x__ y__ -> x__ {_HeaderValue'_unknownFields = y__})
  defMessage
    = HeaderValue'_constructor
        {_HeaderValue'key = Data.ProtoLens.fieldDefault,
         _HeaderValue'value = Data.ProtoLens.fieldDefault,
         _HeaderValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HeaderValue -> Data.ProtoLens.Encoding.Bytes.Parser HeaderValue
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
          (do loop Data.ProtoLens.defMessage) "HeaderValue"
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
instance Control.DeepSeq.NFData HeaderValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HeaderValue'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HeaderValue'key x__)
                (Control.DeepSeq.deepseq (_HeaderValue'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.header' @:: Lens' HeaderValueOption HeaderValue@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'header' @:: Lens' HeaderValueOption (Prelude.Maybe HeaderValue)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.append' @:: Lens' HeaderValueOption Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'append' @:: Lens' HeaderValueOption (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@ -}
data HeaderValueOption
  = HeaderValueOption'_constructor {_HeaderValueOption'header :: !(Prelude.Maybe HeaderValue),
                                    _HeaderValueOption'append :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                    _HeaderValueOption'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeaderValueOption where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HeaderValueOption "header" HeaderValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderValueOption'header
           (\ x__ y__ -> x__ {_HeaderValueOption'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HeaderValueOption "maybe'header" (Prelude.Maybe HeaderValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderValueOption'header
           (\ x__ y__ -> x__ {_HeaderValueOption'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HeaderValueOption "append" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderValueOption'append
           (\ x__ y__ -> x__ {_HeaderValueOption'append = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HeaderValueOption "maybe'append" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeaderValueOption'append
           (\ x__ y__ -> x__ {_HeaderValueOption'append = y__}))
        Prelude.id
instance Data.ProtoLens.Message HeaderValueOption where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.HeaderValueOption"
  packedMessageDescriptor _
    = "\n\
      \\DC1HeaderValueOption\DC2C\n\
      \\ACKheader\CAN\SOH \SOH(\v2!.envoy.config.core.v3.HeaderValueR\ACKheaderB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC22\n\
      \\ACKappend\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\ACKappend:*\154\197\136\RS%\n\
      \#envoy.api.v2.core.HeaderValueOption"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HeaderValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor HeaderValueOption
        append__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "append"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'append")) ::
              Data.ProtoLens.FieldDescriptor HeaderValueOption
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 2, append__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HeaderValueOption'_unknownFields
        (\ x__ y__ -> x__ {_HeaderValueOption'_unknownFields = y__})
  defMessage
    = HeaderValueOption'_constructor
        {_HeaderValueOption'header = Prelude.Nothing,
         _HeaderValueOption'append = Prelude.Nothing,
         _HeaderValueOption'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HeaderValueOption
          -> Data.ProtoLens.Encoding.Bytes.Parser HeaderValueOption
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
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "append"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"append") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeaderValueOption"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'append") _x
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
instance Control.DeepSeq.NFData HeaderValueOption where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HeaderValueOption'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HeaderValueOption'header x__)
                (Control.DeepSeq.deepseq (_HeaderValueOption'append x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.region' @:: Lens' Locality Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.zone' @:: Lens' Locality Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.subZone' @:: Lens' Locality Data.Text.Text@ -}
data Locality
  = Locality'_constructor {_Locality'region :: !Data.Text.Text,
                           _Locality'zone :: !Data.Text.Text,
                           _Locality'subZone :: !Data.Text.Text,
                           _Locality'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Locality where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Locality "region" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Locality'region (\ x__ y__ -> x__ {_Locality'region = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Locality "zone" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Locality'zone (\ x__ y__ -> x__ {_Locality'zone = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Locality "subZone" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Locality'subZone (\ x__ y__ -> x__ {_Locality'subZone = y__}))
        Prelude.id
instance Data.ProtoLens.Message Locality where
  messageName _ = Data.Text.pack "envoy.config.core.v3.Locality"
  packedMessageDescriptor _
    = "\n\
      \\bLocality\DC2\SYN\n\
      \\ACKregion\CAN\SOH \SOH(\tR\ACKregion\DC2\DC2\n\
      \\EOTzone\CAN\STX \SOH(\tR\EOTzone\DC2\EM\n\
      \\bsub_zone\CAN\ETX \SOH(\tR\asubZone:!\154\197\136\RS\FS\n\
      \\SUBenvoy.api.v2.core.Locality"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        region__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "region"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"region")) ::
              Data.ProtoLens.FieldDescriptor Locality
        zone__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zone"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"zone")) ::
              Data.ProtoLens.FieldDescriptor Locality
        subZone__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sub_zone"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"subZone")) ::
              Data.ProtoLens.FieldDescriptor Locality
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, region__field_descriptor),
           (Data.ProtoLens.Tag 2, zone__field_descriptor),
           (Data.ProtoLens.Tag 3, subZone__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Locality'_unknownFields
        (\ x__ y__ -> x__ {_Locality'_unknownFields = y__})
  defMessage
    = Locality'_constructor
        {_Locality'region = Data.ProtoLens.fieldDefault,
         _Locality'zone = Data.ProtoLens.fieldDefault,
         _Locality'subZone = Data.ProtoLens.fieldDefault,
         _Locality'_unknownFields = []}
  parseMessage
    = let
        loop :: Locality -> Data.ProtoLens.Encoding.Bytes.Parser Locality
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
                                       "region"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"region") y x)
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
                                       "zone"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"zone") y x)
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
                                       "sub_zone"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"subZone") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Locality"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"region") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"zone") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"subZone") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Locality where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Locality'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Locality'region x__)
                (Control.DeepSeq.deepseq
                   (_Locality'zone x__)
                   (Control.DeepSeq.deepseq (_Locality'subZone x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.filterMetadata' @:: Lens' Metadata (Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.typedFilterMetadata' @:: Lens' Metadata (Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Any.Any)@ -}
data Metadata
  = Metadata'_constructor {_Metadata'filterMetadata :: !(Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Struct.Struct),
                           _Metadata'typedFilterMetadata :: !(Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Any.Any),
                           _Metadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Metadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Metadata "filterMetadata" (Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'filterMetadata
           (\ x__ y__ -> x__ {_Metadata'filterMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata "typedFilterMetadata" (Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'typedFilterMetadata
           (\ x__ y__ -> x__ {_Metadata'typedFilterMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message Metadata where
  messageName _ = Data.Text.pack "envoy.config.core.v3.Metadata"
  packedMessageDescriptor _
    = "\n\
      \\bMetadata\DC2[\n\
      \\SIfilter_metadata\CAN\SOH \ETX(\v22.envoy.config.core.v3.Metadata.FilterMetadataEntryR\SOfilterMetadata\DC2k\n\
      \\NAKtyped_filter_metadata\CAN\STX \ETX(\v27.envoy.config.core.v3.Metadata.TypedFilterMetadataEntryR\DC3typedFilterMetadata\SUBZ\n\
      \\DC3FilterMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2-\n\
      \\ENQvalue\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQvalue:\STX8\SOH\SUB\\\n\
      \\CANTypedFilterMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2*\n\
      \\ENQvalue\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ENQvalue:\STX8\SOH:!\154\197\136\RS\FS\n\
      \\SUBenvoy.api.v2.core.Metadata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        filterMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Metadata'FilterMetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"filterMetadata")) ::
              Data.ProtoLens.FieldDescriptor Metadata
        typedFilterMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_filter_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Metadata'TypedFilterMetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"typedFilterMetadata")) ::
              Data.ProtoLens.FieldDescriptor Metadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, filterMetadata__field_descriptor),
           (Data.ProtoLens.Tag 2, typedFilterMetadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Metadata'_unknownFields
        (\ x__ y__ -> x__ {_Metadata'_unknownFields = y__})
  defMessage
    = Metadata'_constructor
        {_Metadata'filterMetadata = Data.Map.empty,
         _Metadata'typedFilterMetadata = Data.Map.empty,
         _Metadata'_unknownFields = []}
  parseMessage
    = let
        loop :: Metadata -> Data.ProtoLens.Encoding.Bytes.Parser Metadata
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
                          -> do !(entry :: Metadata'FilterMetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                    (Prelude.fromIntegral
                                                                                       len)
                                                                                    Data.ProtoLens.parseMessage)
                                                                              "filter_metadata"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"filterMetadata")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        18
                          -> do !(entry :: Metadata'TypedFilterMetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                   (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                       Data.ProtoLens.Encoding.Bytes.isolate
                                                                                         (Prelude.fromIntegral
                                                                                            len)
                                                                                         Data.ProtoLens.parseMessage)
                                                                                   "typed_filter_metadata"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"typedFilterMetadata")
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
          (do loop Data.ProtoLens.defMessage) "Metadata"
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
                                    (Data.ProtoLens.defMessage :: Metadata'FilterMetadataEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"filterMetadata") _x))))
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
                                       (Data.ProtoLens.defMessage ::
                                          Metadata'TypedFilterMetadataEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"typedFilterMetadata") _x))))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Metadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Metadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Metadata'filterMetadata x__)
                (Control.DeepSeq.deepseq (_Metadata'typedFilterMetadata x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.key' @:: Lens' Metadata'FilterMetadataEntry Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.value' @:: Lens' Metadata'FilterMetadataEntry Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'value' @:: Lens' Metadata'FilterMetadataEntry (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@ -}
data Metadata'FilterMetadataEntry
  = Metadata'FilterMetadataEntry'_constructor {_Metadata'FilterMetadataEntry'key :: !Data.Text.Text,
                                               _Metadata'FilterMetadataEntry'value :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                               _Metadata'FilterMetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Metadata'FilterMetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Metadata'FilterMetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'FilterMetadataEntry'key
           (\ x__ y__ -> x__ {_Metadata'FilterMetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata'FilterMetadataEntry "value" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'FilterMetadataEntry'value
           (\ x__ y__ -> x__ {_Metadata'FilterMetadataEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Metadata'FilterMetadataEntry "maybe'value" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'FilterMetadataEntry'value
           (\ x__ y__ -> x__ {_Metadata'FilterMetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Metadata'FilterMetadataEntry where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.Metadata.FilterMetadataEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC3FilterMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2-\n\
      \\ENQvalue\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor Metadata'FilterMetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Metadata'FilterMetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Metadata'FilterMetadataEntry'_unknownFields
        (\ x__ y__
           -> x__ {_Metadata'FilterMetadataEntry'_unknownFields = y__})
  defMessage
    = Metadata'FilterMetadataEntry'_constructor
        {_Metadata'FilterMetadataEntry'key = Data.ProtoLens.fieldDefault,
         _Metadata'FilterMetadataEntry'value = Prelude.Nothing,
         _Metadata'FilterMetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Metadata'FilterMetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Metadata'FilterMetadataEntry
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
          (do loop Data.ProtoLens.defMessage) "FilterMetadataEntry"
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
instance Control.DeepSeq.NFData Metadata'FilterMetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Metadata'FilterMetadataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Metadata'FilterMetadataEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_Metadata'FilterMetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.key' @:: Lens' Metadata'TypedFilterMetadataEntry Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.value' @:: Lens' Metadata'TypedFilterMetadataEntry Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'value' @:: Lens' Metadata'TypedFilterMetadataEntry (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data Metadata'TypedFilterMetadataEntry
  = Metadata'TypedFilterMetadataEntry'_constructor {_Metadata'TypedFilterMetadataEntry'key :: !Data.Text.Text,
                                                    _Metadata'TypedFilterMetadataEntry'value :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                    _Metadata'TypedFilterMetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Metadata'TypedFilterMetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Metadata'TypedFilterMetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'TypedFilterMetadataEntry'key
           (\ x__ y__ -> x__ {_Metadata'TypedFilterMetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata'TypedFilterMetadataEntry "value" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'TypedFilterMetadataEntry'value
           (\ x__ y__
              -> x__ {_Metadata'TypedFilterMetadataEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Metadata'TypedFilterMetadataEntry "maybe'value" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'TypedFilterMetadataEntry'value
           (\ x__ y__
              -> x__ {_Metadata'TypedFilterMetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Metadata'TypedFilterMetadataEntry where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.Metadata.TypedFilterMetadataEntry"
  packedMessageDescriptor _
    = "\n\
      \\CANTypedFilterMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2*\n\
      \\ENQvalue\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor Metadata'TypedFilterMetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Metadata'TypedFilterMetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Metadata'TypedFilterMetadataEntry'_unknownFields
        (\ x__ y__
           -> x__ {_Metadata'TypedFilterMetadataEntry'_unknownFields = y__})
  defMessage
    = Metadata'TypedFilterMetadataEntry'_constructor
        {_Metadata'TypedFilterMetadataEntry'key = Data.ProtoLens.fieldDefault,
         _Metadata'TypedFilterMetadataEntry'value = Prelude.Nothing,
         _Metadata'TypedFilterMetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Metadata'TypedFilterMetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Metadata'TypedFilterMetadataEntry
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
          (do loop Data.ProtoLens.defMessage) "TypedFilterMetadataEntry"
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
instance Control.DeepSeq.NFData Metadata'TypedFilterMetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Metadata'TypedFilterMetadataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Metadata'TypedFilterMetadataEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_Metadata'TypedFilterMetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.id' @:: Lens' Node Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.cluster' @:: Lens' Node Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.metadata' @:: Lens' Node Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'metadata' @:: Lens' Node (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.dynamicParameters' @:: Lens' Node (Data.Map.Map Data.Text.Text Proto.Xds.Core.V3.ContextParams.ContextParams)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.locality' @:: Lens' Node Locality@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'locality' @:: Lens' Node (Prelude.Maybe Locality)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.userAgentName' @:: Lens' Node Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.extensions' @:: Lens' Node [Extension]@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.vec'extensions' @:: Lens' Node (Data.Vector.Vector Extension)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.clientFeatures' @:: Lens' Node [Data.Text.Text]@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.vec'clientFeatures' @:: Lens' Node (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.listeningAddresses' @:: Lens' Node [Proto.Envoy.Config.Core.V3.Address.Address]@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.vec'listeningAddresses' @:: Lens' Node (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'userAgentVersionType' @:: Lens' Node (Prelude.Maybe Node'UserAgentVersionType)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'userAgentVersion' @:: Lens' Node (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.userAgentVersion' @:: Lens' Node Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'userAgentBuildVersion' @:: Lens' Node (Prelude.Maybe BuildVersion)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.userAgentBuildVersion' @:: Lens' Node BuildVersion@ -}
data Node
  = Node'_constructor {_Node'id :: !Data.Text.Text,
                       _Node'cluster :: !Data.Text.Text,
                       _Node'metadata :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                       _Node'dynamicParameters :: !(Data.Map.Map Data.Text.Text Proto.Xds.Core.V3.ContextParams.ContextParams),
                       _Node'locality :: !(Prelude.Maybe Locality),
                       _Node'userAgentName :: !Data.Text.Text,
                       _Node'extensions :: !(Data.Vector.Vector Extension),
                       _Node'clientFeatures :: !(Data.Vector.Vector Data.Text.Text),
                       _Node'listeningAddresses :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.Address),
                       _Node'userAgentVersionType :: !(Prelude.Maybe Node'UserAgentVersionType),
                       _Node'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Node where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Node'UserAgentVersionType
  = Node'UserAgentVersion !Data.Text.Text |
    Node'UserAgentBuildVersion !BuildVersion
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Node "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'id (\ x__ y__ -> x__ {_Node'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node "cluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'cluster (\ x__ y__ -> x__ {_Node'cluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node "metadata" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'metadata (\ x__ y__ -> x__ {_Node'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Node "maybe'metadata" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'metadata (\ x__ y__ -> x__ {_Node'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node "dynamicParameters" (Data.Map.Map Data.Text.Text Proto.Xds.Core.V3.ContextParams.ContextParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'dynamicParameters
           (\ x__ y__ -> x__ {_Node'dynamicParameters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node "locality" Locality where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'locality (\ x__ y__ -> x__ {_Node'locality = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Node "maybe'locality" (Prelude.Maybe Locality) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'locality (\ x__ y__ -> x__ {_Node'locality = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node "userAgentName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'userAgentName (\ x__ y__ -> x__ {_Node'userAgentName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node "extensions" [Extension] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'extensions (\ x__ y__ -> x__ {_Node'extensions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Node "vec'extensions" (Data.Vector.Vector Extension) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'extensions (\ x__ y__ -> x__ {_Node'extensions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node "clientFeatures" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'clientFeatures
           (\ x__ y__ -> x__ {_Node'clientFeatures = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Node "vec'clientFeatures" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'clientFeatures
           (\ x__ y__ -> x__ {_Node'clientFeatures = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node "listeningAddresses" [Proto.Envoy.Config.Core.V3.Address.Address] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'listeningAddresses
           (\ x__ y__ -> x__ {_Node'listeningAddresses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Node "vec'listeningAddresses" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'listeningAddresses
           (\ x__ y__ -> x__ {_Node'listeningAddresses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node "maybe'userAgentVersionType" (Prelude.Maybe Node'UserAgentVersionType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'userAgentVersionType
           (\ x__ y__ -> x__ {_Node'userAgentVersionType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node "maybe'userAgentVersion" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'userAgentVersionType
           (\ x__ y__ -> x__ {_Node'userAgentVersionType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Node'UserAgentVersion x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Node'UserAgentVersion y__))
instance Data.ProtoLens.Field.HasField Node "userAgentVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'userAgentVersionType
           (\ x__ y__ -> x__ {_Node'userAgentVersionType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Node'UserAgentVersion x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Node'UserAgentVersion y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Node "maybe'userAgentBuildVersion" (Prelude.Maybe BuildVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'userAgentVersionType
           (\ x__ y__ -> x__ {_Node'userAgentVersionType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Node'UserAgentBuildVersion x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Node'UserAgentBuildVersion y__))
instance Data.ProtoLens.Field.HasField Node "userAgentBuildVersion" BuildVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'userAgentVersionType
           (\ x__ y__ -> x__ {_Node'userAgentVersionType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Node'UserAgentBuildVersion x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Node'UserAgentBuildVersion y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Node where
  messageName _ = Data.Text.pack "envoy.config.core.v3.Node"
  packedMessageDescriptor _
    = "\n\
      \\EOTNode\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\CAN\n\
      \\acluster\CAN\STX \SOH(\tR\acluster\DC23\n\
      \\bmetadata\CAN\ETX \SOH(\v2\ETB.google.protobuf.StructR\bmetadata\DC2`\n\
      \\DC2dynamic_parameters\CAN\f \ETX(\v21.envoy.config.core.v3.Node.DynamicParametersEntryR\DC1dynamicParameters\DC2:\n\
      \\blocality\CAN\EOT \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality\DC2&\n\
      \\SIuser_agent_name\CAN\ACK \SOH(\tR\ruserAgentName\DC2.\n\
      \\DC2user_agent_version\CAN\a \SOH(\tH\NULR\DLEuserAgentVersion\DC2]\n\
      \\CANuser_agent_build_version\CAN\b \SOH(\v2\".envoy.config.core.v3.BuildVersionH\NULR\NAKuserAgentBuildVersion\DC2?\n\
      \\n\
      \extensions\CAN\t \ETX(\v2\US.envoy.config.core.v3.ExtensionR\n\
      \extensions\DC2'\n\
      \\SIclient_features\CAN\n\
      \ \ETX(\tR\SOclientFeatures\DC2[\n\
      \\DC3listening_addresses\CAN\v \ETX(\v2\GS.envoy.config.core.v3.AddressR\DC2listeningAddressesB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\SUB`\n\
      \\SYNDynamicParametersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC20\n\
      \\ENQvalue\CAN\STX \SOH(\v2\SUB.xds.core.v3.ContextParamsR\ENQvalue:\STX8\SOHB\EM\n\
      \\ETBuser_agent_version_type:\GS\154\197\136\RS\CAN\n\
      \\SYNenvoy.api.v2.core.NodeJ\EOT\b\ENQ\DLE\ACKR\rbuild_version"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Node
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cluster")) ::
              Data.ProtoLens.FieldDescriptor Node
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor Node
        dynamicParameters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_parameters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Node'DynamicParametersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"dynamicParameters")) ::
              Data.ProtoLens.FieldDescriptor Node
        locality__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locality"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Locality)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'locality")) ::
              Data.ProtoLens.FieldDescriptor Node
        userAgentName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_agent_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"userAgentName")) ::
              Data.ProtoLens.FieldDescriptor Node
        extensions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extensions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Extension)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extensions")) ::
              Data.ProtoLens.FieldDescriptor Node
        clientFeatures__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_features"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clientFeatures")) ::
              Data.ProtoLens.FieldDescriptor Node
        listeningAddresses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "listening_addresses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"listeningAddresses")) ::
              Data.ProtoLens.FieldDescriptor Node
        userAgentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_agent_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'userAgentVersion")) ::
              Data.ProtoLens.FieldDescriptor Node
        userAgentBuildVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_agent_build_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BuildVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'userAgentBuildVersion")) ::
              Data.ProtoLens.FieldDescriptor Node
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, cluster__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor),
           (Data.ProtoLens.Tag 12, dynamicParameters__field_descriptor),
           (Data.ProtoLens.Tag 4, locality__field_descriptor),
           (Data.ProtoLens.Tag 6, userAgentName__field_descriptor),
           (Data.ProtoLens.Tag 9, extensions__field_descriptor),
           (Data.ProtoLens.Tag 10, clientFeatures__field_descriptor),
           (Data.ProtoLens.Tag 11, listeningAddresses__field_descriptor),
           (Data.ProtoLens.Tag 7, userAgentVersion__field_descriptor),
           (Data.ProtoLens.Tag 8, userAgentBuildVersion__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Node'_unknownFields
        (\ x__ y__ -> x__ {_Node'_unknownFields = y__})
  defMessage
    = Node'_constructor
        {_Node'id = Data.ProtoLens.fieldDefault,
         _Node'cluster = Data.ProtoLens.fieldDefault,
         _Node'metadata = Prelude.Nothing,
         _Node'dynamicParameters = Data.Map.empty,
         _Node'locality = Prelude.Nothing,
         _Node'userAgentName = Data.ProtoLens.fieldDefault,
         _Node'extensions = Data.Vector.Generic.empty,
         _Node'clientFeatures = Data.Vector.Generic.empty,
         _Node'listeningAddresses = Data.Vector.Generic.empty,
         _Node'userAgentVersionType = Prelude.Nothing,
         _Node'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Node
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Extension
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Address.Address
                   -> Data.ProtoLens.Encoding.Bytes.Parser Node
        loop
          x
          mutable'clientFeatures
          mutable'extensions
          mutable'listeningAddresses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'clientFeatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'clientFeatures)
                      frozen'extensions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'extensions)
                      frozen'listeningAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'listeningAddresses)
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
                              (Data.ProtoLens.Field.field @"vec'clientFeatures")
                              frozen'clientFeatures
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'extensions")
                                 frozen'extensions
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'listeningAddresses")
                                    frozen'listeningAddresses
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
                                       "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'clientFeatures
                                  mutable'extensions
                                  mutable'listeningAddresses
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
                                       "cluster"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                                  mutable'clientFeatures
                                  mutable'extensions
                                  mutable'listeningAddresses
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'clientFeatures
                                  mutable'extensions
                                  mutable'listeningAddresses
                        98
                          -> do !(entry :: Node'DynamicParametersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                             (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                 Data.ProtoLens.Encoding.Bytes.isolate
                                                                                   (Prelude.fromIntegral
                                                                                      len)
                                                                                   Data.ProtoLens.parseMessage)
                                                                             "dynamic_parameters"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"dynamicParameters")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'clientFeatures
                                     mutable'extensions
                                     mutable'listeningAddresses)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "locality"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"locality") y x)
                                  mutable'clientFeatures
                                  mutable'extensions
                                  mutable'listeningAddresses
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
                                       "user_agent_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"userAgentName") y x)
                                  mutable'clientFeatures
                                  mutable'extensions
                                  mutable'listeningAddresses
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "extensions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'extensions y)
                                loop x mutable'clientFeatures v mutable'listeningAddresses
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
                                        "client_features"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'clientFeatures y)
                                loop x v mutable'extensions mutable'listeningAddresses
                        90
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "listening_addresses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'listeningAddresses y)
                                loop x mutable'clientFeatures mutable'extensions v
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "user_agent_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"userAgentVersion") y x)
                                  mutable'clientFeatures
                                  mutable'extensions
                                  mutable'listeningAddresses
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "user_agent_build_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"userAgentBuildVersion") y x)
                                  mutable'clientFeatures
                                  mutable'extensions
                                  mutable'listeningAddresses
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'clientFeatures
                                  mutable'extensions
                                  mutable'listeningAddresses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'clientFeatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'extensions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'listeningAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'clientFeatures
                mutable'extensions
                mutable'listeningAddresses)
          "Node"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cluster") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
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
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
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
                                                Node'DynamicParametersEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"dynamicParameters") _x))))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'locality") _x
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
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"userAgentName") _x
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
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'extensions") _x))
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
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.Text.Encoding.encodeUtf8
                                                _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'clientFeatures") _x))
                                  ((Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
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
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'listeningAddresses")
                                           _x))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'userAgentVersionType")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just (Node'UserAgentVersion v))
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
                                                     Data.Text.Encoding.encodeUtf8
                                                     v)
                                           (Prelude.Just (Node'UserAgentBuildVersion v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
instance Control.DeepSeq.NFData Node where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Node'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Node'id x__)
                (Control.DeepSeq.deepseq
                   (_Node'cluster x__)
                   (Control.DeepSeq.deepseq
                      (_Node'metadata x__)
                      (Control.DeepSeq.deepseq
                         (_Node'dynamicParameters x__)
                         (Control.DeepSeq.deepseq
                            (_Node'locality x__)
                            (Control.DeepSeq.deepseq
                               (_Node'userAgentName x__)
                               (Control.DeepSeq.deepseq
                                  (_Node'extensions x__)
                                  (Control.DeepSeq.deepseq
                                     (_Node'clientFeatures x__)
                                     (Control.DeepSeq.deepseq
                                        (_Node'listeningAddresses x__)
                                        (Control.DeepSeq.deepseq
                                           (_Node'userAgentVersionType x__) ()))))))))))
instance Control.DeepSeq.NFData Node'UserAgentVersionType where
  rnf (Node'UserAgentVersion x__) = Control.DeepSeq.rnf x__
  rnf (Node'UserAgentBuildVersion x__) = Control.DeepSeq.rnf x__
_Node'UserAgentVersion ::
  Data.ProtoLens.Prism.Prism' Node'UserAgentVersionType Data.Text.Text
_Node'UserAgentVersion
  = Data.ProtoLens.Prism.prism'
      Node'UserAgentVersion
      (\ p__
         -> case p__ of
              (Node'UserAgentVersion p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Node'UserAgentBuildVersion ::
  Data.ProtoLens.Prism.Prism' Node'UserAgentVersionType BuildVersion
_Node'UserAgentBuildVersion
  = Data.ProtoLens.Prism.prism'
      Node'UserAgentBuildVersion
      (\ p__
         -> case p__ of
              (Node'UserAgentBuildVersion p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.key' @:: Lens' Node'DynamicParametersEntry Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.value' @:: Lens' Node'DynamicParametersEntry Proto.Xds.Core.V3.ContextParams.ContextParams@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'value' @:: Lens' Node'DynamicParametersEntry (Prelude.Maybe Proto.Xds.Core.V3.ContextParams.ContextParams)@ -}
data Node'DynamicParametersEntry
  = Node'DynamicParametersEntry'_constructor {_Node'DynamicParametersEntry'key :: !Data.Text.Text,
                                              _Node'DynamicParametersEntry'value :: !(Prelude.Maybe Proto.Xds.Core.V3.ContextParams.ContextParams),
                                              _Node'DynamicParametersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Node'DynamicParametersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Node'DynamicParametersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'DynamicParametersEntry'key
           (\ x__ y__ -> x__ {_Node'DynamicParametersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Node'DynamicParametersEntry "value" Proto.Xds.Core.V3.ContextParams.ContextParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'DynamicParametersEntry'value
           (\ x__ y__ -> x__ {_Node'DynamicParametersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Node'DynamicParametersEntry "maybe'value" (Prelude.Maybe Proto.Xds.Core.V3.ContextParams.ContextParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Node'DynamicParametersEntry'value
           (\ x__ y__ -> x__ {_Node'DynamicParametersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Node'DynamicParametersEntry where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.Node.DynamicParametersEntry"
  packedMessageDescriptor _
    = "\n\
      \\SYNDynamicParametersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC20\n\
      \\ENQvalue\CAN\STX \SOH(\v2\SUB.xds.core.v3.ContextParamsR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor Node'DynamicParametersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Xds.Core.V3.ContextParams.ContextParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Node'DynamicParametersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Node'DynamicParametersEntry'_unknownFields
        (\ x__ y__
           -> x__ {_Node'DynamicParametersEntry'_unknownFields = y__})
  defMessage
    = Node'DynamicParametersEntry'_constructor
        {_Node'DynamicParametersEntry'key = Data.ProtoLens.fieldDefault,
         _Node'DynamicParametersEntry'value = Prelude.Nothing,
         _Node'DynamicParametersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Node'DynamicParametersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Node'DynamicParametersEntry
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
          (do loop Data.ProtoLens.defMessage) "DynamicParametersEntry"
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
instance Control.DeepSeq.NFData Node'DynamicParametersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Node'DynamicParametersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Node'DynamicParametersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_Node'DynamicParametersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.httpUri' @:: Lens' RemoteDataSource Proto.Envoy.Config.Core.V3.HttpUri.HttpUri@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'httpUri' @:: Lens' RemoteDataSource (Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.sha256' @:: Lens' RemoteDataSource Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.retryPolicy' @:: Lens' RemoteDataSource RetryPolicy@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'retryPolicy' @:: Lens' RemoteDataSource (Prelude.Maybe RetryPolicy)@ -}
data RemoteDataSource
  = RemoteDataSource'_constructor {_RemoteDataSource'httpUri :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri),
                                   _RemoteDataSource'sha256 :: !Data.Text.Text,
                                   _RemoteDataSource'retryPolicy :: !(Prelude.Maybe RetryPolicy),
                                   _RemoteDataSource'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RemoteDataSource where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RemoteDataSource "httpUri" Proto.Envoy.Config.Core.V3.HttpUri.HttpUri where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteDataSource'httpUri
           (\ x__ y__ -> x__ {_RemoteDataSource'httpUri = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RemoteDataSource "maybe'httpUri" (Prelude.Maybe Proto.Envoy.Config.Core.V3.HttpUri.HttpUri) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteDataSource'httpUri
           (\ x__ y__ -> x__ {_RemoteDataSource'httpUri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RemoteDataSource "sha256" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteDataSource'sha256
           (\ x__ y__ -> x__ {_RemoteDataSource'sha256 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RemoteDataSource "retryPolicy" RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteDataSource'retryPolicy
           (\ x__ y__ -> x__ {_RemoteDataSource'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RemoteDataSource "maybe'retryPolicy" (Prelude.Maybe RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoteDataSource'retryPolicy
           (\ x__ y__ -> x__ {_RemoteDataSource'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Message RemoteDataSource where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.RemoteDataSource"
  packedMessageDescriptor _
    = "\n\
      \\DLERemoteDataSource\DC2B\n\
      \\bhttp_uri\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.HttpUriR\ahttpUriB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\US\n\
      \\ACKsha256\CAN\STX \SOH(\tR\ACKsha256B\a\250B\EOTr\STX\DLE\SOH\DC2D\n\
      \\fretry_policy\CAN\ETX \SOH(\v2!.envoy.config.core.v3.RetryPolicyR\vretryPolicy:)\154\197\136\RS$\n\
      \\"envoy.api.v2.core.RemoteDataSource"
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
              Data.ProtoLens.FieldDescriptor RemoteDataSource
        sha256__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sha256"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sha256")) ::
              Data.ProtoLens.FieldDescriptor RemoteDataSource
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor RemoteDataSource
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, httpUri__field_descriptor),
           (Data.ProtoLens.Tag 2, sha256__field_descriptor),
           (Data.ProtoLens.Tag 3, retryPolicy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RemoteDataSource'_unknownFields
        (\ x__ y__ -> x__ {_RemoteDataSource'_unknownFields = y__})
  defMessage
    = RemoteDataSource'_constructor
        {_RemoteDataSource'httpUri = Prelude.Nothing,
         _RemoteDataSource'sha256 = Data.ProtoLens.fieldDefault,
         _RemoteDataSource'retryPolicy = Prelude.Nothing,
         _RemoteDataSource'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RemoteDataSource
          -> Data.ProtoLens.Encoding.Bytes.Parser RemoteDataSource
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "sha256"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sha256") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RemoteDataSource"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sha256") _x
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
                          (Data.ProtoLens.Field.field @"maybe'retryPolicy") _x
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
instance Control.DeepSeq.NFData RemoteDataSource where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RemoteDataSource'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RemoteDataSource'httpUri x__)
                (Control.DeepSeq.deepseq
                   (_RemoteDataSource'sha256 x__)
                   (Control.DeepSeq.deepseq (_RemoteDataSource'retryPolicy x__) ())))
newtype RequestMethod'UnrecognizedValue
  = RequestMethod'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RequestMethod
  = METHOD_UNSPECIFIED |
    GET |
    HEAD |
    POST |
    PUT |
    DELETE |
    CONNECT |
    OPTIONS |
    TRACE |
    PATCH |
    RequestMethod'Unrecognized !RequestMethod'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RequestMethod where
  maybeToEnum 0 = Prelude.Just METHOD_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just GET
  maybeToEnum 2 = Prelude.Just HEAD
  maybeToEnum 3 = Prelude.Just POST
  maybeToEnum 4 = Prelude.Just PUT
  maybeToEnum 5 = Prelude.Just DELETE
  maybeToEnum 6 = Prelude.Just CONNECT
  maybeToEnum 7 = Prelude.Just OPTIONS
  maybeToEnum 8 = Prelude.Just TRACE
  maybeToEnum 9 = Prelude.Just PATCH
  maybeToEnum k
    = Prelude.Just
        (RequestMethod'Unrecognized
           (RequestMethod'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum METHOD_UNSPECIFIED = "METHOD_UNSPECIFIED"
  showEnum GET = "GET"
  showEnum HEAD = "HEAD"
  showEnum POST = "POST"
  showEnum PUT = "PUT"
  showEnum DELETE = "DELETE"
  showEnum CONNECT = "CONNECT"
  showEnum OPTIONS = "OPTIONS"
  showEnum TRACE = "TRACE"
  showEnum PATCH = "PATCH"
  showEnum
    (RequestMethod'Unrecognized (RequestMethod'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "METHOD_UNSPECIFIED"
    = Prelude.Just METHOD_UNSPECIFIED
    | (Prelude.==) k "GET" = Prelude.Just GET
    | (Prelude.==) k "HEAD" = Prelude.Just HEAD
    | (Prelude.==) k "POST" = Prelude.Just POST
    | (Prelude.==) k "PUT" = Prelude.Just PUT
    | (Prelude.==) k "DELETE" = Prelude.Just DELETE
    | (Prelude.==) k "CONNECT" = Prelude.Just CONNECT
    | (Prelude.==) k "OPTIONS" = Prelude.Just OPTIONS
    | (Prelude.==) k "TRACE" = Prelude.Just TRACE
    | (Prelude.==) k "PATCH" = Prelude.Just PATCH
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RequestMethod where
  minBound = METHOD_UNSPECIFIED
  maxBound = PATCH
instance Prelude.Enum RequestMethod where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RequestMethod: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum METHOD_UNSPECIFIED = 0
  fromEnum GET = 1
  fromEnum HEAD = 2
  fromEnum POST = 3
  fromEnum PUT = 4
  fromEnum DELETE = 5
  fromEnum CONNECT = 6
  fromEnum OPTIONS = 7
  fromEnum TRACE = 8
  fromEnum PATCH = 9
  fromEnum
    (RequestMethod'Unrecognized (RequestMethod'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ PATCH
    = Prelude.error
        "RequestMethod.succ: bad argument PATCH. This value would be out of bounds."
  succ METHOD_UNSPECIFIED = GET
  succ GET = HEAD
  succ HEAD = POST
  succ POST = PUT
  succ PUT = DELETE
  succ DELETE = CONNECT
  succ CONNECT = OPTIONS
  succ OPTIONS = TRACE
  succ TRACE = PATCH
  succ (RequestMethod'Unrecognized _)
    = Prelude.error
        "RequestMethod.succ: bad argument: unrecognized value"
  pred METHOD_UNSPECIFIED
    = Prelude.error
        "RequestMethod.pred: bad argument METHOD_UNSPECIFIED. This value would be out of bounds."
  pred GET = METHOD_UNSPECIFIED
  pred HEAD = GET
  pred POST = HEAD
  pred PUT = POST
  pred DELETE = PUT
  pred CONNECT = DELETE
  pred OPTIONS = CONNECT
  pred TRACE = OPTIONS
  pred PATCH = TRACE
  pred (RequestMethod'Unrecognized _)
    = Prelude.error
        "RequestMethod.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RequestMethod where
  fieldDefault = METHOD_UNSPECIFIED
instance Control.DeepSeq.NFData RequestMethod where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.retryBackOff' @:: Lens' RetryPolicy Proto.Envoy.Config.Core.V3.Backoff.BackoffStrategy@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'retryBackOff' @:: Lens' RetryPolicy (Prelude.Maybe Proto.Envoy.Config.Core.V3.Backoff.BackoffStrategy)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.numRetries' @:: Lens' RetryPolicy Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'numRetries' @:: Lens' RetryPolicy (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data RetryPolicy
  = RetryPolicy'_constructor {_RetryPolicy'retryBackOff :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Backoff.BackoffStrategy),
                              _RetryPolicy'numRetries :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                              _RetryPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RetryPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RetryPolicy "retryBackOff" Proto.Envoy.Config.Core.V3.Backoff.BackoffStrategy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'retryBackOff
           (\ x__ y__ -> x__ {_RetryPolicy'retryBackOff = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RetryPolicy "maybe'retryBackOff" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Backoff.BackoffStrategy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'retryBackOff
           (\ x__ y__ -> x__ {_RetryPolicy'retryBackOff = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RetryPolicy "numRetries" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'numRetries
           (\ x__ y__ -> x__ {_RetryPolicy'numRetries = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RetryPolicy "maybe'numRetries" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'numRetries
           (\ x__ y__ -> x__ {_RetryPolicy'numRetries = y__}))
        Prelude.id
instance Data.ProtoLens.Message RetryPolicy where
  messageName _ = Data.Text.pack "envoy.config.core.v3.RetryPolicy"
  packedMessageDescriptor _
    = "\n\
      \\vRetryPolicy\DC2K\n\
      \\SOretry_back_off\CAN\SOH \SOH(\v2%.envoy.config.core.v3.BackoffStrategyR\fretryBackOff\DC2R\n\
      \\vnum_retries\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \numRetriesB\DC3\242\152\254\143\ENQ\r\n\
      \\vmax_retries:$\154\197\136\RS\US\n\
      \\GSenvoy.api.v2.core.RetryPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        retryBackOff__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_back_off"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Backoff.BackoffStrategy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryBackOff")) ::
              Data.ProtoLens.FieldDescriptor RetryPolicy
        numRetries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_retries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numRetries")) ::
              Data.ProtoLens.FieldDescriptor RetryPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, retryBackOff__field_descriptor),
           (Data.ProtoLens.Tag 2, numRetries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RetryPolicy'_unknownFields
        (\ x__ y__ -> x__ {_RetryPolicy'_unknownFields = y__})
  defMessage
    = RetryPolicy'_constructor
        {_RetryPolicy'retryBackOff = Prelude.Nothing,
         _RetryPolicy'numRetries = Prelude.Nothing,
         _RetryPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RetryPolicy -> Data.ProtoLens.Encoding.Bytes.Parser RetryPolicy
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
                                       "retry_back_off"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"retryBackOff") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "num_retries"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numRetries") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RetryPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'retryBackOff") _x
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
                       (Data.ProtoLens.Field.field @"maybe'numRetries") _x
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
instance Control.DeepSeq.NFData RetryPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RetryPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RetryPolicy'retryBackOff x__)
                (Control.DeepSeq.deepseq (_RetryPolicy'numRetries x__) ()))
newtype RoutingPriority'UnrecognizedValue
  = RoutingPriority'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RoutingPriority
  = DEFAULT |
    HIGH |
    RoutingPriority'Unrecognized !RoutingPriority'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RoutingPriority where
  maybeToEnum 0 = Prelude.Just DEFAULT
  maybeToEnum 1 = Prelude.Just HIGH
  maybeToEnum k
    = Prelude.Just
        (RoutingPriority'Unrecognized
           (RoutingPriority'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum DEFAULT = "DEFAULT"
  showEnum HIGH = "HIGH"
  showEnum
    (RoutingPriority'Unrecognized (RoutingPriority'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEFAULT" = Prelude.Just DEFAULT
    | (Prelude.==) k "HIGH" = Prelude.Just HIGH
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RoutingPriority where
  minBound = DEFAULT
  maxBound = HIGH
instance Prelude.Enum RoutingPriority where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RoutingPriority: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum DEFAULT = 0
  fromEnum HIGH = 1
  fromEnum
    (RoutingPriority'Unrecognized (RoutingPriority'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HIGH
    = Prelude.error
        "RoutingPriority.succ: bad argument HIGH. This value would be out of bounds."
  succ DEFAULT = HIGH
  succ (RoutingPriority'Unrecognized _)
    = Prelude.error
        "RoutingPriority.succ: bad argument: unrecognized value"
  pred DEFAULT
    = Prelude.error
        "RoutingPriority.pred: bad argument DEFAULT. This value would be out of bounds."
  pred HIGH = DEFAULT
  pred (RoutingPriority'Unrecognized _)
    = Prelude.error
        "RoutingPriority.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RoutingPriority where
  fieldDefault = DEFAULT
instance Control.DeepSeq.NFData RoutingPriority where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.defaultValue' @:: Lens' RuntimeDouble Prelude.Double@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.runtimeKey' @:: Lens' RuntimeDouble Data.Text.Text@ -}
data RuntimeDouble
  = RuntimeDouble'_constructor {_RuntimeDouble'defaultValue :: !Prelude.Double,
                                _RuntimeDouble'runtimeKey :: !Data.Text.Text,
                                _RuntimeDouble'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RuntimeDouble where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RuntimeDouble "defaultValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeDouble'defaultValue
           (\ x__ y__ -> x__ {_RuntimeDouble'defaultValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeDouble "runtimeKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeDouble'runtimeKey
           (\ x__ y__ -> x__ {_RuntimeDouble'runtimeKey = y__}))
        Prelude.id
instance Data.ProtoLens.Message RuntimeDouble where
  messageName _ = Data.Text.pack "envoy.config.core.v3.RuntimeDouble"
  packedMessageDescriptor _
    = "\n\
      \\rRuntimeDouble\DC2#\n\
      \\rdefault_value\CAN\SOH \SOH(\SOHR\fdefaultValue\DC2(\n\
      \\vruntime_key\CAN\STX \SOH(\tR\n\
      \runtimeKeyB\a\250B\EOTr\STX\DLE\SOH:&\154\197\136\RS!\n\
      \\USenvoy.api.v2.core.RuntimeDouble"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        defaultValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"defaultValue")) ::
              Data.ProtoLens.FieldDescriptor RuntimeDouble
        runtimeKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"runtimeKey")) ::
              Data.ProtoLens.FieldDescriptor RuntimeDouble
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, defaultValue__field_descriptor),
           (Data.ProtoLens.Tag 2, runtimeKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RuntimeDouble'_unknownFields
        (\ x__ y__ -> x__ {_RuntimeDouble'_unknownFields = y__})
  defMessage
    = RuntimeDouble'_constructor
        {_RuntimeDouble'defaultValue = Data.ProtoLens.fieldDefault,
         _RuntimeDouble'runtimeKey = Data.ProtoLens.fieldDefault,
         _RuntimeDouble'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RuntimeDouble -> Data.ProtoLens.Encoding.Bytes.Parser RuntimeDouble
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
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "default_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValue") y x)
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
                                       "runtime_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runtimeKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RuntimeDouble"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"defaultValue") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putFixed64
                         Data.ProtoLens.Encoding.Bytes.doubleToWord
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"runtimeKey") _x
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
instance Control.DeepSeq.NFData RuntimeDouble where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RuntimeDouble'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RuntimeDouble'defaultValue x__)
                (Control.DeepSeq.deepseq (_RuntimeDouble'runtimeKey x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.defaultValue' @:: Lens' RuntimeFeatureFlag Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'defaultValue' @:: Lens' RuntimeFeatureFlag (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.runtimeKey' @:: Lens' RuntimeFeatureFlag Data.Text.Text@ -}
data RuntimeFeatureFlag
  = RuntimeFeatureFlag'_constructor {_RuntimeFeatureFlag'defaultValue :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                     _RuntimeFeatureFlag'runtimeKey :: !Data.Text.Text,
                                     _RuntimeFeatureFlag'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RuntimeFeatureFlag where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RuntimeFeatureFlag "defaultValue" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeFeatureFlag'defaultValue
           (\ x__ y__ -> x__ {_RuntimeFeatureFlag'defaultValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RuntimeFeatureFlag "maybe'defaultValue" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeFeatureFlag'defaultValue
           (\ x__ y__ -> x__ {_RuntimeFeatureFlag'defaultValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeFeatureFlag "runtimeKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeFeatureFlag'runtimeKey
           (\ x__ y__ -> x__ {_RuntimeFeatureFlag'runtimeKey = y__}))
        Prelude.id
instance Data.ProtoLens.Message RuntimeFeatureFlag where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.RuntimeFeatureFlag"
  packedMessageDescriptor _
    = "\n\
      \\DC2RuntimeFeatureFlag\DC2I\n\
      \\rdefault_value\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\fdefaultValueB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2(\n\
      \\vruntime_key\CAN\STX \SOH(\tR\n\
      \runtimeKeyB\a\250B\EOTr\STX\DLE\SOH:+\154\197\136\RS&\n\
      \$envoy.api.v2.core.RuntimeFeatureFlag"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        defaultValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'defaultValue")) ::
              Data.ProtoLens.FieldDescriptor RuntimeFeatureFlag
        runtimeKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"runtimeKey")) ::
              Data.ProtoLens.FieldDescriptor RuntimeFeatureFlag
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, defaultValue__field_descriptor),
           (Data.ProtoLens.Tag 2, runtimeKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RuntimeFeatureFlag'_unknownFields
        (\ x__ y__ -> x__ {_RuntimeFeatureFlag'_unknownFields = y__})
  defMessage
    = RuntimeFeatureFlag'_constructor
        {_RuntimeFeatureFlag'defaultValue = Prelude.Nothing,
         _RuntimeFeatureFlag'runtimeKey = Data.ProtoLens.fieldDefault,
         _RuntimeFeatureFlag'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RuntimeFeatureFlag
          -> Data.ProtoLens.Encoding.Bytes.Parser RuntimeFeatureFlag
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
                                       "default_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValue") y x)
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
                                       "runtime_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runtimeKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RuntimeFeatureFlag"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'defaultValue") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"runtimeKey") _x
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
instance Control.DeepSeq.NFData RuntimeFeatureFlag where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RuntimeFeatureFlag'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RuntimeFeatureFlag'defaultValue x__)
                (Control.DeepSeq.deepseq (_RuntimeFeatureFlag'runtimeKey x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.defaultValue' @:: Lens' RuntimeFractionalPercent Proto.Envoy.Type.V3.Percent.FractionalPercent@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'defaultValue' @:: Lens' RuntimeFractionalPercent (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.runtimeKey' @:: Lens' RuntimeFractionalPercent Data.Text.Text@ -}
data RuntimeFractionalPercent
  = RuntimeFractionalPercent'_constructor {_RuntimeFractionalPercent'defaultValue :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent),
                                           _RuntimeFractionalPercent'runtimeKey :: !Data.Text.Text,
                                           _RuntimeFractionalPercent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RuntimeFractionalPercent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RuntimeFractionalPercent "defaultValue" Proto.Envoy.Type.V3.Percent.FractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeFractionalPercent'defaultValue
           (\ x__ y__ -> x__ {_RuntimeFractionalPercent'defaultValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RuntimeFractionalPercent "maybe'defaultValue" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeFractionalPercent'defaultValue
           (\ x__ y__ -> x__ {_RuntimeFractionalPercent'defaultValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeFractionalPercent "runtimeKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeFractionalPercent'runtimeKey
           (\ x__ y__ -> x__ {_RuntimeFractionalPercent'runtimeKey = y__}))
        Prelude.id
instance Data.ProtoLens.Message RuntimeFractionalPercent where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.RuntimeFractionalPercent"
  packedMessageDescriptor _
    = "\n\
      \\CANRuntimeFractionalPercent\DC2O\n\
      \\rdefault_value\CAN\SOH \SOH(\v2 .envoy.type.v3.FractionalPercentR\fdefaultValueB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\US\n\
      \\vruntime_key\CAN\STX \SOH(\tR\n\
      \runtimeKey:1\154\197\136\RS,\n\
      \*envoy.api.v2.core.RuntimeFractionalPercent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        defaultValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.FractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'defaultValue")) ::
              Data.ProtoLens.FieldDescriptor RuntimeFractionalPercent
        runtimeKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"runtimeKey")) ::
              Data.ProtoLens.FieldDescriptor RuntimeFractionalPercent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, defaultValue__field_descriptor),
           (Data.ProtoLens.Tag 2, runtimeKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RuntimeFractionalPercent'_unknownFields
        (\ x__ y__ -> x__ {_RuntimeFractionalPercent'_unknownFields = y__})
  defMessage
    = RuntimeFractionalPercent'_constructor
        {_RuntimeFractionalPercent'defaultValue = Prelude.Nothing,
         _RuntimeFractionalPercent'runtimeKey = Data.ProtoLens.fieldDefault,
         _RuntimeFractionalPercent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RuntimeFractionalPercent
          -> Data.ProtoLens.Encoding.Bytes.Parser RuntimeFractionalPercent
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
                                       "default_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValue") y x)
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
                                       "runtime_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runtimeKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RuntimeFractionalPercent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'defaultValue") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"runtimeKey") _x
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
instance Control.DeepSeq.NFData RuntimeFractionalPercent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RuntimeFractionalPercent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RuntimeFractionalPercent'defaultValue x__)
                (Control.DeepSeq.deepseq
                   (_RuntimeFractionalPercent'runtimeKey x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.defaultValue' @:: Lens' RuntimePercent Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'defaultValue' @:: Lens' RuntimePercent (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.runtimeKey' @:: Lens' RuntimePercent Data.Text.Text@ -}
data RuntimePercent
  = RuntimePercent'_constructor {_RuntimePercent'defaultValue :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                 _RuntimePercent'runtimeKey :: !Data.Text.Text,
                                 _RuntimePercent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RuntimePercent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RuntimePercent "defaultValue" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimePercent'defaultValue
           (\ x__ y__ -> x__ {_RuntimePercent'defaultValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RuntimePercent "maybe'defaultValue" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimePercent'defaultValue
           (\ x__ y__ -> x__ {_RuntimePercent'defaultValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimePercent "runtimeKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimePercent'runtimeKey
           (\ x__ y__ -> x__ {_RuntimePercent'runtimeKey = y__}))
        Prelude.id
instance Data.ProtoLens.Message RuntimePercent where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.RuntimePercent"
  packedMessageDescriptor _
    = "\n\
      \\SORuntimePercent\DC2;\n\
      \\rdefault_value\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\fdefaultValue\DC2(\n\
      \\vruntime_key\CAN\STX \SOH(\tR\n\
      \runtimeKeyB\a\250B\EOTr\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        defaultValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'defaultValue")) ::
              Data.ProtoLens.FieldDescriptor RuntimePercent
        runtimeKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"runtimeKey")) ::
              Data.ProtoLens.FieldDescriptor RuntimePercent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, defaultValue__field_descriptor),
           (Data.ProtoLens.Tag 2, runtimeKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RuntimePercent'_unknownFields
        (\ x__ y__ -> x__ {_RuntimePercent'_unknownFields = y__})
  defMessage
    = RuntimePercent'_constructor
        {_RuntimePercent'defaultValue = Prelude.Nothing,
         _RuntimePercent'runtimeKey = Data.ProtoLens.fieldDefault,
         _RuntimePercent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RuntimePercent
          -> Data.ProtoLens.Encoding.Bytes.Parser RuntimePercent
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
                                       "default_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValue") y x)
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
                                       "runtime_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runtimeKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RuntimePercent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'defaultValue") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"runtimeKey") _x
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
instance Control.DeepSeq.NFData RuntimePercent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RuntimePercent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RuntimePercent'defaultValue x__)
                (Control.DeepSeq.deepseq (_RuntimePercent'runtimeKey x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.defaultValue' @:: Lens' RuntimeUInt32 Data.Word.Word32@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.runtimeKey' @:: Lens' RuntimeUInt32 Data.Text.Text@ -}
data RuntimeUInt32
  = RuntimeUInt32'_constructor {_RuntimeUInt32'defaultValue :: !Data.Word.Word32,
                                _RuntimeUInt32'runtimeKey :: !Data.Text.Text,
                                _RuntimeUInt32'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RuntimeUInt32 where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RuntimeUInt32 "defaultValue" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeUInt32'defaultValue
           (\ x__ y__ -> x__ {_RuntimeUInt32'defaultValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeUInt32 "runtimeKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeUInt32'runtimeKey
           (\ x__ y__ -> x__ {_RuntimeUInt32'runtimeKey = y__}))
        Prelude.id
instance Data.ProtoLens.Message RuntimeUInt32 where
  messageName _ = Data.Text.pack "envoy.config.core.v3.RuntimeUInt32"
  packedMessageDescriptor _
    = "\n\
      \\rRuntimeUInt32\DC2#\n\
      \\rdefault_value\CAN\STX \SOH(\rR\fdefaultValue\DC2(\n\
      \\vruntime_key\CAN\ETX \SOH(\tR\n\
      \runtimeKeyB\a\250B\EOTr\STX\DLE\SOH:&\154\197\136\RS!\n\
      \\USenvoy.api.v2.core.RuntimeUInt32"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        defaultValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"defaultValue")) ::
              Data.ProtoLens.FieldDescriptor RuntimeUInt32
        runtimeKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"runtimeKey")) ::
              Data.ProtoLens.FieldDescriptor RuntimeUInt32
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, defaultValue__field_descriptor),
           (Data.ProtoLens.Tag 3, runtimeKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RuntimeUInt32'_unknownFields
        (\ x__ y__ -> x__ {_RuntimeUInt32'_unknownFields = y__})
  defMessage
    = RuntimeUInt32'_constructor
        {_RuntimeUInt32'defaultValue = Data.ProtoLens.fieldDefault,
         _RuntimeUInt32'runtimeKey = Data.ProtoLens.fieldDefault,
         _RuntimeUInt32'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RuntimeUInt32 -> Data.ProtoLens.Encoding.Bytes.Parser RuntimeUInt32
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "default_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValue") y x)
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
                                       "runtime_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runtimeKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RuntimeUInt32"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"defaultValue") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"runtimeKey") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RuntimeUInt32 where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RuntimeUInt32'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RuntimeUInt32'defaultValue x__)
                (Control.DeepSeq.deepseq (_RuntimeUInt32'runtimeKey x__) ()))
newtype TrafficDirection'UnrecognizedValue
  = TrafficDirection'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data TrafficDirection
  = UNSPECIFIED |
    INBOUND |
    OUTBOUND |
    TrafficDirection'Unrecognized !TrafficDirection'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TrafficDirection where
  maybeToEnum 0 = Prelude.Just UNSPECIFIED
  maybeToEnum 1 = Prelude.Just INBOUND
  maybeToEnum 2 = Prelude.Just OUTBOUND
  maybeToEnum k
    = Prelude.Just
        (TrafficDirection'Unrecognized
           (TrafficDirection'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum UNSPECIFIED = "UNSPECIFIED"
  showEnum INBOUND = "INBOUND"
  showEnum OUTBOUND = "OUTBOUND"
  showEnum
    (TrafficDirection'Unrecognized (TrafficDirection'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNSPECIFIED" = Prelude.Just UNSPECIFIED
    | (Prelude.==) k "INBOUND" = Prelude.Just INBOUND
    | (Prelude.==) k "OUTBOUND" = Prelude.Just OUTBOUND
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TrafficDirection where
  minBound = UNSPECIFIED
  maxBound = OUTBOUND
instance Prelude.Enum TrafficDirection where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TrafficDirection: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum UNSPECIFIED = 0
  fromEnum INBOUND = 1
  fromEnum OUTBOUND = 2
  fromEnum
    (TrafficDirection'Unrecognized (TrafficDirection'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ OUTBOUND
    = Prelude.error
        "TrafficDirection.succ: bad argument OUTBOUND. This value would be out of bounds."
  succ UNSPECIFIED = INBOUND
  succ INBOUND = OUTBOUND
  succ (TrafficDirection'Unrecognized _)
    = Prelude.error
        "TrafficDirection.succ: bad argument: unrecognized value"
  pred UNSPECIFIED
    = Prelude.error
        "TrafficDirection.pred: bad argument UNSPECIFIED. This value would be out of bounds."
  pred INBOUND = UNSPECIFIED
  pred OUTBOUND = INBOUND
  pred (TrafficDirection'Unrecognized _)
    = Prelude.error
        "TrafficDirection.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TrafficDirection where
  fieldDefault = UNSPECIFIED
instance Control.DeepSeq.NFData TrafficDirection where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.name' @:: Lens' TransportSocket Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'configType' @:: Lens' TransportSocket (Prelude.Maybe TransportSocket'ConfigType)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.maybe'typedConfig' @:: Lens' TransportSocket (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.typedConfig' @:: Lens' TransportSocket Proto.Google.Protobuf.Any.Any@ -}
data TransportSocket
  = TransportSocket'_constructor {_TransportSocket'name :: !Data.Text.Text,
                                  _TransportSocket'configType :: !(Prelude.Maybe TransportSocket'ConfigType),
                                  _TransportSocket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TransportSocket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data TransportSocket'ConfigType
  = TransportSocket'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField TransportSocket "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TransportSocket'name
           (\ x__ y__ -> x__ {_TransportSocket'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TransportSocket "maybe'configType" (Prelude.Maybe TransportSocket'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TransportSocket'configType
           (\ x__ y__ -> x__ {_TransportSocket'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TransportSocket "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TransportSocket'configType
           (\ x__ y__ -> x__ {_TransportSocket'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TransportSocket'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TransportSocket'TypedConfig y__))
instance Data.ProtoLens.Field.HasField TransportSocket "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TransportSocket'configType
           (\ x__ y__ -> x__ {_TransportSocket'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TransportSocket'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TransportSocket'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message TransportSocket where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.TransportSocket"
  packedMessageDescriptor _
    = "\n\
      \\SITransportSocket\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:(\154\197\136\RS#\n\
      \!envoy.api.v2.core.TransportSocketJ\EOT\b\STX\DLE\ETXR\ACKconfig"
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
              Data.ProtoLens.FieldDescriptor TransportSocket
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor TransportSocket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TransportSocket'_unknownFields
        (\ x__ y__ -> x__ {_TransportSocket'_unknownFields = y__})
  defMessage
    = TransportSocket'_constructor
        {_TransportSocket'name = Data.ProtoLens.fieldDefault,
         _TransportSocket'configType = Prelude.Nothing,
         _TransportSocket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TransportSocket
          -> Data.ProtoLens.Encoding.Bytes.Parser TransportSocket
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
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TransportSocket"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'configType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (TransportSocket'TypedConfig v))
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TransportSocket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TransportSocket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TransportSocket'name x__)
                (Control.DeepSeq.deepseq (_TransportSocket'configType x__) ()))
instance Control.DeepSeq.NFData TransportSocket'ConfigType where
  rnf (TransportSocket'TypedConfig x__) = Control.DeepSeq.rnf x__
_TransportSocket'TypedConfig ::
  Data.ProtoLens.Prism.Prism' TransportSocket'ConfigType Proto.Google.Protobuf.Any.Any
_TransportSocket'TypedConfig
  = Data.ProtoLens.Prism.prism'
      TransportSocket'TypedConfig
      (\ p__
         -> case p__ of {
              (TransportSocket'TypedConfig p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Base_Fields.path' @:: Lens' WatchedDirectory Data.Text.Text@ -}
data WatchedDirectory
  = WatchedDirectory'_constructor {_WatchedDirectory'path :: !Data.Text.Text,
                                   _WatchedDirectory'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchedDirectory where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WatchedDirectory "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchedDirectory'path
           (\ x__ y__ -> x__ {_WatchedDirectory'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message WatchedDirectory where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.WatchedDirectory"
  packedMessageDescriptor _
    = "\n\
      \\DLEWatchedDirectory\DC2\ESC\n\
      \\EOTpath\CAN\SOH \SOH(\tR\EOTpathB\a\250B\EOTr\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor WatchedDirectory
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WatchedDirectory'_unknownFields
        (\ x__ y__ -> x__ {_WatchedDirectory'_unknownFields = y__})
  defMessage
    = WatchedDirectory'_constructor
        {_WatchedDirectory'path = Data.ProtoLens.fieldDefault,
         _WatchedDirectory'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WatchedDirectory
          -> Data.ProtoLens.Encoding.Bytes.Parser WatchedDirectory
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WatchedDirectory"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WatchedDirectory where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WatchedDirectory'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WatchedDirectory'path x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USenvoy/config/core/v3/base.proto\DC2\DC4envoy.config.core.v3\SUB\"envoy/config/core/v3/address.proto\SUB\"envoy/config/core/v3/backoff.proto\SUB#envoy/config/core/v3/http_uri.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB$envoy/type/v3/semantic_version.proto\SUB\EMgoogle/protobuf/any.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB xds/core/v3/context_params.proto\SUB#envoy/annotations/deprecation.proto\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"t\n\
    \\bLocality\DC2\SYN\n\
    \\ACKregion\CAN\SOH \SOH(\tR\ACKregion\DC2\DC2\n\
    \\EOTzone\CAN\STX \SOH(\tR\EOTzone\DC2\EM\n\
    \\bsub_zone\CAN\ETX \SOH(\tR\asubZone:!\154\197\136\RS\FS\n\
    \\SUBenvoy.api.v2.core.Locality\"\164\SOH\n\
    \\fBuildVersion\DC28\n\
    \\aversion\CAN\SOH \SOH(\v2\RS.envoy.type.v3.SemanticVersionR\aversion\DC23\n\
    \\bmetadata\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\bmetadata:%\154\197\136\RS \n\
    \\RSenvoy.api.v2.core.BuildVersion\"\226\SOH\n\
    \\tExtension\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SUB\n\
    \\bcategory\CAN\STX \SOH(\tR\bcategory\DC2'\n\
    \\SItype_descriptor\CAN\ETX \SOH(\tR\SOtypeDescriptor\DC2<\n\
    \\aversion\CAN\EOT \SOH(\v2\".envoy.config.core.v3.BuildVersionR\aversion\DC2\SUB\n\
    \\bdisabled\CAN\ENQ \SOH(\bR\bdisabled:\"\154\197\136\RS\GS\n\
    \\ESCenvoy.api.v2.core.Extension\"\178\ACK\n\
    \\EOTNode\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\CAN\n\
    \\acluster\CAN\STX \SOH(\tR\acluster\DC23\n\
    \\bmetadata\CAN\ETX \SOH(\v2\ETB.google.protobuf.StructR\bmetadata\DC2`\n\
    \\DC2dynamic_parameters\CAN\f \ETX(\v21.envoy.config.core.v3.Node.DynamicParametersEntryR\DC1dynamicParameters\DC2:\n\
    \\blocality\CAN\EOT \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality\DC2&\n\
    \\SIuser_agent_name\CAN\ACK \SOH(\tR\ruserAgentName\DC2.\n\
    \\DC2user_agent_version\CAN\a \SOH(\tH\NULR\DLEuserAgentVersion\DC2]\n\
    \\CANuser_agent_build_version\CAN\b \SOH(\v2\".envoy.config.core.v3.BuildVersionH\NULR\NAKuserAgentBuildVersion\DC2?\n\
    \\n\
    \extensions\CAN\t \ETX(\v2\US.envoy.config.core.v3.ExtensionR\n\
    \extensions\DC2'\n\
    \\SIclient_features\CAN\n\
    \ \ETX(\tR\SOclientFeatures\DC2[\n\
    \\DC3listening_addresses\CAN\v \ETX(\v2\GS.envoy.config.core.v3.AddressR\DC2listeningAddressesB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\SUB`\n\
    \\SYNDynamicParametersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC20\n\
    \\ENQvalue\CAN\STX \SOH(\v2\SUB.xds.core.v3.ContextParamsR\ENQvalue:\STX8\SOHB\EM\n\
    \\ETBuser_agent_version_type:\GS\154\197\136\RS\CAN\n\
    \\SYNenvoy.api.v2.core.NodeJ\EOT\b\ENQ\DLE\ACKR\rbuild_version\"\177\ETX\n\
    \\bMetadata\DC2[\n\
    \\SIfilter_metadata\CAN\SOH \ETX(\v22.envoy.config.core.v3.Metadata.FilterMetadataEntryR\SOfilterMetadata\DC2k\n\
    \\NAKtyped_filter_metadata\CAN\STX \ETX(\v27.envoy.config.core.v3.Metadata.TypedFilterMetadataEntryR\DC3typedFilterMetadata\SUBZ\n\
    \\DC3FilterMetadataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2-\n\
    \\ENQvalue\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQvalue:\STX8\SOH\SUB\\\n\
    \\CANTypedFilterMetadataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2*\n\
    \\ENQvalue\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ENQvalue:\STX8\SOH:!\154\197\136\RS\FS\n\
    \\SUBenvoy.api.v2.core.Metadata\"\134\SOH\n\
    \\rRuntimeUInt32\DC2#\n\
    \\rdefault_value\CAN\STX \SOH(\rR\fdefaultValue\DC2(\n\
    \\vruntime_key\CAN\ETX \SOH(\tR\n\
    \runtimeKeyB\a\250B\EOTr\STX\DLE\SOH:&\154\197\136\RS!\n\
    \\USenvoy.api.v2.core.RuntimeUInt32\"w\n\
    \\SORuntimePercent\DC2;\n\
    \\rdefault_value\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\fdefaultValue\DC2(\n\
    \\vruntime_key\CAN\STX \SOH(\tR\n\
    \runtimeKeyB\a\250B\EOTr\STX\DLE\SOH\"\134\SOH\n\
    \\rRuntimeDouble\DC2#\n\
    \\rdefault_value\CAN\SOH \SOH(\SOHR\fdefaultValue\DC2(\n\
    \\vruntime_key\CAN\STX \SOH(\tR\n\
    \runtimeKeyB\a\250B\EOTr\STX\DLE\SOH:&\154\197\136\RS!\n\
    \\USenvoy.api.v2.core.RuntimeDouble\"\182\SOH\n\
    \\DC2RuntimeFeatureFlag\DC2I\n\
    \\rdefault_value\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\fdefaultValueB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2(\n\
    \\vruntime_key\CAN\STX \SOH(\tR\n\
    \runtimeKeyB\a\250B\EOTr\STX\DLE\SOH:+\154\197\136\RS&\n\
    \$envoy.api.v2.core.RuntimeFeatureFlag\"\DEL\n\
    \\vHeaderValue\DC2#\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkeyB\DC1\250B\SOr\f\DLE\SOH(\128\128\SOH\192\SOH\SOH\200\SOH\NUL\DC2%\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalueB\SI\250B\fr\n\
    \(\128\128\SOH\192\SOH\STX\200\SOH\NUL:$\154\197\136\RS\US\n\
    \\GSenvoy.api.v2.core.HeaderValue\"\184\SOH\n\
    \\DC1HeaderValueOption\DC2C\n\
    \\ACKheader\CAN\SOH \SOH(\v2!.envoy.config.core.v3.HeaderValueR\ACKheaderB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC22\n\
    \\ACKappend\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\ACKappend:*\154\197\136\RS%\n\
    \#envoy.api.v2.core.HeaderValueOption\"l\n\
    \\tHeaderMap\DC2;\n\
    \\aheaders\CAN\SOH \ETX(\v2!.envoy.config.core.v3.HeaderValueR\aheaders:\"\154\197\136\RS\GS\n\
    \\ESCenvoy.api.v2.core.HeaderMap\"/\n\
    \\DLEWatchedDirectory\DC2\ESC\n\
    \\EOTpath\CAN\SOH \SOH(\tR\EOTpathB\a\250B\EOTr\STX\DLE\SOH\"\182\SOH\n\
    \\n\
    \DataSource\DC2%\n\
    \\bfilename\CAN\SOH \SOH(\tH\NULR\bfilenameB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
    \\finline_bytes\CAN\STX \SOH(\fH\NULR\vinlineBytes\DC2%\n\
    \\rinline_string\CAN\ETX \SOH(\tH\NULR\finlineStringB\DLE\n\
    \\tspecifier\DC2\ETX\248B\SOH:#\154\197\136\RS\RS\n\
    \\FSenvoy.api.v2.core.DataSource\"\212\SOH\n\
    \\vRetryPolicy\DC2K\n\
    \\SOretry_back_off\CAN\SOH \SOH(\v2%.envoy.config.core.v3.BackoffStrategyR\fretryBackOff\DC2R\n\
    \\vnum_retries\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
    \numRetriesB\DC3\242\152\254\143\ENQ\r\n\
    \\vmax_retries:$\154\197\136\RS\US\n\
    \\GSenvoy.api.v2.core.RetryPolicy\"\232\SOH\n\
    \\DLERemoteDataSource\DC2B\n\
    \\bhttp_uri\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.HttpUriR\ahttpUriB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\US\n\
    \\ACKsha256\CAN\STX \SOH(\tR\ACKsha256B\a\250B\EOTr\STX\DLE\SOH\DC2D\n\
    \\fretry_policy\CAN\ETX \SOH(\v2!.envoy.config.core.v3.RetryPolicyR\vretryPolicy:)\154\197\136\RS$\n\
    \\"envoy.api.v2.core.RemoteDataSource\"\201\SOH\n\
    \\SIAsyncDataSource\DC28\n\
    \\ENQlocal\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\ENQlocal\DC2@\n\
    \\ACKremote\CAN\STX \SOH(\v2&.envoy.config.core.v3.RemoteDataSourceH\NULR\ACKremoteB\DLE\n\
    \\tspecifier\DC2\ETX\248B\SOH:(\154\197\136\RS#\n\
    \!envoy.api.v2.core.AsyncDataSource\"\176\SOH\n\
    \\SITransportSocket\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
    \\vconfig_type:(\154\197\136\RS#\n\
    \!envoy.api.v2.core.TransportSocketJ\EOT\b\STX\DLE\ETXR\ACKconfig\"\191\SOH\n\
    \\CANRuntimeFractionalPercent\DC2O\n\
    \\rdefault_value\CAN\SOH \SOH(\v2 .envoy.type.v3.FractionalPercentR\fdefaultValueB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\US\n\
    \\vruntime_key\CAN\STX \SOH(\tR\n\
    \runtimeKey:1\154\197\136\RS,\n\
    \*envoy.api.v2.core.RuntimeFractionalPercent\"U\n\
    \\fControlPlane\DC2\RS\n\
    \\n\
    \identifier\CAN\SOH \SOH(\tR\n\
    \identifier:%\154\197\136\RS \n\
    \\RSenvoy.api.v2.core.ControlPlane*(\n\
    \\SIRoutingPriority\DC2\v\n\
    \\aDEFAULT\DLE\NUL\DC2\b\n\
    \\EOTHIGH\DLE\SOH*\137\SOH\n\
    \\rRequestMethod\DC2\SYN\n\
    \\DC2METHOD_UNSPECIFIED\DLE\NUL\DC2\a\n\
    \\ETXGET\DLE\SOH\DC2\b\n\
    \\EOTHEAD\DLE\STX\DC2\b\n\
    \\EOTPOST\DLE\ETX\DC2\a\n\
    \\ETXPUT\DLE\EOT\DC2\n\
    \\n\
    \\ACKDELETE\DLE\ENQ\DC2\v\n\
    \\aCONNECT\DLE\ACK\DC2\v\n\
    \\aOPTIONS\DLE\a\DC2\t\n\
    \\ENQTRACE\DLE\b\DC2\t\n\
    \\ENQPATCH\DLE\t*>\n\
    \\DLETrafficDirection\DC2\SI\n\
    \\vUNSPECIFIED\DLE\NUL\DC2\v\n\
    \\aINBOUND\DLE\SOH\DC2\f\n\
    \\bOUTBOUND\DLE\STXB9\n\
    \\"io.envoyproxy.envoy.config.core.v3B\tBaseProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\188\140\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\201\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL,\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL-\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL%\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL.\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL#\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\v\NUL&\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\f\NUL(\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL*\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\DLE\NUL-\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\DC1\NUL(\n\
    \\t\n\
    \\STX\ETX\v\DC2\ETX\DC2\NUL'\n\
    \\t\n\
    \\STX\ETX\f\DC2\ETX\DC3\NUL+\n\
    \\t\n\
    \\STX\ETX\r\DC2\ETX\DC4\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SYN\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SYN\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETB\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\ETB\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\CAN\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\CAN\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EM\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\EM\NULF\n\
    \\253\ETX\n\
    \\STX\ENQ\NUL\DC2\EOT$\NUL'\SOH\SUB\205\ETX Envoy supports :ref:`upstream priority routing\n\
    \ <arch_overview_http_routing_priority>` both at the route and the virtual\n\
    \ cluster level. The current priority implementation uses different connection\n\
    \ pool and circuit breaking settings for each priority level. This means that\n\
    \ even for HTTP/2 requests, two physical connections will be used to an\n\
    \ upstream host. In the future Envoy will likely support true HTTP/2 priority\n\
    \ over a single upstream connection.\n\
    \2! [#protodoc-title: Common types]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX$\ENQ\DC4\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX%\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX%\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX%\f\r\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX&\STX\v\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX&\STX\ACK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX&\t\n\
    \\n\
    \\"\n\
    \\STX\ENQ\SOH\DC2\EOT*\NUL5\SOH\SUB\SYN HTTP request method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETX*\ENQ\DC2\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETX+\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETX+\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETX+\ETB\CAN\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETX,\STX\ENQ\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETX,\b\t\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\ETX-\STX\v\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\ETX-\STX\ACK\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\ETX-\t\n\
    \\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\ETX\DC2\ETX.\STX\v\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\SOH\DC2\ETX.\STX\ACK\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\STX\DC2\ETX.\t\n\
    \\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\EOT\SOH\DC2\ETX/\STX\ENQ\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\EOT\STX\DC2\ETX/\b\t\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\ENQ\DC2\ETX0\STX\r\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ENQ\SOH\DC2\ETX0\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ENQ\STX\DC2\ETX0\v\f\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\ACK\DC2\ETX1\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ACK\SOH\DC2\ETX1\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ACK\STX\DC2\ETX1\f\r\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\a\DC2\ETX2\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\a\SOH\DC2\ETX2\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\a\STX\DC2\ETX2\f\r\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\b\DC2\ETX3\STX\f\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\b\SOH\DC2\ETX3\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\b\STX\DC2\ETX3\n\
    \\v\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\t\DC2\ETX4\STX\f\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\t\SOH\DC2\ETX4\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\t\STX\DC2\ETX4\n\
    \\v\n\
    \R\n\
    \\STX\ENQ\STX\DC2\EOT8\NULA\SOH\SUBF Identifies the direction of the traffic relative to the local Envoy.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\STX\SOH\DC2\ETX8\ENQ\NAK\n\
    \-\n\
    \\EOT\ENQ\STX\STX\NUL\DC2\ETX:\STX\DC2\SUB  Default option is unspecified.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\NUL\SOH\DC2\ETX:\STX\r\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\NUL\STX\DC2\ETX:\DLE\DC1\n\
    \:\n\
    \\EOT\ENQ\STX\STX\SOH\DC2\ETX=\STX\SO\SUB- The transport is used for incoming traffic.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\SOH\SOH\DC2\ETX=\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\SOH\STX\DC2\ETX=\f\r\n\
    \:\n\
    \\EOT\ENQ\STX\STX\STX\DC2\ETX@\STX\SI\SUB- The transport is used for outgoing traffic.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\STX\SOH\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\STX\STX\DC2\ETX@\r\SO\n\
    \Y\n\
    \\STX\EOT\NUL\DC2\EOTD\NULX\SOH\SUBM Identifies location of where either Envoy runs or where upstream hosts run.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXD\b\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETXE\STX\\\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETXE\STX\\\n\
    \d\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXH\STX\DC4\SUBW Region this :ref:`zone <envoy_v3_api_field_config.core.v3.Locality.zone>` belongs to.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXH\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXH\DC2\DC3\n\
    \\190\EOT\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXR\STX\DC2\SUB\176\EOT Defines the local service zone where Envoy is running. Though optional, it\n\
    \ should be set if discovery service routing is used and the discovery\n\
    \ service exposes :ref:`zone data <envoy_v3_api_field_config.endpoint.v3.LocalityLbEndpoints.locality>`,\n\
    \ either in this message or via :option:`--service-zone`. The meaning of zone\n\
    \ is context dependent, e.g. `Availability Zone (AZ)\n\
    \ <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html>`_\n\
    \ on AWS, `Zone <https://cloud.google.com/compute/docs/regions-zones/>`_ on\n\
    \ GCP, etc.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETXR\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXR\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXR\DLE\DC1\n\
    \\167\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXW\STX\SYN\SUB\153\SOH When used for locality of upstream hosts, this field further splits zone\n\
    \ into smaller chunks of sub-zones so they can be load balanced\n\
    \ independently.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXW\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXW\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXW\DC4\NAK\n\
    \\151\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\\\NULe\SOH\SUB\138\SOH BuildVersion combines SemVer version of extension with free-form build information\n\
    \ (i.e. 'alpha', 'private-build') as a set of strings.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\\\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX]\STX`\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX]\STX`\n\
    \+\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX`\STX&\SUB\RS SemVer version of extension.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX`\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX`\SUB!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX`$%\n\
    \~\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXd\STX&\SUBq Free-form build information.\n\
    \ Envoy defines several well known keys in the source/common/version/version.h file\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXd\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXd\EM!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXd$%\n\
    \X\n\
    \\STX\EOT\STX\DC2\ENQi\NUL\131\SOH\SOH\SUBK Version and identification for an Envoy extension.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXi\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXj\STX]\n\
    \\SI\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\ETXj\STX]\n\
    \\143\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXn\STX\DC2\SUB\129\SOH This is the name of the Envoy filter as specified in the Envoy\n\
    \ configuration, e.g. envoy.filters.http.router, com.acme.widget.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXn\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXn\t\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXn\DLE\DC1\n\
    \\192\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXu\STX\SYN\SUB\178\STX Category of the extension.\n\
    \ Extension category names use reverse DNS notation. For instance \"envoy.filters.listener\"\n\
    \ for Envoy's built-in listener filters or \"com.acme.filters.http\" for HTTP filters from\n\
    \ acme.com vendor.\n\
    \ [#comment:TODO(yanavlasov): Link to the doc with existing envoy category names.]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXu\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXu\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXu\DC4\NAK\n\
    \\233\SOH\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXz\STX\GS\SUB\219\SOH [#not-implemented-hide:] Type descriptor of extension configuration proto.\n\
    \ [#comment:TODO(yanavlasov): Link to the doc with existing configuration protos.]\n\
    \ [#comment:TODO(yanavlasov): Add tests when PR #9391 lands.]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETXz\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXz\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXz\ESC\FS\n\
    \\202\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\DEL\STX\ESC\SUB\188\SOH The version is a property of the extension and maintained independently\n\
    \ of other extensions and the Envoy API.\n\
    \ This field is not set when extension did not provide version information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX\DEL\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\DEL\SI\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\DEL\EM\SUB\n\
    \c\n\
    \\EOT\EOT\STX\STX\EOT\DC2\EOT\130\SOH\STX\DC4\SUBU Indicates that the extension is present but was disabled via dynamic configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\EOT\130\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\EOT\130\SOH\a\SI\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\EOT\130\SOH\DC2\DC3\n\
    \\221\SOH\n\
    \\STX\EOT\ETX\DC2\ACK\137\SOH\NUL\209\SOH\SOH\SUB\206\SOH Identifies a specific Envoy instance. The node identifier is presented to the\n\
    \ management server, which may use this identifier to distinguish per Envoy\n\
    \ configuration for serving.\n\
    \ [#next-free-field: 13]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\137\SOH\b\f\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOT\138\SOH\STXX\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOT\138\SOH\STXX\n\
    \\v\n\
    \\ETX\EOT\ETX\t\DC2\EOT\140\SOH\STX\r\n\
    \\f\n\
    \\EOT\EOT\ETX\t\NUL\DC2\EOT\140\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\t\NUL\SOH\DC2\EOT\140\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\t\NUL\STX\DC2\EOT\140\SOH\v\f\n\
    \\v\n\
    \\ETX\EOT\ETX\n\
    \\DC2\EOT\142\SOH\STX\ESC\n\
    \\f\n\
    \\EOT\EOT\ETX\n\
    \\NUL\DC2\EOT\142\SOH\v\SUB\n\
    \\235\STX\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\150\SOH\STX\DLE\SUB\220\STX An opaque node identifier for the Envoy node. This also provides the local\n\
    \ service node name. It should be set if any of the following features are\n\
    \ used: :ref:`statsd <arch_overview_statistics>`, :ref:`CDS\n\
    \ <config_cluster_manager_cds>`, and :ref:`HTTP tracing\n\
    \ <arch_overview_tracing>`, either in this message or via\n\
    \ :option:`--service-node`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\150\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\150\SOH\t\v\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\150\SOH\SO\SI\n\
    \\134\ACK\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\164\SOH\STX\NAK\SUB\247\ENQ Defines the local service cluster name where Envoy is running. Though\n\
    \ optional, it should be set if any of the following features are used:\n\
    \ :ref:`statsd <arch_overview_statistics>`, :ref:`health check cluster\n\
    \ verification\n\
    \ <envoy_v3_api_field_config.core.v3.HealthCheck.HttpHealthCheck.service_name_matcher>`,\n\
    \ :ref:`runtime override directory <envoy_v3_api_msg_config.bootstrap.v3.Runtime>`,\n\
    \ :ref:`user agent addition\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.add_user_agent>`,\n\
    \ :ref:`HTTP global rate limiting <config_http_filters_rate_limit>`,\n\
    \ :ref:`CDS <config_cluster_manager_cds>`, and :ref:`HTTP tracing\n\
    \ <arch_overview_tracing>`, either in this message or via\n\
    \ :option:`--service-cluster`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\164\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\164\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\164\SOH\DC3\DC4\n\
    \w\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\168\SOH\STX&\SUBi Opaque metadata extending the node identifier. Envoy will pass this\n\
    \ directly to the management server.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\EOT\168\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\168\SOH\EM!\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\168\SOH$%\n\
    \\210\ETX\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\175\SOH\STXA\SUB\195\ETX Map from xDS resource type URL to dynamic context parameters. These may vary at runtime (unlike\n\
    \ other fields in this message). For example, the xDS client may have a shard identifier that\n\
    \ changes during the lifetime of the xDS client. In Envoy, this would be achieved by updating the\n\
    \ dynamic context on the Server::Instance's LocalInfo context provider. The shard ID dynamic\n\
    \ parameter then appears in this field during future discovery requests.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\EOT\175\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\175\SOH);\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\175\SOH>@\n\
    \H\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOT\178\SOH\STX\CAN\SUB: Locality specifying where the Envoy instance is running.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\EOT\178\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\EOT\178\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\EOT\178\SOH\SYN\ETB\n\
    \f\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\EOT\182\SOH\STX\GS\SUBX Free-form string that identifies the entity requesting config.\n\
    \ E.g. \"envoy\" or \"grpc\"\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\EOT\182\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\EOT\182\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\EOT\182\SOH\ESC\FS\n\
    \\SO\n\
    \\EOT\EOT\ETX\b\NUL\DC2\ACK\184\SOH\STX\191\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\EOT\184\SOH\b\US\n\
    \\147\SOH\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\EOT\187\SOH\EOT\"\SUB\132\SOH Free-form string that identifies the version of the entity requesting config.\n\
    \ E.g. \"1.12.2\" or \"abcd1234\", or \"SpecialEnvoyBuild\"\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\EOT\187\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\EOT\187\SOH\v\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\EOT\187\SOH !\n\
    \C\n\
    \\EOT\EOT\ETX\STX\a\DC2\EOT\190\SOH\EOT.\SUB5 Structured version of the entity requesting config.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ACK\DC2\EOT\190\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\EOT\190\SOH\DC1)\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\EOT\190\SOH,-\n\
    \L\n\
    \\EOT\EOT\ETX\STX\b\DC2\EOT\194\SOH\STX$\SUB> List of extensions and their versions supported by the node.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\EOT\DC2\EOT\194\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\ACK\DC2\EOT\194\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\EOT\194\SOH\NAK\US\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\EOT\194\SOH\"#\n\
    \\184\STX\n\
    \\EOT\EOT\ETX\STX\t\DC2\EOT\201\SOH\STX'\SUB\169\STX Client feature support list. These are well known features described\n\
    \ in the Envoy API repository for a given major version of an API. Client features\n\
    \ use reverse DNS naming scheme, for example `com.acme.feature`.\n\
    \ See :ref:`the list of features <client_features>` that xDS client may\n\
    \ support.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\EOT\DC2\EOT\201\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\ENQ\DC2\EOT\201\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\EOT\201\SOH\DC2!\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\EOT\201\SOH$&\n\
    \\195\STX\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\ACK\207\SOH\STX\208\SOHS\SUB\178\STX Known listening ports on the node as a generic hint to the management server\n\
    \ for filtering :ref:`listeners <config_listeners>` to be returned. For example,\n\
    \ if there is a listener bound to port 80, the list can optionally contain the\n\
    \ SocketAddress `(0.0.0.0,80)`. The field is optional and just a hint.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\EOT\DC2\EOT\207\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ACK\DC2\EOT\207\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\EOT\207\SOH\DC3&\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\EOT\207\SOH)+\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\b\DC2\EOT\208\SOH\ACKR\n\
    \\SO\n\
    \\ACK\EOT\ETX\STX\n\
    \\b\ETX\DC2\EOT\208\SOH\a\CAN\n\
    \\DC1\n\
    \\t\EOT\ETX\STX\n\
    \\b\242\232\128K\DC2\EOT\208\SOH\SUBQ\n\
    \\129\t\n\
    \\STX\EOT\EOT\DC2\ACK\233\SOH\NUL\251\SOH\SOH\SUB\242\b Metadata provides additional inputs to filters based on matched listeners,\n\
    \ filter chains, routes and endpoints. It is structured as a map, usually from\n\
    \ filter name (in reverse DNS format) to metadata specific to the filter. Metadata\n\
    \ key-values for a filter are merged as connection and request handling occurs,\n\
    \ with later values for the same key overriding earlier values.\n\
    \\n\
    \ An example use of metadata is providing additional values to\n\
    \ http_connection_manager in the envoy.http_connection_manager.access_log\n\
    \ namespace.\n\
    \\n\
    \ Another example use of metadata is to per service config info in cluster metadata, which may get\n\
    \ consumed by multiple filters.\n\
    \\n\
    \ For load balancing, Metadata provides a means to subset cluster endpoints.\n\
    \ Endpoints have a Metadata object associated and routes contain a Metadata\n\
    \ object to match against. There are some well defined metadata used today for\n\
    \ this purpose:\n\
    \\n\
    \ * ``{\"envoy.lb\": {\"canary\": <bool> }}`` This indicates the canary status of an\n\
    \   endpoint and is also used during header processing\n\
    \   (x-envoy-upstream-canary) and for stats purposes.\n\
    \ [#next-major-version: move to type/metadata/v2]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\233\SOH\b\DLE\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOT\234\SOH\STX\\\n\
    \\DLE\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\EOT\234\SOH\STX\\\n\
    \\243\STX\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\242\SOH\STX:\SUB\228\STX Key is the reverse DNS filter name, e.g. com.acme.widget. The envoy.*\n\
    \ namespace is reserved for Envoy's built-in filters.\n\
    \ If both *filter_metadata* and\n\
    \ :ref:`typed_filter_metadata <envoy_v3_api_field_config.core.v3.Metadata.typed_filter_metadata>`\n\
    \ fields are present in the metadata with same keys,\n\
    \ only *typed_filter_metadata* field will be parsed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\242\SOH\STX%\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\242\SOH&5\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\242\SOH89\n\
    \\154\ETX\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\250\SOH\STX=\SUB\139\ETX Key is the reverse DNS filter name, e.g. com.acme.widget. The envoy.*\n\
    \ namespace is reserved for Envoy's built-in filters.\n\
    \ The value is encoded as google.protobuf.Any.\n\
    \ If both :ref:`filter_metadata <envoy_v3_api_field_config.core.v3.Metadata.filter_metadata>`\n\
    \ and *typed_filter_metadata* fields are present in the metadata with same keys,\n\
    \ only *typed_filter_metadata* field will be parsed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\250\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\250\SOH#8\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\250\SOH;<\n\
    \I\n\
    \\STX\EOT\ENQ\DC2\ACK\254\SOH\NUL\134\STX\SOH\SUB; Runtime derived uint32 with a default when not specified.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\254\SOH\b\NAK\n\
    \\v\n\
    \\ETX\EOT\ENQ\a\DC2\EOT\255\SOH\STXa\n\
    \\DLE\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\EOT\255\SOH\STXa\n\
    \@\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\130\STX\STX\ESC\SUB2 Default value if runtime value is not available.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\130\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\130\STX\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\130\STX\EM\SUB\n\
    \W\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\133\STX\STXB\SUBI Runtime key to get value for comparison. This value is used if defined.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\133\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\133\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\133\STX\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\b\DC2\EOT\133\STX\EMA\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\SOH\b\175\b\SO\DC2\EOT\133\STX\SUB@\n\
    \M\n\
    \\STX\EOT\ACK\DC2\ACK\137\STX\NUL\143\STX\SOH\SUB? Runtime derived percentage with a default when not specified.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\137\STX\b\SYN\n\
    \@\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\139\STX\STX$\SUB2 Default value if runtime value is not available.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\139\STX\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\139\STX\DC2\US\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\139\STX\"#\n\
    \W\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\142\STX\STXB\SUBI Runtime key to get value for comparison. This value is used if defined.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\142\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\142\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\142\STX\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\EOT\142\STX\EMA\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\SOH\b\175\b\SO\DC2\EOT\142\STX\SUB@\n\
    \I\n\
    \\STX\EOT\a\DC2\ACK\146\STX\NUL\154\STX\SOH\SUB; Runtime derived double with a default when not specified.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\146\STX\b\NAK\n\
    \\v\n\
    \\ETX\EOT\a\a\DC2\EOT\147\STX\STXa\n\
    \\DLE\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\EOT\147\STX\STXa\n\
    \@\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\150\STX\STX\ESC\SUB2 Default value if runtime value is not available.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\150\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\150\STX\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\150\STX\EM\SUB\n\
    \W\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\153\STX\STXB\SUBI Runtime key to get value for comparison. This value is used if defined.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\EOT\153\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\153\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\153\STX\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\b\DC2\EOT\153\STX\EMA\n\
    \\DLE\n\
    \\b\EOT\a\STX\SOH\b\175\b\SO\DC2\EOT\153\STX\SUB@\n\
    \G\n\
    \\STX\EOT\b\DC2\ACK\157\STX\NUL\168\STX\SOH\SUB9 Runtime derived bool with a default when not specified.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\157\STX\b\SUB\n\
    \\r\n\
    \\ETX\EOT\b\a\DC2\ACK\158\STX\STX\159\STX-\n\
    \\DC2\n\
    \\b\EOT\b\a\211\136\225\ETX\SOH\DC2\ACK\158\STX\STX\159\STX-\n\
    \@\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\162\STX\STX\\\SUB2 Default value if runtime value is not available.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\162\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\162\STX\FS)\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\162\STX,-\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\162\STX.[\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\175\b\DC1\DC2\EOT\162\STX/Z\n\
    \\230\SOH\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\167\STX\STXB\SUB\215\SOH Runtime key to get value for comparison. This value is used if defined. The boolean value must\n\
    \ be represented via its\n\
    \ `canonical JSON encoding <https://developers.google.com/protocol-buffers/docs/proto3#json>`_.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\167\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\167\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\167\STX\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\EOT\167\STX\EMA\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\175\b\SO\DC2\EOT\167\STX\SUB@\n\
    \'\n\
    \\STX\EOT\t\DC2\ACK\171\STX\NUL\187\STX\SOH\SUB\EM Header name/value pair.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\171\STX\b\DC3\n\
    \\v\n\
    \\ETX\EOT\t\a\DC2\EOT\172\STX\STX_\n\
    \\DLE\n\
    \\b\EOT\t\a\211\136\225\ETX\SOH\DC2\EOT\172\STX\STX_\n\
    \\RS\n\
    \\EOT\EOT\t\STX\NUL\DC2\ACK\175\STX\STX\177\STX[\SUB\SO Header name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\175\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\175\STX\t\f\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\175\STX\SI\DLE\n\
    \\SI\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\ACK\176\STX\ACK\177\STXZ\n\
    \\DC2\n\
    \\b\EOT\t\STX\NUL\b\175\b\SO\DC2\ACK\176\STX\a\177\STXY\n\
    \\250\SOH\n\
    \\EOT\EOT\t\STX\SOH\DC2\ACK\184\STX\STX\186\STX\EOT\SUB\233\SOH Header value.\n\
    \\n\
    \ The same :ref:`format specifier <config_access_log_format>` as used for\n\
    \ :ref:`HTTP access logging <config_access_log>` applies here, however\n\
    \ unknown header values are replaced with the empty string instead of `-`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\EOT\184\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\184\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\184\STX\DC1\DC2\n\
    \\SI\n\
    \\ENQ\EOT\t\STX\SOH\b\DC2\ACK\184\STX\DC3\186\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\t\STX\SOH\b\175\b\SO\DC2\EOT\185\STX\EOTb\n\
    \N\n\
    \\STX\EOT\n\
    \\DC2\ACK\190\STX\NUL\200\STX\SOH\SUB@ Header name/value pair plus option to control append behavior.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\190\STX\b\EM\n\
    \\r\n\
    \\ETX\EOT\n\
    \\a\DC2\ACK\191\STX\STX\192\STX,\n\
    \\DC2\n\
    \\b\EOT\n\
    \\a\211\136\225\ETX\SOH\DC2\ACK\191\STX\STX\192\STX,\n\
    \C\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\195\STX\STXG\SUB5 Header name/value pair that this option applies to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\195\STX\STX\r\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\195\STX\SO\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\195\STX\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\195\STX\EMF\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\175\b\DC1\DC2\EOT\195\STX\SUBE\n\
    \\151\SOH\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\199\STX\STX'\SUB\136\SOH Should the value be appended? If true (default), the value is appended to\n\
    \ existing values. Otherwise it replaces any existing values.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\EOT\199\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\199\STX\FS\"\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\199\STX%&\n\
    \-\n\
    \\STX\EOT\v\DC2\ACK\203\STX\NUL\207\STX\SOH\SUB\US Wrapper for a set of headers.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\203\STX\b\DC1\n\
    \\v\n\
    \\ETX\EOT\v\a\DC2\EOT\204\STX\STX]\n\
    \\DLE\n\
    \\b\EOT\v\a\211\136\225\ETX\SOH\DC2\EOT\204\STX\STX]\n\
    \\f\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\206\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\EOT\206\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\206\STX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\206\STX\ETB\RS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\206\STX!\"\n\
    \\144\SOH\n\
    \\STX\EOT\f\DC2\ACK\211\STX\NUL\214\STX\SOH\SUB\129\SOH A directory that is watched for changes, e.g. by inotify on Linux. Move/rename\n\
    \ events inside this directory trigger the watch.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\211\STX\b\CAN\n\
    \(\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\213\STX\STX;\SUB\SUB Directory path to watch.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\213\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\213\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\213\STX\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\b\DC2\EOT\213\STX\DC2:\n\
    \\DLE\n\
    \\b\EOT\f\STX\NUL\b\175\b\SO\DC2\EOT\213\STX\DC39\n\
    \K\n\
    \\STX\EOT\r\DC2\ACK\217\STX\NUL\232\STX\SOH\SUB= Data source consisting of either a file or an inline value.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\217\STX\b\DC2\n\
    \\v\n\
    \\ETX\EOT\r\a\DC2\EOT\218\STX\STX^\n\
    \\DLE\n\
    \\b\EOT\r\a\211\136\225\ETX\SOH\DC2\EOT\218\STX\STX^\n\
    \\SO\n\
    \\EOT\EOT\r\b\NUL\DC2\ACK\220\STX\STX\231\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\r\b\NUL\SOH\DC2\EOT\220\STX\b\DC1\n\
    \\r\n\
    \\ENQ\EOT\r\b\NUL\STX\DC2\EOT\221\STX\EOT&\n\
    \\SI\n\
    \\a\EOT\r\b\NUL\STX\175\b\DC2\EOT\221\STX\EOT&\n\
    \-\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\224\STX\EOTA\SUB\US Local filesystem data source.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\224\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\224\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\224\STX\SYN\ETB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\EOT\224\STX\CAN@\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\175\b\SO\DC2\EOT\224\STX\EM?\n\
    \3\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\227\STX\EOT\ESC\SUB% Bytes inlined in the configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\EOT\227\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\227\STX\n\
    \\SYN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\227\STX\EM\SUB\n\
    \4\n\
    \\EOT\EOT\r\STX\STX\DC2\EOT\230\STX\EOT\GS\SUB& String inlined in the configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\EOT\230\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\230\STX\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\230\STX\ESC\FS\n\
    \a\n\
    \\STX\EOT\SO\DC2\ACK\235\STX\NUL\247\STX\SOH\SUBS The message specifies the retry policy of remote data source when fetching fails.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\235\STX\b\DC3\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\236\STX\STX_\n\
    \\DLE\n\
    \\b\EOT\SO\a\211\136\225\ETX\SOH\DC2\EOT\236\STX\STX_\n\
    \\155\STX\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\241\STX\STX%\SUB\140\STX Specifies parameters that control :ref:`retry backoff strategy <envoy_v3_api_msg_config.core.v3.BackoffStrategy>`.\n\
    \ This parameter is optional, in which case the default base interval is 1000 milliseconds. The\n\
    \ default maximum interval is 10 times the base interval.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ACK\DC2\EOT\241\STX\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\241\STX\DC2 \n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\241\STX#$\n\
    \i\n\
    \\EOT\EOT\SO\STX\SOH\DC2\ACK\245\STX\STX\246\STX@\SUBY Specifies the allowed number of retries. This parameter is optional and\n\
    \ defaults to 1.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ACK\DC2\EOT\245\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\245\STX\RS)\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\245\STX,-\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\b\DC2\EOT\246\STX\ACK?\n\
    \\DC2\n\
    \\n\
    \\EOT\SO\STX\SOH\b\142\227\255Q\SOH\DC2\EOT\246\STX\a>\n\
    \Y\n\
    \\STX\EOT\SI\DC2\ACK\250\STX\NUL\133\ETX\SOH\SUBK The message specifies how to fetch data from remote and how to verify it.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\250\STX\b\CAN\n\
    \\v\n\
    \\ETX\EOT\SI\a\DC2\EOT\251\STX\STXd\n\
    \\DLE\n\
    \\b\EOT\SI\a\211\136\225\ETX\SOH\DC2\EOT\251\STX\STXd\n\
    \6\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\254\STX\STXE\SUB( The HTTP URI to fetch the remote data.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\EOT\254\STX\STX\t\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\254\STX\n\
    \\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\254\STX\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\b\DC2\EOT\254\STX\ETBD\n\
    \\DLE\n\
    \\b\EOT\SI\STX\NUL\b\175\b\DC1\DC2\EOT\254\STX\CANC\n\
    \1\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\129\ETX\STX=\SUB# SHA256 string for verifying data.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\EOT\129\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\129\ETX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\129\ETX\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\b\DC2\EOT\129\ETX\DC4<\n\
    \\DLE\n\
    \\b\EOT\SI\STX\SOH\b\175\b\SO\DC2\EOT\129\ETX\NAK;\n\
    \6\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\132\ETX\STX\US\SUB( Retry policy for fetching remote data.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ACK\DC2\EOT\132\ETX\STX\r\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\132\ETX\SO\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\132\ETX\GS\RS\n\
    \A\n\
    \\STX\EOT\DLE\DC2\ACK\136\ETX\NUL\148\ETX\SOH\SUB3 Async data source which support async data fetch.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\136\ETX\b\ETB\n\
    \\v\n\
    \\ETX\EOT\DLE\a\DC2\EOT\137\ETX\STXc\n\
    \\DLE\n\
    \\b\EOT\DLE\a\211\136\225\ETX\SOH\DC2\EOT\137\ETX\STXc\n\
    \\SO\n\
    \\EOT\EOT\DLE\b\NUL\DC2\ACK\139\ETX\STX\147\ETX\ETX\n\
    \\r\n\
    \\ENQ\EOT\DLE\b\NUL\SOH\DC2\EOT\139\ETX\b\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\b\NUL\STX\DC2\EOT\140\ETX\EOT&\n\
    \\SI\n\
    \\a\EOT\DLE\b\NUL\STX\175\b\DC2\EOT\140\ETX\EOT&\n\
    \(\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\143\ETX\EOT\EM\SUB\SUB Local async data source.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ACK\DC2\EOT\143\ETX\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\143\ETX\SI\DC4\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\143\ETX\ETB\CAN\n\
    \)\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\146\ETX\EOT \SUB\ESC Remote async data source.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ACK\DC2\EOT\146\ETX\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\146\ETX\NAK\ESC\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\146\ETX\RS\US\n\
    \\189\STX\n\
    \\STX\EOT\DC1\DC2\ACK\154\ETX\NUL\170\ETX\SOH\SUB\174\STX Configuration for transport socket in :ref:`listeners <config_listeners>` and\n\
    \ :ref:`clusters <envoy_v3_api_msg_config.cluster.v3.Cluster>`. If the configuration is\n\
    \ empty, a default transport socket implementation and configuration will be\n\
    \ chosen based on the platform and existence of tls_context.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\154\ETX\b\ETB\n\
    \\v\n\
    \\ETX\EOT\DC1\a\DC2\EOT\155\ETX\STXc\n\
    \\DLE\n\
    \\b\EOT\DC1\a\211\136\225\ETX\SOH\DC2\EOT\155\ETX\STXc\n\
    \\v\n\
    \\ETX\EOT\DC1\t\DC2\EOT\157\ETX\STX\r\n\
    \\f\n\
    \\EOT\EOT\DC1\t\NUL\DC2\EOT\157\ETX\v\f\n\
    \\r\n\
    \\ENQ\EOT\DC1\t\NUL\SOH\DC2\EOT\157\ETX\v\f\n\
    \\r\n\
    \\ENQ\EOT\DC1\t\NUL\STX\DC2\EOT\157\ETX\v\f\n\
    \\v\n\
    \\ETX\EOT\DC1\n\
    \\DC2\EOT\159\ETX\STX\DC4\n\
    \\f\n\
    \\EOT\EOT\DC1\n\
    \\NUL\DC2\EOT\159\ETX\v\DC3\n\
    \\130\SOH\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\163\ETX\STX;\SUBt The name of the transport socket to instantiate. The name must match a supported transport\n\
    \ socket implementation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\163\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\163\ETX\t\r\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\163\ETX\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\b\DC2\EOT\163\ETX\DC2:\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\NUL\b\175\b\SO\DC2\EOT\163\ETX\DC39\n\
    \\191\SOH\n\
    \\EOT\EOT\DC1\b\NUL\DC2\ACK\167\ETX\STX\169\ETX\ETX\SUB\174\SOH Implementation specific configuration which depends on the implementation being instantiated.\n\
    \ See the supported transport socket implementations for further documentation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\b\NUL\SOH\DC2\EOT\167\ETX\b\DC3\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\168\ETX\EOT)\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ACK\DC2\EOT\168\ETX\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\168\ETX\CAN$\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\168\ETX'(\n\
    \\232\EOT\n\
    \\STX\EOT\DC2\DC2\ACK\182\ETX\NUL\191\ETX\SOH\SUB\217\EOT Runtime derived FractionalPercent with defaults for when the numerator or denominator is not\n\
    \ specified via a runtime key.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   Parsing of the runtime key's data is implemented such that it may be represented as a\n\
    \   :ref:`FractionalPercent <envoy_v3_api_msg_type.v3.FractionalPercent>` proto represented as JSON/YAML\n\
    \   and may also be represented as an integer with the assumption that the value is an integral\n\
    \   percentage out of 100. For instance, a runtime key lookup returning the value \"42\" would parse\n\
    \   as a `FractionalPercent` whose numerator is 42 and denominator is HUNDRED.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\182\ETX\b \n\
    \\r\n\
    \\ETX\EOT\DC2\a\DC2\ACK\183\ETX\STX\184\ETX3\n\
    \\DC2\n\
    \\b\EOT\DC2\a\211\136\225\ETX\SOH\DC2\ACK\183\ETX\STX\184\ETX3\n\
    \j\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\187\ETX\STX\\\SUB\\ Default value if the runtime value's for the numerator/denominator keys are not available.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ACK\DC2\EOT\187\ETX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\187\ETX\FS)\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\187\ETX,-\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\b\DC2\EOT\187\ETX.[\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\NUL\b\175\b\DC1\DC2\EOT\187\ETX/Z\n\
    \M\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\190\ETX\STX\EM\SUB? Runtime key for a YAML representation of a FractionalPercent.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\190\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\190\ETX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\190\ETX\ETB\CAN\n\
    \W\n\
    \\STX\EOT\DC3\DC2\ACK\194\ETX\NUL\201\ETX\SOH\SUBI Identifies a specific ControlPlane instance that Envoy is connected to.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\194\ETX\b\DC4\n\
    \\v\n\
    \\ETX\EOT\DC3\a\DC2\EOT\195\ETX\STX`\n\
    \\DLE\n\
    \\b\EOT\DC3\a\211\136\225\ETX\SOH\DC2\EOT\195\ETX\STX`\n\
    \\194\SOH\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\200\ETX\STX\CAN\SUB\179\SOH An opaque control plane identifier that uniquely identifies an instance\n\
    \ of control plane. This can be used to identify which control plane instance,\n\
    \ the Envoy is connected to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\200\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\200\ETX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\200\ETX\SYN\ETBb\ACKproto3"