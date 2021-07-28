{- This file was auto-generated from envoy/extensions/filters/http/ip_tagging/v3/ip_tagging.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.IpTagging.V3.IpTagging (
        IPTagging(), IPTagging'IPTag(), IPTagging'RequestType(..),
        IPTagging'RequestType(), IPTagging'RequestType'UnrecognizedValue
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.IpTagging.V3.IpTagging_Fields.requestType' @:: Lens' IPTagging IPTagging'RequestType@
         * 'Proto.Envoy.Extensions.Filters.Http.IpTagging.V3.IpTagging_Fields.ipTags' @:: Lens' IPTagging [IPTagging'IPTag]@
         * 'Proto.Envoy.Extensions.Filters.Http.IpTagging.V3.IpTagging_Fields.vec'ipTags' @:: Lens' IPTagging (Data.Vector.Vector IPTagging'IPTag)@ -}
data IPTagging
  = IPTagging'_constructor {_IPTagging'requestType :: !IPTagging'RequestType,
                            _IPTagging'ipTags :: !(Data.Vector.Vector IPTagging'IPTag),
                            _IPTagging'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IPTagging where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IPTagging "requestType" IPTagging'RequestType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IPTagging'requestType
           (\ x__ y__ -> x__ {_IPTagging'requestType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IPTagging "ipTags" [IPTagging'IPTag] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IPTagging'ipTags (\ x__ y__ -> x__ {_IPTagging'ipTags = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField IPTagging "vec'ipTags" (Data.Vector.Vector IPTagging'IPTag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IPTagging'ipTags (\ x__ y__ -> x__ {_IPTagging'ipTags = y__}))
        Prelude.id
instance Data.ProtoLens.Message IPTagging where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ip_tagging.v3.IPTagging"
  packedMessageDescriptor _
    = "\n\
      \\tIPTagging\DC2o\n\
      \\frequest_type\CAN\SOH \SOH(\SO2B.envoy.extensions.filters.http.ip_tagging.v3.IPTagging.RequestTypeR\vrequestTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2_\n\
      \\aip_tags\CAN\EOT \ETX(\v2<.envoy.extensions.filters.http.ip_tagging.v3.IPTagging.IPTagR\ACKipTagsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\160\SOH\n\
      \\ENQIPTag\DC2\RS\n\
      \\vip_tag_name\CAN\SOH \SOH(\tR\tipTagName\DC28\n\
      \\aip_list\CAN\STX \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\ACKipList:=\154\197\136\RS8\n\
      \6envoy.config.filter.http.ip_tagging.v2.IPTagging.IPTag\"3\n\
      \\vRequestType\DC2\b\n\
      \\EOTBOTH\DLE\NUL\DC2\f\n\
      \\bINTERNAL\DLE\SOH\DC2\f\n\
      \\bEXTERNAL\DLE\STX:7\154\197\136\RS2\n\
      \0envoy.config.filter.http.ip_tagging.v2.IPTagging"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requestType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor IPTagging'RequestType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestType")) ::
              Data.ProtoLens.FieldDescriptor IPTagging
        ipTags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip_tags"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor IPTagging'IPTag)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ipTags")) ::
              Data.ProtoLens.FieldDescriptor IPTagging
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requestType__field_descriptor),
           (Data.ProtoLens.Tag 4, ipTags__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IPTagging'_unknownFields
        (\ x__ y__ -> x__ {_IPTagging'_unknownFields = y__})
  defMessage
    = IPTagging'_constructor
        {_IPTagging'requestType = Data.ProtoLens.fieldDefault,
         _IPTagging'ipTags = Data.Vector.Generic.empty,
         _IPTagging'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IPTagging
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld IPTagging'IPTag
             -> Data.ProtoLens.Encoding.Bytes.Parser IPTagging
        loop x mutable'ipTags
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ipTags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'ipTags)
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
                              (Data.ProtoLens.Field.field @"vec'ipTags") frozen'ipTags x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "request_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestType") y x)
                                  mutable'ipTags
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ip_tags"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ipTags y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ipTags
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ipTags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ipTags)
          "IPTagging"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"requestType") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
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
                              Data.ProtoLens.encodeMessage
                              _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ipTags") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData IPTagging where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IPTagging'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IPTagging'requestType x__)
                (Control.DeepSeq.deepseq (_IPTagging'ipTags x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.IpTagging.V3.IpTagging_Fields.ipTagName' @:: Lens' IPTagging'IPTag Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.IpTagging.V3.IpTagging_Fields.ipList' @:: Lens' IPTagging'IPTag [Proto.Envoy.Config.Core.V3.Address.CidrRange]@
         * 'Proto.Envoy.Extensions.Filters.Http.IpTagging.V3.IpTagging_Fields.vec'ipList' @:: Lens' IPTagging'IPTag (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange)@ -}
data IPTagging'IPTag
  = IPTagging'IPTag'_constructor {_IPTagging'IPTag'ipTagName :: !Data.Text.Text,
                                  _IPTagging'IPTag'ipList :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange),
                                  _IPTagging'IPTag'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IPTagging'IPTag where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IPTagging'IPTag "ipTagName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IPTagging'IPTag'ipTagName
           (\ x__ y__ -> x__ {_IPTagging'IPTag'ipTagName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IPTagging'IPTag "ipList" [Proto.Envoy.Config.Core.V3.Address.CidrRange] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IPTagging'IPTag'ipList
           (\ x__ y__ -> x__ {_IPTagging'IPTag'ipList = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField IPTagging'IPTag "vec'ipList" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IPTagging'IPTag'ipList
           (\ x__ y__ -> x__ {_IPTagging'IPTag'ipList = y__}))
        Prelude.id
instance Data.ProtoLens.Message IPTagging'IPTag where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ip_tagging.v3.IPTagging.IPTag"
  packedMessageDescriptor _
    = "\n\
      \\ENQIPTag\DC2\RS\n\
      \\vip_tag_name\CAN\SOH \SOH(\tR\tipTagName\DC28\n\
      \\aip_list\CAN\STX \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\ACKipList:=\154\197\136\RS8\n\
      \6envoy.config.filter.http.ip_tagging.v2.IPTagging.IPTag"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ipTagName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip_tag_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ipTagName")) ::
              Data.ProtoLens.FieldDescriptor IPTagging'IPTag
        ipList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.CidrRange)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ipList")) ::
              Data.ProtoLens.FieldDescriptor IPTagging'IPTag
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ipTagName__field_descriptor),
           (Data.ProtoLens.Tag 2, ipList__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IPTagging'IPTag'_unknownFields
        (\ x__ y__ -> x__ {_IPTagging'IPTag'_unknownFields = y__})
  defMessage
    = IPTagging'IPTag'_constructor
        {_IPTagging'IPTag'ipTagName = Data.ProtoLens.fieldDefault,
         _IPTagging'IPTag'ipList = Data.Vector.Generic.empty,
         _IPTagging'IPTag'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IPTagging'IPTag
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Address.CidrRange
             -> Data.ProtoLens.Encoding.Bytes.Parser IPTagging'IPTag
        loop x mutable'ipList
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ipList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'ipList)
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
                              (Data.ProtoLens.Field.field @"vec'ipList") frozen'ipList x))
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
                                       "ip_tag_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ipTagName") y x)
                                  mutable'ipList
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ip_list"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ipList y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ipList
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ipList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ipList)
          "IPTag"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"ipTagName") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ipList") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData IPTagging'IPTag where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IPTagging'IPTag'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IPTagging'IPTag'ipTagName x__)
                (Control.DeepSeq.deepseq (_IPTagging'IPTag'ipList x__) ()))
newtype IPTagging'RequestType'UnrecognizedValue
  = IPTagging'RequestType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data IPTagging'RequestType
  = IPTagging'BOTH |
    IPTagging'INTERNAL |
    IPTagging'EXTERNAL |
    IPTagging'RequestType'Unrecognized !IPTagging'RequestType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum IPTagging'RequestType where
  maybeToEnum 0 = Prelude.Just IPTagging'BOTH
  maybeToEnum 1 = Prelude.Just IPTagging'INTERNAL
  maybeToEnum 2 = Prelude.Just IPTagging'EXTERNAL
  maybeToEnum k
    = Prelude.Just
        (IPTagging'RequestType'Unrecognized
           (IPTagging'RequestType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum IPTagging'BOTH = "BOTH"
  showEnum IPTagging'INTERNAL = "INTERNAL"
  showEnum IPTagging'EXTERNAL = "EXTERNAL"
  showEnum
    (IPTagging'RequestType'Unrecognized (IPTagging'RequestType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "BOTH" = Prelude.Just IPTagging'BOTH
    | (Prelude.==) k "INTERNAL" = Prelude.Just IPTagging'INTERNAL
    | (Prelude.==) k "EXTERNAL" = Prelude.Just IPTagging'EXTERNAL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded IPTagging'RequestType where
  minBound = IPTagging'BOTH
  maxBound = IPTagging'EXTERNAL
instance Prelude.Enum IPTagging'RequestType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RequestType: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum IPTagging'BOTH = 0
  fromEnum IPTagging'INTERNAL = 1
  fromEnum IPTagging'EXTERNAL = 2
  fromEnum
    (IPTagging'RequestType'Unrecognized (IPTagging'RequestType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ IPTagging'EXTERNAL
    = Prelude.error
        "IPTagging'RequestType.succ: bad argument IPTagging'EXTERNAL. This value would be out of bounds."
  succ IPTagging'BOTH = IPTagging'INTERNAL
  succ IPTagging'INTERNAL = IPTagging'EXTERNAL
  succ (IPTagging'RequestType'Unrecognized _)
    = Prelude.error
        "IPTagging'RequestType.succ: bad argument: unrecognized value"
  pred IPTagging'BOTH
    = Prelude.error
        "IPTagging'RequestType.pred: bad argument IPTagging'BOTH. This value would be out of bounds."
  pred IPTagging'INTERNAL = IPTagging'BOTH
  pred IPTagging'EXTERNAL = IPTagging'INTERNAL
  pred (IPTagging'RequestType'Unrecognized _)
    = Prelude.error
        "IPTagging'RequestType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault IPTagging'RequestType where
  fieldDefault = IPTagging'BOTH
instance Control.DeepSeq.NFData IPTagging'RequestType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \<envoy/extensions/filters/http/ip_tagging/v3/ip_tagging.proto\DC2+envoy.extensions.filters.http.ip_tagging.v3\SUB\"envoy/config/core/v3/address.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\238\ETX\n\
    \\tIPTagging\DC2o\n\
    \\frequest_type\CAN\SOH \SOH(\SO2B.envoy.extensions.filters.http.ip_tagging.v3.IPTagging.RequestTypeR\vrequestTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2_\n\
    \\aip_tags\CAN\EOT \ETX(\v2<.envoy.extensions.filters.http.ip_tagging.v3.IPTagging.IPTagR\ACKipTagsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\160\SOH\n\
    \\ENQIPTag\DC2\RS\n\
    \\vip_tag_name\CAN\SOH \SOH(\tR\tipTagName\DC28\n\
    \\aip_list\CAN\STX \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\ACKipList:=\154\197\136\RS8\n\
    \6envoy.config.filter.http.ip_tagging.v2.IPTagging.IPTag\"3\n\
    \\vRequestType\DC2\b\n\
    \\EOTBOTH\DLE\NUL\DC2\f\n\
    \\bINTERNAL\DLE\SOH\DC2\f\n\
    \\bEXTERNAL\DLE\STX:7\154\197\136\RS2\n\
    \0envoy.config.filter.http.ip_tagging.v2.IPTaggingBU\n\
    \9io.envoyproxy.envoy.extensions.filters.http.ip_tagging.v3B\SOIpTaggingProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\168\SI\n\
    \\ACK\DC2\EOT\NUL\NUL<\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULR\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULR\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\165\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL<\SOH2\152\SOH [#protodoc-title: IP tagging]\n\
    \ IP tagging :ref:`configuration overview <config_http_filters_ip_tagging>`.\n\
    \ [#extension: envoy.filters.http.ip_tagging]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\DC1\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAK9\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAK9\n\
    \\178\ETX\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\GS\STX&\ETX\SUB\163\ETX The type of requests the filter should apply to. The supported types\n\
    \ are internal, external or both. The\n\
    \ :ref:`x-forwarded-for<config_http_conn_man_headers_x-forwarded-for_internal_origin>` header is\n\
    \ used to determine if a request is internal and will result in\n\
    \ :ref:`x-envoy-internal<config_http_conn_man_headers_x-envoy-internal>`\n\
    \ being set. The filter defaults to both, and it will apply to all request types.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\GS\a\DC2\n\
    \_\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\US\EOT\r\SUBP Both external and internal requests will be tagged. This is the default value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\US\v\f\n\
    \7\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\"\EOT\DC1\SUB( Only internal requests will be tagged.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\"\SI\DLE\n\
    \7\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX%\EOT\DC1\SUB( Only external requests will be tagged.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX%\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX%\SI\DLE\n\
    \D\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT)\STX3\ETX\SUB6 Supplies the IP tag name and the IP address subnets.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX)\n\
    \\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT*\EOT+A\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT*\EOT+A\n\
    \4\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX.\EOT\ESC\SUB% Specifies the IP tag name to apply.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX.\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX.\v\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX.\EM\SUB\n\
    \v\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX2\EOT2\SUBg A list of IP address subnets that will be tagged with\n\
    \ ip_tag_name. Both IPv4 and IPv6 are supported.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX2\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX2\r%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX2&-\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX201\n\
    \>\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX6\STXN\SUB1 The type of request the filter should apply to.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX6\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX6\SO\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX6\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX6\USM\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\ETX6 L\n\
    \\199\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX;\STXJ\SUB\185\SOH [#comment:TODO(ccaraman): Extend functionality to load IP tags from file system.\n\
    \ Tracked by issue https://github.com/envoyproxy/envoy/issues/2695]\n\
    \ The set of IP tags for the filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX;\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX;\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX;\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX;\GSI\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC2\DC2\ETX;\RSHb\ACKproto3"