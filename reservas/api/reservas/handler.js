'use strict';

const AWS = require('aws-sdk')
AWS.config.update({
  region: process.env.AWS_REGION
})
const documentClient = new AWS.DynamoDB.DocumentClient
const uuid = require('uuid/v4')

module.exports.reservas = async (event) => {
  console.log("EVENT: \n" + JSON.stringify(event, null, 2))
  
  const body = JSON.parse(event.body)
  await documentClient.put({
    TableName: process.env.DYNAMODB_RESERVAS,
    Item: {
      id: uuid(),
      name: body.name,
      email: body.email,
      data: body.data
    }
  }).promise()

  return {
    statusCode: 200,
    body: JSON.stringify({message: 'Reserva efetuada com sucesso !'})
  }

};
