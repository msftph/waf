param location string = 'East US'
param name string = 'frontdoorabc123'
resource symbolicname 'Microsoft.Network/frontDoors@2020-05-01' = {
  name: name
  location: location
  properties: {
    backendPools: [
      {
        id: 'string'
        name: 'string'
        properties: {
          backends: [
            {
              address: 'www.bing.com'
              backendHostHeader: 'www.bing.com'
              enabledState: 'Enabled'
              httpPort: 80
              httpsPort: 443
              priority: 1
              weight: 50
            }
          ]
          healthProbeSettings: {
            id: 'string'
          }
          loadBalancingSettings: {
            id: 'string'
          }
        }
      }
    ]
    backendPoolsSettings: {
      enforceCertificateNameCheck: 'string'
      sendRecvTimeoutSeconds: int
    }
    enabledState: 'string'
    friendlyName: 'string'
    frontendEndpoints: [
      {
        id: 'string'
        name: 'string'
        properties: {
          hostName: 'string'
          sessionAffinityEnabledState: 'string'
          sessionAffinityTtlSeconds: int
          webApplicationFirewallPolicyLink: {
            id: 'string'
          }
        }
      }
    ]
    healthProbeSettings: [
      {
        id: 'string'
        name: 'string'
        properties: {
          enabledState: 'string'
          healthProbeMethod: 'string'
          intervalInSeconds: int
          path: 'string'
          protocol: 'string'
        }
      }
    ]
    loadBalancingSettings: [
      {
        id: 'string'
        name: 'string'
        properties: {
          additionalLatencyMilliseconds: int
          sampleSize: int
          successfulSamplesRequired: int
        }
      }
    ]
    routingRules: [
      {
        id: 'string'
        name: 'string'
        properties: {
          acceptedProtocols: [
            'string'
          ]
          enabledState: 'string'
          frontendEndpoints: [
            {
              id: 'string'
            }
          ]
          patternsToMatch: [
            'string'
          ]
          routeConfiguration: {
            '@odata.type': 'string'
            // For remaining properties, see RouteConfiguration objects
          }
          rulesEngine: {
            id: 'string'
          }
          webApplicationFirewallPolicyLink: {
            id: 'string'
          }
        }
      }
    ]
  }
}
