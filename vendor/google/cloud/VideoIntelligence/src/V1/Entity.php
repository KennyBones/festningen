<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/videointelligence/v1/video_intelligence.proto

namespace Google\Cloud\VideoIntelligence\V1;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Detected entity from video analysis.
 *
 * Generated from protobuf message <code>google.cloud.videointelligence.v1.Entity</code>
 */
class Entity extends \Google\Protobuf\Internal\Message
{
    /**
     * Opaque entity ID. Some IDs may be available in
     * [Google Knowledge Graph Search
     * API](https://developers.google.com/knowledge-graph/).
     *
     * Generated from protobuf field <code>string entity_id = 1;</code>
     */
    private $entity_id = '';
    /**
     * Textual description, e.g. `Fixed-gear bicycle`.
     *
     * Generated from protobuf field <code>string description = 2;</code>
     */
    private $description = '';
    /**
     * Language code for `description` in BCP-47 format.
     *
     * Generated from protobuf field <code>string language_code = 3;</code>
     */
    private $language_code = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $entity_id
     *           Opaque entity ID. Some IDs may be available in
     *           [Google Knowledge Graph Search
     *           API](https://developers.google.com/knowledge-graph/).
     *     @type string $description
     *           Textual description, e.g. `Fixed-gear bicycle`.
     *     @type string $language_code
     *           Language code for `description` in BCP-47 format.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Cloud\Videointelligence\V1\VideoIntelligence::initOnce();
        parent::__construct($data);
    }

    /**
     * Opaque entity ID. Some IDs may be available in
     * [Google Knowledge Graph Search
     * API](https://developers.google.com/knowledge-graph/).
     *
     * Generated from protobuf field <code>string entity_id = 1;</code>
     * @return string
     */
    public function getEntityId()
    {
        return $this->entity_id;
    }

    /**
     * Opaque entity ID. Some IDs may be available in
     * [Google Knowledge Graph Search
     * API](https://developers.google.com/knowledge-graph/).
     *
     * Generated from protobuf field <code>string entity_id = 1;</code>
     * @param string $var
     * @return $this
     */
    public function setEntityId($var)
    {
        GPBUtil::checkString($var, True);
        $this->entity_id = $var;

        return $this;
    }

    /**
     * Textual description, e.g. `Fixed-gear bicycle`.
     *
     * Generated from protobuf field <code>string description = 2;</code>
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Textual description, e.g. `Fixed-gear bicycle`.
     *
     * Generated from protobuf field <code>string description = 2;</code>
     * @param string $var
     * @return $this
     */
    public function setDescription($var)
    {
        GPBUtil::checkString($var, True);
        $this->description = $var;

        return $this;
    }

    /**
     * Language code for `description` in BCP-47 format.
     *
     * Generated from protobuf field <code>string language_code = 3;</code>
     * @return string
     */
    public function getLanguageCode()
    {
        return $this->language_code;
    }

    /**
     * Language code for `description` in BCP-47 format.
     *
     * Generated from protobuf field <code>string language_code = 3;</code>
     * @param string $var
     * @return $this
     */
    public function setLanguageCode($var)
    {
        GPBUtil::checkString($var, True);
        $this->language_code = $var;

        return $this;
    }

}

