import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "@typespec/openapi";
import "@typespec/rest";
import "./models.tsp";
import "./Server.tsp";

using TypeSpec.Rest;
using Azure.ResourceManager;
using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace Microsoft.Sql;
/**
 * A server DNS alias.
 */
@parentResource(Server)
model ServerDnsAlias
  is Azure.ResourceManager.ProxyResource<ServerDnsAliasProperties> {
  ...ResourceNameParameter<
    Resource = ServerDnsAlias,
    KeyName = "dnsAliasName",
    SegmentName = "dnsAliases",
    NamePattern = ""
  >;
}

@@doc(ServerDnsAlias.name, "The name of the server dns alias.");
@@doc(ServerDnsAlias.properties, "Resource properties.");
