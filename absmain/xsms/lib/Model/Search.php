<?php
/**
 * Search
 *
 * PHP version 5
 *
 * @category Class
 * @package  SMSGatewayMe\Client
 * @author   http://github.com/swagger-api/swagger-codegen
 * @license  http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link     https://github.com/swagger-api/swagger-codegen
 */
/**
 *  Copyright 2016 SmartBear Software
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace SMSGatewayMe\Client\Model;

use \ArrayAccess;
/**
 * Search Class Doc Comment
 *
 * @category    Class
 * @description A search criteria
 * @package     SMSGatewayMe\Client
 * @author      http://github.com/swagger-api/swagger-codegen
 * @license     http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link        https://github.com/swagger-api/swagger-codegen
 */
class Search implements ArrayAccess
{
    /**
      * Array of property to type mappings. Used for (de)serialization 
      * @var string[]
      */
    static $swaggerTypes = array(
        'filters' => '\SMSGatewayMe\Client\Model\SearchFilter[][]',
        'orderBy' => '\SMSGatewayMe\Client\Model\SearchOrderBy[]',
        'limit' => 'int',
        'offset' => 'int'
    );
  
    static function swaggerTypes() {
        return self::$swaggerTypes;
    }

    /** 
      * Array of attributes where the key is the local name, and the value is the original name
      * @var string[] 
      */
    static $attributeMap = array(
        'filters' => 'filters',
        'orderBy' => 'order_by',
        'limit' => 'limit',
        'offset' => 'offset'
    );
  
    static function attributeMap() {
        return self::$attributeMap;
    }

    /**
      * Array of attributes to setter functions (for deserialization of responses)
      * @var string[]
      */
    static $setters = array(
        'filters' => 'setFilters',
        'orderBy' => 'setOrderBy',
        'limit' => 'setLimit',
        'offset' => 'setOffset'
    );
  
    static function setters() {
        return self::$setters;
    }

    /**
      * Array of attributes to getter functions (for serialization of requests)
      * @var string[]
      */
    static $getters = array(
        'filters' => 'getFilters',
        'orderBy' => 'getOrderBy',
        'limit' => 'getLimit',
        'offset' => 'getOffset'
    );
  
    static function getters() {
        return self::$getters;
    }

    
    /**
      * $filters 
      * @var \SMSGatewayMe\Client\Model\SearchFilter[][]
      */
    protected $filters;
    
    /**
      * $orderBy 
      * @var \SMSGatewayMe\Client\Model\SearchOrderBy[]
      */
    protected $orderBy;
    
    /**
      * $limit 
      * @var int
      */
    protected $limit;
    
    /**
      * $offset 
      * @var int
      */
    protected $offset;
    

    /**
     * Constructor
     * @param mixed[] $data Associated array of property value initalizing the model
     */
    public function __construct(array $data = null)
    {
        
        if ($data != null) {
            $this->filters = $data["filters"];
            $this->orderBy = $data["orderBy"];
            $this->limit = $data["limit"];
            $this->offset = $data["offset"];
        }
    }
    
    /**
     * Gets filters
     * @return \SMSGatewayMe\Client\Model\SearchFilter[][]
     */
    public function getFilters()
    {
        return $this->filters;
    }
  
    /**
     * Sets filters
     * @param \SMSGatewayMe\Client\Model\SearchFilter[][] $filters 
     * @return $this
     */
    public function setFilters($filters)
    {
        
        $this->filters = $filters;
        return $this;
    }
    
    /**
     * Gets orderBy
     * @return \SMSGatewayMe\Client\Model\SearchOrderBy[]
     */
    public function getOrderBy()
    {
        return $this->orderBy;
    }
  
    /**
     * Sets orderBy
     * @param \SMSGatewayMe\Client\Model\SearchOrderBy[] $orderBy 
     * @return $this
     */
    public function setOrderBy($orderBy)
    {
        
        $this->orderBy = $orderBy;
        return $this;
    }
    
    /**
     * Gets limit
     * @return int
     */
    public function getLimit()
    {
        return $this->limit;
    }
  
    /**
     * Sets limit
     * @param int $limit 
     * @return $this
     */
    public function setLimit($limit)
    {
        
        $this->limit = $limit;
        return $this;
    }
    
    /**
     * Gets offset
     * @return int
     */
    public function getOffset()
    {
        return $this->offset;
    }
  
    /**
     * Sets offset
     * @param int $offset 
     * @return $this
     */
    public function setOffset($offset)
    {
        
        $this->offset = $offset;
        return $this;
    }
    
    /**
     * Returns true if offset exists. False otherwise.
     * @param  integer $offset Offset 
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->$offset);
    }
  
    /**
     * Gets offset.
     * @param  integer $offset Offset 
     * @return mixed 
     */
    public function offsetGet($offset)
    {
        return $this->$offset;
    }
  
    /**
     * Sets value based on offset.
     * @param  integer $offset Offset 
     * @param  mixed   $value  Value to be set
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        $this->$offset = $value;
    }
  
    /**
     * Unsets offset.
     * @param  integer $offset Offset 
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->$offset);
    }
  
    /**
     * Gets the string presentation of the object
     * @return string
     */
    public function __toString()
    {
        if (defined('JSON_PRETTY_PRINT')) {
            return json_encode(\SMSGatewayMe\Client\ObjectSerializer::sanitizeForSerialization($this), JSON_PRETTY_PRINT);
        } else {
            return json_encode(\SMSGatewayMe\Client\ObjectSerializer::sanitizeForSerialization($this));
        }
    }
}
