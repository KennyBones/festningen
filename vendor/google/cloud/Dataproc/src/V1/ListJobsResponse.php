<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataproc/v1/jobs.proto

namespace Google\Cloud\Dataproc\V1;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A list of jobs in a project.
 *
 * Generated from protobuf message <code>google.cloud.dataproc.v1.ListJobsResponse</code>
 */
class ListJobsResponse extends \Google\Protobuf\Internal\Message
{
    /**
     * Output-only. Jobs list.
     *
     * Generated from protobuf field <code>repeated .google.cloud.dataproc.v1.Job jobs = 1;</code>
     */
    private $jobs;
    /**
     * Optional. This token is included in the response if there are more results
     * to fetch. To fetch additional results, provide this value as the
     * `page_token` in a subsequent <code>ListJobsRequest</code>.
     *
     * Generated from protobuf field <code>string next_page_token = 2;</code>
     */
    private $next_page_token = '';

    public function __construct() {
        \GPBMetadata\Google\Cloud\Dataproc\V1\Jobs::initOnce();
        parent::__construct();
    }

    /**
     * Output-only. Jobs list.
     *
     * Generated from protobuf field <code>repeated .google.cloud.dataproc.v1.Job jobs = 1;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getJobs()
    {
        return $this->jobs;
    }

    /**
     * Output-only. Jobs list.
     *
     * Generated from protobuf field <code>repeated .google.cloud.dataproc.v1.Job jobs = 1;</code>
     * @param \Google\Cloud\Dataproc\V1\Job[]|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setJobs($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Cloud\Dataproc\V1\Job::class);
        $this->jobs = $arr;

        return $this;
    }

    /**
     * Optional. This token is included in the response if there are more results
     * to fetch. To fetch additional results, provide this value as the
     * `page_token` in a subsequent <code>ListJobsRequest</code>.
     *
     * Generated from protobuf field <code>string next_page_token = 2;</code>
     * @return string
     */
    public function getNextPageToken()
    {
        return $this->next_page_token;
    }

    /**
     * Optional. This token is included in the response if there are more results
     * to fetch. To fetch additional results, provide this value as the
     * `page_token` in a subsequent <code>ListJobsRequest</code>.
     *
     * Generated from protobuf field <code>string next_page_token = 2;</code>
     * @param string $var
     * @return $this
     */
    public function setNextPageToken($var)
    {
        GPBUtil::checkString($var, True);
        $this->next_page_token = $var;

        return $this;
    }

}

