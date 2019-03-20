<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/common.proto

namespace Google\Cloud\Talent\V4beta1;

/**
 * Input only.
 * Option for HTML content sanitization on user input fields, for example, job
 * description. By setting this option, user can determine whether and how
 * sanitization is performed on these fields.
 *
 * Protobuf type <code>google.cloud.talent.v4beta1.HtmlSanitization</code>
 */
class HtmlSanitization
{
    /**
     * Default value.
     *
     * Generated from protobuf enum <code>HTML_SANITIZATION_UNSPECIFIED = 0;</code>
     */
    const HTML_SANITIZATION_UNSPECIFIED = 0;
    /**
     * Disables sanitization on HTML input.
     *
     * Generated from protobuf enum <code>HTML_SANITIZATION_DISABLED = 1;</code>
     */
    const HTML_SANITIZATION_DISABLED = 1;
    /**
     * Sanitizes HTML input, only accepts bold, italic, ordered list, and
     * unordered list markup tags.
     *
     * Generated from protobuf enum <code>SIMPLE_FORMATTING_ONLY = 2;</code>
     */
    const SIMPLE_FORMATTING_ONLY = 2;
}
