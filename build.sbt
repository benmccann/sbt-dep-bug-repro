import com.typesafe.sbteclipse.core.EclipsePlugin.EclipseKeys

// Root project settings

scalaVersion := "2.11.6"

EclipseKeys.skipParents in ThisBuild := false

EclipseKeys.skipProject := true

// Sub projects

lazy val avro = project.enablePlugins(GitVersioning)

lazy val play = project
    .enablePlugins(DockerPlugin, GitVersioning, PlayJava, SbtWeb)
    .dependsOn(avro).aggregate(avro)
