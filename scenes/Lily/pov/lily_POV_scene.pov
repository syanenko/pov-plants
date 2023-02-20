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
//lily_POV_main.ini (initialization file - open this to render)
//lily_POV_scene.pov (scene setup of cameras, lights and geometry)
//lily_POV_geom.inc (geometry)
//lily_POV_mat.inc (materials)
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 306745
//Number of vertices............. 159931
//Number of normals.............. 159931
//Number of UV coordinates....... 159931
//Number of lines................ 0
//Number of materials............ 1
//Number of groups/meshes........ 112
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(-2.90505E27,-1.8702)
//                        to u,v=(1.41724E32,4.43421)
//Bounding Box....... from x,y,z=(-2.198,0,-2.027)
//                      to x,y,z=(1.81,5.01,2.694)
//                 size dx,dy,dz=(4.008,5.01,4.721)
//                  center x,y,z=(-0.194,2.505,0.3335)
//                       diagonal 7.96567668186451
//Surface area................... 30.8471484226694
//             Smallest face area 4.99999999999668E-7
//              Largest face area 0.000727154213355049
//Memory allocated for geometry: 28 MBytes
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
#include "lily_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <-5.55111512312578E-17,0,15.931353363729>
        look_at <-5.55111512312578E-17,0,14.931353363729>
        angle 26.8480919832508 // horizontal FOV angle
        rotate <0,0,-5.45649610754864> //roll
        rotate <-4.33324317636424,0,0> //pitch
        rotate <0,-149.297402511768,0> //yaw
        translate <-0.194,2.505,0.3335>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <-5.55111512312578E-17,0,15.931353363729> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <-5.55111512312578E-17,0,0>
              rotate <0,0,-5.45649610754864> //roll
              rotate <-4.33324317636424,0,0> //elevation
              rotate <0,-149.297402511768,0> //rotation
             }
 
//Background
background {color srgb<13,17,23> / 256}
 
//Assembled object that is contained in lily_POV_geom.inc with no SSLT components
object{
      lily_
      }
 
//restore the version used outside this file
#version Temp_version;
//==================================================
