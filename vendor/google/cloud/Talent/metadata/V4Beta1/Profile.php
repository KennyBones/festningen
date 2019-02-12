<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/profile.proto

namespace GPBMetadata\Google\Cloud\Talent\V4Beta1;

class Profile
{
    public static $is_initialized = false;

    public static function initOnce() {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();

        if (static::$is_initialized == true) {
          return;
        }
        \GPBMetadata\Google\Api\Annotations::initOnce();
        \GPBMetadata\Google\Cloud\Talent\V4Beta1\Common::initOnce();
        \GPBMetadata\Google\Cloud\Talent\V4Beta1\Job::initOnce();
        \GPBMetadata\Google\Protobuf\Timestamp::initOnce();
        \GPBMetadata\Google\Protobuf\Wrappers::initOnce();
        \GPBMetadata\Google\Type\Date::initOnce();
        \GPBMetadata\Google\Type\PostalAddress::initOnce();
        $pool->internalAddGeneratedFile(hex2bin(
            "0af5300a29676f6f676c652f636c6f75642f74616c656e742f7634626574" .
            "61312f70726f66696c652e70726f746f121b676f6f676c652e636c6f7564" .
            "2e74616c656e742e763462657461311a28676f6f676c652f636c6f75642f" .
            "74616c656e742f763462657461312f636f6d6d6f6e2e70726f746f1a2567" .
            "6f6f676c652f636c6f75642f74616c656e742f763462657461312f6a6f62" .
            "2e70726f746f1a1f676f6f676c652f70726f746f6275662f74696d657374" .
            "616d702e70726f746f1a1e676f6f676c652f70726f746f6275662f777261" .
            "70706572732e70726f746f1a16676f6f676c652f747970652f646174652e" .
            "70726f746f1a20676f6f676c652f747970652f706f7374616c5f61646472" .
            "6573732e70726f746f22be0b0a0750726f66696c65120c0a046e616d6518" .
            "012001280912130a0b65787465726e616c5f6964180220012809120e0a06" .
            "736f75726365180320012809120b0a0375726918042001280912100a0867" .
            "726f75705f6964180520012809122e0a0a69735f68697261626c65180620" .
            "01280b321a2e676f6f676c652e70726f746f6275662e426f6f6c56616c75" .
            "65122f0a0b6372656174655f74696d6518072001280b321a2e676f6f676c" .
            "652e70726f746f6275662e54696d657374616d70122f0a0b757064617465" .
            "5f74696d6518082001280b321a2e676f6f676c652e70726f746f6275662e" .
            "54696d657374616d7012140a0c726573756d655f6872786d6c180a200128" .
            "09123d0a0c706572736f6e5f6e616d6573180b2003280b32272e676f6f67" .
            "6c652e636c6f75642e74616c656e742e763462657461312e506572736f6e" .
            "4e616d6512370a09616464726573736573180c2003280b32242e676f6f67" .
            "6c652e636c6f75642e74616c656e742e763462657461312e416464726573" .
            "73123b0a0f656d61696c5f616464726573736573180d2003280b32222e67" .
            "6f6f676c652e636c6f75642e74616c656e742e763462657461312e456d61" .
            "696c12390a0d70686f6e655f6e756d62657273180e2003280b32222e676f" .
            "6f676c652e636c6f75642e74616c656e742e763462657461312e50686f6e" .
            "65123f0a0d706572736f6e616c5f75726973180f2003280b32282e676f6f" .
            "676c652e636c6f75642e74616c656e742e763462657461312e506572736f" .
            "6e616c55726912530a176164646974696f6e616c5f636f6e746163745f69" .
            "6e666f18102003280b32322e676f6f676c652e636c6f75642e74616c656e" .
            "742e763462657461312e4164646974696f6e616c436f6e74616374496e66" .
            "6f12490a12656d706c6f796d656e745f7265636f72647318112003280b32" .
            "2d2e676f6f676c652e636c6f75642e74616c656e742e763462657461312e" .
            "456d706c6f796d656e745265636f726412470a11656475636174696f6e5f" .
            "7265636f72647318122003280b322c2e676f6f676c652e636c6f75642e74" .
            "616c656e742e763462657461312e456475636174696f6e5265636f726412" .
            "320a06736b696c6c7318132003280b32222e676f6f676c652e636c6f7564" .
            "2e74616c656e742e763462657461312e536b696c6c12390a0a6163746976" .
            "697469657318142003280b32252e676f6f676c652e636c6f75642e74616c" .
            "656e742e763462657461312e4163746976697479123e0a0c7075626c6963" .
            "6174696f6e7318152003280b32282e676f6f676c652e636c6f75642e7461" .
            "6c656e742e763462657461312e5075626c69636174696f6e12340a077061" .
            "74656e747318162003280b32232e676f6f676c652e636c6f75642e74616c" .
            "656e742e763462657461312e506174656e7412420a0e6365727469666963" .
            "6174696f6e7318172003280b322a2e676f6f676c652e636c6f75642e7461" .
            "6c656e742e763462657461312e43657274696669636174696f6e12450a10" .
            "6a6f625f6170706c69636174696f6e7318182003280b322b2e676f6f676c" .
            "652e636c6f75642e74616c656e742e763462657461312e4a6f624170706c" .
            "69636174696f6e12450a1072656372756974696e675f6e6f746573181920" .
            "03280b322b2e676f6f676c652e636c6f75642e74616c656e742e76346265" .
            "7461312e52656372756974696e674e6f746512550a11637573746f6d5f61" .
            "747472696275746573181a2003280b323a2e676f6f676c652e636c6f7564" .
            "2e74616c656e742e763462657461312e50726f66696c652e437573746f6d" .
            "41747472696275746573456e74727912110a0970726f636573736564181b" .
            "2001280812170a0f6b6579776f72645f736e6970706574181c200128091a" .
            "650a15437573746f6d41747472696275746573456e747279120b0a036b65" .
            "79180120012809123b0a0576616c756518022001280b322c2e676f6f676c" .
            "652e636c6f75642e74616c656e742e763462657461312e437573746f6d41" .
            "74747269627574653a02380122a3020a0a506572736f6e4e616d6512180a" .
            "0e666f726d61747465645f6e616d65180120012809480012570a0f737472" .
            "756374757265645f6e616d6518022001280b323c2e676f6f676c652e636c" .
            "6f75642e74616c656e742e763462657461312e506572736f6e4e616d652e" .
            "506572736f6e537472756374757265644e616d65480012160a0e70726566" .
            "65727265645f6e616d651803200128091a7b0a14506572736f6e53747275" .
            "6374757265644e616d6512120a0a676976656e5f6e616d65180120012809" .
            "12160a0e6d6964646c655f696e697469616c18022001280912130a0b6661" .
            "6d696c795f6e616d6518032001280912100a087375666669786573180420" .
            "03280912100a087072656669786573180520032809420d0a0b706572736f" .
            "6e5f6e616d6522dc010a0741646472657373123c0a057573616765180120" .
            "01280e322d2e676f6f676c652e636c6f75642e74616c656e742e76346265" .
            "7461312e436f6e74616374496e666f5573616765121e0a14756e73747275" .
            "6374757265645f61646472657373180220012809480012380a1273747275" .
            "6374757265645f6164647265737318032001280b321a2e676f6f676c652e" .
            "747970652e506f7374616c416464726573734800122e0a0a69735f637572" .
            "72656e7418042001280b321a2e676f6f676c652e70726f746f6275662e42" .
            "6f6f6c56616c756542090a0761646472657373225c0a05456d61696c123c" .
            "0a05757361676518012001280e322d2e676f6f676c652e636c6f75642e74" .
            "616c656e742e763462657461312e436f6e74616374496e666f5573616765" .
            "12150a0d656d61696c5f6164647265737318022001280922cf020a055068" .
            "6f6e65123c0a05757361676518012001280e322d2e676f6f676c652e636c" .
            "6f75642e74616c656e742e763462657461312e436f6e74616374496e666f" .
            "5573616765123a0a047479706518022001280e322c2e676f6f676c652e63" .
            "6c6f75642e74616c656e742e763462657461312e50686f6e652e50686f6e" .
            "6554797065120e0a066e756d62657218032001280912160a0e7768656e5f" .
            "617661696c61626c6518042001280922a3010a0950686f6e655479706512" .
            "1a0a1650484f4e455f545950455f554e5350454349464945441000120c0a" .
            "084c414e444c494e451001120a0a064d4f42494c45100212070a03464158" .
            "100312090a0550414745521004120e0a0a5454595f4f525f544444100512" .
            "0d0a09564f4943454d41494c1006120b0a075649525455414c100712080a" .
            "04564f4950100812160a124d4f42494c455f4f525f4c414e444c494e4510" .
            "09221a0a0b506572736f6e616c557269120b0a0375726918012001280922" .
            "770a154164646974696f6e616c436f6e74616374496e666f123c0a057573" .
            "61676518012001280e322d2e676f6f676c652e636c6f75642e74616c656e" .
            "742e763462657461312e436f6e74616374496e666f5573616765120c0a04" .
            "6e616d6518022001280912120a0a636f6e746163745f6964180320012809" .
            "22ec030a10456d706c6f796d656e745265636f726412250a0a7374617274" .
            "5f6461746518012001280b32112e676f6f676c652e747970652e44617465" .
            "12230a08656e645f6461746518022001280b32112e676f6f676c652e7479" .
            "70652e4461746512150a0d656d706c6f7965725f6e616d65180320012809" .
            "12150a0d6469766973696f6e5f6e616d6518042001280912350a07616464" .
            "7265737318052001280b32242e676f6f676c652e636c6f75642e74616c65" .
            "6e742e763462657461312e4164647265737312110a096a6f625f7469746c" .
            "6518062001280912170a0f6a6f625f6465736372697074696f6e18072001" .
            "2809123a0a1669735f737570657276697365645f706f736974696f6e1808" .
            "2001280b321a2e676f6f676c652e70726f746f6275662e426f6f6c56616c" .
            "756512340a1069735f73656c665f656d706c6f79656418092001280b321a" .
            "2e676f6f676c652e70726f746f6275662e426f6f6c56616c7565122e0a0a" .
            "69735f63757272656e74180a2001280b321a2e676f6f676c652e70726f74" .
            "6f6275662e426f6f6c56616c756512190a116a6f625f7469746c655f736e" .
            "6970706574180b20012809121f0a176a6f625f6465736372697074696f6e" .
            "5f736e6970706574180c20012809121d0a15656d706c6f7965725f6e616d" .
            "655f736e6970706574180d2001280922c2030a0f456475636174696f6e52" .
            "65636f726412250a0a73746172745f6461746518012001280b32112e676f" .
            "6f676c652e747970652e4461746512230a08656e645f6461746518022001" .
            "280b32112e676f6f676c652e747970652e4461746512330a186578706563" .
            "7465645f67726164756174696f6e5f6461746518032001280b32112e676f" .
            "6f676c652e747970652e4461746512130a0b7363686f6f6c5f6e616d6518" .
            "042001280912350a076164647265737318052001280b32242e676f6f676c" .
            "652e636c6f75642e74616c656e742e763462657461312e41646472657373" .
            "121c0a126465677265655f6465736372697074696f6e1806200128094800" .
            "12400a11737472756374757265645f64656772656518072001280b32232e" .
            "676f6f676c652e636c6f75642e74616c656e742e763462657461312e4465" .
            "67726565480012130a0b6465736372697074696f6e180820012809122e0a" .
            "0a69735f63757272656e7418092001280b321a2e676f6f676c652e70726f" .
            "746f6275662e426f6f6c56616c7565121b0a137363686f6f6c5f6e616d65" .
            "5f736e6970706574180a2001280912160a0e6465677265655f736e697070" .
            "6574180b2001280942080a0664656772656522740a06446567726565123c" .
            "0a0b6465677265655f7479706518012001280e32272e676f6f676c652e63" .
            "6c6f75642e74616c656e742e763462657461312e44656772656554797065" .
            "12130a0b6465677265655f6e616d6518022001280912170a0f6669656c64" .
            "735f6f665f737475647918032003280922d4020a05536b696c6c12140a0c" .
            "646973706c61795f6e616d6518012001280912290a0e6c6173745f757365" .
            "645f6461746518022001280b32112e676f6f676c652e747970652e446174" .
            "6512470a056c6576656c18032001280e32382e676f6f676c652e636c6f75" .
            "642e74616c656e742e763462657461312e536b696c6c2e536b696c6c5072" .
            "6f66696369656e63794c6576656c120f0a07636f6e746578741804200128" .
            "09121a0a12736b696c6c5f6e616d655f736e697070657418052001280922" .
            "93010a15536b696c6c50726f66696369656e63794c6576656c12270a2353" .
            "4b494c4c5f50524f46494349454e43595f4c4556454c5f554e5350454349" .
            "46494544100012190a1546554e44414d454e54414c5f41574152454e4553" .
            "531001120a0a064e4f56494345100212100a0c494e5445524d4544494154" .
            "451003120c0a08414456414e4345441004120a0a06455850455254100522" .
            "c3020a08416374697669747912140a0c646973706c61795f6e616d651801" .
            "2001280912130a0b6465736372697074696f6e180220012809120b0a0375" .
            "726918032001280912260a0b6372656174655f6461746518042001280b32" .
            "112e676f6f676c652e747970652e4461746512260a0b7570646174655f64" .
            "61746518052001280b32112e676f6f676c652e747970652e446174651214" .
            "0a0c7465616d5f6d656d6265727318062003280912370a0b736b696c6c73" .
            "5f7573656418072003280b32222e676f6f676c652e636c6f75642e74616c" .
            "656e742e763462657461312e536b696c6c121d0a1561637469766974795f" .
            "6e616d655f736e697070657418082001280912240a1c6163746976697479" .
            "5f6465736372697074696f6e5f736e6970706574180920012809121b0a13" .
            "736b696c6c735f757365645f736e6970706574180a2003280922cb010a0b" .
            "5075626c69636174696f6e120f0a07617574686f7273180120032809120d" .
            "0a057469746c6518022001280912130a0b6465736372697074696f6e1803" .
            "20012809120f0a076a6f75726e616c180420012809120e0a06766f6c756d" .
            "6518052001280912110a097075626c6973686572180620012809122b0a10" .
            "7075626c69636174696f6e5f6461746518072001280b32112e676f6f676c" .
            "652e747970652e4461746512180a107075626c69636174696f6e5f747970" .
            "65180820012809120c0a046973626e18092001280922a9020a0650617465" .
            "6e7412140a0c646973706c61795f6e616d6518012001280912110a09696e" .
            "76656e746f727318022003280912150a0d706174656e745f737461747573" .
            "180320012809122d0a12706174656e745f7374617475735f646174651804" .
            "2001280b32112e676f6f676c652e747970652e44617465122d0a12706174" .
            "656e745f66696c696e675f6461746518052001280b32112e676f6f676c65" .
            "2e747970652e4461746512150a0d706174656e745f6f6666696365180620" .
            "01280912150a0d706174656e745f6e756d626572180720012809121a0a12" .
            "706174656e745f6465736372697074696f6e18082001280912370a0b736b" .
            "696c6c735f7573656418092003280b32222e676f6f676c652e636c6f7564" .
            "2e74616c656e742e763462657461312e536b696c6c22fb050a0e4a6f6241" .
            "70706c69636174696f6e122d0a036a6f6218012001280b32202e676f6f67" .
            "6c652e636c6f75642e74616c656e742e763462657461312e4a6f6212160a" .
            "0e6170706c69636174696f6e5f6964180220012809122b0a106170706c69" .
            "636174696f6e5f6461746518032001280b32112e676f6f676c652e747970" .
            "652e4461746512120a0a6c6173745f7374616765180420012809124c0a05" .
            "737461746518052001280e323d2e676f6f676c652e636c6f75642e74616c" .
            "656e742e763462657461312e4a6f624170706c69636174696f6e2e417070" .
            "6c69636174696f6e537461747573121f0a17617665726167655f696e7465" .
            "72766965775f73636f726518062001280112200a18696e74657276696577" .
            "5f73636f72655f7363616c655f6964180720012809121c0a146e756d6265" .
            "725f6f665f696e746572766965777318082001280512380a1469735f656d" .
            "706c6f7965655f726566657272656418092001280b321a2e676f6f676c65" .
            "2e70726f746f6275662e426f6f6c56616c7565122f0a0b7570646174655f" .
            "74696d65180a2001280b321a2e676f6f676c652e70726f746f6275662e54" .
            "696d657374616d7012160a0e6f7574636f6d655f726561736f6e180b2001" .
            "2809121c0a146f7574636f6d655f706f7369746976656e657373180c2001" .
            "2801122c0a0869735f6d61746368180d2001280b321a2e676f6f676c652e" .
            "70726f746f6275662e426f6f6c56616c756512190a116a6f625f7469746c" .
            "655f736e6970706574180e2001280922c7010a114170706c69636174696f" .
            "6e53746174757312220a1e4150504c49434154494f4e5f5354415455535f" .
            "554e535045434946494544100012120a0e4f464645525f455854454e4445" .
            "44100112190a1552454a45435445445f42595f43414e4449444154451002" .
            "120a0a06414354495645100312180a1452454a45435445445f42595f454d" .
            "504c4f594552100412160a1248495245445f50454e44494e475f44415445" .
            "100512110a0d48495245445f535441525445441006120e0a0a50524f5350" .
            "45435445441007229e010a0d43657274696669636174696f6e12140a0c64" .
            "6973706c61795f6e616d6518012001280912270a0c616371756972655f64" .
            "61746518022001280b32112e676f6f676c652e747970652e446174651226" .
            "0a0b6578706972655f6461746518032001280b32112e676f6f676c652e74" .
            "7970652e4461746512110a09617574686f7269747918042001280912130a" .
            "0b6465736372697074696f6e18052001280922670a0e5265637275697469" .
            "6e674e6f7465120c0a046e6f746518012001280912110a09636f6d6d656e" .
            "74657218022001280912260a0b6372656174655f6461746518032001280b" .
            "32112e676f6f676c652e747970652e44617465120c0a0474797065180420" .
            "0128094282010a1f636f6d2e676f6f676c652e636c6f75642e74616c656e" .
            "742e76346265746131421450726f66696c655265736f7572636550726f74" .
            "6f50015a41676f6f676c652e676f6c616e672e6f72672f67656e70726f74" .
            "6f2f676f6f676c65617069732f636c6f75642f74616c656e742f76346265" .
            "7461313b74616c656e74a20203435453620670726f746f33"
        ));

        static::$is_initialized = true;
    }
}

