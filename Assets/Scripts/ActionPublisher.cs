using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.Std;

public class ActionPublisher : MonoBehaviour
{
    ROSConnection ros;
    public string topicName = "actioncommand";


    // Start is called before the first frame update
    void Start()
    {
        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterPublisher<StringMsg>(topicName);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void Clickit()
    {

        Debug.Log(this.name);
        StringMsg msg = new StringMsg(
            this.name
        );
        ros.Publish(topicName, msg);

    }
}
