//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.PuppyControl2
{
    [Serializable]
    public class ServoControlMsg : Message
    {
        public const string k_RosMessageName = "puppy_control2/ServoControl";
        public override string RosMessageName => k_RosMessageName;

        public float frontleftx;
        public float frontleftz;
        public float frontrightx;
        public float frontrightz;
        public float backleftx;
        public float backleftz;
        public float backrightx;
        public float backrightz;

        public ServoControlMsg()
        {
            this.frontleftx = 0.0f;
            this.frontleftz = 0.0f;
            this.frontrightx = 0.0f;
            this.frontrightz = 0.0f;
            this.backleftx = 0.0f;
            this.backleftz = 0.0f;
            this.backrightx = 0.0f;
            this.backrightz = 0.0f;
        }

        public ServoControlMsg(float frontleftx, float frontleftz, float frontrightx, float frontrightz, float backleftx, float backleftz, float backrightx, float backrightz)
        {
            this.frontleftx = frontleftx;
            this.frontleftz = frontleftz;
            this.frontrightx = frontrightx;
            this.frontrightz = frontrightz;
            this.backleftx = backleftx;
            this.backleftz = backleftz;
            this.backrightx = backrightx;
            this.backrightz = backrightz;
        }

        public static ServoControlMsg Deserialize(MessageDeserializer deserializer) => new ServoControlMsg(deserializer);

        private ServoControlMsg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.frontleftx);
            deserializer.Read(out this.frontleftz);
            deserializer.Read(out this.frontrightx);
            deserializer.Read(out this.frontrightz);
            deserializer.Read(out this.backleftx);
            deserializer.Read(out this.backleftz);
            deserializer.Read(out this.backrightx);
            deserializer.Read(out this.backrightz);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.frontleftx);
            serializer.Write(this.frontleftz);
            serializer.Write(this.frontrightx);
            serializer.Write(this.frontrightz);
            serializer.Write(this.backleftx);
            serializer.Write(this.backleftz);
            serializer.Write(this.backrightx);
            serializer.Write(this.backrightz);
        }

        public override string ToString()
        {
            return "ServoControlMsg: " +
            "\nfrontleftx: " + frontleftx.ToString() +
            "\nfrontleftz: " + frontleftz.ToString() +
            "\nfrontrightx: " + frontrightx.ToString() +
            "\nfrontrightz: " + frontrightz.ToString() +
            "\nbackleftx: " + backleftx.ToString() +
            "\nbackleftz: " + backleftz.ToString() +
            "\nbackrightx: " + backrightx.ToString() +
            "\nbackrightz: " + backrightz.ToString();
        }

#if UNITY_EDITOR
        [UnityEditor.InitializeOnLoadMethod]
#else
        [UnityEngine.RuntimeInitializeOnLoadMethod]
#endif
        public static void Register()
        {
            MessageRegistry.Register(k_RosMessageName, Deserialize);
        }
    }
}
