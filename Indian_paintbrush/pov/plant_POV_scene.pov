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
//Number of triangular faces..... 31993
//Number of vertices............. 18301
//Number of normals.............. 18301
//Number of UV coordinates....... 18301
//Number of lines................ 0
//Number of materials............ 1
//Number of groups/meshes........ 54
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(0,0)
//                        to u,v=(6.60802E18,0.732)
//Bounding Box....... from x,y,z=(-0.14,-0.003,-0.083)
//                      to x,y,z=(0.229,0.945,0.432)
//                 size dx,dy,dz=(0.369,0.948,0.515)
//                  center x,y,z=(0.0445,0.471,0.1745)
//                       diagonal 1.14021489202694
//Surface area................... 0.394394894451205
//             Smallest face area 4.99999999999945E-7
//              Largest face area 0.000222508426806717
//Memory allocated for geometry: 3 MBytes
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
        location <0.0241102740283296,0.0364329740467958,2.28042978405387>
        look_at <0.0241102740283296,0.0364329740467958,1.28042978405387>
        angle 35.9235652737751 // horizontal FOV angle
        rotate <0,0,-9.94875928759313> //roll
        rotate <-6.47256734951561,0,0> //pitch
        rotate <0,-14.2295710314208,0> //yaw
        translate <0.0445,0.471,0.1745>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <0.0241102740283296,0.0364329740467958,2.28042978405387> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <0.0241102740283296,0.0364329740467958,0>
              rotate <0,0,-9.94875928759313> //roll
              rotate <-6.47256734951561,0,0> //elevation
              rotate <0,-14.2295710314208,0> //rotation
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
