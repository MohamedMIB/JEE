
/**
 * CreditSimulatorServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:03:39 GMT)
 */

    package com.mohamed.ibe;

    /**
     *  CreditSimulatorServiceCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class CreditSimulatorServiceCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public CreditSimulatorServiceCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public CreditSimulatorServiceCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
           /**
            * auto generated Axis2 call back method for saveClient method
            * override this method for handling normal response from saveClient operation
            */
           public void receiveResultsaveClient(
                    com.mohamed.ibe.CreditSimulatorServiceStub.SaveClientResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from saveClient operation
           */
            public void receiveErrorsaveClient(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for calculAnnuite method
            * override this method for handling normal response from calculAnnuite operation
            */
           public void receiveResultcalculAnnuite(
                    com.mohamed.ibe.CreditSimulatorServiceStub.CalculAnnuiteResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from calculAnnuite operation
           */
            public void receiveErrorcalculAnnuite(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getAuth method
            * override this method for handling normal response from getAuth operation
            */
           public void receiveResultgetAuth(
                    com.mohamed.ibe.CreditSimulatorServiceStub.GetAuthResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getAuth operation
           */
            public void receiveErrorgetAuth(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getCreditsByNumCli method
            * override this method for handling normal response from getCreditsByNumCli operation
            */
           public void receiveResultgetCreditsByNumCli(
                    com.mohamed.ibe.CreditSimulatorServiceStub.GetCreditsByNumCliResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getCreditsByNumCli operation
           */
            public void receiveErrorgetCreditsByNumCli(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for saveCredit method
            * override this method for handling normal response from saveCredit operation
            */
           public void receiveResultsaveCredit(
                    com.mohamed.ibe.CreditSimulatorServiceStub.SaveCreditResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from saveCredit operation
           */
            public void receiveErrorsaveCredit(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for calculCapiatl method
            * override this method for handling normal response from calculCapiatl operation
            */
           public void receiveResultcalculCapiatl(
                    com.mohamed.ibe.CreditSimulatorServiceStub.CalculCapiatlResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from calculCapiatl operation
           */
            public void receiveErrorcalculCapiatl(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for calculDuree method
            * override this method for handling normal response from calculDuree operation
            */
           public void receiveResultcalculDuree(
                    com.mohamed.ibe.CreditSimulatorServiceStub.CalculDureeResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from calculDuree operation
           */
            public void receiveErrorcalculDuree(java.lang.Exception e) {
            }
                


    }
    