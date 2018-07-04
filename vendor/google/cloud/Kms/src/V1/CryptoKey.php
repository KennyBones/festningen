<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/kms/v1/resources.proto

namespace Google\Cloud\Kms\V1;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A [CryptoKey][google.cloud.kms.v1.CryptoKey] represents a logical key that can be used for cryptographic
 * operations.
 * A [CryptoKey][google.cloud.kms.v1.CryptoKey] is made up of one or more [versions][google.cloud.kms.v1.CryptoKeyVersion], which
 * represent the actual key material used in cryptographic operations.
 *
 * Generated from protobuf message <code>google.cloud.kms.v1.CryptoKey</code>
 */
class CryptoKey extends \Google\Protobuf\Internal\Message
{
    /**
     * Output only. The resource name for this [CryptoKey][google.cloud.kms.v1.CryptoKey] in the format
     * `projects/&#42;&#47;locations/&#42;&#47;keyRings/&#42;&#47;cryptoKeys/&#42;`.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     */
    private $name = '';
    /**
     * Output only. A copy of the "primary" [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] that will be used
     * by [Encrypt][google.cloud.kms.v1.KeyManagementService.Encrypt] when this [CryptoKey][google.cloud.kms.v1.CryptoKey] is given
     * in [EncryptRequest.name][google.cloud.kms.v1.EncryptRequest.name].
     * The [CryptoKey][google.cloud.kms.v1.CryptoKey]'s primary version can be updated via
     * [UpdateCryptoKeyPrimaryVersion][google.cloud.kms.v1.KeyManagementService.UpdateCryptoKeyPrimaryVersion].
     *
     * Generated from protobuf field <code>.google.cloud.kms.v1.CryptoKeyVersion primary = 2;</code>
     */
    private $primary = null;
    /**
     * The immutable purpose of this [CryptoKey][google.cloud.kms.v1.CryptoKey]. Currently, the only acceptable
     * purpose is [ENCRYPT_DECRYPT][google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose.ENCRYPT_DECRYPT].
     *
     * Generated from protobuf field <code>.google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose purpose = 3;</code>
     */
    private $purpose = 0;
    /**
     * Output only. The time at which this [CryptoKey][google.cloud.kms.v1.CryptoKey] was created.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp create_time = 5;</code>
     */
    private $create_time = null;
    /**
     * At [next_rotation_time][google.cloud.kms.v1.CryptoKey.next_rotation_time], the Key Management Service will automatically:
     * 1. Create a new version of this [CryptoKey][google.cloud.kms.v1.CryptoKey].
     * 2. Mark the new version as primary.
     * Key rotations performed manually via
     * [CreateCryptoKeyVersion][google.cloud.kms.v1.KeyManagementService.CreateCryptoKeyVersion] and
     * [UpdateCryptoKeyPrimaryVersion][google.cloud.kms.v1.KeyManagementService.UpdateCryptoKeyPrimaryVersion]
     * do not affect [next_rotation_time][google.cloud.kms.v1.CryptoKey.next_rotation_time].
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp next_rotation_time = 7;</code>
     */
    private $next_rotation_time = null;
    /**
     * Labels with user-defined metadata. For more information, see
     * [Labeling Keys](/kms/docs/labeling-keys).
     *
     * Generated from protobuf field <code>map<string, string> labels = 10;</code>
     */
    private $labels;
    protected $rotation_schedule;

    public function __construct() {
        \GPBMetadata\Google\Cloud\Kms\V1\Resources::initOnce();
        parent::__construct();
    }

    /**
     * Output only. The resource name for this [CryptoKey][google.cloud.kms.v1.CryptoKey] in the format
     * `projects/&#42;&#47;locations/&#42;&#47;keyRings/&#42;&#47;cryptoKeys/&#42;`.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Output only. The resource name for this [CryptoKey][google.cloud.kms.v1.CryptoKey] in the format
     * `projects/&#42;&#47;locations/&#42;&#47;keyRings/&#42;&#47;cryptoKeys/&#42;`.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     * @param string $var
     * @return $this
     */
    public function setName($var)
    {
        GPBUtil::checkString($var, True);
        $this->name = $var;

        return $this;
    }

    /**
     * Output only. A copy of the "primary" [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] that will be used
     * by [Encrypt][google.cloud.kms.v1.KeyManagementService.Encrypt] when this [CryptoKey][google.cloud.kms.v1.CryptoKey] is given
     * in [EncryptRequest.name][google.cloud.kms.v1.EncryptRequest.name].
     * The [CryptoKey][google.cloud.kms.v1.CryptoKey]'s primary version can be updated via
     * [UpdateCryptoKeyPrimaryVersion][google.cloud.kms.v1.KeyManagementService.UpdateCryptoKeyPrimaryVersion].
     *
     * Generated from protobuf field <code>.google.cloud.kms.v1.CryptoKeyVersion primary = 2;</code>
     * @return \Google\Cloud\Kms\V1\CryptoKeyVersion
     */
    public function getPrimary()
    {
        return $this->primary;
    }

    /**
     * Output only. A copy of the "primary" [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] that will be used
     * by [Encrypt][google.cloud.kms.v1.KeyManagementService.Encrypt] when this [CryptoKey][google.cloud.kms.v1.CryptoKey] is given
     * in [EncryptRequest.name][google.cloud.kms.v1.EncryptRequest.name].
     * The [CryptoKey][google.cloud.kms.v1.CryptoKey]'s primary version can be updated via
     * [UpdateCryptoKeyPrimaryVersion][google.cloud.kms.v1.KeyManagementService.UpdateCryptoKeyPrimaryVersion].
     *
     * Generated from protobuf field <code>.google.cloud.kms.v1.CryptoKeyVersion primary = 2;</code>
     * @param \Google\Cloud\Kms\V1\CryptoKeyVersion $var
     * @return $this
     */
    public function setPrimary($var)
    {
        GPBUtil::checkMessage($var, \Google\Cloud\Kms\V1\CryptoKeyVersion::class);
        $this->primary = $var;

        return $this;
    }

    /**
     * The immutable purpose of this [CryptoKey][google.cloud.kms.v1.CryptoKey]. Currently, the only acceptable
     * purpose is [ENCRYPT_DECRYPT][google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose.ENCRYPT_DECRYPT].
     *
     * Generated from protobuf field <code>.google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose purpose = 3;</code>
     * @return int
     */
    public function getPurpose()
    {
        return $this->purpose;
    }

    /**
     * The immutable purpose of this [CryptoKey][google.cloud.kms.v1.CryptoKey]. Currently, the only acceptable
     * purpose is [ENCRYPT_DECRYPT][google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose.ENCRYPT_DECRYPT].
     *
     * Generated from protobuf field <code>.google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose purpose = 3;</code>
     * @param int $var
     * @return $this
     */
    public function setPurpose($var)
    {
        GPBUtil::checkEnum($var, \Google\Cloud\Kms\V1\CryptoKey_CryptoKeyPurpose::class);
        $this->purpose = $var;

        return $this;
    }

    /**
     * Output only. The time at which this [CryptoKey][google.cloud.kms.v1.CryptoKey] was created.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp create_time = 5;</code>
     * @return \Google\Protobuf\Timestamp
     */
    public function getCreateTime()
    {
        return $this->create_time;
    }

    /**
     * Output only. The time at which this [CryptoKey][google.cloud.kms.v1.CryptoKey] was created.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp create_time = 5;</code>
     * @param \Google\Protobuf\Timestamp $var
     * @return $this
     */
    public function setCreateTime($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Timestamp::class);
        $this->create_time = $var;

        return $this;
    }

    /**
     * At [next_rotation_time][google.cloud.kms.v1.CryptoKey.next_rotation_time], the Key Management Service will automatically:
     * 1. Create a new version of this [CryptoKey][google.cloud.kms.v1.CryptoKey].
     * 2. Mark the new version as primary.
     * Key rotations performed manually via
     * [CreateCryptoKeyVersion][google.cloud.kms.v1.KeyManagementService.CreateCryptoKeyVersion] and
     * [UpdateCryptoKeyPrimaryVersion][google.cloud.kms.v1.KeyManagementService.UpdateCryptoKeyPrimaryVersion]
     * do not affect [next_rotation_time][google.cloud.kms.v1.CryptoKey.next_rotation_time].
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp next_rotation_time = 7;</code>
     * @return \Google\Protobuf\Timestamp
     */
    public function getNextRotationTime()
    {
        return $this->next_rotation_time;
    }

    /**
     * At [next_rotation_time][google.cloud.kms.v1.CryptoKey.next_rotation_time], the Key Management Service will automatically:
     * 1. Create a new version of this [CryptoKey][google.cloud.kms.v1.CryptoKey].
     * 2. Mark the new version as primary.
     * Key rotations performed manually via
     * [CreateCryptoKeyVersion][google.cloud.kms.v1.KeyManagementService.CreateCryptoKeyVersion] and
     * [UpdateCryptoKeyPrimaryVersion][google.cloud.kms.v1.KeyManagementService.UpdateCryptoKeyPrimaryVersion]
     * do not affect [next_rotation_time][google.cloud.kms.v1.CryptoKey.next_rotation_time].
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp next_rotation_time = 7;</code>
     * @param \Google\Protobuf\Timestamp $var
     * @return $this
     */
    public function setNextRotationTime($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Timestamp::class);
        $this->next_rotation_time = $var;

        return $this;
    }

    /**
     * [next_rotation_time][google.cloud.kms.v1.CryptoKey.next_rotation_time] will be advanced by this period when the service
     * automatically rotates a key. Must be at least one day.
     * If [rotation_period][google.cloud.kms.v1.CryptoKey.rotation_period] is set, [next_rotation_time][google.cloud.kms.v1.CryptoKey.next_rotation_time] must also be set.
     *
     * Generated from protobuf field <code>.google.protobuf.Duration rotation_period = 8;</code>
     * @return \Google\Protobuf\Duration
     */
    public function getRotationPeriod()
    {
        return $this->readOneof(8);
    }

    /**
     * [next_rotation_time][google.cloud.kms.v1.CryptoKey.next_rotation_time] will be advanced by this period when the service
     * automatically rotates a key. Must be at least one day.
     * If [rotation_period][google.cloud.kms.v1.CryptoKey.rotation_period] is set, [next_rotation_time][google.cloud.kms.v1.CryptoKey.next_rotation_time] must also be set.
     *
     * Generated from protobuf field <code>.google.protobuf.Duration rotation_period = 8;</code>
     * @param \Google\Protobuf\Duration $var
     * @return $this
     */
    public function setRotationPeriod($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Duration::class);
        $this->writeOneof(8, $var);

        return $this;
    }

    /**
     * Labels with user-defined metadata. For more information, see
     * [Labeling Keys](/kms/docs/labeling-keys).
     *
     * Generated from protobuf field <code>map<string, string> labels = 10;</code>
     * @return \Google\Protobuf\Internal\MapField
     */
    public function getLabels()
    {
        return $this->labels;
    }

    /**
     * Labels with user-defined metadata. For more information, see
     * [Labeling Keys](/kms/docs/labeling-keys).
     *
     * Generated from protobuf field <code>map<string, string> labels = 10;</code>
     * @param array|\Google\Protobuf\Internal\MapField $var
     * @return $this
     */
    public function setLabels($var)
    {
        $arr = GPBUtil::checkMapField($var, \Google\Protobuf\Internal\GPBType::STRING, \Google\Protobuf\Internal\GPBType::STRING);
        $this->labels = $arr;

        return $this;
    }

    /**
     * @return string
     */
    public function getRotationSchedule()
    {
        return $this->whichOneof("rotation_schedule");
    }

}

