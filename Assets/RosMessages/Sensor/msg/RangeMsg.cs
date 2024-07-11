//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;
using RosMessageTypes.Std;

namespace RosMessageTypes.Sensor
{
    [Serializable]
    public class RangeMsg : Message
    {
        public const string k_RosMessageName = "sensor_msgs/Range";
        public override string RosMessageName => k_RosMessageName;

        //  Single range reading from an active ranger that emits energy and reports
        //  one range reading that is valid along an arc at the distance measured. 
        //  This message is  not appropriate for laser scanners. See the LaserScan
        //  message if you are working with a laser scanner.
        //  This message also can represent a fixed-distance (binary) ranger.  This
        //  sensor will have min_range===max_range===distance of detection.
        //  These sensors follow REP 117 and will output -Inf if the object is detected
        //  and +Inf if the object is outside of the detection range.
        public HeaderMsg header;
        //  timestamp in the header is the time the ranger
        //  returned the distance reading
        //  Radiation type enums
        //  If you want a value added to this list, send an email to the ros-users list
        public const byte ULTRASOUND = 0;
        public const byte INFRARED = 1;
        public byte radiation_type;
        //  the type of radiation used by the sensor
        //  (sound, IR, etc) [enum]
        public float field_of_view;
        //  the size of the arc that the distance reading is
        //  valid for [rad]
        //  the object causing the range reading may have
        //  been anywhere within -field_of_view/2 and
        //  field_of_view/2 at the measured range. 
        //  0 angle corresponds to the x-axis of the sensor.
        public float min_range;
        //  minimum range value [m]
        public float max_range;
        //  maximum range value [m]
        //  Fixed distance rangers require min_range==max_range
        public float range;
        //  range data [m]
        //  (Note: values < range_min or > range_max
        //  should be discarded)
        //  Fixed distance rangers only output -Inf or +Inf.
        //  -Inf represents a detection within fixed distance.
        //  (Detection too close to the sensor to quantify)
        //  +Inf represents no detection within the fixed distance.
        //  (Object out of range)

        public RangeMsg()
        {
            this.header = new HeaderMsg();
            this.radiation_type = 0;
            this.field_of_view = 0.0f;
            this.min_range = 0.0f;
            this.max_range = 0.0f;
            this.range = 0.0f;
        }

        public RangeMsg(HeaderMsg header, byte radiation_type, float field_of_view, float min_range, float max_range, float range)
        {
            this.header = header;
            this.radiation_type = radiation_type;
            this.field_of_view = field_of_view;
            this.min_range = min_range;
            this.max_range = max_range;
            this.range = range;
        }

        public static RangeMsg Deserialize(MessageDeserializer deserializer) => new RangeMsg(deserializer);

        private RangeMsg(MessageDeserializer deserializer)
        {
            this.header = HeaderMsg.Deserialize(deserializer);
            deserializer.Read(out this.radiation_type);
            deserializer.Read(out this.field_of_view);
            deserializer.Read(out this.min_range);
            deserializer.Read(out this.max_range);
            deserializer.Read(out this.range);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.header);
            serializer.Write(this.radiation_type);
            serializer.Write(this.field_of_view);
            serializer.Write(this.min_range);
            serializer.Write(this.max_range);
            serializer.Write(this.range);
        }

        public override string ToString()
        {
            return "RangeMsg: " +
            "\nheader: " + header.ToString() +
            "\nradiation_type: " + radiation_type.ToString() +
            "\nfield_of_view: " + field_of_view.ToString() +
            "\nmin_range: " + min_range.ToString() +
            "\nmax_range: " + max_range.ToString() +
            "\nrange: " + range.ToString();
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
