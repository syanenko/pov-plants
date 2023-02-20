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
//lsystem.obj_POV_main.ini (initialization file - open this to render)
//lsystem.obj_POV_scene.pov (scene setup of cameras, lights and geometry)
//lsystem.obj_POV_geom.inc (geometry)
//lsystem.obj_POV_mat.inc (materials)
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 10394
//Number of vertices............. 6821
//Number of normals.............. 6162
//Number of UV coordinates....... 6821
//Number of lines................ 0
//Number of materials............ 26
//Number of groups/meshes........ 90
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(0,0)
//                        to u,v=(1,1)
//Bounding Box....... from x,y,z=(-3.31241,-1.07128,-3.36084)
//                      to x,y,z=(4.3235,16.2064,3.43313)
//                 size dx,dy,dz=(7.63591,17.27768,6.79397)
//                  center x,y,z=(0.505545,7.56756,0.0361449999999999)
//                       diagonal 20.0744458471809
//Surface area................... 222.525452296357
//             Smallest face area 4.55301699994808E-5
//              Largest face area 0.0434503212436676
//Memory allocated for geometry: 1 MByte
// 
//==================================================
//IMPORTANT:
//This file was designed to run with the following command line options: 
// +W640 +H360 +FN +AM1 +A0.3 +r3 +Q9 +C -UA +MV3.71
//if you are not using an INI file copy and paste the text above to the command line box before rendering
 
 
global_settings {
  //This setting is for alpha transparency to work properly.
  //Increase by a small amount if transparent areas appear dark.
   max_trace_level 15
   adc_bailout 0.001
   assumed_gamma 1
 
}
#include "lsystem.obj_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <-1.11022302462516E-16,8.88178419700125E-16,40.1488916943619>
        look_at <-1.11022302462516E-16,8.88178419700125E-16,39.1488916943619>
        angle 38 // horizontal FOV angle
        rotate <0,0,0> //roll
        rotate <-25,0,0> //pitch
        rotate <0,45,0> //yaw
        translate <0.505545,7.56756,0.0361449999999999>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <-1.11022302462516E-16,8.88178419700125E-16,40.1488916943619> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <-1.11022302462516E-16,8.88178419700125E-16,0>
              rotate <0,0,0> //roll
              rotate <-25,0,0> //elevation
              rotate <0,45,0> //rotation
             }
 
//Background
background {color srgb<13,17,23> / 256} 
 
//Assembled object that is contained in lsystem.obj_POV_geom.inc with no SSLT components
object{
      lsystem_obj_
      }
 
//restore the version used outside this file
#version Temp_version;
//==================================================
