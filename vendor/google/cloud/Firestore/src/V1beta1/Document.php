<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/v1beta1/document.proto

namespace Google\Cloud\Firestore\V1beta1;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A Firestore document.
 * Must not exceed 1 MiB - 4 bytes.
 *
 * Generated from protobuf message <code>google.firestore.v1beta1.Document</code>
 */
class Document extends \Google\Protobuf\Internal\Message
{
    /**
     * The resource name of the document, for example
     * `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     */
    private $name = '';
    /**
     * The document's fields.
     * The map keys represent field names.
     * A simple field name contains only characters `a` to `z`, `A` to `Z`,
     * `0` to `9`, or `_`, and must not start with `0` to `9`. For example,
     * `foo_bar_17`.
     * Field names matching the regular expression `__.*__` are reserved. Reserved
     * field names are forbidden except in certain documented contexts. The map
     * keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be
     * empty.
     * Field paths may be used in other contexts to refer to structured fields
     * defined here. For `map_value`, the field path is represented by the simple
     * or quoted field names of the containing fields, delimited by `.`. For
     * example, the structured field
     * `"foo" : { map_value: { "x&y" : { string_value: "hello" }}}` would be
     * represented by the field path `foo.x&y`.
     * Within a field path, a quoted field name starts and ends with `` ` `` and
     * may contain any character. Some characters, including `` ` ``, must be
     * escaped using a `\`. For example, `` `x&y` `` represents `x&y` and
     * `` `bak\`tik` `` represents `` bak`tik ``.
     *
     * Generated from protobuf field <code>map<string, .google.firestore.v1beta1.Value> fields = 2;</code>
     */
    private $fields;
    /**
     * Output only. The time at which the document was created.
     * This value increases monotonically when a document is deleted then
     * recreated. It can also be compared to values from other documents and
     * the `read_time` of a query.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp create_time = 3;</code>
     */
    private $create_time = null;
    /**
     * Output only. The time at which the document was last changed.
     * This value is initially set to the `create_time` then increases
     * monotonically with each change to the document. It can also be
     * compared to values from other documents and the `read_time` of a query.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp update_time = 4;</code>
     */
    private $update_time = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $name
     *           The resource name of the document, for example
     *           `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
     *     @type array|\Google\Protobuf\Internal\MapField $fields
     *           The document's fields.
     *           The map keys represent field names.
     *           A simple field name contains only characters `a` to `z`, `A` to `Z`,
     *           `0` to `9`, or `_`, and must not start with `0` to `9`. For example,
     *           `foo_bar_17`.
     *           Field names matching the regular expression `__.*__` are reserved. Reserved
     *           field names are forbidden except in certain documented contexts. The map
     *           keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be
     *           empty.
     *           Field paths may be used in other contexts to refer to structured fields
     *           defined here. For `map_value`, the field path is represented by the simple
     *           or quoted field names of the containing fields, delimited by `.`. For
     *           example, the structured field
     *           `"foo" : { map_value: { "x&y" : { string_value: "hello" }}}` would be
     *           represented by the field path `foo.x&y`.
     *           Within a field path, a quoted field name starts and ends with `` ` `` and
     *           may contain any character. Some characters, including `` ` ``, must be
     *           escaped using a `\`. For example, `` `x&y` `` represents `x&y` and
     *           `` `bak\`tik` `` represents `` bak`tik ``.
     *     @type \Google\Protobuf\Timestamp $create_time
     *           Output only. The time at which the document was created.
     *           This value increases monotonically when a document is deleted then
     *           recreated. It can also be compared to values from other documents and
     *           the `read_time` of a query.
     *     @type \Google\Protobuf\Timestamp $update_time
     *           Output only. The time at which the document was last changed.
     *           This value is initially set to the `create_time` then increases
     *           monotonically with each change to the document. It can also be
     *           compared to values from other documents and the `read_time` of a query.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Firestore\V1Beta1\Document::initOnce();
        parent::__construct($data);
    }

    /**
     * The resource name of the document, for example
     * `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
     *
     * Generated from protobuf field <code>string name = 1;</code>
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * The resource name of the document, for example
     * `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
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
     * The document's fields.
     * The map keys represent field names.
     * A simple field name contains only characters `a` to `z`, `A` to `Z`,
     * `0` to `9`, or `_`, and must not start with `0` to `9`. For example,
     * `foo_bar_17`.
     * Field names matching the regular expression `__.*__` are reserved. Reserved
     * field names are forbidden except in certain documented contexts. The map
     * keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be
     * empty.
     * Field paths may be used in other contexts to refer to structured fields
     * defined here. For `map_value`, the field path is represented by the simple
     * or quoted field names of the containing fields, delimited by `.`. For
     * example, the structured field
     * `"foo" : { map_value: { "x&y" : { string_value: "hello" }}}` would be
     * represented by the field path `foo.x&y`.
     * Within a field path, a quoted field name starts and ends with `` ` `` and
     * may contain any character. Some characters, including `` ` ``, must be
     * escaped using a `\`. For example, `` `x&y` `` represents `x&y` and
     * `` `bak\`tik` `` represents `` bak`tik ``.
     *
     * Generated from protobuf field <code>map<string, .google.firestore.v1beta1.Value> fields = 2;</code>
     * @return \Google\Protobuf\Internal\MapField
     */
    public function getFields()
    {
        return $this->fields;
    }

    /**
     * The document's fields.
     * The map keys represent field names.
     * A simple field name contains only characters `a` to `z`, `A` to `Z`,
     * `0` to `9`, or `_`, and must not start with `0` to `9`. For example,
     * `foo_bar_17`.
     * Field names matching the regular expression `__.*__` are reserved. Reserved
     * field names are forbidden except in certain documented contexts. The map
     * keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be
     * empty.
     * Field paths may be used in other contexts to refer to structured fields
     * defined here. For `map_value`, the field path is represented by the simple
     * or quoted field names of the containing fields, delimited by `.`. For
     * example, the structured field
     * `"foo" : { map_value: { "x&y" : { string_value: "hello" }}}` would be
     * represented by the field path `foo.x&y`.
     * Within a field path, a quoted field name starts and ends with `` ` `` and
     * may contain any character. Some characters, including `` ` ``, must be
     * escaped using a `\`. For example, `` `x&y` `` represents `x&y` and
     * `` `bak\`tik` `` represents `` bak`tik ``.
     *
     * Generated from protobuf field <code>map<string, .google.firestore.v1beta1.Value> fields = 2;</code>
     * @param array|\Google\Protobuf\Internal\MapField $var
     * @return $this
     */
    public function setFields($var)
    {
        $arr = GPBUtil::checkMapField($var, \Google\Protobuf\Internal\GPBType::STRING, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Cloud\Firestore\V1beta1\Value::class);
        $this->fields = $arr;

        return $this;
    }

    /**
     * Output only. The time at which the document was created.
     * This value increases monotonically when a document is deleted then
     * recreated. It can also be compared to values from other documents and
     * the `read_time` of a query.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp create_time = 3;</code>
     * @return \Google\Protobuf\Timestamp
     */
    public function getCreateTime()
    {
        return $this->create_time;
    }

    /**
     * Output only. The time at which the document was created.
     * This value increases monotonically when a document is deleted then
     * recreated. It can also be compared to values from other documents and
     * the `read_time` of a query.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp create_time = 3;</code>
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
     * Output only. The time at which the document was last changed.
     * This value is initially set to the `create_time` then increases
     * monotonically with each change to the document. It can also be
     * compared to values from other documents and the `read_time` of a query.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp update_time = 4;</code>
     * @return \Google\Protobuf\Timestamp
     */
    public function getUpdateTime()
    {
        return $this->update_time;
    }

    /**
     * Output only. The time at which the document was last changed.
     * This value is initially set to the `create_time` then increases
     * monotonically with each change to the document. It can also be
     * compared to values from other documents and the `read_time` of a query.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp update_time = 4;</code>
     * @param \Google\Protobuf\Timestamp $var
     * @return $this
     */
    public function setUpdateTime($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Timestamp::class);
        $this->update_time = $var;

        return $this;
    }

}

