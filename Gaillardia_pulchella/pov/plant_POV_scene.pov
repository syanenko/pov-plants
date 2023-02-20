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
//Number of triangular faces..... 245600
//Number of vertices............. 154560
//Number of normals.............. 154560
//Number of UV coordinates....... 154560
//Number of lines................ 0
//Number of materials............ 1
//Number of groups/meshes........ 2140
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(-45.6367,-46.4856)
//                        to u,v=(861420000000000,43800.6)
//Bounding Box....... from x,y,z=(-67.765,-0.535,-66.768)
//                      to x,y,z=(58.71,88.005,65.207)
//                 size dx,dy,dz=(126.475,88.54,131.975)
//                  center x,y,z=(-4.5275,43.735,-0.780500000000004)
//                       diagonal 203.10750318489
//Surface area................... 22320.2704611372
//             Smallest face area 0.000487771462880882
//              Largest face area 0.38825647910724
//Memory allocated for geometry: 26 MBytes
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
        location <0,0,406.215006369779>
        look_at <0,0,405.215006369779>
        angle 24.6518609597341 // horizontal FOV angle
        rotate <0,0,7.68215782716208> //roll
        rotate <-20.5831069095644,0,0> //pitch
        rotate <0,25.3488380216069,0> //yaw
        translate <-4.5275,43.735,-0.780500000000004>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <0,0,406.215006369779> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <0,0,0>
              rotate <0,0,7.68215782716208> //roll
              rotate <-20.5831069095644,0,0> //elevation
              rotate <0,25.3488380216069,0> //rotation
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
