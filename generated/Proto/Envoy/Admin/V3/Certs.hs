{- This file was auto-generated from envoy/admin/v3/certs.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.Certs (
        Certificate(), CertificateDetails(),
        CertificateDetails'OcspDetails(), Certificates(),
        SubjectAlternateName(), SubjectAlternateName'Name(..),
        _SubjectAlternateName'Dns, _SubjectAlternateName'Uri,
        _SubjectAlternateName'IpAddress
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
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Certs_Fields.caCert' @:: Lens' Certificate [CertificateDetails]@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.vec'caCert' @:: Lens' Certificate (Data.Vector.Vector CertificateDetails)@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.certChain' @:: Lens' Certificate [CertificateDetails]@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.vec'certChain' @:: Lens' Certificate (Data.Vector.Vector CertificateDetails)@ -}
data Certificate
  = Certificate'_constructor {_Certificate'caCert :: !(Data.Vector.Vector CertificateDetails),
                              _Certificate'certChain :: !(Data.Vector.Vector CertificateDetails),
                              _Certificate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Certificate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Certificate "caCert" [CertificateDetails] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'caCert (\ x__ y__ -> x__ {_Certificate'caCert = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Certificate "vec'caCert" (Data.Vector.Vector CertificateDetails) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'caCert (\ x__ y__ -> x__ {_Certificate'caCert = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Certificate "certChain" [CertificateDetails] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certChain
           (\ x__ y__ -> x__ {_Certificate'certChain = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Certificate "vec'certChain" (Data.Vector.Vector CertificateDetails) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certChain
           (\ x__ y__ -> x__ {_Certificate'certChain = y__}))
        Prelude.id
instance Data.ProtoLens.Message Certificate where
  messageName _ = Data.Text.pack "envoy.admin.v3.Certificate"
  packedMessageDescriptor _
    = "\n\
      \\vCertificate\DC2;\n\
      \\aca_cert\CAN\SOH \ETX(\v2\".envoy.admin.v3.CertificateDetailsR\ACKcaCert\DC2A\n\
      \\n\
      \cert_chain\CAN\STX \ETX(\v2\".envoy.admin.v3.CertificateDetailsR\tcertChain:&\154\197\136\RS!\n\
      \\USenvoy.admin.v2alpha.Certificate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        caCert__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ca_cert"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CertificateDetails)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"caCert")) ::
              Data.ProtoLens.FieldDescriptor Certificate
        certChain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cert_chain"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CertificateDetails)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"certChain")) ::
              Data.ProtoLens.FieldDescriptor Certificate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, caCert__field_descriptor),
           (Data.ProtoLens.Tag 2, certChain__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Certificate'_unknownFields
        (\ x__ y__ -> x__ {_Certificate'_unknownFields = y__})
  defMessage
    = Certificate'_constructor
        {_Certificate'caCert = Data.Vector.Generic.empty,
         _Certificate'certChain = Data.Vector.Generic.empty,
         _Certificate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Certificate
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CertificateDetails
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CertificateDetails
                -> Data.ProtoLens.Encoding.Bytes.Parser Certificate
        loop x mutable'caCert mutable'certChain
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'caCert <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'caCert)
                      frozen'certChain <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'certChain)
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
                              (Data.ProtoLens.Field.field @"vec'caCert")
                              frozen'caCert
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'certChain") frozen'certChain x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ca_cert"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'caCert y)
                                loop x v mutable'certChain
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "cert_chain"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'certChain y)
                                loop x mutable'caCert v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'caCert
                                  mutable'certChain
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'caCert <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'certChain <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'caCert mutable'certChain)
          "Certificate"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'caCert") _x))
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
                      (Data.ProtoLens.Field.field @"vec'certChain") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Certificate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Certificate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Certificate'caCert x__)
                (Control.DeepSeq.deepseq (_Certificate'certChain x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Certs_Fields.path' @:: Lens' CertificateDetails Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.serialNumber' @:: Lens' CertificateDetails Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.subjectAltNames' @:: Lens' CertificateDetails [SubjectAlternateName]@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.vec'subjectAltNames' @:: Lens' CertificateDetails (Data.Vector.Vector SubjectAlternateName)@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.daysUntilExpiration' @:: Lens' CertificateDetails Data.Word.Word64@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.validFrom' @:: Lens' CertificateDetails Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.maybe'validFrom' @:: Lens' CertificateDetails (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.expirationTime' @:: Lens' CertificateDetails Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.maybe'expirationTime' @:: Lens' CertificateDetails (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.ocspDetails' @:: Lens' CertificateDetails CertificateDetails'OcspDetails@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.maybe'ocspDetails' @:: Lens' CertificateDetails (Prelude.Maybe CertificateDetails'OcspDetails)@ -}
data CertificateDetails
  = CertificateDetails'_constructor {_CertificateDetails'path :: !Data.Text.Text,
                                     _CertificateDetails'serialNumber :: !Data.Text.Text,
                                     _CertificateDetails'subjectAltNames :: !(Data.Vector.Vector SubjectAlternateName),
                                     _CertificateDetails'daysUntilExpiration :: !Data.Word.Word64,
                                     _CertificateDetails'validFrom :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                     _CertificateDetails'expirationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                     _CertificateDetails'ocspDetails :: !(Prelude.Maybe CertificateDetails'OcspDetails),
                                     _CertificateDetails'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CertificateDetails where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CertificateDetails "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'path
           (\ x__ y__ -> x__ {_CertificateDetails'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateDetails "serialNumber" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'serialNumber
           (\ x__ y__ -> x__ {_CertificateDetails'serialNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateDetails "subjectAltNames" [SubjectAlternateName] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'subjectAltNames
           (\ x__ y__ -> x__ {_CertificateDetails'subjectAltNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CertificateDetails "vec'subjectAltNames" (Data.Vector.Vector SubjectAlternateName) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'subjectAltNames
           (\ x__ y__ -> x__ {_CertificateDetails'subjectAltNames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateDetails "daysUntilExpiration" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'daysUntilExpiration
           (\ x__ y__ -> x__ {_CertificateDetails'daysUntilExpiration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateDetails "validFrom" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'validFrom
           (\ x__ y__ -> x__ {_CertificateDetails'validFrom = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CertificateDetails "maybe'validFrom" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'validFrom
           (\ x__ y__ -> x__ {_CertificateDetails'validFrom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateDetails "expirationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'expirationTime
           (\ x__ y__ -> x__ {_CertificateDetails'expirationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CertificateDetails "maybe'expirationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'expirationTime
           (\ x__ y__ -> x__ {_CertificateDetails'expirationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateDetails "ocspDetails" CertificateDetails'OcspDetails where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'ocspDetails
           (\ x__ y__ -> x__ {_CertificateDetails'ocspDetails = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CertificateDetails "maybe'ocspDetails" (Prelude.Maybe CertificateDetails'OcspDetails) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'ocspDetails
           (\ x__ y__ -> x__ {_CertificateDetails'ocspDetails = y__}))
        Prelude.id
instance Data.ProtoLens.Message CertificateDetails where
  messageName _ = Data.Text.pack "envoy.admin.v3.CertificateDetails"
  packedMessageDescriptor _
    = "\n\
      \\DC2CertificateDetails\DC2\DC2\n\
      \\EOTpath\CAN\SOH \SOH(\tR\EOTpath\DC2#\n\
      \\rserial_number\CAN\STX \SOH(\tR\fserialNumber\DC2P\n\
      \\DC1subject_alt_names\CAN\ETX \ETX(\v2$.envoy.admin.v3.SubjectAlternateNameR\SIsubjectAltNames\DC22\n\
      \\NAKdays_until_expiration\CAN\EOT \SOH(\EOTR\DC3daysUntilExpiration\DC29\n\
      \\n\
      \valid_from\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\tvalidFrom\DC2C\n\
      \\SIexpiration_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTime\DC2Q\n\
      \\focsp_details\CAN\a \SOH(\v2..envoy.admin.v3.CertificateDetails.OcspDetailsR\vocspDetails\SUB\132\SOH\n\
      \\vOcspDetails\DC29\n\
      \\n\
      \valid_from\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\tvalidFrom\DC2:\n\
      \\n\
      \expiration\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \expiration:-\154\197\136\RS(\n\
      \&envoy.admin.v2alpha.CertificateDetails"
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
              Data.ProtoLens.FieldDescriptor CertificateDetails
        serialNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "serial_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serialNumber")) ::
              Data.ProtoLens.FieldDescriptor CertificateDetails
        subjectAltNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subject_alt_names"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SubjectAlternateName)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"subjectAltNames")) ::
              Data.ProtoLens.FieldDescriptor CertificateDetails
        daysUntilExpiration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "days_until_expiration"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"daysUntilExpiration")) ::
              Data.ProtoLens.FieldDescriptor CertificateDetails
        validFrom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "valid_from"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validFrom")) ::
              Data.ProtoLens.FieldDescriptor CertificateDetails
        expirationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expirationTime")) ::
              Data.ProtoLens.FieldDescriptor CertificateDetails
        ocspDetails__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ocsp_details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CertificateDetails'OcspDetails)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ocspDetails")) ::
              Data.ProtoLens.FieldDescriptor CertificateDetails
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, serialNumber__field_descriptor),
           (Data.ProtoLens.Tag 3, subjectAltNames__field_descriptor),
           (Data.ProtoLens.Tag 4, daysUntilExpiration__field_descriptor),
           (Data.ProtoLens.Tag 5, validFrom__field_descriptor),
           (Data.ProtoLens.Tag 6, expirationTime__field_descriptor),
           (Data.ProtoLens.Tag 7, ocspDetails__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CertificateDetails'_unknownFields
        (\ x__ y__ -> x__ {_CertificateDetails'_unknownFields = y__})
  defMessage
    = CertificateDetails'_constructor
        {_CertificateDetails'path = Data.ProtoLens.fieldDefault,
         _CertificateDetails'serialNumber = Data.ProtoLens.fieldDefault,
         _CertificateDetails'subjectAltNames = Data.Vector.Generic.empty,
         _CertificateDetails'daysUntilExpiration = Data.ProtoLens.fieldDefault,
         _CertificateDetails'validFrom = Prelude.Nothing,
         _CertificateDetails'expirationTime = Prelude.Nothing,
         _CertificateDetails'ocspDetails = Prelude.Nothing,
         _CertificateDetails'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CertificateDetails
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SubjectAlternateName
             -> Data.ProtoLens.Encoding.Bytes.Parser CertificateDetails
        loop x mutable'subjectAltNames
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'subjectAltNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'subjectAltNames)
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
                              (Data.ProtoLens.Field.field @"vec'subjectAltNames")
                              frozen'subjectAltNames
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
                                       "path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                                  mutable'subjectAltNames
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
                                       "serial_number"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"serialNumber") y x)
                                  mutable'subjectAltNames
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "subject_alt_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'subjectAltNames y)
                                loop x v
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "days_until_expiration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"daysUntilExpiration") y x)
                                  mutable'subjectAltNames
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "valid_from"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"validFrom") y x)
                                  mutable'subjectAltNames
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expirationTime") y x)
                                  mutable'subjectAltNames
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ocsp_details"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ocspDetails") y x)
                                  mutable'subjectAltNames
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'subjectAltNames
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'subjectAltNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'subjectAltNames)
          "CertificateDetails"
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
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"serialNumber") _x
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
                                 Data.ProtoLens.encodeMessage
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'subjectAltNames") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"daysUntilExpiration") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'validFrom") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'expirationTime") _x
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
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'ocspDetails") _x
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
instance Control.DeepSeq.NFData CertificateDetails where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CertificateDetails'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CertificateDetails'path x__)
                (Control.DeepSeq.deepseq
                   (_CertificateDetails'serialNumber x__)
                   (Control.DeepSeq.deepseq
                      (_CertificateDetails'subjectAltNames x__)
                      (Control.DeepSeq.deepseq
                         (_CertificateDetails'daysUntilExpiration x__)
                         (Control.DeepSeq.deepseq
                            (_CertificateDetails'validFrom x__)
                            (Control.DeepSeq.deepseq
                               (_CertificateDetails'expirationTime x__)
                               (Control.DeepSeq.deepseq
                                  (_CertificateDetails'ocspDetails x__) ())))))))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Certs_Fields.validFrom' @:: Lens' CertificateDetails'OcspDetails Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.maybe'validFrom' @:: Lens' CertificateDetails'OcspDetails (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.expiration' @:: Lens' CertificateDetails'OcspDetails Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.maybe'expiration' @:: Lens' CertificateDetails'OcspDetails (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data CertificateDetails'OcspDetails
  = CertificateDetails'OcspDetails'_constructor {_CertificateDetails'OcspDetails'validFrom :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                 _CertificateDetails'OcspDetails'expiration :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                 _CertificateDetails'OcspDetails'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CertificateDetails'OcspDetails where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CertificateDetails'OcspDetails "validFrom" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'OcspDetails'validFrom
           (\ x__ y__
              -> x__ {_CertificateDetails'OcspDetails'validFrom = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CertificateDetails'OcspDetails "maybe'validFrom" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'OcspDetails'validFrom
           (\ x__ y__
              -> x__ {_CertificateDetails'OcspDetails'validFrom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateDetails'OcspDetails "expiration" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'OcspDetails'expiration
           (\ x__ y__
              -> x__ {_CertificateDetails'OcspDetails'expiration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CertificateDetails'OcspDetails "maybe'expiration" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateDetails'OcspDetails'expiration
           (\ x__ y__
              -> x__ {_CertificateDetails'OcspDetails'expiration = y__}))
        Prelude.id
instance Data.ProtoLens.Message CertificateDetails'OcspDetails where
  messageName _
    = Data.Text.pack "envoy.admin.v3.CertificateDetails.OcspDetails"
  packedMessageDescriptor _
    = "\n\
      \\vOcspDetails\DC29\n\
      \\n\
      \valid_from\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\tvalidFrom\DC2:\n\
      \\n\
      \expiration\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \expiration"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validFrom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "valid_from"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validFrom")) ::
              Data.ProtoLens.FieldDescriptor CertificateDetails'OcspDetails
        expiration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expiration")) ::
              Data.ProtoLens.FieldDescriptor CertificateDetails'OcspDetails
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validFrom__field_descriptor),
           (Data.ProtoLens.Tag 2, expiration__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CertificateDetails'OcspDetails'_unknownFields
        (\ x__ y__
           -> x__ {_CertificateDetails'OcspDetails'_unknownFields = y__})
  defMessage
    = CertificateDetails'OcspDetails'_constructor
        {_CertificateDetails'OcspDetails'validFrom = Prelude.Nothing,
         _CertificateDetails'OcspDetails'expiration = Prelude.Nothing,
         _CertificateDetails'OcspDetails'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CertificateDetails'OcspDetails
          -> Data.ProtoLens.Encoding.Bytes.Parser CertificateDetails'OcspDetails
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
                                       "valid_from"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"validFrom") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"expiration") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OcspDetails"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'validFrom") _x
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
                       (Data.ProtoLens.Field.field @"maybe'expiration") _x
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
instance Control.DeepSeq.NFData CertificateDetails'OcspDetails where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CertificateDetails'OcspDetails'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CertificateDetails'OcspDetails'validFrom x__)
                (Control.DeepSeq.deepseq
                   (_CertificateDetails'OcspDetails'expiration x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Certs_Fields.certificates' @:: Lens' Certificates [Certificate]@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.vec'certificates' @:: Lens' Certificates (Data.Vector.Vector Certificate)@ -}
data Certificates
  = Certificates'_constructor {_Certificates'certificates :: !(Data.Vector.Vector Certificate),
                               _Certificates'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Certificates where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Certificates "certificates" [Certificate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificates'certificates
           (\ x__ y__ -> x__ {_Certificates'certificates = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Certificates "vec'certificates" (Data.Vector.Vector Certificate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificates'certificates
           (\ x__ y__ -> x__ {_Certificates'certificates = y__}))
        Prelude.id
instance Data.ProtoLens.Message Certificates where
  messageName _ = Data.Text.pack "envoy.admin.v3.Certificates"
  packedMessageDescriptor _
    = "\n\
      \\fCertificates\DC2?\n\
      \\fcertificates\CAN\SOH \ETX(\v2\ESC.envoy.admin.v3.CertificateR\fcertificates:'\154\197\136\RS\"\n\
      \ envoy.admin.v2alpha.Certificates"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        certificates__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "certificates"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Certificate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"certificates")) ::
              Data.ProtoLens.FieldDescriptor Certificates
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, certificates__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Certificates'_unknownFields
        (\ x__ y__ -> x__ {_Certificates'_unknownFields = y__})
  defMessage
    = Certificates'_constructor
        {_Certificates'certificates = Data.Vector.Generic.empty,
         _Certificates'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Certificates
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Certificate
             -> Data.ProtoLens.Encoding.Bytes.Parser Certificates
        loop x mutable'certificates
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'certificates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'certificates)
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
                              (Data.ProtoLens.Field.field @"vec'certificates")
                              frozen'certificates
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "certificates"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'certificates y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'certificates
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'certificates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'certificates)
          "Certificates"
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
                   (Data.ProtoLens.Field.field @"vec'certificates") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Certificates where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Certificates'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Certificates'certificates x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Certs_Fields.maybe'name' @:: Lens' SubjectAlternateName (Prelude.Maybe SubjectAlternateName'Name)@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.maybe'dns' @:: Lens' SubjectAlternateName (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.dns' @:: Lens' SubjectAlternateName Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.maybe'uri' @:: Lens' SubjectAlternateName (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.uri' @:: Lens' SubjectAlternateName Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.maybe'ipAddress' @:: Lens' SubjectAlternateName (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Admin.V3.Certs_Fields.ipAddress' @:: Lens' SubjectAlternateName Data.Text.Text@ -}
data SubjectAlternateName
  = SubjectAlternateName'_constructor {_SubjectAlternateName'name :: !(Prelude.Maybe SubjectAlternateName'Name),
                                       _SubjectAlternateName'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SubjectAlternateName where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data SubjectAlternateName'Name
  = SubjectAlternateName'Dns !Data.Text.Text |
    SubjectAlternateName'Uri !Data.Text.Text |
    SubjectAlternateName'IpAddress !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SubjectAlternateName "maybe'name" (Prelude.Maybe SubjectAlternateName'Name) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubjectAlternateName'name
           (\ x__ y__ -> x__ {_SubjectAlternateName'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SubjectAlternateName "maybe'dns" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubjectAlternateName'name
           (\ x__ y__ -> x__ {_SubjectAlternateName'name = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SubjectAlternateName'Dns x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SubjectAlternateName'Dns y__))
instance Data.ProtoLens.Field.HasField SubjectAlternateName "dns" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubjectAlternateName'name
           (\ x__ y__ -> x__ {_SubjectAlternateName'name = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SubjectAlternateName'Dns x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SubjectAlternateName'Dns y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField SubjectAlternateName "maybe'uri" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubjectAlternateName'name
           (\ x__ y__ -> x__ {_SubjectAlternateName'name = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SubjectAlternateName'Uri x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SubjectAlternateName'Uri y__))
instance Data.ProtoLens.Field.HasField SubjectAlternateName "uri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubjectAlternateName'name
           (\ x__ y__ -> x__ {_SubjectAlternateName'name = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SubjectAlternateName'Uri x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SubjectAlternateName'Uri y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField SubjectAlternateName "maybe'ipAddress" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubjectAlternateName'name
           (\ x__ y__ -> x__ {_SubjectAlternateName'name = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SubjectAlternateName'IpAddress x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SubjectAlternateName'IpAddress y__))
instance Data.ProtoLens.Field.HasField SubjectAlternateName "ipAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubjectAlternateName'name
           (\ x__ y__ -> x__ {_SubjectAlternateName'name = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SubjectAlternateName'IpAddress x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SubjectAlternateName'IpAddress y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message SubjectAlternateName where
  messageName _
    = Data.Text.pack "envoy.admin.v3.SubjectAlternateName"
  packedMessageDescriptor _
    = "\n\
      \\DC4SubjectAlternateName\DC2\DC2\n\
      \\ETXdns\CAN\SOH \SOH(\tH\NULR\ETXdns\DC2\DC2\n\
      \\ETXuri\CAN\STX \SOH(\tH\NULR\ETXuri\DC2\US\n\
      \\n\
      \ip_address\CAN\ETX \SOH(\tH\NULR\tipAddressB\ACK\n\
      \\EOTname:/\154\197\136\RS*\n\
      \(envoy.admin.v2alpha.SubjectAlternateName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dns__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dns")) ::
              Data.ProtoLens.FieldDescriptor SubjectAlternateName
        uri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uri")) ::
              Data.ProtoLens.FieldDescriptor SubjectAlternateName
        ipAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ipAddress")) ::
              Data.ProtoLens.FieldDescriptor SubjectAlternateName
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dns__field_descriptor),
           (Data.ProtoLens.Tag 2, uri__field_descriptor),
           (Data.ProtoLens.Tag 3, ipAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SubjectAlternateName'_unknownFields
        (\ x__ y__ -> x__ {_SubjectAlternateName'_unknownFields = y__})
  defMessage
    = SubjectAlternateName'_constructor
        {_SubjectAlternateName'name = Prelude.Nothing,
         _SubjectAlternateName'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SubjectAlternateName
          -> Data.ProtoLens.Encoding.Bytes.Parser SubjectAlternateName
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
                                       "dns"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dns") y x)
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
                                       "uri"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uri") y x)
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
                                       "ip_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ipAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SubjectAlternateName"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (SubjectAlternateName'Dns v))
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
                (Prelude.Just (SubjectAlternateName'Uri v))
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
                (Prelude.Just (SubjectAlternateName'IpAddress v))
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
instance Control.DeepSeq.NFData SubjectAlternateName where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SubjectAlternateName'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SubjectAlternateName'name x__) ())
instance Control.DeepSeq.NFData SubjectAlternateName'Name where
  rnf (SubjectAlternateName'Dns x__) = Control.DeepSeq.rnf x__
  rnf (SubjectAlternateName'Uri x__) = Control.DeepSeq.rnf x__
  rnf (SubjectAlternateName'IpAddress x__) = Control.DeepSeq.rnf x__
_SubjectAlternateName'Dns ::
  Data.ProtoLens.Prism.Prism' SubjectAlternateName'Name Data.Text.Text
_SubjectAlternateName'Dns
  = Data.ProtoLens.Prism.prism'
      SubjectAlternateName'Dns
      (\ p__
         -> case p__ of
              (SubjectAlternateName'Dns p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SubjectAlternateName'Uri ::
  Data.ProtoLens.Prism.Prism' SubjectAlternateName'Name Data.Text.Text
_SubjectAlternateName'Uri
  = Data.ProtoLens.Prism.prism'
      SubjectAlternateName'Uri
      (\ p__
         -> case p__ of
              (SubjectAlternateName'Uri p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SubjectAlternateName'IpAddress ::
  Data.ProtoLens.Prism.Prism' SubjectAlternateName'Name Data.Text.Text
_SubjectAlternateName'IpAddress
  = Data.ProtoLens.Prism.prism'
      SubjectAlternateName'IpAddress
      (\ p__
         -> case p__ of
              (SubjectAlternateName'IpAddress p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\SUBenvoy/admin/v3/certs.proto\DC2\SOenvoy.admin.v3\SUB\USgoogle/protobuf/timestamp.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"x\n\
    \\fCertificates\DC2?\n\
    \\fcertificates\CAN\SOH \ETX(\v2\ESC.envoy.admin.v3.CertificateR\fcertificates:'\154\197\136\RS\"\n\
    \ envoy.admin.v2alpha.Certificates\"\181\SOH\n\
    \\vCertificate\DC2;\n\
    \\aca_cert\CAN\SOH \ETX(\v2\".envoy.admin.v3.CertificateDetailsR\ACKcaCert\DC2A\n\
    \\n\
    \cert_chain\CAN\STX \ETX(\v2\".envoy.admin.v3.CertificateDetailsR\tcertChain:&\154\197\136\RS!\n\
    \\USenvoy.admin.v2alpha.Certificate\"\220\EOT\n\
    \\DC2CertificateDetails\DC2\DC2\n\
    \\EOTpath\CAN\SOH \SOH(\tR\EOTpath\DC2#\n\
    \\rserial_number\CAN\STX \SOH(\tR\fserialNumber\DC2P\n\
    \\DC1subject_alt_names\CAN\ETX \ETX(\v2$.envoy.admin.v3.SubjectAlternateNameR\SIsubjectAltNames\DC22\n\
    \\NAKdays_until_expiration\CAN\EOT \SOH(\EOTR\DC3daysUntilExpiration\DC29\n\
    \\n\
    \valid_from\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\tvalidFrom\DC2C\n\
    \\SIexpiration_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTime\DC2Q\n\
    \\focsp_details\CAN\a \SOH(\v2..envoy.admin.v3.CertificateDetails.OcspDetailsR\vocspDetails\SUB\132\SOH\n\
    \\vOcspDetails\DC29\n\
    \\n\
    \valid_from\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\tvalidFrom\DC2:\n\
    \\n\
    \expiration\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \expiration:-\154\197\136\RS(\n\
    \&envoy.admin.v2alpha.CertificateDetails\"\152\SOH\n\
    \\DC4SubjectAlternateName\DC2\DC2\n\
    \\ETXdns\CAN\SOH \SOH(\tH\NULR\ETXdns\DC2\DC2\n\
    \\ETXuri\CAN\STX \SOH(\tH\NULR\ETXuri\DC2\US\n\
    \\n\
    \ip_address\CAN\ETX \SOH(\tH\NULR\tipAddressB\ACK\n\
    \\EOTname:/\154\197\136\RS*\n\
    \(envoy.admin.v2alpha.SubjectAlternateNameB4\n\
    \\FSio.envoyproxy.envoy.admin.v3B\n\
    \CertsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\148\DC1\n\
    \\ACK\DC2\EOT\NUL\NULS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ETB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\253\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\CAN\SOH\SUB\205\SOH Proto representation of certificate details. Admin endpoint uses this wrapper for `/certs` to\n\
    \ display certificate information. See :ref:`/certs <operations_admin_interface_certs>` for more\n\
    \ information.\n\
    \2! [#protodoc-title: Certificates]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC4\STXb\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC4\STXb\n\
    \6\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STX(\SUB) List of certificates known to an Envoy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ETB\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\ETB#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB&'\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\SUB\NUL\"\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SUB\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\ESC\STXa\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX\ESC\STXa\n\
    \)\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\RS\STX*\SUB\FS Details of CA certificate.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\RS\v\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\RS\RS%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\RS()\n\
    \+\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX!\STX-\SUB\RS Details of Certificate Chain\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX!\v\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX!\RS(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX!+,\n\
    \#\n\
    \\STX\EOT\STX\DC2\EOT%\NULE\SOH\SUB\ETB [#next-free-field: 8]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX%\b\SUB\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT&\STX'/\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT&\STX'/\n\
    \\f\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\EOT)\STX/\ETX\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\ETX)\n\
    \\NAK\n\
    \J\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\ETX+\EOT-\SUB; Indicates the time from which the OCSP response is valid.\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ACK\DC2\ETX+\EOT\GS\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\ETX+\RS(\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\ETX++,\n\
    \G\n\
    \\ACK\EOT\STX\ETX\NUL\STX\SOH\DC2\ETX.\EOT-\SUB8 Indicates the time at which the OCSP response expires.\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ACK\DC2\ETX.\EOT\GS\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\SOH\DC2\ETX.\RS(\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ETX\DC2\ETX.+,\n\
    \'\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX2\STX\DC2\SUB\SUB Path of the certificate.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX2\t\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX2\DLE\DC1\n\
    \)\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX5\STX\ESC\SUB\FS Certificate Serial Number.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX5\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX5\EM\SUB\n\
    \/\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX8\STX6\SUB\" List of Subject Alternate names.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX8\v\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX8 1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX845\n\
    \N\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX;\STX#\SUBA Minimum of days until expiration of certificate and it's chain.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX;\t\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX;!\"\n\
    \F\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX>\STX+\SUB9 Indicates the time from which the certificate is valid.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETX>\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX>\FS&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX>)*\n\
    \C\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXA\STX0\SUB6 Indicates the time at which the certificate expires.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ACK\DC2\ETXA\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXA\FS+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXA./\n\
    \]\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETXD\STX\US\SUBP Details related to the OCSP response associated with this certificate, if any.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\ETXD\STX\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETXD\SO\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETXD\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOTG\NULS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXG\b\FS\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOTH\STXI1\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOTH\STXI1\n\
    \'\n\
    \\EOT\EOT\ETX\b\NUL\DC2\EOTL\STXR\ETX\SUB\EM Subject Alternate Name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\ETXL\b\f\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXM\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXM\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXM\v\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXM\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXO\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXO\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXO\v\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXO\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXQ\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXQ\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXQ\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXQ\CAN\EMb\ACKproto3"