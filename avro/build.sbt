name := "avro"

scalaVersion := "2.11.6"

EclipseKeys.projectFlavor := EclipseProjectFlavor.Java

libraryDependencies ++= Seq(
  "org.apache.avro"               % "avro-ipc"                  % "1.7.7"
)
