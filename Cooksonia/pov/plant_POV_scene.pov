//wrap the file with the version
#local Temp_version = version;
#version 3.71;
//==================================================
//POV-Ray Main scene file
//==================================================
//This file has been created by PoseRay v3.13.31.705
//3D model to POV-Ray/Moray Converter.
//Author: FlyerX
//Email: flyerx_2000@yahoo.com
//Web: https://sites.google.com/site/poseray/
//==================================================
//Files needed to run the POV-Ray scene:
//plant_POV_main.ini (initialization file - open this to render)
//plant_POV_scene.pov (scene setup of cameras, lights and geometry)
//plant_POV_geom.inc (geometry)
//plant_POV_mat.inc (materials)
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 77920
//Number of vertices............. 41142
//Number of normals.............. 41142
//Number of UV coordinates....... 41142
//Number of lines................ 0
//Number of materials............ 1
//Number of groups/meshes........ 128
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(-4.2662E37,-1)
//                        to u,v=(1.06657E37,11.414)
//Bounding Box....... from x,y,z=(-27.25,0,-12.374)
//                      to x,y,z=(27.25,40.093,15.157)
//                 size dx,dy,dz=(54.5,40.093,27.531)
//                  center x,y,z=(0,20.0465,1.3915)
//                       diagonal 73.0455653000235
//Surface area................... 1974.09765083539
//             Smallest face area 6.54331720153985E-5
//              Largest face area 0.273547093280572
//Memory allocated for geometry: 7 MBytes
// 
//==================================================
//IMPORTANT:
//This file was designed to run with the following command line options: 
// +W640 +H649 +FN +AM1 +A0.3 +r3 +Q9 +C -UA +MV3.71
//if you are not using an INI file copy and paste the text above to the command line box before rendering
 
 
global_settings {
  //This setting is for alpha transparency to work properly.
  //Increase by a small amount if transparent areas appear dark.
   max_trace_level 15
   adc_bailout 0.001
   assumed_gamma 1
 
}
#include "plant_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <0,0,146.091130600047>
        look_at <0,0,145.091130600047>
        angle 26 // horizontal FOV angle
        rotate <0,0,-0.192263064242915> //roll
        rotate <-11.1787975521328,0,0> //pitch
        rotate <0,-172.884485423068,0> //yaw
        translate <0,20.0465,1.3915>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <0,0,146.091130600047> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <0,0,0>
              rotate <0,0,-0.192263064242915> //roll
              rotate <-11.1787975521328,0,0> //elevation
              rotate <0,-172.884485423068,0> //rotation
             }
 
//Background
background {color srgb<13,17,23> / 256}
 
//Assembled object that is contained in plant_POV_geom.inc with no SSLT components
object{
      plant_
      }
 
//restore the version used outside this file
#version Temp_version;
//==================================================
