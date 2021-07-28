{- This file was auto-generated from envoy/config/route/v3/scoped_route.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Route.V3.ScopedRoute (
        ScopedRouteConfiguration(), ScopedRouteConfiguration'Key(),
        ScopedRouteConfiguration'Key'Fragment(),
        ScopedRouteConfiguration'Key'Fragment'Type(..),
        _ScopedRouteConfiguration'Key'Fragment'StringKey
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Route.V3.ScopedRoute_Fields.onDemand' @:: Lens' ScopedRouteConfiguration Prelude.Bool@
         * 'Proto.Envoy.Config.Route.V3.ScopedRoute_Fields.name' @:: Lens' ScopedRouteConfiguration Data.Text.Text@
         * 'Proto.Envoy.Config.Route.V3.ScopedRoute_Fields.routeConfigurationName' @:: Lens' ScopedRouteConfiguration Data.Text.Text@
         * 'Proto.Envoy.Config.Route.V3.ScopedRoute_Fields.key' @:: Lens' ScopedRouteConfiguration ScopedRouteConfiguration'Key@
         * 'Proto.Envoy.Config.Route.V3.ScopedRoute_Fields.maybe'key' @:: Lens' ScopedRouteConfiguration (Prelude.Maybe ScopedRouteConfiguration'Key)@ -}
data ScopedRouteConfiguration
  = ScopedRouteConfiguration'_constructor {_ScopedRouteConfiguration'onDemand :: !Prelude.Bool,
                                           _ScopedRouteConfiguration'name :: !Data.Text.Text,
                                           _ScopedRouteConfiguration'routeConfigurationName :: !Data.Text.Text,
                                           _ScopedRouteConfiguration'key :: !(Prelude.Maybe ScopedRouteConfiguration'Key),
                                           _ScopedRouteConfiguration'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRouteConfiguration where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScopedRouteConfiguration "onDemand" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfiguration'onDemand
           (\ x__ y__ -> x__ {_ScopedRouteConfiguration'onDemand = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRouteConfiguration "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfiguration'name
           (\ x__ y__ -> x__ {_ScopedRouteConfiguration'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRouteConfiguration "routeConfigurationName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfiguration'routeConfigurationName
           (\ x__ y__
              -> x__ {_ScopedRouteConfiguration'routeConfigurationName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRouteConfiguration "key" ScopedRouteConfiguration'Key where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfiguration'key
           (\ x__ y__ -> x__ {_ScopedRouteConfiguration'key = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScopedRouteConfiguration "maybe'key" (Prelude.Maybe ScopedRouteConfiguration'Key) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfiguration'key
           (\ x__ y__ -> x__ {_ScopedRouteConfiguration'key = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScopedRouteConfiguration where
  messageName _
    = Data.Text.pack "envoy.config.route.v3.ScopedRouteConfiguration"
  packedMessageDescriptor _
    = "\n\
      \\CANScopedRouteConfiguration\DC2\ESC\n\
      \\ton_demand\CAN\EOT \SOH(\bR\bonDemand\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2A\n\
      \\CANroute_configuration_name\CAN\STX \SOH(\tR\SYNrouteConfigurationNameB\a\250B\EOTr\STX\DLE\SOH\DC2O\n\
      \\ETXkey\CAN\ETX \SOH(\v23.envoy.config.route.v3.ScopedRouteConfiguration.KeyR\ETXkeyB\b\250B\ENQ\138\SOH\STX\DLE\SOH\SUB\146\STX\n\
      \\ETXKey\DC2d\n\
      \\tfragments\CAN\SOH \ETX(\v2<.envoy.config.route.v3.ScopedRouteConfiguration.Key.FragmentR\tfragmentsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUBs\n\
      \\bFragment\DC2\US\n\
      \\n\
      \string_key\CAN\SOH \SOH(\tH\NULR\tstringKeyB\v\n\
      \\EOTtype\DC2\ETX\248B\SOH:9\154\197\136\RS4\n\
      \2envoy.api.v2.ScopedRouteConfiguration.Key.Fragment:0\154\197\136\RS+\n\
      \)envoy.api.v2.ScopedRouteConfiguration.Key:,\154\197\136\RS'\n\
      \%envoy.api.v2.ScopedRouteConfiguration"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        onDemand__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "on_demand"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"onDemand")) ::
              Data.ProtoLens.FieldDescriptor ScopedRouteConfiguration
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor ScopedRouteConfiguration
        routeConfigurationName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route_configuration_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"routeConfigurationName")) ::
              Data.ProtoLens.FieldDescriptor ScopedRouteConfiguration
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRouteConfiguration'Key)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'key")) ::
              Data.ProtoLens.FieldDescriptor ScopedRouteConfiguration
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 4, onDemand__field_descriptor),
           (Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, routeConfigurationName__field_descriptor),
           (Data.ProtoLens.Tag 3, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRouteConfiguration'_unknownFields
        (\ x__ y__ -> x__ {_ScopedRouteConfiguration'_unknownFields = y__})
  defMessage
    = ScopedRouteConfiguration'_constructor
        {_ScopedRouteConfiguration'onDemand = Data.ProtoLens.fieldDefault,
         _ScopedRouteConfiguration'name = Data.ProtoLens.fieldDefault,
         _ScopedRouteConfiguration'routeConfigurationName = Data.ProtoLens.fieldDefault,
         _ScopedRouteConfiguration'key = Prelude.Nothing,
         _ScopedRouteConfiguration'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRouteConfiguration
          -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRouteConfiguration
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
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "on_demand"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"onDemand") y x)
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
                                       "route_configuration_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"routeConfigurationName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScopedRouteConfiguration"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"onDemand") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"routeConfigurationName") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'key") _x
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
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ScopedRouteConfiguration where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRouteConfiguration'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScopedRouteConfiguration'onDemand x__)
                (Control.DeepSeq.deepseq
                   (_ScopedRouteConfiguration'name x__)
                   (Control.DeepSeq.deepseq
                      (_ScopedRouteConfiguration'routeConfigurationName x__)
                      (Control.DeepSeq.deepseq (_ScopedRouteConfiguration'key x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Route.V3.ScopedRoute_Fields.fragments' @:: Lens' ScopedRouteConfiguration'Key [ScopedRouteConfiguration'Key'Fragment]@
         * 'Proto.Envoy.Config.Route.V3.ScopedRoute_Fields.vec'fragments' @:: Lens' ScopedRouteConfiguration'Key (Data.Vector.Vector ScopedRouteConfiguration'Key'Fragment)@ -}
data ScopedRouteConfiguration'Key
  = ScopedRouteConfiguration'Key'_constructor {_ScopedRouteConfiguration'Key'fragments :: !(Data.Vector.Vector ScopedRouteConfiguration'Key'Fragment),
                                               _ScopedRouteConfiguration'Key'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRouteConfiguration'Key where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScopedRouteConfiguration'Key "fragments" [ScopedRouteConfiguration'Key'Fragment] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfiguration'Key'fragments
           (\ x__ y__ -> x__ {_ScopedRouteConfiguration'Key'fragments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScopedRouteConfiguration'Key "vec'fragments" (Data.Vector.Vector ScopedRouteConfiguration'Key'Fragment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfiguration'Key'fragments
           (\ x__ y__ -> x__ {_ScopedRouteConfiguration'Key'fragments = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScopedRouteConfiguration'Key where
  messageName _
    = Data.Text.pack
        "envoy.config.route.v3.ScopedRouteConfiguration.Key"
  packedMessageDescriptor _
    = "\n\
      \\ETXKey\DC2d\n\
      \\tfragments\CAN\SOH \ETX(\v2<.envoy.config.route.v3.ScopedRouteConfiguration.Key.FragmentR\tfragmentsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUBs\n\
      \\bFragment\DC2\US\n\
      \\n\
      \string_key\CAN\SOH \SOH(\tH\NULR\tstringKeyB\v\n\
      \\EOTtype\DC2\ETX\248B\SOH:9\154\197\136\RS4\n\
      \2envoy.api.v2.ScopedRouteConfiguration.Key.Fragment:0\154\197\136\RS+\n\
      \)envoy.api.v2.ScopedRouteConfiguration.Key"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fragments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fragments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRouteConfiguration'Key'Fragment)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"fragments")) ::
              Data.ProtoLens.FieldDescriptor ScopedRouteConfiguration'Key
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fragments__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRouteConfiguration'Key'_unknownFields
        (\ x__ y__
           -> x__ {_ScopedRouteConfiguration'Key'_unknownFields = y__})
  defMessage
    = ScopedRouteConfiguration'Key'_constructor
        {_ScopedRouteConfiguration'Key'fragments = Data.Vector.Generic.empty,
         _ScopedRouteConfiguration'Key'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRouteConfiguration'Key
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ScopedRouteConfiguration'Key'Fragment
             -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRouteConfiguration'Key
        loop x mutable'fragments
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'fragments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'fragments)
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
                              (Data.ProtoLens.Field.field @"vec'fragments") frozen'fragments x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "fragments"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fragments y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'fragments
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'fragments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'fragments)
          "Key"
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
                   (Data.ProtoLens.Field.field @"vec'fragments") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ScopedRouteConfiguration'Key where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRouteConfiguration'Key'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScopedRouteConfiguration'Key'fragments x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Route.V3.ScopedRoute_Fields.maybe'type'' @:: Lens' ScopedRouteConfiguration'Key'Fragment (Prelude.Maybe ScopedRouteConfiguration'Key'Fragment'Type)@
         * 'Proto.Envoy.Config.Route.V3.ScopedRoute_Fields.maybe'stringKey' @:: Lens' ScopedRouteConfiguration'Key'Fragment (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Route.V3.ScopedRoute_Fields.stringKey' @:: Lens' ScopedRouteConfiguration'Key'Fragment Data.Text.Text@ -}
data ScopedRouteConfiguration'Key'Fragment
  = ScopedRouteConfiguration'Key'Fragment'_constructor {_ScopedRouteConfiguration'Key'Fragment'type' :: !(Prelude.Maybe ScopedRouteConfiguration'Key'Fragment'Type),
                                                        _ScopedRouteConfiguration'Key'Fragment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRouteConfiguration'Key'Fragment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ScopedRouteConfiguration'Key'Fragment'Type
  = ScopedRouteConfiguration'Key'Fragment'StringKey !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ScopedRouteConfiguration'Key'Fragment "maybe'type'" (Prelude.Maybe ScopedRouteConfiguration'Key'Fragment'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfiguration'Key'Fragment'type'
           (\ x__ y__
              -> x__ {_ScopedRouteConfiguration'Key'Fragment'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRouteConfiguration'Key'Fragment "maybe'stringKey" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfiguration'Key'Fragment'type'
           (\ x__ y__
              -> x__ {_ScopedRouteConfiguration'Key'Fragment'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ScopedRouteConfiguration'Key'Fragment'StringKey x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   ScopedRouteConfiguration'Key'Fragment'StringKey y__))
instance Data.ProtoLens.Field.HasField ScopedRouteConfiguration'Key'Fragment "stringKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfiguration'Key'Fragment'type'
           (\ x__ y__
              -> x__ {_ScopedRouteConfiguration'Key'Fragment'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ScopedRouteConfiguration'Key'Fragment'StringKey x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      ScopedRouteConfiguration'Key'Fragment'StringKey y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message ScopedRouteConfiguration'Key'Fragment where
  messageName _
    = Data.Text.pack
        "envoy.config.route.v3.ScopedRouteConfiguration.Key.Fragment"
  packedMessageDescriptor _
    = "\n\
      \\bFragment\DC2\US\n\
      \\n\
      \string_key\CAN\SOH \SOH(\tH\NULR\tstringKeyB\v\n\
      \\EOTtype\DC2\ETX\248B\SOH:9\154\197\136\RS4\n\
      \2envoy.api.v2.ScopedRouteConfiguration.Key.Fragment"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stringKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringKey")) ::
              Data.ProtoLens.FieldDescriptor ScopedRouteConfiguration'Key'Fragment
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stringKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRouteConfiguration'Key'Fragment'_unknownFields
        (\ x__ y__
           -> x__
                {_ScopedRouteConfiguration'Key'Fragment'_unknownFields = y__})
  defMessage
    = ScopedRouteConfiguration'Key'Fragment'_constructor
        {_ScopedRouteConfiguration'Key'Fragment'type' = Prelude.Nothing,
         _ScopedRouteConfiguration'Key'Fragment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRouteConfiguration'Key'Fragment
          -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRouteConfiguration'Key'Fragment
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
                                       "string_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Fragment"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ScopedRouteConfiguration'Key'Fragment'StringKey v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
instance Control.DeepSeq.NFData ScopedRouteConfiguration'Key'Fragment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRouteConfiguration'Key'Fragment'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScopedRouteConfiguration'Key'Fragment'type' x__) ())
instance Control.DeepSeq.NFData ScopedRouteConfiguration'Key'Fragment'Type where
  rnf (ScopedRouteConfiguration'Key'Fragment'StringKey x__)
    = Control.DeepSeq.rnf x__
_ScopedRouteConfiguration'Key'Fragment'StringKey ::
  Data.ProtoLens.Prism.Prism' ScopedRouteConfiguration'Key'Fragment'Type Data.Text.Text
_ScopedRouteConfiguration'Key'Fragment'StringKey
  = Data.ProtoLens.Prism.prism'
      ScopedRouteConfiguration'Key'Fragment'StringKey
      (\ p__
         -> case p__ of {
              (ScopedRouteConfiguration'Key'Fragment'StringKey p__val)
                -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(envoy/config/route/v3/scoped_route.proto\DC2\NAKenvoy.config.route.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\171\EOT\n\
    \\CANScopedRouteConfiguration\DC2\ESC\n\
    \\ton_demand\CAN\EOT \SOH(\bR\bonDemand\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2A\n\
    \\CANroute_configuration_name\CAN\STX \SOH(\tR\SYNrouteConfigurationNameB\a\250B\EOTr\STX\DLE\SOH\DC2O\n\
    \\ETXkey\CAN\ETX \SOH(\v23.envoy.config.route.v3.ScopedRouteConfiguration.KeyR\ETXkeyB\b\250B\ENQ\138\SOH\STX\DLE\SOH\SUB\146\STX\n\
    \\ETXKey\DC2d\n\
    \\tfragments\CAN\SOH \ETX(\v2<.envoy.config.route.v3.ScopedRouteConfiguration.Key.FragmentR\tfragmentsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUBs\n\
    \\bFragment\DC2\US\n\
    \\n\
    \string_key\CAN\SOH \SOH(\tH\NULR\tstringKeyB\v\n\
    \\EOTtype\DC2\ETX\248B\SOH:9\154\197\136\RS4\n\
    \2envoy.api.v2.ScopedRouteConfiguration.Key.Fragment:0\154\197\136\RS+\n\
    \)envoy.api.v2.ScopedRouteConfiguration.Key:,\154\197\136\RS'\n\
    \%envoy.api.v2.ScopedRouteConfigurationBA\n\
    \#io.envoyproxy.envoy.config.route.v3B\DLEScopedRouteProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\192\GS\n\
    \\ACK\DC2\EOT\NUL\NULw\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\n\
    \\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\v\NULF\n\
    \\244\SO\n\
    \\STX\EOT\NUL\DC2\EOTK\NULw\SOH\SUB\234\r Specifies a routing scope, which associates a\n\
    \ :ref:`Key<envoy_v3_api_msg_config.route.v3.ScopedRouteConfiguration.Key>` to a\n\
    \ :ref:`envoy_v3_api_msg_config.route.v3.RouteConfiguration` (identified by its resource name).\n\
    \\n\
    \ The HTTP connection manager builds up a table consisting of these Key to\n\
    \ RouteConfiguration mappings, and looks up the RouteConfiguration to use per\n\
    \ request according to the algorithm specified in the\n\
    \ :ref:`scope_key_builder<envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.ScopedRoutes.scope_key_builder>`\n\
    \ assigned to the HttpConnectionManager.\n\
    \\n\
    \ For example, with the following configurations (in YAML):\n\
    \\n\
    \ HttpConnectionManager config:\n\
    \\n\
    \ .. code::\n\
    \\n\
    \   ...\n\
    \   scoped_routes:\n\
    \     name: foo-scoped-routes\n\
    \     scope_key_builder:\n\
    \       fragments:\n\
    \         - header_value_extractor:\n\
    \             name: X-Route-Selector\n\
    \             element_separator: ,\n\
    \             element:\n\
    \               separator: =\n\
    \               key: vip\n\
    \\n\
    \ ScopedRouteConfiguration resources (specified statically via\n\
    \ :ref:`scoped_route_configurations_list<envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.ScopedRoutes.scoped_route_configurations_list>`\n\
    \ or obtained dynamically via SRDS):\n\
    \\n\
    \ .. code::\n\
    \\n\
    \  (1)\n\
    \   name: route-scope1\n\
    \   route_configuration_name: route-config1\n\
    \   key:\n\
    \      fragments:\n\
    \        - string_key: 172.10.10.20\n\
    \\n\
    \  (2)\n\
    \   name: route-scope2\n\
    \   route_configuration_name: route-config2\n\
    \   key:\n\
    \     fragments:\n\
    \       - string_key: 172.20.20.30\n\
    \\n\
    \ A request from a client such as:\n\
    \\n\
    \ .. code::\n\
    \\n\
    \     GET / HTTP/1.1\n\
    \     Host: foo.com\n\
    \     X-Route-Selector: vip=172.10.10.20\n\
    \\n\
    \ would result in the routing table defined by the `route-config1`\n\
    \ RouteConfiguration being assigned to the HTTP request/stream.\n\
    \\n\
    \2{ [#protodoc-title: HTTP scoped routing configuration]\n\
    \ * Routing :ref:`architecture overview <arch_overview_http_routing>`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXK\b \n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOTL\STXM.\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOTL\STXM.\n\
    \\228\STX\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOTT\STXh\ETX\SUB\213\STX Specifies a key which is matched against the output of the\n\
    \ :ref:`scope_key_builder<envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.ScopedRoutes.scope_key_builder>`\n\
    \ specified in the HttpConnectionManager. The matching is done per HTTP\n\
    \ request and is dependent on the order of the fragments contained in the\n\
    \ Key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETXT\n\
    \\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOTU\EOTV4\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTU\EOTV4\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\ETX\NUL\DC2\EOTX\EOTb\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\SOH\DC2\ETXX\f\DC4\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\a\DC2\EOTY\ACKZ?\n\
    \\DC4\n\
    \\f\EOT\NUL\ETX\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTY\ACKZ?\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\b\NUL\DC2\EOT\\\ACKa\a\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX\\\f\DLE\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\b\NUL\STX\DC2\ETX]\b*\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETX]\b*\n\
    \-\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\DC2\ETX`\b\RS\SUB\FS A string to match against.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX`\b\SO\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX`\SI\EM\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX`\FS\GS\n\
    \\253\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXg\EOTQ\SUB\237\SOH The ordered set of fragments to match against. The order must match the\n\
    \ fragments in the corresponding\n\
    \ :ref:`scope_key_builder<envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.ScopedRoutes.scope_key_builder>`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETXg\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETXg\r\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXg\SYN\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXg\"#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETXg$P\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\DC2\DC2\ETXg%O\n\
    \I\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXk\STX\NAK\SUB< Whether the RouteConfiguration should be loaded on demand.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXk\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXk\a\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXk\DC3\DC4\n\
    \6\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXn\STX;\SUB) The name assigned to the routing scope.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETXn\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXn\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXn\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETXn\DC2:\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETXn\DC39\n\
    \\227\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXs\STXO\SUB\213\SOH The resource name to use for a :ref:`envoy_v3_api_msg_service.discovery.v3.DiscoveryRequest` to an\n\
    \ RDS server to fetch the :ref:`envoy_v3_api_msg_config.route.v3.RouteConfiguration` associated\n\
    \ with this scope.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXs\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXs\t!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXs$%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETXs&N\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\SO\DC2\ETXs'M\n\
    \(\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXv\STX<\SUB\ESC The key to match against.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXv\STX\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXv\ACK\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXv\f\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETXv\SO;\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\DC1\DC2\ETXv\SI:b\ACKproto3"