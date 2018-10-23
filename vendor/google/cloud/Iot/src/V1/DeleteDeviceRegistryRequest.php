<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/iot/v1/device_manager.proto

namespace Google\Cloud\Iot\V1;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Request for `DeleteDeviceRegistry`.
 *
 * Generated from protobuf message <code>google.cloud.iot.v1.DeleteDeviceRegistryRequest</code>
 */
class DeleteDeviceRegistryRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * The name of the device registry. For example,
     * `projects/example-project/locations/us-central1/registries/my-registry`.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     */
    private $name = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $name
     *           The name of the device registry. For example,
     *           `projects/example-project/locations/us-central1/registries/my-registry`.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Cloud\Iot\V1\DeviceManager::initOnce();
        parent::__construct($data);
    }

    /**
     * The name of the device registry. For example,
     * `projects/example-project/locations/us-central1/registries/my-registry`.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * The name of the device registry. For example,
     * `projects/example-project/locations/us-central1/registries/my-registry`.
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

}

