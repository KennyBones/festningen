<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/bigtable/admin/v2/bigtable_instance_admin.proto

namespace GPBMetadata\Google\Bigtable\Admin\V2;

class BigtableInstanceAdmin
{
    public static $is_initialized = false;

    public static function initOnce() {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();

        if (static::$is_initialized == true) {
          return;
        }
        \GPBMetadata\Google\Api\Annotations::initOnce();
        \GPBMetadata\Google\Bigtable\Admin\V2\Instance::initOnce();
        \GPBMetadata\Google\Iam\V1\IamPolicy::initOnce();
        \GPBMetadata\Google\Iam\V1\Policy::initOnce();
        \GPBMetadata\Google\Longrunning\Operations::initOnce();
        \GPBMetadata\Google\Protobuf\GPBEmpty::initOnce();
        \GPBMetadata\Google\Protobuf\FieldMask::initOnce();
        \GPBMetadata\Google\Protobuf\Timestamp::initOnce();
        $pool->internalAddGeneratedFile(hex2bin(
            "0a852f0a36676f6f676c652f6269677461626c652f61646d696e2f76322f" .
            "6269677461626c655f696e7374616e63655f61646d696e2e70726f746f12" .
            "18676f6f676c652e6269677461626c652e61646d696e2e76321a27676f6f" .
            "676c652f6269677461626c652f61646d696e2f76322f696e7374616e6365" .
            "2e70726f746f1a1e676f6f676c652f69616d2f76312f69616d5f706f6c69" .
            "63792e70726f746f1a1a676f6f676c652f69616d2f76312f706f6c696379" .
            "2e70726f746f1a23676f6f676c652f6c6f6e6772756e6e696e672f6f7065" .
            "726174696f6e732e70726f746f1a1b676f6f676c652f70726f746f627566" .
            "2f656d7074792e70726f746f1a20676f6f676c652f70726f746f6275662f" .
            "6669656c645f6d61736b2e70726f746f1a1f676f6f676c652f70726f746f" .
            "6275662f74696d657374616d702e70726f746f2297020a15437265617465" .
            "496e7374616e636552657175657374120e0a06706172656e741801200128" .
            "0912130a0b696e7374616e63655f696418022001280912340a08696e7374" .
            "616e636518032001280b32222e676f6f676c652e6269677461626c652e61" .
            "646d696e2e76322e496e7374616e6365124f0a08636c7573746572731804" .
            "2003280b323d2e676f6f676c652e6269677461626c652e61646d696e2e76" .
            "322e437265617465496e7374616e6365526571756573742e436c75737465" .
            "7273456e7472791a520a0d436c757374657273456e747279120b0a036b65" .
            "7918012001280912300a0576616c756518022001280b32212e676f6f676c" .
            "652e6269677461626c652e61646d696e2e76322e436c75737465723a0238" .
            "0122220a12476574496e7374616e636552657175657374120c0a046e616d" .
            "65180120012809223a0a144c697374496e7374616e636573526571756573" .
            "74120e0a06706172656e7418012001280912120a0a706167655f746f6b65" .
            "6e1802200128092281010a154c697374496e7374616e636573526573706f" .
            "6e736512350a09696e7374616e63657318012003280b32222e676f6f676c" .
            "652e6269677461626c652e61646d696e2e76322e496e7374616e63651218" .
            "0a106661696c65645f6c6f636174696f6e7318022003280912170a0f6e65" .
            "78745f706167655f746f6b656e1803200128092285010a1c506172746961" .
            "6c557064617465496e7374616e63655265717565737412340a08696e7374" .
            "616e636518012001280b32222e676f6f676c652e6269677461626c652e61" .
            "646d696e2e76322e496e7374616e6365122f0a0b7570646174655f6d6173" .
            "6b18022001280b321a2e676f6f676c652e70726f746f6275662e4669656c" .
            "644d61736b22250a1544656c657465496e7374616e636552657175657374" .
            "120c0a046e616d65180120012809226e0a14437265617465436c75737465" .
            "7252657175657374120e0a06706172656e7418012001280912120a0a636c" .
            "75737465725f696418022001280912320a07636c75737465721803200128" .
            "0b32212e676f6f676c652e6269677461626c652e61646d696e2e76322e43" .
            "6c757374657222210a11476574436c757374657252657175657374120c0a" .
            "046e616d6518012001280922390a134c697374436c757374657273526571" .
            "75657374120e0a06706172656e7418012001280912120a0a706167655f74" .
            "6f6b656e180220012809227e0a144c697374436c75737465727352657370" .
            "6f6e736512330a08636c75737465727318012003280b32212e676f6f676c" .
            "652e6269677461626c652e61646d696e2e76322e436c757374657212180a" .
            "106661696c65645f6c6f636174696f6e7318022003280912170a0f6e6578" .
            "745f706167655f746f6b656e18032001280922240a1444656c657465436c" .
            "757374657252657175657374120c0a046e616d6518012001280922c6010a" .
            "16437265617465496e7374616e63654d6574616461746112490a106f7269" .
            "67696e616c5f7265717565737418012001280b322f2e676f6f676c652e62" .
            "69677461626c652e61646d696e2e76322e437265617465496e7374616e63" .
            "655265717565737412300a0c726571756573745f74696d6518022001280b" .
            "321a2e676f6f676c652e70726f746f6275662e54696d657374616d70122f" .
            "0a0b66696e6973685f74696d6518032001280b321a2e676f6f676c652e70" .
            "726f746f6275662e54696d657374616d7022cd010a16557064617465496e" .
            "7374616e63654d6574616461746112500a106f726967696e616c5f726571" .
            "7565737418012001280b32362e676f6f676c652e6269677461626c652e61" .
            "646d696e2e76322e5061727469616c557064617465496e7374616e636552" .
            "65717565737412300a0c726571756573745f74696d6518022001280b321a" .
            "2e676f6f676c652e70726f746f6275662e54696d657374616d70122f0a0b" .
            "66696e6973685f74696d6518032001280b321a2e676f6f676c652e70726f" .
            "746f6275662e54696d657374616d7022c4010a15437265617465436c7573" .
            "7465724d6574616461746112480a106f726967696e616c5f726571756573" .
            "7418012001280b322e2e676f6f676c652e6269677461626c652e61646d69" .
            "6e2e76322e437265617465436c75737465725265717565737412300a0c72" .
            "6571756573745f74696d6518022001280b321a2e676f6f676c652e70726f" .
            "746f6275662e54696d657374616d70122f0a0b66696e6973685f74696d65" .
            "18032001280b321a2e676f6f676c652e70726f746f6275662e54696d6573" .
            "74616d7022b7010a15557064617465436c75737465724d65746164617461" .
            "123b0a106f726967696e616c5f7265717565737418012001280b32212e67" .
            "6f6f676c652e6269677461626c652e61646d696e2e76322e436c75737465" .
            "7212300a0c726571756573745f74696d6518022001280b321a2e676f6f67" .
            "6c652e70726f746f6275662e54696d657374616d70122f0a0b66696e6973" .
            "685f74696d6518032001280b321a2e676f6f676c652e70726f746f627566" .
            "2e54696d657374616d702295010a1743726561746541707050726f66696c" .
            "6552657175657374120e0a06706172656e7418012001280912160a0e6170" .
            "705f70726f66696c655f696418022001280912390a0b6170705f70726f66" .
            "696c6518032001280b32242e676f6f676c652e6269677461626c652e6164" .
            "6d696e2e76322e41707050726f66696c6512170a0f69676e6f72655f7761" .
            "726e696e677318042001280822240a1447657441707050726f66696c6552" .
            "657175657374120c0a046e616d65180120012809224f0a164c6973744170" .
            "7050726f66696c657352657175657374120e0a06706172656e7418012001" .
            "280912110a09706167655f73697a6518032001280512120a0a706167655f" .
            "746f6b656e1802200128092288010a174c69737441707050726f66696c65" .
            "73526573706f6e7365123a0a0c6170705f70726f66696c65731801200328" .
            "0b32242e676f6f676c652e6269677461626c652e61646d696e2e76322e41" .
            "707050726f66696c6512170a0f6e6578745f706167655f746f6b656e1802" .
            "2001280912180a106661696c65645f6c6f636174696f6e73180320032809" .
            "229e010a1755706461746541707050726f66696c65526571756573741239" .
            "0a0b6170705f70726f66696c6518012001280b32242e676f6f676c652e62" .
            "69677461626c652e61646d696e2e76322e41707050726f66696c65122f0a" .
            "0b7570646174655f6d61736b18022001280b321a2e676f6f676c652e7072" .
            "6f746f6275662e4669656c644d61736b12170a0f69676e6f72655f776172" .
            "6e696e677318032001280822400a1744656c65746541707050726f66696c" .
            "6552657175657374120c0a046e616d6518012001280912170a0f69676e6f" .
            "72655f7761726e696e6773180220012808221a0a18557064617465417070" .
            "50726f66696c654d6574616461746132aa170a154269677461626c65496e" .
            "7374616e636541646d696e128e010a0e437265617465496e7374616e6365" .
            "122f2e676f6f676c652e6269677461626c652e61646d696e2e76322e4372" .
            "65617465496e7374616e6365526571756573741a1d2e676f6f676c652e6c" .
            "6f6e6772756e6e696e672e4f7065726174696f6e222c82d3e49302262221" .
            "2f76322f7b706172656e743d70726f6a656374732f2a7d2f696e7374616e" .
            "6365733a012a128a010a0b476574496e7374616e6365122c2e676f6f676c" .
            "652e6269677461626c652e61646d696e2e76322e476574496e7374616e63" .
            "65526571756573741a222e676f6f676c652e6269677461626c652e61646d" .
            "696e2e76322e496e7374616e6365222982d3e493022312212f76322f7b6e" .
            "616d653d70726f6a656374732f2a2f696e7374616e6365732f2a7d129b01" .
            "0a0d4c697374496e7374616e636573122e2e676f6f676c652e6269677461" .
            "626c652e61646d696e2e76322e4c697374496e7374616e63657352657175" .
            "6573741a2f2e676f6f676c652e6269677461626c652e61646d696e2e7632" .
            "2e4c697374496e7374616e636573526573706f6e7365222982d3e4930223" .
            "12212f76322f7b706172656e743d70726f6a656374732f2a7d2f696e7374" .
            "616e6365731286010a0e557064617465496e7374616e636512222e676f6f" .
            "676c652e6269677461626c652e61646d696e2e76322e496e7374616e6365" .
            "1a222e676f6f676c652e6269677461626c652e61646d696e2e76322e496e" .
            "7374616e6365222c82d3e49302261a212f76322f7b6e616d653d70726f6a" .
            "656374732f2a2f696e7374616e6365732f2a7d3a012a12ac010a15506172" .
            "7469616c557064617465496e7374616e636512362e676f6f676c652e6269" .
            "677461626c652e61646d696e2e76322e5061727469616c55706461746549" .
            "6e7374616e6365526571756573741a1d2e676f6f676c652e6c6f6e677275" .
            "6e6e696e672e4f7065726174696f6e223c82d3e4930236322a2f76322f7b" .
            "696e7374616e63652e6e616d653d70726f6a656374732f2a2f696e737461" .
            "6e6365732f2a7d3a08696e7374616e63651284010a0e44656c657465496e" .
            "7374616e6365122f2e676f6f676c652e6269677461626c652e61646d696e" .
            "2e76322e44656c657465496e7374616e6365526571756573741a162e676f" .
            "6f676c652e70726f746f6275662e456d707479222982d3e49302232a212f" .
            "76322f7b6e616d653d70726f6a656374732f2a2f696e7374616e6365732f" .
            "2a7d129d010a0d437265617465436c7573746572122e2e676f6f676c652e" .
            "6269677461626c652e61646d696e2e76322e437265617465436c75737465" .
            "72526571756573741a1d2e676f6f676c652e6c6f6e6772756e6e696e672e" .
            "4f7065726174696f6e223d82d3e4930237222c2f76322f7b706172656e74" .
            "3d70726f6a656374732f2a2f696e7374616e6365732f2a7d2f636c757374" .
            "6572733a07636c75737465721292010a0a476574436c7573746572122b2e" .
            "676f6f676c652e6269677461626c652e61646d696e2e76322e476574436c" .
            "7573746572526571756573741a212e676f6f676c652e6269677461626c65" .
            "2e61646d696e2e76322e436c7573746572223482d3e493022e122c2f7632" .
            "2f7b6e616d653d70726f6a656374732f2a2f696e7374616e6365732f2a2f" .
            "636c7573746572732f2a7d12a3010a0c4c697374436c757374657273122d" .
            "2e676f6f676c652e6269677461626c652e61646d696e2e76322e4c697374" .
            "436c757374657273526571756573741a2e2e676f6f676c652e6269677461" .
            "626c652e61646d696e2e76322e4c697374436c757374657273526573706f" .
            "6e7365223482d3e493022e122c2f76322f7b706172656e743d70726f6a65" .
            "6374732f2a2f696e7374616e6365732f2a7d2f636c757374657273128a01" .
            "0a0d557064617465436c757374657212212e676f6f676c652e6269677461" .
            "626c652e61646d696e2e76322e436c75737465721a1d2e676f6f676c652e" .
            "6c6f6e6772756e6e696e672e4f7065726174696f6e223782d3e49302311a" .
            "2c2f76322f7b6e616d653d70726f6a656374732f2a2f696e7374616e6365" .
            "732f2a2f636c7573746572732f2a7d3a012a128d010a0d44656c65746543" .
            "6c7573746572122e2e676f6f676c652e6269677461626c652e61646d696e" .
            "2e76322e44656c657465436c7573746572526571756573741a162e676f6f" .
            "676c652e70726f746f6275662e456d707479223482d3e493022e2a2c2f76" .
            "322f7b6e616d653d70726f6a656374732f2a2f696e7374616e6365732f2a" .
            "2f636c7573746572732f2a7d12b1010a1043726561746541707050726f66" .
            "696c6512312e676f6f676c652e6269677461626c652e61646d696e2e7632" .
            "2e43726561746541707050726f66696c65526571756573741a242e676f6f" .
            "676c652e6269677461626c652e61646d696e2e76322e41707050726f6669" .
            "6c65224482d3e493023e222f2f76322f7b706172656e743d70726f6a6563" .
            "74732f2a2f696e7374616e6365732f2a7d2f61707050726f66696c65733a" .
            "0b6170705f70726f66696c65129e010a0d47657441707050726f66696c65" .
            "122e2e676f6f676c652e6269677461626c652e61646d696e2e76322e4765" .
            "7441707050726f66696c65526571756573741a242e676f6f676c652e6269" .
            "677461626c652e61646d696e2e76322e41707050726f66696c65223782d3" .
            "e4930231122f2f76322f7b6e616d653d70726f6a656374732f2a2f696e73" .
            "74616e6365732f2a2f61707050726f66696c65732f2a7d12af010a0f4c69" .
            "737441707050726f66696c657312302e676f6f676c652e6269677461626c" .
            "652e61646d696e2e76322e4c69737441707050726f66696c657352657175" .
            "6573741a312e676f6f676c652e6269677461626c652e61646d696e2e7632" .
            "2e4c69737441707050726f66696c6573526573706f6e7365223782d3e493" .
            "0231122f2f76322f7b706172656e743d70726f6a656374732f2a2f696e73" .
            "74616e6365732f2a7d2f61707050726f66696c657312b6010a1055706461" .
            "746541707050726f66696c6512312e676f6f676c652e6269677461626c65" .
            "2e61646d696e2e76322e55706461746541707050726f66696c6552657175" .
            "6573741a1d2e676f6f676c652e6c6f6e6772756e6e696e672e4f70657261" .
            "74696f6e225082d3e493024a323b2f76322f7b6170705f70726f66696c65" .
            "2e6e616d653d70726f6a656374732f2a2f696e7374616e6365732f2a2f61" .
            "707050726f66696c65732f2a7d3a0b6170705f70726f66696c651296010a" .
            "1044656c65746541707050726f66696c6512312e676f6f676c652e626967" .
            "7461626c652e61646d696e2e76322e44656c65746541707050726f66696c" .
            "65526571756573741a162e676f6f676c652e70726f746f6275662e456d70" .
            "7479223782d3e49302312a2f2f76322f7b6e616d653d70726f6a65637473" .
            "2f2a2f696e7374616e6365732f2a2f61707050726f66696c65732f2a7d12" .
            "88010a0c47657449616d506f6c69637912222e676f6f676c652e69616d2e" .
            "76312e47657449616d506f6c696379526571756573741a152e676f6f676c" .
            "652e69616d2e76312e506f6c696379223d82d3e493023722322f76322f7b" .
            "7265736f757263653d70726f6a656374732f2a2f696e7374616e6365732f" .
            "2a7d3a67657449616d506f6c6963793a012a1288010a0c53657449616d50" .
            "6f6c69637912222e676f6f676c652e69616d2e76312e53657449616d506f" .
            "6c696379526571756573741a152e676f6f676c652e69616d2e76312e506f" .
            "6c696379223d82d3e493023722322f76322f7b7265736f757263653d7072" .
            "6f6a656374732f2a2f696e7374616e6365732f2a7d3a73657449616d506f" .
            "6c6963793a012a12ae010a125465737449616d5065726d697373696f6e73" .
            "12282e676f6f676c652e69616d2e76312e5465737449616d5065726d6973" .
            "73696f6e73526571756573741a292e676f6f676c652e69616d2e76312e54" .
            "65737449616d5065726d697373696f6e73526573706f6e7365224382d3e4" .
            "93023d22382f76322f7b7265736f757263653d70726f6a656374732f2a2f" .
            "696e7374616e6365732f2a7d3a7465737449616d5065726d697373696f6e" .
            "733a012a42bd010a1c636f6d2e676f6f676c652e6269677461626c652e61" .
            "646d696e2e7632421a4269677461626c65496e7374616e636541646d696e" .
            "50726f746f50015a3d676f6f676c652e676f6c616e672e6f72672f67656e" .
            "70726f746f2f676f6f676c65617069732f6269677461626c652f61646d69" .
            "6e2f76323b61646d696eaa021e476f6f676c652e436c6f75642e42696774" .
            "61626c652e41646d696e2e5632ca021e476f6f676c655c436c6f75645c42" .
            "69677461626c655c41646d696e5c5632620670726f746f33"
        ));

        static::$is_initialized = true;
    }
}

