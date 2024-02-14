%dw 2.0
output application/json
var appnamespace = error.errorType.namespace
var apperrotype = error.errorType.namespace ++':' ++ error.errorType.identifier
---
{
	"response": {
		"status": "failed",
		"error": {
			"description": error.description,
			"type": if (appnamespace == 'APPERROR') apperrotype else error.cause['type'],
			"cause": error.cause.message
			
		}
	}
}