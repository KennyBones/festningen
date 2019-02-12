<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/session.proto

namespace Google\Cloud\Dialogflow\V2;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Events allow for matching intents by event name instead of the natural
 * language input. For instance, input `<event: { name: “welcome_event”,
 * parameters: { name: “Sam” } }>` can trigger a personalized welcome response.
 * The parameter `name` may be used by the agent in the response:
 * `“Hello #welcome_event.name! What can I do for you today?”`.
 *
 * Generated from protobuf message <code>google.cloud.dialogflow.v2.EventInput</code>
 */
class EventInput extends \Google\Protobuf\Internal\Message
{
    /**
     * Required. The unique identifier of the event.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     */
    private $name = '';
    /**
     * Optional. The collection of parameters associated with the event.
     *
     * Generated from protobuf field <code>.google.protobuf.Struct parameters = 2;</code>
     */
    private $parameters = null;
    /**
     * Required. The language of this query. See [Language
     * Support](https://dialogflow.com/docs/languages) for a list of the
     * currently supported language codes. Note that queries in the same session
     * do not necessarily need to specify the same language.
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
     *     @type string $name
     *           Required. The unique identifier of the event.
     *     @type \Google\Protobuf\Struct $parameters
     *           Optional. The collection of parameters associated with the event.
     *     @type string $language_code
     *           Required. The language of this query. See [Language
     *           Support](https://dialogflow.com/docs/languages) for a list of the
     *           currently supported language codes. Note that queries in the same session
     *           do not necessarily need to specify the same language.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Cloud\Dialogflow\V2\Session::initOnce();
        parent::__construct($data);
    }

    /**
     * Required. The unique identifier of the event.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Required. The unique identifier of the event.
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
     * Optional. The collection of parameters associated with the event.
     *
     * Generated from protobuf field <code>.google.protobuf.Struct parameters = 2;</code>
     * @return \Google\Protobuf\Struct
     */
    public function getParameters()
    {
        return $this->parameters;
    }

    /**
     * Optional. The collection of parameters associated with the event.
     *
     * Generated from protobuf field <code>.google.protobuf.Struct parameters = 2;</code>
     * @param \Google\Protobuf\Struct $var
     * @return $this
     */
    public function setParameters($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Struct::class);
        $this->parameters = $var;

        return $this;
    }

    /**
     * Required. The language of this query. See [Language
     * Support](https://dialogflow.com/docs/languages) for a list of the
     * currently supported language codes. Note that queries in the same session
     * do not necessarily need to specify the same language.
     *
     * Generated from protobuf field <code>string language_code = 3;</code>
     * @return string
     */
    public function getLanguageCode()
    {
        return $this->language_code;
    }

    /**
     * Required. The language of this query. See [Language
     * Support](https://dialogflow.com/docs/languages) for a list of the
     * currently supported language codes. Note that queries in the same session
     * do not necessarily need to specify the same language.
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

