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
//Number of triangular faces..... 190837
//Number of vertices............. 121860
//Number of normals.............. 190933
//Number of UV coordinates....... 121860
//Number of lines................ 0
//Number of materials............ 2
//Number of groups/meshes........ 2340
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(0,0)
//                        to u,v=(1,1)
//Bounding Box....... from x,y,z=(-1.58553,0,-1.28497)
//                      to x,y,z=(1.60269,3.96426,1.55624)
//                 size dx,dy,dz=(3.18822,3.96426,2.84121)
//                  center x,y,z=(0.00857999999999992,1.98213,0.135635)
//                       diagonal 5.82688410560052
//Surface area................... 19.5209994009166
//             Smallest face area 1.59885896813672E-9
//              Largest face area 0.00515336336296804
//Memory allocated for geometry: 23 MBytes
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
#include "lsystem.obj_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <0.151541624386177,-0.0434881632784922,11.653768211201>
        look_at <0.151541624386177,-0.0434881632784922,10.653768211201>
        angle 29.0887793616472 // horizontal FOV angle
        rotate <0,0,0.963141878857922> //roll
        rotate <-3.64085781595395,0,0> //pitch
        rotate <0,-175.507329797133,0> //yaw
        translate <0.00857999999999992,1.98213,0.135635>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <0.151541624386177,-0.0434881632784922,11.653768211201> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <0.151541624386177,-0.0434881632784922,0>
              rotate <0,0,0.963141878857922> //roll
              rotate <-3.64085781595395,0,0> //elevation
              rotate <0,-175.507329797133,0> //rotation
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
