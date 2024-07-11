using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using RosCamera = RosMessageTypes.Sensor.ImageMsg;
using UnityEngine.UI;

public class CameraSubscriber : MonoBehaviour
{
    // Start is called before the first frame update
    public GameObject imageholder;
    void Start()
    {
        ROSConnection.GetOrCreateInstance().Subscribe<RosCamera>("usb_cam/image_raw", Camerainput);
    }

    void Camerainput(RosCamera msg)
    {
        //The issue for the speed is mostly the texture segment
        //we can make it better by lowering the texture size hence lowering the computation and quicker the result produced
        Texture2D t = new Texture2D(640, 480, TextureFormat.RGB24,false);
        byte[] newdata = new byte[921600];// change to 921600 to use the commented segment14400
        for(int i = 0; i < 480; i++)
        {
            for(int j = 0; j < 1920; j++)
            {
                newdata[(480-i-1) * 1920 + j] = msg.data[i * 1920 + j];
            }
        }
        /*
        for(int i = 0; i < 60; i++)
        {
            for(int j = 0; j < 80; j++)
            {
                newdata[(60 - i - 1) * 240 + 3 * j] = msg.data[8 * i * 1920 + 8 * j];
                newdata[(60 - i - 1) * 240 +  3 * j + 1] = msg.data[8 * i * 1920 + 8 * j + 1];
                newdata[(60 - i - 1) * 240 +  3 * j + 2] = msg.data[8 * i * 1920 + 8 * j + 2];
            }
        }
        */
        t.LoadRawTextureData(newdata);
        t.Apply();
        imageholder.GetComponent<RawImage>().texture = t;
    }

}
