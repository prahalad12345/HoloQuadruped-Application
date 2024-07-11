using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.PuppyControl2;

public class ServoPublisher : MonoBehaviour
{
    ROSConnection ros;
    public string topicName = "servocommand";
    // The game object
    public GameObject [] frontrighthandlex; 
    public GameObject [] frontrighthandlez;
    public GameObject [] frontlefthandlex;
    public GameObject [] frontlefthandlez;
    public GameObject [] backrighthandlex;
    public GameObject [] backrighthandlez;
    public GameObject [] backlefthandlex;
    public GameObject[] backlefthandlez;

    // Publish the cube's position and rotation every N seconds
    public float publishMessageFrequency = 0.5f;
    // Start is called before the first frame update
    // Used to determine how much time has elapsed since the last message was published
    private float timeElapsed;

     
    void Start()
    {
        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterPublisher<ServoControlMsg>(topicName);
    }

    // Update is called once per frame
    void Update()
    {
        
        timeElapsed += Time.deltaTime;

        if (timeElapsed > publishMessageFrequency)
        {

            double backleftpublishx = -15.0 + Math.Round(30*(backlefthandlex[1].transform.position.x-backlefthandlex[0].transform.position.x)/ (backlefthandlex[2].transform.position.x - backlefthandlex[0].transform.position.x)) ;
            double backrightpublishx = -15.0 + Math.Round(30 * (backrighthandlex[1].transform.position.x - backrighthandlex[0].transform.position.x) / (backrighthandlex[2].transform.position.x - backrighthandlex[0].transform.position.x));
            double frontleftpublishx = -15.0 + Math.Round(30 * (frontlefthandlex[1].transform.position.x - frontlefthandlex[0].transform.position.x) / (frontlefthandlex[2].transform.position.x - frontlefthandlex[0].transform.position.x));
            double frontrightpublishx = -15.0 + Math.Round(30 * (frontrighthandlex[1].transform.position.x - frontrighthandlex[0].transform.position.x) / (frontrighthandlex[2].transform.position.x - frontrighthandlex[0].transform.position.x));

            double backleftpublishz = -1.0 + Math.Round(-14 * (backlefthandlez[1].transform.position.x - backlefthandlez[0].transform.position.x) / (backlefthandlez[2].transform.position.x - backlefthandlez[0].transform.position.x));
            double backrightpublishz = -1.0 + Math.Round(-14 * (backrighthandlez[1].transform.position.x - backrighthandlez[0].transform.position.x) / (backrighthandlez[2].transform.position.x - backrighthandlez[0].transform.position.x));
            double frontleftpublishz = -1.0 + Math.Round(-14 * (frontlefthandlez[1].transform.position.x - frontlefthandlez[0].transform.position.x) / (frontlefthandlez[2].transform.position.x - frontlefthandlez[0].transform.position.x));
            double frontrightpublishz = -1.0 + Math.Round(-14 * (frontrighthandlez[1].transform.position.x - frontrighthandlez[0].transform.position.x) / (frontrighthandlez[2].transform.position.x - frontrighthandlez[0].transform.position.x));

            ServoControlMsg msg = new ServoControlMsg(
                (float)frontleftpublishx,
                (float)frontleftpublishz,
                (float)frontrightpublishx,
                (float)frontrightpublishz,
                (float)backleftpublishx,
                (float)backleftpublishz,
                (float)backrightpublishx,
                (float)backrightpublishz
            );
            Debug.Log("X and Z:");
            Debug.Log((float)(frontleftpublishz));
            Debug.Log((float)(frontleftpublishx));
            // Finally send the message to server_endpoint.py running in ROS
            ros.Publish(topicName, msg);

            timeElapsed = 0;
        }
        
    }
}
