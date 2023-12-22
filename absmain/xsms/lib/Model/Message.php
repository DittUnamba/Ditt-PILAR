<?php
/**
 * Message
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
 * Message Class Doc Comment
 *
 * @category    Class
 * @description 
 * @package     SMSGatewayMe\Client
 * @author      http://github.com/swagger-api/swagger-codegen
 * @license     http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link        https://github.com/swagger-api/swagger-codegen
 */
class Message implements ArrayAccess
{
    /**
      * Array of property to type mappings. Used for (de)serialization 
      * @var string[]
      */
    static $swaggerTypes = array(
        'id' => 'int',
        'deviceId' => 'int',
        'message' => 'string',
        'status' => 'string',
        'log' => '\SMSGatewayMe\Client\Model\MessageLog[]',
        'createdAt' => '\DateTime',
        'updatedAt' => '\DateTime'
    );
  
    static function swaggerTypes() {
        return self::$swaggerTypes;
    }

    /** 
      * Array of attributes where the key is the local name, and the value is the original name
      * @var string[] 
      */
    static $attributeMap = array(
        'id' => 'id',
        'deviceId' => 'device_id',
        'message' => 'message',
        'status' => 'status',
        'log' => 'log',
        'createdAt' => 'created_at',
        'updatedAt' => 'updated_at'
    );
  
    static function attributeMap() {
        return self::$attributeMap;
    }

    /**
      * Array of attributes to setter functions (for deserialization of responses)
      * @var string[]
      */
    static $setters = array(
        'id' => 'setId',
        'deviceId' => 'setDeviceId',
        'message' => 'setMessage',
        'status' => 'setStatus',
        'log' => 'setLog',
        'createdAt' => 'setCreatedAt',
        'updatedAt' => 'setUpdatedAt'
    );
  
    static function setters() {
        return self::$setters;
    }

    /**
      * Array of attributes to getter functions (for serialization of requests)
      * @var string[]
      */
    static $getters = array(
        'id' => 'getId',
        'deviceId' => 'getDeviceId',
        'message' => 'getMessage',
        'status' => 'getStatus',
        'log' => 'getLog',
        'createdAt' => 'getCreatedAt',
        'updatedAt' => 'getUpdatedAt'
    );
  
    static function getters() {
        return self::$getters;
    }

    
    /**
      * $id 
      * @var int
      */
    protected $id;
    
    /**
      * $deviceId 
      * @var int
      */
    protected $deviceId;
    
    /**
      * $message 
      * @var string
      */
    protected $message;
    
    /**
      * $status 
      * @var string
      */
    protected $status;
    
    /**
      * $log 
      * @var \SMSGatewayMe\Client\Model\MessageLog[]
      */
    protected $log;
    
    /**
      * $createdAt 
      * @var \DateTime
      */
    protected $createdAt;
    
    /**
      * $updatedAt 
      * @var \DateTime
      */
    protected $updatedAt;
    

    /**
     * Constructor
     * @param mixed[] $data Associated array of property value initalizing the model
     */
    public function __construct(array $data = null)
    {
        
        if ($data != null) {
            $this->id = $data["id"];
            $this->deviceId = $data["deviceId"];
            $this->message = $data["message"];
            $this->status = $data["status"];
            $this->log = $data["log"];
            $this->createdAt = $data["createdAt"];
            $this->updatedAt = $data["updatedAt"];
        }
    }
    
    /**
     * Gets id
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }
  
    /**
     * Sets id
     * @param int $id 
     * @return $this
     */
    public function setId($id)
    {
        
        $this->id = $id;
        return $this;
    }
    
    /**
     * Gets deviceId
     * @return int
     */
    public function getDeviceId()
    {
        return $this->deviceId;
    }
  
    /**
     * Sets deviceId
     * @param int $deviceId 
     * @return $this
     */
    public function setDeviceId($deviceId)
    {
        
        $this->deviceId = $deviceId;
        return $this;
    }
    
    /**
     * Gets message
     * @return string
     */
    public function getMessage()
    {
        return $this->message;
    }
  
    /**
     * Sets message
     * @param string $message 
     * @return $this
     */
    public function setMessage($message)
    {
        
        $this->message = $message;
        return $this;
    }
    
    /**
     * Gets status
     * @return string
     */
    public function getStatus()
    {
        return $this->status;
    }
  
    /**
     * Sets status
     * @param string $status 
     * @return $this
     */
    public function setStatus($status)
    {
        
        $this->status = $status;
        return $this;
    }
    
    /**
     * Gets log
     * @return \SMSGatewayMe\Client\Model\MessageLog[]
     */
    public function getLog()
    {
        return $this->log;
    }
  
    /**
     * Sets log
     * @param \SMSGatewayMe\Client\Model\MessageLog[] $log 
     * @return $this
     */
    public function setLog($log)
    {
        
        $this->log = $log;
        return $this;
    }
    
    /**
     * Gets createdAt
     * @return \DateTime
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
    }
  
    /**
     * Sets createdAt
     * @param \DateTime $createdAt 
     * @return $this
     */
    public function setCreatedAt($createdAt)
    {
        
        $this->createdAt = $createdAt;
        return $this;
    }
    
    /**
     * Gets updatedAt
     * @return \DateTime
     */
    public function getUpdatedAt()
    {
        return $this->updatedAt;
    }
  
    /**
     * Sets updatedAt
     * @param \DateTime $updatedAt 
     * @return $this
     */
    public function setUpdatedAt($updatedAt)
    {
        
        $this->updatedAt = $updatedAt;
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
