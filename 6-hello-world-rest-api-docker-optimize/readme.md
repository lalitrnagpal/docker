
## Google jib maven plugin example

Jib is a Maven plugin for building Docker and OCI images for your Java applications.

- https://github.com/GoogleContainerTools/jib/tree/master/jib-maven-plugin#quickstart

- https://github.com/GoogleContainerTools/jib/blob/master/docs/faq.md

#### "useCurrentTimestamp - true" discussion

- https://github.com/GooleContainerTools/jib/blob/master/docs/faq.md#why-is-my-image-created-48-years-ago 
- https://github.com/GoogleContainerTools/jib/issues/413 

```
<plugin>
	<groupId>com.google.cloud.tools</groupId>
	<artifactId>jib-maven-plugin</artifactId>
	<version>1.6.1</version>
	<configuration>
		<container>
			<creationTime>USE_CURRENT_TIMESTAMP</creationTime>
		</container>
	</configuration>
	<executions>
		<execution>
			<phase>package</phase>
			<goals>
				<goal>dockerBuild</goal>
			</goals>
		</execution>
	</executions>
</plugin>
```
```
<configuration>
	<from>
		<image>openjdk:alpine</image>
	</from>
	<to>
		<image>lalitrnagpal/${project.name}</image>
		<tags>
			<tag>${project.version}</tag>
			<tag>latest</tag>
		</tags>
	</to>
	<container>
		<jvmFlags>
			<jvmFlag>-Xms512m</jvmFlag>
		</jvmFlags>
		<mainClass>com.boot.rest.RestfulWebServicesApplication</mainClass>
		<ports>
			<port>8100</port>
		</ports>
	</container>
</configuration>
```
