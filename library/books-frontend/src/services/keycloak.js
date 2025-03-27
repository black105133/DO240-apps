import Keycloak from "keycloak-js";

const url = process.env.REACT_APP_KEYCLOAK_URL || "http://localhost:8080/auth";
const realm = process.env.REACT_APP_KEYCLOAK_REALM || "ad240-realm";
const clientId = process.env.REACT_APP_CLIENT_ID || "react-auth";

const keycloak = new Keycloak({
  url,
  realm,
  clientId,
});

console.log("Instantiated the Keycloak object: %o", keycloak);
export default keycloak;