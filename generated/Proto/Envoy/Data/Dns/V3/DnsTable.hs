{- This file was auto-generated from envoy/data/dns/v3/dns_table.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Dns.V3.DnsTable (
        DnsTable(), DnsTable'AddressList(), DnsTable'DnsEndpoint(),
        DnsTable'DnsEndpoint'EndpointConfig(..),
        _DnsTable'DnsEndpoint'AddressList,
        _DnsTable'DnsEndpoint'ClusterName,
        _DnsTable'DnsEndpoint'ServiceList, DnsTable'DnsService(),
        DnsTable'DnsServiceList(), DnsTable'DnsServiceProtocol(),
        DnsTable'DnsServiceProtocol'ProtocolConfig(..),
        _DnsTable'DnsServiceProtocol'Number,
        _DnsTable'DnsServiceProtocol'Name, DnsTable'DnsServiceTarget(),
        DnsTable'DnsServiceTarget'EndpointType(..),
        _DnsTable'DnsServiceTarget'HostName,
        _DnsTable'DnsServiceTarget'ClusterName, DnsTable'DnsVirtualDomain()
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
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.externalRetryCount' @:: Lens' DnsTable Data.Word.Word32@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.virtualDomains' @:: Lens' DnsTable [DnsTable'DnsVirtualDomain]@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.vec'virtualDomains' @:: Lens' DnsTable (Data.Vector.Vector DnsTable'DnsVirtualDomain)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.knownSuffixes' @:: Lens' DnsTable [Proto.Envoy.Type.Matcher.V3.String.StringMatcher]@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.vec'knownSuffixes' @:: Lens' DnsTable (Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@ -}
data DnsTable
  = DnsTable'_constructor {_DnsTable'externalRetryCount :: !Data.Word.Word32,
                           _DnsTable'virtualDomains :: !(Data.Vector.Vector DnsTable'DnsVirtualDomain),
                           _DnsTable'knownSuffixes :: !(Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher),
                           _DnsTable'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsTable where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsTable "externalRetryCount" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'externalRetryCount
           (\ x__ y__ -> x__ {_DnsTable'externalRetryCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable "virtualDomains" [DnsTable'DnsVirtualDomain] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'virtualDomains
           (\ x__ y__ -> x__ {_DnsTable'virtualDomains = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DnsTable "vec'virtualDomains" (Data.Vector.Vector DnsTable'DnsVirtualDomain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'virtualDomains
           (\ x__ y__ -> x__ {_DnsTable'virtualDomains = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable "knownSuffixes" [Proto.Envoy.Type.Matcher.V3.String.StringMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'knownSuffixes
           (\ x__ y__ -> x__ {_DnsTable'knownSuffixes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DnsTable "vec'knownSuffixes" (Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'knownSuffixes
           (\ x__ y__ -> x__ {_DnsTable'knownSuffixes = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsTable where
  messageName _ = Data.Text.pack "envoy.data.dns.v3.DnsTable"
  packedMessageDescriptor _
    = "\n\
      \\bDnsTable\DC29\n\
      \\DC4external_retry_count\CAN\SOH \SOH(\rR\DC2externalRetryCountB\a\250B\EOT*\STX\CAN\ETX\DC2U\n\
      \\SIvirtual_domains\CAN\STX \ETX(\v2,.envoy.data.dns.v3.DnsTable.DnsVirtualDomainR\SOvirtualDomains\DC2X\n\
      \\SOknown_suffixes\CAN\ETX \ETX(\v2$.envoy.type.matcher.v3.StringMatcherR\rknownSuffixesB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\SUBk\n\
      \\vAddressList\DC2(\n\
      \\aaddress\CAN\SOH \ETX(\tR\aaddressB\SO\250B\v\146\SOH\b\b\SOH\"\EOTr\STX\DLE\ETX:2\154\197\136\RS-\n\
      \+envoy.data.dns.v2alpha.DnsTable.AddressList\SUBr\n\
      \\DC2DnsServiceProtocol\DC2\"\n\
      \\ACKnumber\CAN\SOH \SOH(\rH\NULR\ACKnumberB\b\250B\ENQ*\ETX\DLE\255\SOH\DC2 \n\
      \\EOTname\CAN\STX \SOH(\tH\NULR\EOTnameB\n\
      \\250B\ar\ENQ\DLE\SOH\192\SOH\SOHB\SYN\n\
      \\SIprotocol_config\DC2\ETX\248B\SOH\SUB\237\SOH\n\
      \\DLEDnsServiceTarget\DC2)\n\
      \\thost_name\CAN\SOH \SOH(\tH\NULR\bhostNameB\n\
      \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2/\n\
      \\fcluster_name\CAN\STX \SOH(\tH\NULR\vclusterNameB\n\
      \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2%\n\
      \\bpriority\CAN\ETX \SOH(\rR\bpriorityB\t\250B\ACK*\EOT\DLE\128\128\EOT\DC2!\n\
      \\ACKweight\CAN\EOT \SOH(\rR\ACKweightB\t\250B\ACK*\EOT\DLE\128\128\EOT\DC2\GS\n\
      \\EOTport\CAN\ENQ \SOH(\rR\EOTportB\t\250B\ACK*\EOT\DLE\128\128\EOTB\DC4\n\
      \\rendpoint_type\DC2\ETX\248B\SOH\SUB\146\STX\n\
      \\n\
      \DnsService\DC2-\n\
      \\fservice_name\CAN\SOH \SOH(\tR\vserviceNameB\n\
      \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2J\n\
      \\bprotocol\CAN\STX \SOH(\v2..envoy.data.dns.v3.DnsTable.DnsServiceProtocolR\bprotocol\DC27\n\
      \\ETXttl\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ETXttlB\n\
      \\250B\a\170\SOH\EOT2\STX\b\SOH\DC2P\n\
      \\atargets\CAN\EOT \ETX(\v2,.envoy.data.dns.v3.DnsTable.DnsServiceTargetR\atargetsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB^\n\
      \\SODnsServiceList\DC2L\n\
      \\bservices\CAN\SOH \ETX(\v2&.envoy.data.dns.v3.DnsTable.DnsServiceR\bservicesB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\157\STX\n\
      \\vDnsEndpoint\DC2L\n\
      \\faddress_list\CAN\SOH \SOH(\v2'.envoy.data.dns.v3.DnsTable.AddressListH\NULR\vaddressList\DC2#\n\
      \\fcluster_name\CAN\STX \SOH(\tH\NULR\vclusterName\DC2O\n\
      \\fservice_list\CAN\ETX \SOH(\v2*.envoy.data.dns.v3.DnsTable.DnsServiceListH\NULR\vserviceListB\SYN\n\
      \\SIendpoint_config\DC2\ETX\248B\SOH:2\154\197\136\RS-\n\
      \+envoy.data.dns.v2alpha.DnsTable.DnsEndpoint\SUB\246\SOH\n\
      \\DLEDnsVirtualDomain\DC2\RS\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\n\
      \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2C\n\
      \\bendpoint\CAN\STX \SOH(\v2'.envoy.data.dns.v3.DnsTable.DnsEndpointR\bendpoint\DC2D\n\
      \\n\
      \answer_ttl\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\tanswerTtlB\n\
      \\250B\a\170\SOH\EOT2\STX\b\RS:7\154\197\136\RS2\n\
      \0envoy.data.dns.v2alpha.DnsTable.DnsVirtualDomain:&\154\197\136\RS!\n\
      \\USenvoy.data.dns.v2alpha.DnsTable"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        externalRetryCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "external_retry_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"externalRetryCount")) ::
              Data.ProtoLens.FieldDescriptor DnsTable
        virtualDomains__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "virtual_domains"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsTable'DnsVirtualDomain)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"virtualDomains")) ::
              Data.ProtoLens.FieldDescriptor DnsTable
        knownSuffixes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "known_suffixes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"knownSuffixes")) ::
              Data.ProtoLens.FieldDescriptor DnsTable
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, externalRetryCount__field_descriptor),
           (Data.ProtoLens.Tag 2, virtualDomains__field_descriptor),
           (Data.ProtoLens.Tag 3, knownSuffixes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsTable'_unknownFields
        (\ x__ y__ -> x__ {_DnsTable'_unknownFields = y__})
  defMessage
    = DnsTable'_constructor
        {_DnsTable'externalRetryCount = Data.ProtoLens.fieldDefault,
         _DnsTable'virtualDomains = Data.Vector.Generic.empty,
         _DnsTable'knownSuffixes = Data.Vector.Generic.empty,
         _DnsTable'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsTable
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Type.Matcher.V3.String.StringMatcher
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DnsTable'DnsVirtualDomain
                -> Data.ProtoLens.Encoding.Bytes.Parser DnsTable
        loop x mutable'knownSuffixes mutable'virtualDomains
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'knownSuffixes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'knownSuffixes)
                      frozen'virtualDomains <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'virtualDomains)
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
                              (Data.ProtoLens.Field.field @"vec'knownSuffixes")
                              frozen'knownSuffixes
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'virtualDomains")
                                 frozen'virtualDomains
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "external_retry_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"externalRetryCount") y x)
                                  mutable'knownSuffixes
                                  mutable'virtualDomains
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "virtual_domains"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'virtualDomains y)
                                loop x mutable'knownSuffixes v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "known_suffixes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'knownSuffixes y)
                                loop x v mutable'virtualDomains
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'knownSuffixes
                                  mutable'virtualDomains
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'knownSuffixes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'virtualDomains <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'knownSuffixes
                mutable'virtualDomains)
          "DnsTable"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"externalRetryCount") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                      (Data.ProtoLens.Field.field @"vec'virtualDomains") _x))
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
                                 Data.ProtoLens.encodeMessage
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'knownSuffixes") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DnsTable where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsTable'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsTable'externalRetryCount x__)
                (Control.DeepSeq.deepseq
                   (_DnsTable'virtualDomains x__)
                   (Control.DeepSeq.deepseq (_DnsTable'knownSuffixes x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.address' @:: Lens' DnsTable'AddressList [Data.Text.Text]@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.vec'address' @:: Lens' DnsTable'AddressList (Data.Vector.Vector Data.Text.Text)@ -}
data DnsTable'AddressList
  = DnsTable'AddressList'_constructor {_DnsTable'AddressList'address :: !(Data.Vector.Vector Data.Text.Text),
                                       _DnsTable'AddressList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsTable'AddressList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsTable'AddressList "address" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'AddressList'address
           (\ x__ y__ -> x__ {_DnsTable'AddressList'address = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DnsTable'AddressList "vec'address" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'AddressList'address
           (\ x__ y__ -> x__ {_DnsTable'AddressList'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsTable'AddressList where
  messageName _
    = Data.Text.pack "envoy.data.dns.v3.DnsTable.AddressList"
  packedMessageDescriptor _
    = "\n\
      \\vAddressList\DC2(\n\
      \\aaddress\CAN\SOH \ETX(\tR\aaddressB\SO\250B\v\146\SOH\b\b\SOH\"\EOTr\STX\DLE\ETX:2\154\197\136\RS-\n\
      \+envoy.data.dns.v2alpha.DnsTable.AddressList"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'AddressList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsTable'AddressList'_unknownFields
        (\ x__ y__ -> x__ {_DnsTable'AddressList'_unknownFields = y__})
  defMessage
    = DnsTable'AddressList'_constructor
        {_DnsTable'AddressList'address = Data.Vector.Generic.empty,
         _DnsTable'AddressList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsTable'AddressList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser DnsTable'AddressList
        loop x mutable'address
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'address <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'address)
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
                              (Data.ProtoLens.Field.field @"vec'address") frozen'address x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "address"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'address y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'address
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'address <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'address)
          "AddressList"
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
                           Data.Text.Encoding.encodeUtf8
                           _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'address") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DnsTable'AddressList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsTable'AddressList'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DnsTable'AddressList'address x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'endpointConfig' @:: Lens' DnsTable'DnsEndpoint (Prelude.Maybe DnsTable'DnsEndpoint'EndpointConfig)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'addressList' @:: Lens' DnsTable'DnsEndpoint (Prelude.Maybe DnsTable'AddressList)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.addressList' @:: Lens' DnsTable'DnsEndpoint DnsTable'AddressList@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'clusterName' @:: Lens' DnsTable'DnsEndpoint (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.clusterName' @:: Lens' DnsTable'DnsEndpoint Data.Text.Text@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'serviceList' @:: Lens' DnsTable'DnsEndpoint (Prelude.Maybe DnsTable'DnsServiceList)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.serviceList' @:: Lens' DnsTable'DnsEndpoint DnsTable'DnsServiceList@ -}
data DnsTable'DnsEndpoint
  = DnsTable'DnsEndpoint'_constructor {_DnsTable'DnsEndpoint'endpointConfig :: !(Prelude.Maybe DnsTable'DnsEndpoint'EndpointConfig),
                                       _DnsTable'DnsEndpoint'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsTable'DnsEndpoint where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DnsTable'DnsEndpoint'EndpointConfig
  = DnsTable'DnsEndpoint'AddressList !DnsTable'AddressList |
    DnsTable'DnsEndpoint'ClusterName !Data.Text.Text |
    DnsTable'DnsEndpoint'ServiceList !DnsTable'DnsServiceList
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DnsTable'DnsEndpoint "maybe'endpointConfig" (Prelude.Maybe DnsTable'DnsEndpoint'EndpointConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsEndpoint'endpointConfig
           (\ x__ y__ -> x__ {_DnsTable'DnsEndpoint'endpointConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsEndpoint "maybe'addressList" (Prelude.Maybe DnsTable'AddressList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsEndpoint'endpointConfig
           (\ x__ y__ -> x__ {_DnsTable'DnsEndpoint'endpointConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DnsTable'DnsEndpoint'AddressList x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DnsTable'DnsEndpoint'AddressList y__))
instance Data.ProtoLens.Field.HasField DnsTable'DnsEndpoint "addressList" DnsTable'AddressList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsEndpoint'endpointConfig
           (\ x__ y__ -> x__ {_DnsTable'DnsEndpoint'endpointConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DnsTable'DnsEndpoint'AddressList x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DnsTable'DnsEndpoint'AddressList y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DnsTable'DnsEndpoint "maybe'clusterName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsEndpoint'endpointConfig
           (\ x__ y__ -> x__ {_DnsTable'DnsEndpoint'endpointConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DnsTable'DnsEndpoint'ClusterName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DnsTable'DnsEndpoint'ClusterName y__))
instance Data.ProtoLens.Field.HasField DnsTable'DnsEndpoint "clusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsEndpoint'endpointConfig
           (\ x__ y__ -> x__ {_DnsTable'DnsEndpoint'endpointConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DnsTable'DnsEndpoint'ClusterName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DnsTable'DnsEndpoint'ClusterName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DnsTable'DnsEndpoint "maybe'serviceList" (Prelude.Maybe DnsTable'DnsServiceList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsEndpoint'endpointConfig
           (\ x__ y__ -> x__ {_DnsTable'DnsEndpoint'endpointConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DnsTable'DnsEndpoint'ServiceList x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DnsTable'DnsEndpoint'ServiceList y__))
instance Data.ProtoLens.Field.HasField DnsTable'DnsEndpoint "serviceList" DnsTable'DnsServiceList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsEndpoint'endpointConfig
           (\ x__ y__ -> x__ {_DnsTable'DnsEndpoint'endpointConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DnsTable'DnsEndpoint'ServiceList x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DnsTable'DnsEndpoint'ServiceList y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message DnsTable'DnsEndpoint where
  messageName _
    = Data.Text.pack "envoy.data.dns.v3.DnsTable.DnsEndpoint"
  packedMessageDescriptor _
    = "\n\
      \\vDnsEndpoint\DC2L\n\
      \\faddress_list\CAN\SOH \SOH(\v2'.envoy.data.dns.v3.DnsTable.AddressListH\NULR\vaddressList\DC2#\n\
      \\fcluster_name\CAN\STX \SOH(\tH\NULR\vclusterName\DC2O\n\
      \\fservice_list\CAN\ETX \SOH(\v2*.envoy.data.dns.v3.DnsTable.DnsServiceListH\NULR\vserviceListB\SYN\n\
      \\SIendpoint_config\DC2\ETX\248B\SOH:2\154\197\136\RS-\n\
      \+envoy.data.dns.v2alpha.DnsTable.DnsEndpoint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addressList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsTable'AddressList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addressList")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsEndpoint
        clusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clusterName")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsEndpoint
        serviceList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsTable'DnsServiceList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'serviceList")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsEndpoint
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addressList__field_descriptor),
           (Data.ProtoLens.Tag 2, clusterName__field_descriptor),
           (Data.ProtoLens.Tag 3, serviceList__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsTable'DnsEndpoint'_unknownFields
        (\ x__ y__ -> x__ {_DnsTable'DnsEndpoint'_unknownFields = y__})
  defMessage
    = DnsTable'DnsEndpoint'_constructor
        {_DnsTable'DnsEndpoint'endpointConfig = Prelude.Nothing,
         _DnsTable'DnsEndpoint'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsTable'DnsEndpoint
          -> Data.ProtoLens.Encoding.Bytes.Parser DnsTable'DnsEndpoint
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
                                       "address_list"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"addressList") y x)
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
                                       "cluster_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clusterName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "service_list"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serviceList") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DnsEndpoint"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'endpointConfig") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (DnsTable'DnsEndpoint'AddressList v))
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
                (Prelude.Just (DnsTable'DnsEndpoint'ClusterName v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (DnsTable'DnsEndpoint'ServiceList v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DnsTable'DnsEndpoint where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsTable'DnsEndpoint'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsTable'DnsEndpoint'endpointConfig x__) ())
instance Control.DeepSeq.NFData DnsTable'DnsEndpoint'EndpointConfig where
  rnf (DnsTable'DnsEndpoint'AddressList x__)
    = Control.DeepSeq.rnf x__
  rnf (DnsTable'DnsEndpoint'ClusterName x__)
    = Control.DeepSeq.rnf x__
  rnf (DnsTable'DnsEndpoint'ServiceList x__)
    = Control.DeepSeq.rnf x__
_DnsTable'DnsEndpoint'AddressList ::
  Data.ProtoLens.Prism.Prism' DnsTable'DnsEndpoint'EndpointConfig DnsTable'AddressList
_DnsTable'DnsEndpoint'AddressList
  = Data.ProtoLens.Prism.prism'
      DnsTable'DnsEndpoint'AddressList
      (\ p__
         -> case p__ of
              (DnsTable'DnsEndpoint'AddressList p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DnsTable'DnsEndpoint'ClusterName ::
  Data.ProtoLens.Prism.Prism' DnsTable'DnsEndpoint'EndpointConfig Data.Text.Text
_DnsTable'DnsEndpoint'ClusterName
  = Data.ProtoLens.Prism.prism'
      DnsTable'DnsEndpoint'ClusterName
      (\ p__
         -> case p__ of
              (DnsTable'DnsEndpoint'ClusterName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DnsTable'DnsEndpoint'ServiceList ::
  Data.ProtoLens.Prism.Prism' DnsTable'DnsEndpoint'EndpointConfig DnsTable'DnsServiceList
_DnsTable'DnsEndpoint'ServiceList
  = Data.ProtoLens.Prism.prism'
      DnsTable'DnsEndpoint'ServiceList
      (\ p__
         -> case p__ of
              (DnsTable'DnsEndpoint'ServiceList p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.serviceName' @:: Lens' DnsTable'DnsService Data.Text.Text@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.protocol' @:: Lens' DnsTable'DnsService DnsTable'DnsServiceProtocol@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'protocol' @:: Lens' DnsTable'DnsService (Prelude.Maybe DnsTable'DnsServiceProtocol)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.ttl' @:: Lens' DnsTable'DnsService Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'ttl' @:: Lens' DnsTable'DnsService (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.targets' @:: Lens' DnsTable'DnsService [DnsTable'DnsServiceTarget]@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.vec'targets' @:: Lens' DnsTable'DnsService (Data.Vector.Vector DnsTable'DnsServiceTarget)@ -}
data DnsTable'DnsService
  = DnsTable'DnsService'_constructor {_DnsTable'DnsService'serviceName :: !Data.Text.Text,
                                      _DnsTable'DnsService'protocol :: !(Prelude.Maybe DnsTable'DnsServiceProtocol),
                                      _DnsTable'DnsService'ttl :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                      _DnsTable'DnsService'targets :: !(Data.Vector.Vector DnsTable'DnsServiceTarget),
                                      _DnsTable'DnsService'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsTable'DnsService where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsTable'DnsService "serviceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsService'serviceName
           (\ x__ y__ -> x__ {_DnsTable'DnsService'serviceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsService "protocol" DnsTable'DnsServiceProtocol where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsService'protocol
           (\ x__ y__ -> x__ {_DnsTable'DnsService'protocol = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsTable'DnsService "maybe'protocol" (Prelude.Maybe DnsTable'DnsServiceProtocol) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsService'protocol
           (\ x__ y__ -> x__ {_DnsTable'DnsService'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsService "ttl" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsService'ttl
           (\ x__ y__ -> x__ {_DnsTable'DnsService'ttl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsTable'DnsService "maybe'ttl" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsService'ttl
           (\ x__ y__ -> x__ {_DnsTable'DnsService'ttl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsService "targets" [DnsTable'DnsServiceTarget] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsService'targets
           (\ x__ y__ -> x__ {_DnsTable'DnsService'targets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DnsTable'DnsService "vec'targets" (Data.Vector.Vector DnsTable'DnsServiceTarget) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsService'targets
           (\ x__ y__ -> x__ {_DnsTable'DnsService'targets = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsTable'DnsService where
  messageName _
    = Data.Text.pack "envoy.data.dns.v3.DnsTable.DnsService"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \DnsService\DC2-\n\
      \\fservice_name\CAN\SOH \SOH(\tR\vserviceNameB\n\
      \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2J\n\
      \\bprotocol\CAN\STX \SOH(\v2..envoy.data.dns.v3.DnsTable.DnsServiceProtocolR\bprotocol\DC27\n\
      \\ETXttl\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ETXttlB\n\
      \\250B\a\170\SOH\EOT2\STX\b\SOH\DC2P\n\
      \\atargets\CAN\EOT \ETX(\v2,.envoy.data.dns.v3.DnsTable.DnsServiceTargetR\atargetsB\b\250B\ENQ\146\SOH\STX\b\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        serviceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serviceName")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsService
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsTable'DnsServiceProtocol)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protocol")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsService
        ttl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ttl"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ttl")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsService
        targets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "targets"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsTable'DnsServiceTarget)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"targets")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsService
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, serviceName__field_descriptor),
           (Data.ProtoLens.Tag 2, protocol__field_descriptor),
           (Data.ProtoLens.Tag 3, ttl__field_descriptor),
           (Data.ProtoLens.Tag 4, targets__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsTable'DnsService'_unknownFields
        (\ x__ y__ -> x__ {_DnsTable'DnsService'_unknownFields = y__})
  defMessage
    = DnsTable'DnsService'_constructor
        {_DnsTable'DnsService'serviceName = Data.ProtoLens.fieldDefault,
         _DnsTable'DnsService'protocol = Prelude.Nothing,
         _DnsTable'DnsService'ttl = Prelude.Nothing,
         _DnsTable'DnsService'targets = Data.Vector.Generic.empty,
         _DnsTable'DnsService'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsTable'DnsService
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DnsTable'DnsServiceTarget
             -> Data.ProtoLens.Encoding.Bytes.Parser DnsTable'DnsService
        loop x mutable'targets
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'targets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'targets)
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
                              (Data.ProtoLens.Field.field @"vec'targets") frozen'targets x))
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
                                       "service_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serviceName") y x)
                                  mutable'targets
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                                  mutable'targets
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ttl"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ttl") y x)
                                  mutable'targets
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "targets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'targets y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'targets
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'targets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'targets)
          "DnsService"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"serviceName") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'protocol") _x
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
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'targets") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData DnsTable'DnsService where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsTable'DnsService'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsTable'DnsService'serviceName x__)
                (Control.DeepSeq.deepseq
                   (_DnsTable'DnsService'protocol x__)
                   (Control.DeepSeq.deepseq
                      (_DnsTable'DnsService'ttl x__)
                      (Control.DeepSeq.deepseq (_DnsTable'DnsService'targets x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.services' @:: Lens' DnsTable'DnsServiceList [DnsTable'DnsService]@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.vec'services' @:: Lens' DnsTable'DnsServiceList (Data.Vector.Vector DnsTable'DnsService)@ -}
data DnsTable'DnsServiceList
  = DnsTable'DnsServiceList'_constructor {_DnsTable'DnsServiceList'services :: !(Data.Vector.Vector DnsTable'DnsService),
                                          _DnsTable'DnsServiceList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsTable'DnsServiceList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceList "services" [DnsTable'DnsService] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceList'services
           (\ x__ y__ -> x__ {_DnsTable'DnsServiceList'services = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceList "vec'services" (Data.Vector.Vector DnsTable'DnsService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceList'services
           (\ x__ y__ -> x__ {_DnsTable'DnsServiceList'services = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsTable'DnsServiceList where
  messageName _
    = Data.Text.pack "envoy.data.dns.v3.DnsTable.DnsServiceList"
  packedMessageDescriptor _
    = "\n\
      \\SODnsServiceList\DC2L\n\
      \\bservices\CAN\SOH \ETX(\v2&.envoy.data.dns.v3.DnsTable.DnsServiceR\bservicesB\b\250B\ENQ\146\SOH\STX\b\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        services__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "services"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsTable'DnsService)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"services")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsServiceList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, services__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsTable'DnsServiceList'_unknownFields
        (\ x__ y__ -> x__ {_DnsTable'DnsServiceList'_unknownFields = y__})
  defMessage
    = DnsTable'DnsServiceList'_constructor
        {_DnsTable'DnsServiceList'services = Data.Vector.Generic.empty,
         _DnsTable'DnsServiceList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsTable'DnsServiceList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DnsTable'DnsService
             -> Data.ProtoLens.Encoding.Bytes.Parser DnsTable'DnsServiceList
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
          "DnsServiceList"
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
instance Control.DeepSeq.NFData DnsTable'DnsServiceList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsTable'DnsServiceList'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsTable'DnsServiceList'services x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'protocolConfig' @:: Lens' DnsTable'DnsServiceProtocol (Prelude.Maybe DnsTable'DnsServiceProtocol'ProtocolConfig)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'number' @:: Lens' DnsTable'DnsServiceProtocol (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.number' @:: Lens' DnsTable'DnsServiceProtocol Data.Word.Word32@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'name' @:: Lens' DnsTable'DnsServiceProtocol (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.name' @:: Lens' DnsTable'DnsServiceProtocol Data.Text.Text@ -}
data DnsTable'DnsServiceProtocol
  = DnsTable'DnsServiceProtocol'_constructor {_DnsTable'DnsServiceProtocol'protocolConfig :: !(Prelude.Maybe DnsTable'DnsServiceProtocol'ProtocolConfig),
                                              _DnsTable'DnsServiceProtocol'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsTable'DnsServiceProtocol where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DnsTable'DnsServiceProtocol'ProtocolConfig
  = DnsTable'DnsServiceProtocol'Number !Data.Word.Word32 |
    DnsTable'DnsServiceProtocol'Name !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceProtocol "maybe'protocolConfig" (Prelude.Maybe DnsTable'DnsServiceProtocol'ProtocolConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceProtocol'protocolConfig
           (\ x__ y__
              -> x__ {_DnsTable'DnsServiceProtocol'protocolConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceProtocol "maybe'number" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceProtocol'protocolConfig
           (\ x__ y__
              -> x__ {_DnsTable'DnsServiceProtocol'protocolConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DnsTable'DnsServiceProtocol'Number x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DnsTable'DnsServiceProtocol'Number y__))
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceProtocol "number" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceProtocol'protocolConfig
           (\ x__ y__
              -> x__ {_DnsTable'DnsServiceProtocol'protocolConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DnsTable'DnsServiceProtocol'Number x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DnsTable'DnsServiceProtocol'Number y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceProtocol "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceProtocol'protocolConfig
           (\ x__ y__
              -> x__ {_DnsTable'DnsServiceProtocol'protocolConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DnsTable'DnsServiceProtocol'Name x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DnsTable'DnsServiceProtocol'Name y__))
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceProtocol "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceProtocol'protocolConfig
           (\ x__ y__
              -> x__ {_DnsTable'DnsServiceProtocol'protocolConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DnsTable'DnsServiceProtocol'Name x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DnsTable'DnsServiceProtocol'Name y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message DnsTable'DnsServiceProtocol where
  messageName _
    = Data.Text.pack "envoy.data.dns.v3.DnsTable.DnsServiceProtocol"
  packedMessageDescriptor _
    = "\n\
      \\DC2DnsServiceProtocol\DC2\"\n\
      \\ACKnumber\CAN\SOH \SOH(\rH\NULR\ACKnumberB\b\250B\ENQ*\ETX\DLE\255\SOH\DC2 \n\
      \\EOTname\CAN\STX \SOH(\tH\NULR\EOTnameB\n\
      \\250B\ar\ENQ\DLE\SOH\192\SOH\SOHB\SYN\n\
      \\SIprotocol_config\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        number__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'number")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsServiceProtocol
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsServiceProtocol
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, number__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsTable'DnsServiceProtocol'_unknownFields
        (\ x__ y__
           -> x__ {_DnsTable'DnsServiceProtocol'_unknownFields = y__})
  defMessage
    = DnsTable'DnsServiceProtocol'_constructor
        {_DnsTable'DnsServiceProtocol'protocolConfig = Prelude.Nothing,
         _DnsTable'DnsServiceProtocol'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsTable'DnsServiceProtocol
          -> Data.ProtoLens.Encoding.Bytes.Parser DnsTable'DnsServiceProtocol
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "number"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"number") y x)
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DnsServiceProtocol"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'protocolConfig") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (DnsTable'DnsServiceProtocol'Number v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                (Prelude.Just (DnsTable'DnsServiceProtocol'Name v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
instance Control.DeepSeq.NFData DnsTable'DnsServiceProtocol where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsTable'DnsServiceProtocol'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsTable'DnsServiceProtocol'protocolConfig x__) ())
instance Control.DeepSeq.NFData DnsTable'DnsServiceProtocol'ProtocolConfig where
  rnf (DnsTable'DnsServiceProtocol'Number x__)
    = Control.DeepSeq.rnf x__
  rnf (DnsTable'DnsServiceProtocol'Name x__)
    = Control.DeepSeq.rnf x__
_DnsTable'DnsServiceProtocol'Number ::
  Data.ProtoLens.Prism.Prism' DnsTable'DnsServiceProtocol'ProtocolConfig Data.Word.Word32
_DnsTable'DnsServiceProtocol'Number
  = Data.ProtoLens.Prism.prism'
      DnsTable'DnsServiceProtocol'Number
      (\ p__
         -> case p__ of
              (DnsTable'DnsServiceProtocol'Number p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DnsTable'DnsServiceProtocol'Name ::
  Data.ProtoLens.Prism.Prism' DnsTable'DnsServiceProtocol'ProtocolConfig Data.Text.Text
_DnsTable'DnsServiceProtocol'Name
  = Data.ProtoLens.Prism.prism'
      DnsTable'DnsServiceProtocol'Name
      (\ p__
         -> case p__ of
              (DnsTable'DnsServiceProtocol'Name p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.priority' @:: Lens' DnsTable'DnsServiceTarget Data.Word.Word32@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.weight' @:: Lens' DnsTable'DnsServiceTarget Data.Word.Word32@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.port' @:: Lens' DnsTable'DnsServiceTarget Data.Word.Word32@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'endpointType' @:: Lens' DnsTable'DnsServiceTarget (Prelude.Maybe DnsTable'DnsServiceTarget'EndpointType)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'hostName' @:: Lens' DnsTable'DnsServiceTarget (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.hostName' @:: Lens' DnsTable'DnsServiceTarget Data.Text.Text@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'clusterName' @:: Lens' DnsTable'DnsServiceTarget (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.clusterName' @:: Lens' DnsTable'DnsServiceTarget Data.Text.Text@ -}
data DnsTable'DnsServiceTarget
  = DnsTable'DnsServiceTarget'_constructor {_DnsTable'DnsServiceTarget'priority :: !Data.Word.Word32,
                                            _DnsTable'DnsServiceTarget'weight :: !Data.Word.Word32,
                                            _DnsTable'DnsServiceTarget'port :: !Data.Word.Word32,
                                            _DnsTable'DnsServiceTarget'endpointType :: !(Prelude.Maybe DnsTable'DnsServiceTarget'EndpointType),
                                            _DnsTable'DnsServiceTarget'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsTable'DnsServiceTarget where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DnsTable'DnsServiceTarget'EndpointType
  = DnsTable'DnsServiceTarget'HostName !Data.Text.Text |
    DnsTable'DnsServiceTarget'ClusterName !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceTarget "priority" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceTarget'priority
           (\ x__ y__ -> x__ {_DnsTable'DnsServiceTarget'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceTarget "weight" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceTarget'weight
           (\ x__ y__ -> x__ {_DnsTable'DnsServiceTarget'weight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceTarget "port" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceTarget'port
           (\ x__ y__ -> x__ {_DnsTable'DnsServiceTarget'port = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceTarget "maybe'endpointType" (Prelude.Maybe DnsTable'DnsServiceTarget'EndpointType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceTarget'endpointType
           (\ x__ y__ -> x__ {_DnsTable'DnsServiceTarget'endpointType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceTarget "maybe'hostName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceTarget'endpointType
           (\ x__ y__ -> x__ {_DnsTable'DnsServiceTarget'endpointType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DnsTable'DnsServiceTarget'HostName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DnsTable'DnsServiceTarget'HostName y__))
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceTarget "hostName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceTarget'endpointType
           (\ x__ y__ -> x__ {_DnsTable'DnsServiceTarget'endpointType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DnsTable'DnsServiceTarget'HostName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DnsTable'DnsServiceTarget'HostName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceTarget "maybe'clusterName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceTarget'endpointType
           (\ x__ y__ -> x__ {_DnsTable'DnsServiceTarget'endpointType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DnsTable'DnsServiceTarget'ClusterName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap DnsTable'DnsServiceTarget'ClusterName y__))
instance Data.ProtoLens.Field.HasField DnsTable'DnsServiceTarget "clusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsServiceTarget'endpointType
           (\ x__ y__ -> x__ {_DnsTable'DnsServiceTarget'endpointType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DnsTable'DnsServiceTarget'ClusterName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap DnsTable'DnsServiceTarget'ClusterName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message DnsTable'DnsServiceTarget where
  messageName _
    = Data.Text.pack "envoy.data.dns.v3.DnsTable.DnsServiceTarget"
  packedMessageDescriptor _
    = "\n\
      \\DLEDnsServiceTarget\DC2)\n\
      \\thost_name\CAN\SOH \SOH(\tH\NULR\bhostNameB\n\
      \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2/\n\
      \\fcluster_name\CAN\STX \SOH(\tH\NULR\vclusterNameB\n\
      \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2%\n\
      \\bpriority\CAN\ETX \SOH(\rR\bpriorityB\t\250B\ACK*\EOT\DLE\128\128\EOT\DC2!\n\
      \\ACKweight\CAN\EOT \SOH(\rR\ACKweightB\t\250B\ACK*\EOT\DLE\128\128\EOT\DC2\GS\n\
      \\EOTport\CAN\ENQ \SOH(\rR\EOTportB\t\250B\ACK*\EOT\DLE\128\128\EOTB\DC4\n\
      \\rendpoint_type\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"priority")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsServiceTarget
        weight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"weight")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsServiceTarget
        port__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "port"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"port")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsServiceTarget
        hostName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hostName")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsServiceTarget
        clusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clusterName")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsServiceTarget
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, priority__field_descriptor),
           (Data.ProtoLens.Tag 4, weight__field_descriptor),
           (Data.ProtoLens.Tag 5, port__field_descriptor),
           (Data.ProtoLens.Tag 1, hostName__field_descriptor),
           (Data.ProtoLens.Tag 2, clusterName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsTable'DnsServiceTarget'_unknownFields
        (\ x__ y__
           -> x__ {_DnsTable'DnsServiceTarget'_unknownFields = y__})
  defMessage
    = DnsTable'DnsServiceTarget'_constructor
        {_DnsTable'DnsServiceTarget'priority = Data.ProtoLens.fieldDefault,
         _DnsTable'DnsServiceTarget'weight = Data.ProtoLens.fieldDefault,
         _DnsTable'DnsServiceTarget'port = Data.ProtoLens.fieldDefault,
         _DnsTable'DnsServiceTarget'endpointType = Prelude.Nothing,
         _DnsTable'DnsServiceTarget'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsTable'DnsServiceTarget
          -> Data.ProtoLens.Encoding.Bytes.Parser DnsTable'DnsServiceTarget
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
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "weight"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"weight") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "port"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"port") y x)
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
                                       "host_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostName") y x)
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
                                       "cluster_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clusterName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DnsServiceTarget"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"priority") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"weight") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"port") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'endpointType") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (DnsTable'DnsServiceTarget'HostName v))
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
                         (Prelude.Just (DnsTable'DnsServiceTarget'ClusterName v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8
                                   v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData DnsTable'DnsServiceTarget where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsTable'DnsServiceTarget'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsTable'DnsServiceTarget'priority x__)
                (Control.DeepSeq.deepseq
                   (_DnsTable'DnsServiceTarget'weight x__)
                   (Control.DeepSeq.deepseq
                      (_DnsTable'DnsServiceTarget'port x__)
                      (Control.DeepSeq.deepseq
                         (_DnsTable'DnsServiceTarget'endpointType x__) ()))))
instance Control.DeepSeq.NFData DnsTable'DnsServiceTarget'EndpointType where
  rnf (DnsTable'DnsServiceTarget'HostName x__)
    = Control.DeepSeq.rnf x__
  rnf (DnsTable'DnsServiceTarget'ClusterName x__)
    = Control.DeepSeq.rnf x__
_DnsTable'DnsServiceTarget'HostName ::
  Data.ProtoLens.Prism.Prism' DnsTable'DnsServiceTarget'EndpointType Data.Text.Text
_DnsTable'DnsServiceTarget'HostName
  = Data.ProtoLens.Prism.prism'
      DnsTable'DnsServiceTarget'HostName
      (\ p__
         -> case p__ of
              (DnsTable'DnsServiceTarget'HostName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DnsTable'DnsServiceTarget'ClusterName ::
  Data.ProtoLens.Prism.Prism' DnsTable'DnsServiceTarget'EndpointType Data.Text.Text
_DnsTable'DnsServiceTarget'ClusterName
  = Data.ProtoLens.Prism.prism'
      DnsTable'DnsServiceTarget'ClusterName
      (\ p__
         -> case p__ of
              (DnsTable'DnsServiceTarget'ClusterName p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.name' @:: Lens' DnsTable'DnsVirtualDomain Data.Text.Text@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.endpoint' @:: Lens' DnsTable'DnsVirtualDomain DnsTable'DnsEndpoint@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'endpoint' @:: Lens' DnsTable'DnsVirtualDomain (Prelude.Maybe DnsTable'DnsEndpoint)@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.answerTtl' @:: Lens' DnsTable'DnsVirtualDomain Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Data.Dns.V3.DnsTable_Fields.maybe'answerTtl' @:: Lens' DnsTable'DnsVirtualDomain (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data DnsTable'DnsVirtualDomain
  = DnsTable'DnsVirtualDomain'_constructor {_DnsTable'DnsVirtualDomain'name :: !Data.Text.Text,
                                            _DnsTable'DnsVirtualDomain'endpoint :: !(Prelude.Maybe DnsTable'DnsEndpoint),
                                            _DnsTable'DnsVirtualDomain'answerTtl :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                            _DnsTable'DnsVirtualDomain'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsTable'DnsVirtualDomain where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsTable'DnsVirtualDomain "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsVirtualDomain'name
           (\ x__ y__ -> x__ {_DnsTable'DnsVirtualDomain'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsVirtualDomain "endpoint" DnsTable'DnsEndpoint where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsVirtualDomain'endpoint
           (\ x__ y__ -> x__ {_DnsTable'DnsVirtualDomain'endpoint = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsTable'DnsVirtualDomain "maybe'endpoint" (Prelude.Maybe DnsTable'DnsEndpoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsVirtualDomain'endpoint
           (\ x__ y__ -> x__ {_DnsTable'DnsVirtualDomain'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsTable'DnsVirtualDomain "answerTtl" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsVirtualDomain'answerTtl
           (\ x__ y__ -> x__ {_DnsTable'DnsVirtualDomain'answerTtl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsTable'DnsVirtualDomain "maybe'answerTtl" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsTable'DnsVirtualDomain'answerTtl
           (\ x__ y__ -> x__ {_DnsTable'DnsVirtualDomain'answerTtl = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsTable'DnsVirtualDomain where
  messageName _
    = Data.Text.pack "envoy.data.dns.v3.DnsTable.DnsVirtualDomain"
  packedMessageDescriptor _
    = "\n\
      \\DLEDnsVirtualDomain\DC2\RS\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\n\
      \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2C\n\
      \\bendpoint\CAN\STX \SOH(\v2'.envoy.data.dns.v3.DnsTable.DnsEndpointR\bendpoint\DC2D\n\
      \\n\
      \answer_ttl\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\tanswerTtlB\n\
      \\250B\a\170\SOH\EOT2\STX\b\RS:7\154\197\136\RS2\n\
      \0envoy.data.dns.v2alpha.DnsTable.DnsVirtualDomain"
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
              Data.ProtoLens.FieldDescriptor DnsTable'DnsVirtualDomain
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsTable'DnsEndpoint)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endpoint")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsVirtualDomain
        answerTtl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "answer_ttl"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'answerTtl")) ::
              Data.ProtoLens.FieldDescriptor DnsTable'DnsVirtualDomain
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 3, answerTtl__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsTable'DnsVirtualDomain'_unknownFields
        (\ x__ y__
           -> x__ {_DnsTable'DnsVirtualDomain'_unknownFields = y__})
  defMessage
    = DnsTable'DnsVirtualDomain'_constructor
        {_DnsTable'DnsVirtualDomain'name = Data.ProtoLens.fieldDefault,
         _DnsTable'DnsVirtualDomain'endpoint = Prelude.Nothing,
         _DnsTable'DnsVirtualDomain'answerTtl = Prelude.Nothing,
         _DnsTable'DnsVirtualDomain'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsTable'DnsVirtualDomain
          -> Data.ProtoLens.Encoding.Bytes.Parser DnsTable'DnsVirtualDomain
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "answer_ttl"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"answerTtl") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DnsVirtualDomain"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'endpoint") _x
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
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'answerTtl") _x
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
instance Control.DeepSeq.NFData DnsTable'DnsVirtualDomain where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsTable'DnsVirtualDomain'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsTable'DnsVirtualDomain'name x__)
                (Control.DeepSeq.deepseq
                   (_DnsTable'DnsVirtualDomain'endpoint x__)
                   (Control.DeepSeq.deepseq
                      (_DnsTable'DnsVirtualDomain'answerTtl x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!envoy/data/dns/v3/dns_table.proto\DC2\DC1envoy.data.dns.v3\SUB\"envoy/type/matcher/v3/string.proto\SUB\RSgoogle/protobuf/duration.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\253\f\n\
    \\bDnsTable\DC29\n\
    \\DC4external_retry_count\CAN\SOH \SOH(\rR\DC2externalRetryCountB\a\250B\EOT*\STX\CAN\ETX\DC2U\n\
    \\SIvirtual_domains\CAN\STX \ETX(\v2,.envoy.data.dns.v3.DnsTable.DnsVirtualDomainR\SOvirtualDomains\DC2X\n\
    \\SOknown_suffixes\CAN\ETX \ETX(\v2$.envoy.type.matcher.v3.StringMatcherR\rknownSuffixesB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\SUBk\n\
    \\vAddressList\DC2(\n\
    \\aaddress\CAN\SOH \ETX(\tR\aaddressB\SO\250B\v\146\SOH\b\b\SOH\"\EOTr\STX\DLE\ETX:2\154\197\136\RS-\n\
    \+envoy.data.dns.v2alpha.DnsTable.AddressList\SUBr\n\
    \\DC2DnsServiceProtocol\DC2\"\n\
    \\ACKnumber\CAN\SOH \SOH(\rH\NULR\ACKnumberB\b\250B\ENQ*\ETX\DLE\255\SOH\DC2 \n\
    \\EOTname\CAN\STX \SOH(\tH\NULR\EOTnameB\n\
    \\250B\ar\ENQ\DLE\SOH\192\SOH\SOHB\SYN\n\
    \\SIprotocol_config\DC2\ETX\248B\SOH\SUB\237\SOH\n\
    \\DLEDnsServiceTarget\DC2)\n\
    \\thost_name\CAN\SOH \SOH(\tH\NULR\bhostNameB\n\
    \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2/\n\
    \\fcluster_name\CAN\STX \SOH(\tH\NULR\vclusterNameB\n\
    \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2%\n\
    \\bpriority\CAN\ETX \SOH(\rR\bpriorityB\t\250B\ACK*\EOT\DLE\128\128\EOT\DC2!\n\
    \\ACKweight\CAN\EOT \SOH(\rR\ACKweightB\t\250B\ACK*\EOT\DLE\128\128\EOT\DC2\GS\n\
    \\EOTport\CAN\ENQ \SOH(\rR\EOTportB\t\250B\ACK*\EOT\DLE\128\128\EOTB\DC4\n\
    \\rendpoint_type\DC2\ETX\248B\SOH\SUB\146\STX\n\
    \\n\
    \DnsService\DC2-\n\
    \\fservice_name\CAN\SOH \SOH(\tR\vserviceNameB\n\
    \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2J\n\
    \\bprotocol\CAN\STX \SOH(\v2..envoy.data.dns.v3.DnsTable.DnsServiceProtocolR\bprotocol\DC27\n\
    \\ETXttl\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ETXttlB\n\
    \\250B\a\170\SOH\EOT2\STX\b\SOH\DC2P\n\
    \\atargets\CAN\EOT \ETX(\v2,.envoy.data.dns.v3.DnsTable.DnsServiceTargetR\atargetsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB^\n\
    \\SODnsServiceList\DC2L\n\
    \\bservices\CAN\SOH \ETX(\v2&.envoy.data.dns.v3.DnsTable.DnsServiceR\bservicesB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\157\STX\n\
    \\vDnsEndpoint\DC2L\n\
    \\faddress_list\CAN\SOH \SOH(\v2'.envoy.data.dns.v3.DnsTable.AddressListH\NULR\vaddressList\DC2#\n\
    \\fcluster_name\CAN\STX \SOH(\tH\NULR\vclusterName\DC2O\n\
    \\fservice_list\CAN\ETX \SOH(\v2*.envoy.data.dns.v3.DnsTable.DnsServiceListH\NULR\vserviceListB\SYN\n\
    \\SIendpoint_config\DC2\ETX\248B\SOH:2\154\197\136\RS-\n\
    \+envoy.data.dns.v2alpha.DnsTable.DnsEndpoint\SUB\246\SOH\n\
    \\DLEDnsVirtualDomain\DC2\RS\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\n\
    \\250B\ar\ENQ\DLE\SOH\192\SOH\SOH\DC2C\n\
    \\bendpoint\CAN\STX \SOH(\v2'.envoy.data.dns.v3.DnsTable.DnsEndpointR\bendpoint\DC2D\n\
    \\n\
    \answer_ttl\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\tanswerTtlB\n\
    \\250B\a\170\SOH\EOT2\STX\b\RS:7\154\197\136\RS2\n\
    \0envoy.data.dns.v2alpha.DnsTable.DnsVirtualDomain:&\154\197\136\RS!\n\
    \\USenvoy.data.dns.v2alpha.DnsTableB:\n\
    \\USio.envoyproxy.envoy.data.dns.v3B\rDnsTableProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\243.\n\
    \\a\DC2\ENQ\NUL\NUL\155\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL-\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL8\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\231\SOH\n\
    \\STX\EOT\NUL\DC2\ENQ\ETB\NUL\155\SOH\SOH\SUBa This message contains the configuration for the DNS Filter if populated\n\
    \ from the control plane\n\
    \2w [#protodoc-title: DNS Filter Table Data]\n\
    \ :ref:`DNS Filter config overview <config_udp_listener_filters_dns_filter>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\CAN\STXa\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\CAN\STXa\n\
    \b\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\ESC\STX(\ETX\SUBT This message contains a list of IP addresses returned for a query for a known name\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\ESC\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT\FS\EOT\GS6\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT\FS\EOT\GS6\n\
    \\129\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\EOT$\EOT'\a\SUB\240\STX This field contains a well formed IP address that is returned in the answer for a\n\
    \ name query. The address field can be an IPv4 or IPv6 address. Address family\n\
    \ detection is done automatically when Envoy parses the string. Since this field is\n\
    \ repeated, Envoy will return as many entries from this list in the DNS response while\n\
    \ keeping the response under 512 bytes\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX$\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX$\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX$\DC4\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX$\RS\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\EOT$ '\ACK\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\DC2\DC2\EOT$!'\ENQ\n\
    \L\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT+\STX8\ETX\SUB> Specify the service protocol using a numeric or string value\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX+\n\
    \\FS\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\SOH\b\NUL\DC2\EOT,\EOT7\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\b\NUL\SOH\DC2\ETX,\n\
    \\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\b\NUL\STX\DC2\ETX-\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\b\NUL\STX\175\b\DC2\ETX-\ACK(\n\
    \\148\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX3\ACK>\SUB\132\STX Specify the protocol number for the service. Envoy will try to resolve the number to\n\
    \ the protocol name. For example, 6 will resolve to \"tcp\". Refer to:\n\
    \ https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml\n\
    \ for protocol names and numbers\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETX3\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX3\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX3\SYN\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\b\DC2\ETX3\CAN=\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\NUL\b\175\b\ENQ\DC2\ETX3\EM<\n\
    \;\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX6\ACKb\SUB, Specify the protocol name for the service.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETX6\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX6\r\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX6\DC4\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\b\DC2\ETX6\SYNa\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\SOH\b\175\b\SO\DC2\ETX6\ETB`\n\
    \Q\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\EOT<\STXT\ETX\SUBC Specify the target for a given DNS service\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETX<\n\
    \\SUB\n\
    \g\n\
    \\ACK\EOT\NUL\ETX\STX\b\NUL\DC2\EOT>\EOTH\ENQ\SUBW Specify the name of the endpoint for the Service. The name is a hostname or a cluster\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\b\NUL\SOH\DC2\ETX>\n\
    \\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\b\NUL\STX\DC2\ETX?\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\STX\b\NUL\STX\175\b\DC2\ETX?\ACK(\n\
    \J\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\EOTB\ACKCV\SUB: Use a resolvable hostname as the endpoint for a service.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ENQ\DC2\ETXB\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETXB\r\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETXB\EM\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\b\DC2\ETXC\n\
    \U\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\STX\STX\NUL\b\175\b\SO\DC2\ETXC\vT\n\
    \C\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\EOTF\ACKGV\SUB3 Use a cluster name as the endpoint for a service.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\ETXF\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\ETXF\r\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\ETXF\FS\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\b\DC2\ETXG\n\
    \U\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\STX\STX\SOH\b\175\b\SO\DC2\ETXG\vT\n\
    \:\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\ETXK\EOT@\SUB+ The priority of the service record target\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ENQ\DC2\ETXK\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\ETXK\v\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\ETXK\SYN\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\b\DC2\ETXK\CAN?\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\STX\STX\STX\b\175\b\ENQ\DC2\ETXK\EM>\n\
    \8\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\ETXN\EOT>\SUB) The weight of the service record target\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ENQ\DC2\ETXN\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\ETXN\v\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\ETXN\DC4\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\b\DC2\ETXN\SYN=\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\STX\STX\ETX\b\175\b\ENQ\DC2\ETXN\ETB<\n\
    \\202\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\EOT\DC2\ETXS\EOT<\SUB\186\SOH The port to which the service is bound. This value is optional if the target is a\n\
    \ cluster. Setting port to zero in this case makes the filter use the port value\n\
    \ from the cluster host\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ENQ\DC2\ETXS\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\SOH\DC2\ETXS\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ETX\DC2\ETXS\DC2\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\b\DC2\ETXS\DC4;\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\STX\STX\EOT\b\175\b\ENQ\DC2\ETXS\NAK:\n\
    \h\n\
    \\EOT\EOT\NUL\ETX\ETX\DC2\EOTW\STXd\ETX\SUBZ This message defines a service selection record returned for a service query in a domain\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\ETX\SOH\DC2\ETXW\n\
    \\DC4\n\
    \M\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\NUL\DC2\EOTY\EOTZT\SUB= The name of the service without the protocol or domain name\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ENQ\DC2\ETXY\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\SOH\DC2\ETXY\v\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ETX\DC2\ETXY\SUB\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\b\DC2\ETXZ\bS\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\ETX\STX\NUL\b\175\b\SO\DC2\ETXZ\tR\n\
    \m\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\SOH\DC2\ETX]\EOT$\SUB^ The service protocol. This can be specified as a string or the numeric value of the protocol\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ACK\DC2\ETX]\EOT\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\SOH\DC2\ETX]\ETB\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ETX\DC2\ETX]\"#\n\
    \c\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\STX\DC2\ETX`\EOTV\SUBT The service entry time to live. This is independent from the DNS Answer record TTL\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\ACK\DC2\ETX`\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\SOH\DC2\ETX`\GS \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\ETX\DC2\ETX`#$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\b\DC2\ETX`%U\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\ETX\STX\STX\b\175\b\NAK\DC2\ETX`&T\n\
    \8\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\ETX\DC2\ETXc\EOTW\SUB) The list of targets hosting the service\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\ETX\EOT\DC2\ETXc\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\ETX\ACK\DC2\ETXc\r\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\ETX\SOH\DC2\ETXc\RS%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\ETX\ETX\DC2\ETXc()\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\ETX\b\DC2\ETXc*V\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\ETX\STX\ETX\b\175\b\DC2\DC2\ETXc+U\n\
    \D\n\
    \\EOT\EOT\NUL\ETX\EOT\DC2\EOTg\STXi\ETX\SUB6 Define a list of service records for a given service\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\EOT\SOH\DC2\ETXg\n\
    \\CAN\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\NUL\DC2\ETXh\EOTR\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\EOT\DC2\ETXh\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\ACK\DC2\ETXh\r\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\SOH\DC2\ETXh\CAN \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\ETX\DC2\ETXh#$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\b\DC2\ETXh%Q\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\EOT\STX\NUL\b\175\b\DC2\DC2\ETXh&P\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\ENQ\DC2\EOTk\STX{\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\ENQ\SOH\DC2\ETXk\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ENQ\a\DC2\EOTl\EOTm6\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\ENQ\a\211\136\225\ETX\SOH\DC2\EOTl\EOTm6\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ENQ\b\NUL\DC2\EOTo\EOTz\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\b\NUL\SOH\DC2\ETXo\n\
    \\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\b\NUL\STX\DC2\ETXp\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\ENQ\b\NUL\STX\175\b\DC2\ETXp\ACK(\n\
    \P\n\
    \\ACK\EOT\NUL\ETX\ENQ\STX\NUL\DC2\ETXs\ACK#\SUBA Define a list of addresses to return for the specified endpoint\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\ACK\DC2\ETXs\ACK\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\SOH\DC2\ETXs\DC2\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\ETX\DC2\ETXs!\"\n\
    \Y\n\
    \\ACK\EOT\NUL\ETX\ENQ\STX\SOH\DC2\ETXv\ACK\RS\SUBJ Define a cluster whose addresses are returned for the specified endpoint\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\ENQ\DC2\ETXv\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\SOH\DC2\ETXv\r\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\ETX\DC2\ETXv\FS\GS\n\
    \E\n\
    \\ACK\EOT\NUL\ETX\ENQ\STX\STX\DC2\ETXy\ACK&\SUB6 Define a DNS Service List for the specified endpoint\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\STX\ACK\DC2\ETXy\ACK\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\STX\SOH\DC2\ETXy\NAK!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\STX\ETX\DC2\ETXy$%\n\
    \\r\n\
    \\EOT\EOT\NUL\ETX\ACK\DC2\ENQ}\STX\137\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\ACK\SOH\DC2\ETX}\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ACK\a\DC2\EOT~\EOT\DEL;\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\ACK\a\211\136\225\ETX\SOH\DC2\EOT~\EOT\DEL;\n\
    \N\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\NUL\DC2\EOT\130\SOH\EOT`\SUB> A domain name for which Envoy will respond to query requests\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\ENQ\DC2\EOT\130\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\SOH\DC2\EOT\130\SOH\v\SI\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\ETX\DC2\EOT\130\SOH\DC2\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\b\DC2\EOT\130\SOH\DC4_\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\ACK\STX\NUL\b\175\b\SO\DC2\EOT\130\SOH\NAK^\n\
    \c\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\SOH\DC2\EOT\133\SOH\EOT\GS\SUBS The configuration containing the method to determine the address of this endpoint\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\SOH\ACK\DC2\EOT\133\SOH\EOT\SI\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\SOH\SOH\DC2\EOT\133\SOH\DLE\CAN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\SOH\ETX\DC2\EOT\133\SOH\ESC\FS\n\
    \h\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\STX\DC2\EOT\136\SOH\EOT^\SUBX Sets the TTL in DNS answers from Envoy returned to the client. The default TTL is 300s\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\STX\ACK\DC2\EOT\136\SOH\EOT\FS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\STX\SOH\DC2\EOT\136\SOH\GS'\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\STX\ETX\DC2\EOT\136\SOH*+\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\STX\b\DC2\EOT\136\SOH,]\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\ACK\STX\STX\b\175\b\NAK\DC2\EOT\136\SOH-\\\n\
    \j\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\140\SOH\STXG\SUB\\ Control how many times Envoy makes an attempt to forward a query to an external DNS server\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\EOT\140\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\140\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\EOT\140\SOH !\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\140\SOH\"F\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ENQ\DC2\EOT\140\SOH#E\n\
    \\172\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\144\SOH\STX0\SUB\157\SOH Fully qualified domain names for which Envoy will respond to DNS queries. By leaving this\n\
    \ list empty, Envoy will forward all queries to external resolvers\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\EOT\144\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\EOT\144\SOH\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\144\SOH\FS+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\144\SOH./\n\
    \\243\ETX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ACK\153\SOH\STX\154\SOHS\SUB\226\ETX This field is deprecated and no longer used in Envoy. The filter's behavior has changed\n\
    \ internally to use a different data structure allowing the filter to determine whether a\n\
    \ query is for known domain without the use of this field.\n\
    \\n\
    \ This field serves to help Envoy determine whether it can authoritatively answer a query\n\
    \ for a name matching a suffix in this list. If the query name does not match a suffix in\n\
    \ this list, Envoy will forward the query to an upstream DNS server\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\EOT\153\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\EOT\153\SOH\v(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\153\SOH)7\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\EOT\153\SOH:;\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT\154\SOH\ACKR\n\
    \\SO\n\
    \\ACK\EOT\NUL\STX\STX\b\ETX\DC2\EOT\154\SOH\a\CAN\n\
    \\DC1\n\
    \\t\EOT\NUL\STX\STX\b\242\232\128K\DC2\EOT\154\SOH\SUBQb\ACKproto3"