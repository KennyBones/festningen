<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/asset/v1beta1/assets.proto

namespace Google\Cloud\Asset\V1beta1;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Cloud asset. This includes all Google Cloud Platform resources,
 * Cloud IAM policies, and other non-GCP assets.
 *
 * Generated from protobuf message <code>google.cloud.asset.v1beta1.Asset</code>
 */
class Asset extends \Google\Protobuf\Internal\Message
{
    /**
     * The full name of the asset. For example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
     * See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
     * for more information.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     */
    private $name = '';
    /**
     * Type of the asset. Example: "google.compute.Disk".
     *
     * Generated from protobuf field <code>string asset_type = 2;</code>
     */
    private $asset_type = '';
    /**
     * Representation of the resource.
     *
     * Generated from protobuf field <code>.google.cloud.asset.v1beta1.Resource resource = 3;</code>
     */
    private $resource = null;
    /**
     * Representation of the actual Cloud IAM policy set on a cloud resource. For each
     * resource, there must be at most one Cloud IAM policy set on it.
     *
     * Generated from protobuf field <code>.google.iam.v1.Policy iam_policy = 4;</code>
     */
    private $iam_policy = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $name
     *           The full name of the asset. For example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
     *           See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
     *           for more information.
     *     @type string $asset_type
     *           Type of the asset. Example: "google.compute.Disk".
     *     @type \Google\Cloud\Asset\V1beta1\Resource $resource
     *           Representation of the resource.
     *     @type \Google\Cloud\Iam\V1\Policy $iam_policy
     *           Representation of the actual Cloud IAM policy set on a cloud resource. For each
     *           resource, there must be at most one Cloud IAM policy set on it.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Cloud\Asset\V1Beta1\Assets::initOnce();
        parent::__construct($data);
    }

    /**
     * The full name of the asset. For example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
     * See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
     * for more information.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * The full name of the asset. For example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
     * See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
     * for more information.
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
     * Type of the asset. Example: "google.compute.Disk".
     *
     * Generated from protobuf field <code>string asset_type = 2;</code>
     * @return string
     */
    public function getAssetType()
    {
        return $this->asset_type;
    }

    /**
     * Type of the asset. Example: "google.compute.Disk".
     *
     * Generated from protobuf field <code>string asset_type = 2;</code>
     * @param string $var
     * @return $this
     */
    public function setAssetType($var)
    {
        GPBUtil::checkString($var, True);
        $this->asset_type = $var;

        return $this;
    }

    /**
     * Representation of the resource.
     *
     * Generated from protobuf field <code>.google.cloud.asset.v1beta1.Resource resource = 3;</code>
     * @return \Google\Cloud\Asset\V1beta1\Resource
     */
    public function getResource()
    {
        return $this->resource;
    }

    /**
     * Representation of the resource.
     *
     * Generated from protobuf field <code>.google.cloud.asset.v1beta1.Resource resource = 3;</code>
     * @param \Google\Cloud\Asset\V1beta1\Resource $var
     * @return $this
     */
    public function setResource($var)
    {
        GPBUtil::checkMessage($var, \Google\Cloud\Asset\V1beta1\Resource::class);
        $this->resource = $var;

        return $this;
    }

    /**
     * Representation of the actual Cloud IAM policy set on a cloud resource. For each
     * resource, there must be at most one Cloud IAM policy set on it.
     *
     * Generated from protobuf field <code>.google.iam.v1.Policy iam_policy = 4;</code>
     * @return \Google\Cloud\Iam\V1\Policy
     */
    public function getIamPolicy()
    {
        return $this->iam_policy;
    }

    /**
     * Representation of the actual Cloud IAM policy set on a cloud resource. For each
     * resource, there must be at most one Cloud IAM policy set on it.
     *
     * Generated from protobuf field <code>.google.iam.v1.Policy iam_policy = 4;</code>
     * @param \Google\Cloud\Iam\V1\Policy $var
     * @return $this
     */
    public function setIamPolicy($var)
    {
        GPBUtil::checkMessage($var, \Google\Cloud\Iam\V1\Policy::class);
        $this->iam_policy = $var;

        return $this;
    }

}

