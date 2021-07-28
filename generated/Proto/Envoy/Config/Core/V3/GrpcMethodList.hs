{- This file was auto-generated from envoy/config/core/v3/grpc_method_list.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.GrpcMethodList (
        GrpcMethodList(), GrpcMethodList'Service()
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
     
         * 'Proto.Envoy.Config.Core.V3.GrpcMethodList_Fields.services' @:: Lens' GrpcMethodList [GrpcMethodList'Service]@
         * 'Proto.Envoy.Config.Core.V3.GrpcMethodList_Fields.vec'services' @:: Lens' GrpcMethodList (Data.Vector.Vector GrpcMethodList'Service)@ -}
data GrpcMethodList
  = GrpcMethodList'_constructor {_GrpcMethodList'services :: !(Data.Vector.Vector GrpcMethodList'Service),
                                 _GrpcMethodList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcMethodList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcMethodList "services" [GrpcMethodList'Service] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcMethodList'services
           (\ x__ y__ -> x__ {_GrpcMethodList'services = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GrpcMethodList "vec'services" (Data.Vector.Vector GrpcMethodList'Service) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcMethodList'services
           (\ x__ y__ -> x__ {_GrpcMethodList'services = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcMethodList where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.GrpcMethodList"
  packedMessageDescriptor _
    = "\n\
      \\SOGrpcMethodList\DC2H\n\
      \\bservices\CAN\SOH \ETX(\v2,.envoy.config.core.v3.GrpcMethodList.ServiceR\bservices\SUB\132\SOH\n\
      \\aService\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2+\n\
      \\fmethod_names\CAN\STX \ETX(\tR\vmethodNamesB\b\250B\ENQ\146\SOH\STX\b\SOH:/\154\197\136\RS*\n\
      \(envoy.api.v2.core.GrpcMethodList.Service:'\154\197\136\RS\"\n\
      \ envoy.api.v2.core.GrpcMethodList"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        services__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "services"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcMethodList'Service)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"services")) ::
              Data.ProtoLens.FieldDescriptor GrpcMethodList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, services__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcMethodList'_unknownFields
        (\ x__ y__ -> x__ {_GrpcMethodList'_unknownFields = y__})
  defMessage
    = GrpcMethodList'_constructor
        {_GrpcMethodList'services = Data.Vector.Generic.empty,
         _GrpcMethodList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcMethodList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld GrpcMethodList'Service
             -> Data.ProtoLens.Encoding.Bytes.Parser GrpcMethodList
        loop x mutable'services
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'services <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'services)
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
                              (Data.ProtoLens.Field.field @"vec'services") frozen'services x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "services"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'services y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'services
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'services <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'services)
          "GrpcMethodList"
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
                   (Data.ProtoLens.Field.field @"vec'services") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GrpcMethodList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcMethodList'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GrpcMethodList'services x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcMethodList_Fields.name' @:: Lens' GrpcMethodList'Service Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcMethodList_Fields.methodNames' @:: Lens' GrpcMethodList'Service [Data.Text.Text]@
         * 'Proto.Envoy.Config.Core.V3.GrpcMethodList_Fields.vec'methodNames' @:: Lens' GrpcMethodList'Service (Data.Vector.Vector Data.Text.Text)@ -}
data GrpcMethodList'Service
  = GrpcMethodList'Service'_constructor {_GrpcMethodList'Service'name :: !Data.Text.Text,
                                         _GrpcMethodList'Service'methodNames :: !(Data.Vector.Vector Data.Text.Text),
                                         _GrpcMethodList'Service'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcMethodList'Service where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcMethodList'Service "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcMethodList'Service'name
           (\ x__ y__ -> x__ {_GrpcMethodList'Service'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcMethodList'Service "methodNames" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcMethodList'Service'methodNames
           (\ x__ y__ -> x__ {_GrpcMethodList'Service'methodNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GrpcMethodList'Service "vec'methodNames" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcMethodList'Service'methodNames
           (\ x__ y__ -> x__ {_GrpcMethodList'Service'methodNames = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcMethodList'Service where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.GrpcMethodList.Service"
  packedMessageDescriptor _
    = "\n\
      \\aService\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2+\n\
      \\fmethod_names\CAN\STX \ETX(\tR\vmethodNamesB\b\250B\ENQ\146\SOH\STX\b\SOH:/\154\197\136\RS*\n\
      \(envoy.api.v2.core.GrpcMethodList.Service"
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
              Data.ProtoLens.FieldDescriptor GrpcMethodList'Service
        methodNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "method_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"methodNames")) ::
              Data.ProtoLens.FieldDescriptor GrpcMethodList'Service
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, methodNames__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcMethodList'Service'_unknownFields
        (\ x__ y__ -> x__ {_GrpcMethodList'Service'_unknownFields = y__})
  defMessage
    = GrpcMethodList'Service'_constructor
        {_GrpcMethodList'Service'name = Data.ProtoLens.fieldDefault,
         _GrpcMethodList'Service'methodNames = Data.Vector.Generic.empty,
         _GrpcMethodList'Service'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcMethodList'Service
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser GrpcMethodList'Service
        loop x mutable'methodNames
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'methodNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'methodNames)
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
                              (Data.ProtoLens.Field.field @"vec'methodNames")
                              frozen'methodNames
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
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'methodNames
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
                                        "method_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'methodNames y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'methodNames
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'methodNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'methodNames)
          "Service"
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
                              Data.Text.Encoding.encodeUtf8
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'methodNames") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GrpcMethodList'Service where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcMethodList'Service'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcMethodList'Service'name x__)
                (Control.DeepSeq.deepseq
                   (_GrpcMethodList'Service'methodNames x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \+envoy/config/core/v3/grpc_method_list.proto\DC2\DC4envoy.config.core.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\138\STX\n\
    \\SOGrpcMethodList\DC2H\n\
    \\bservices\CAN\SOH \ETX(\v2,.envoy.config.core.v3.GrpcMethodList.ServiceR\bservices\SUB\132\SOH\n\
    \\aService\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2+\n\
    \\fmethod_names\CAN\STX \ETX(\tR\vmethodNamesB\b\250B\ENQ\146\SOH\STX\b\SOH:/\154\197\136\RS*\n\
    \(envoy.api.v2.core.GrpcMethodList.Service:'\154\197\136\RS\"\n\
    \ envoy.api.v2.core.GrpcMethodListBC\n\
    \\"io.envoyproxy.envoy.config.core.v3B\DC3GrpcMethodListProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\230\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\US\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL4\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL4\n\
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
    \{\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\US\SOH\SUBH A list of gRPC methods which can be used as an allowlist, for example.\n\
    \2% [#protodoc-title: gRPC method list]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\SYN\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC1\STXb\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC1\STXb\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\DC3\STX\FS\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\DC3\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT\DC4\EOT\NAK3\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\EOT\NAK3\n\
    \.\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\CAN\EOT=\SUB\US The name of the gRPC service.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\CAN\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\CAN\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\CAN\DC2\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX\CAN\DC4<\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETX\CAN\NAK;\n\
    \?\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\ESC\EOTR\SUB0 The names of the gRPC methods in this service.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX\ESC\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX\ESC\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\ESC\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\ESC#$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\b\DC2\ETX\ESC%Q\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\SOH\b\175\b\DC2\DC2\ETX\ESC&P\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\RS\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\RS\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\RS\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\RS\RS\USb\ACKproto3"