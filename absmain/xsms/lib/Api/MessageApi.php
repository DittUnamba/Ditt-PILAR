<?php
/**
 * MessageApi
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

namespace SMSGatewayMe\Client\Api;

use \SMSGatewayMe\Client\Configuration;
use \SMSGatewayMe\Client\ApiClient;
use \SMSGatewayMe\Client\ApiException;
use \SMSGatewayMe\Client\ObjectSerializer;

/**
 * MessageApi Class Doc Comment
 *
 * @category Class
 * @package  SMSGatewayMe\Client
 * @author   http://github.com/swagger-api/swagger-codegen
 * @license  http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class MessageApi
{

    /**
     * API Client
     * @var \SMSGatewayMe\Client\ApiClient instance of the ApiClient
     */
    protected $apiClient;
  
    /**
     * Constructor
     * @param \SMSGatewayMe\Client\ApiClient|null $apiClient The api client to use
     */
    function __construct($apiClient = null)
    {
        if ($apiClient == null) {
            $apiClient = new ApiClient();
            $apiClient->getConfig()->setHost('https://smsgateway.me/api/v4');
        }
  
        $this->apiClient = $apiClient;
    }
  
    /**
     * Get API client
     * @return \SMSGatewayMe\Client\ApiClient get the API client
     */
    public function getApiClient()
    {
        return $this->apiClient;
    }
  
    /**
     * Set the API client
     * @param \SMSGatewayMe\Client\ApiClient $apiClient set the API client
     * @return MessageApi
     */
    public function setApiClient(ApiClient $apiClient)
    {
        $this->apiClient = $apiClient;
        return $this;
    }
  
    
    /**
     * cancelMessages
     *
     * Cancel messages
     *
     * @param \SMSGatewayMe\Client\Model\CancelMessageRequest[] $messages messages to cancel (required)
     * @return \SMSGatewayMe\Client\Model\Message[]
     * @throws \SMSGatewayMe\Client\ApiException on non-2xx response
     */
    public function cancelMessages($messages)
    {
        list($response, $statusCode, $httpHeader) = $this->cancelMessagesWithHttpInfo ($messages);
        return $response; 
    }


    /**
     * cancelMessagesWithHttpInfo
     *
     * Cancel messages
     *
     * @param \SMSGatewayMe\Client\Model\CancelMessageRequest[] $messages messages to cancel (required)
     * @return Array of \SMSGatewayMe\Client\Model\Message[], HTTP status code, HTTP response headers (array of strings)
     * @throws \SMSGatewayMe\Client\ApiException on non-2xx response
     */
    public function cancelMessagesWithHttpInfo($messages)
    {
        
        // verify the required parameter 'messages' is set
        if ($messages === null) {
            throw new \InvalidArgumentException('Missing the required parameter $messages when calling cancelMessages');
        }
  
        // parse inputs
        $resourcePath = "/message/cancel";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = ApiClient::selectHeaderAccept(array('application/json'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = ApiClient::selectHeaderContentType(array());
  
        
        
        
        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // body params
        $_tempBody = null;
        if (isset($messages)) {
            $_tempBody = $messages;
        }
  
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        
        // this endpoint requires API key authentication
        $apiKey = $this->apiClient->getApiKeyWithPrefix('Authorization');
        if (strlen($apiKey) !== 0) {
            $headerParams['Authorization'] = $apiKey;
        }
        
        
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath, 'POST',
                $queryParams, $httpBody,
                $headerParams, '\SMSGatewayMe\Client\Model\Message[]'
            );
            
            if (!$response) {
                return array(null, $statusCode, $httpHeader);
            }

            return array(\SMSGatewayMe\Client\ObjectSerializer::deserialize($response, '\SMSGatewayMe\Client\Model\Message[]', $httpHeader), $statusCode, $httpHeader);
            
        } catch (ApiException $e) {
            switch ($e->getCode()) { 
            case 200:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\Message[]', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 400:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 401:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 403:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 500:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\FatalResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            default:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\FatalResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            }
  
            throw $e;
        }
    }
    
    /**
     * getMessage
     *
     * Get a specific message
     *
     * @param string $id  (required)
     * @return \SMSGatewayMe\Client\Model\Message
     * @throws \SMSGatewayMe\Client\ApiException on non-2xx response
     */
    public function getMessage($id)
    {
        list($response, $statusCode, $httpHeader) = $this->getMessageWithHttpInfo ($id);
        return $response; 
    }


    /**
     * getMessageWithHttpInfo
     *
     * Get a specific message
     *
     * @param string $id  (required)
     * @return Array of \SMSGatewayMe\Client\Model\Message, HTTP status code, HTTP response headers (array of strings)
     * @throws \SMSGatewayMe\Client\ApiException on non-2xx response
     */
    public function getMessageWithHttpInfo($id)
    {
        
        // verify the required parameter 'id' is set
        if ($id === null) {
            throw new \InvalidArgumentException('Missing the required parameter $id when calling getMessage');
        }
  
        // parse inputs
        $resourcePath = "/message/{id}";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = ApiClient::selectHeaderAccept(array('application/json'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = ApiClient::selectHeaderContentType(array());
  
        
        
        // path params
        
        if ($id !== null) {
            $resourcePath = str_replace(
                "{" . "id" . "}",
                $this->apiClient->getSerializer()->toPathValue($id),
                $resourcePath
            );
        }
        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        
  
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        
        // this endpoint requires API key authentication
        $apiKey = $this->apiClient->getApiKeyWithPrefix('Authorization');
        if (strlen($apiKey) !== 0) {
            $headerParams['Authorization'] = $apiKey;
        }
        
        
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath, 'GET',
                $queryParams, $httpBody,
                $headerParams, '\SMSGatewayMe\Client\Model\Message'
            );
            
            if (!$response) {
                return array(null, $statusCode, $httpHeader);
            }

            return array(\SMSGatewayMe\Client\ObjectSerializer::deserialize($response, '\SMSGatewayMe\Client\Model\Message', $httpHeader), $statusCode, $httpHeader);
            
        } catch (ApiException $e) {
            switch ($e->getCode()) { 
            case 200:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\Message', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 400:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 401:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 403:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 500:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\FatalResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            default:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\FatalResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            }
  
            throw $e;
        }
    }
    
    /**
     * searchMessages
     *
     * Search messages
     *
     * @param \SMSGatewayMe\Client\Model\Search $search Search Criteria (optional)
     * @return \SMSGatewayMe\Client\Model\MessageSearchResult
     * @throws \SMSGatewayMe\Client\ApiException on non-2xx response
     */
    public function searchMessages($search = null)
    {
        list($response, $statusCode, $httpHeader) = $this->searchMessagesWithHttpInfo ($search);
        return $response; 
    }


    /**
     * searchMessagesWithHttpInfo
     *
     * Search messages
     *
     * @param \SMSGatewayMe\Client\Model\Search $search Search Criteria (optional)
     * @return Array of \SMSGatewayMe\Client\Model\MessageSearchResult, HTTP status code, HTTP response headers (array of strings)
     * @throws \SMSGatewayMe\Client\ApiException on non-2xx response
     */
    public function searchMessagesWithHttpInfo($search = null)
    {
        
  
        // parse inputs
        $resourcePath = "/message/search";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = ApiClient::selectHeaderAccept(array('application/json'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = ApiClient::selectHeaderContentType(array());
  
        
        
        
        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // body params
        $_tempBody = null;
        if (isset($search)) {
            $_tempBody = $search;
        }
  
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        
        // this endpoint requires API key authentication
        $apiKey = $this->apiClient->getApiKeyWithPrefix('Authorization');
        if (strlen($apiKey) !== 0) {
            $headerParams['Authorization'] = $apiKey;
        }
        
        
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath, 'POST',
                $queryParams, $httpBody,
                $headerParams, '\SMSGatewayMe\Client\Model\MessageSearchResult'
            );
            
            if (!$response) {
                return array(null, $statusCode, $httpHeader);
            }

            return array(\SMSGatewayMe\Client\ObjectSerializer::deserialize($response, '\SMSGatewayMe\Client\Model\MessageSearchResult', $httpHeader), $statusCode, $httpHeader);
            
        } catch (ApiException $e) {
            switch ($e->getCode()) { 
            case 200:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\MessageSearchResult', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 400:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 401:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 403:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 500:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\FatalResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            default:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\FatalResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            }
  
            throw $e;
        }
    }
    
    /**
     * sendMessages
     *
     * Send messages
     *
     * @param \SMSGatewayMe\Client\Model\SendMessageRequest[] $messages messages to send (required)
     * @return \SMSGatewayMe\Client\Model\Message[]
     * @throws \SMSGatewayMe\Client\ApiException on non-2xx response
     */
    public function sendMessages($messages)
    {
        list($response, $statusCode, $httpHeader) = $this->sendMessagesWithHttpInfo ($messages);
        return $response; 
    }


    /**
     * sendMessagesWithHttpInfo
     *
     * Send messages
     *
     * @param \SMSGatewayMe\Client\Model\SendMessageRequest[] $messages messages to send (required)
     * @return Array of \SMSGatewayMe\Client\Model\Message[], HTTP status code, HTTP response headers (array of strings)
     * @throws \SMSGatewayMe\Client\ApiException on non-2xx response
     */
    public function sendMessagesWithHttpInfo($messages)
    {
        
        // verify the required parameter 'messages' is set
        if ($messages === null) {
            throw new \InvalidArgumentException('Missing the required parameter $messages when calling sendMessages');
        }
  
        // parse inputs
        $resourcePath = "/message/send";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = ApiClient::selectHeaderAccept(array('application/json'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = ApiClient::selectHeaderContentType(array());
  
        
        
        
        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // body params
        $_tempBody = null;
        if (isset($messages)) {
            $_tempBody = $messages;
        }
  
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        
        // this endpoint requires API key authentication
        $apiKey = $this->apiClient->getApiKeyWithPrefix('Authorization');
        if (strlen($apiKey) !== 0) {
            $headerParams['Authorization'] = $apiKey;
        }
        
        
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath, 'POST',
                $queryParams, $httpBody,
                $headerParams, '\SMSGatewayMe\Client\Model\Message[]'
            );
            
            if (!$response) {
                return array(null, $statusCode, $httpHeader);
            }

            return array(\SMSGatewayMe\Client\ObjectSerializer::deserialize($response, '\SMSGatewayMe\Client\Model\Message[]', $httpHeader), $statusCode, $httpHeader);
            
        } catch (ApiException $e) {
            switch ($e->getCode()) { 
            case 200:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\Message[]', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 400:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 401:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 403:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\ErrorResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            case 500:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\FatalResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            default:
                $data = \SMSGatewayMe\Client\ObjectSerializer::deserialize($e->getResponseBody(), '\SMSGatewayMe\Client\Model\FatalResponse', $e->getResponseHeaders());
                $e->setResponseObject($data);
                break;
            }
  
            throw $e;
        }
    }
    
}
