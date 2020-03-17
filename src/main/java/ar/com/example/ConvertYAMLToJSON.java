package ar.com.example;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;

public class ConvertYAMLToJSON {
    public static void main(String[] args) {
        String content = "";
        try {
            content = new String(Files.readAllBytes(Paths.get(
                    "F:\\Workspace-Blog\\TestExamples\\src\\main\\resources\\YAMLDocument.yaml")));
            System.out.println("*********Content from YAML File ****************");
            System.out.println(content);
            String json = convertYamlToJson(content);
            System.out.println("*********Cnverted JSON from YAML File ****************");
            System.out.println(json);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static String convertYamlToJson(String pathYaml) throws IOException {
        String content = new String(Files.readAllBytes(Paths.get(pathYaml)));
        ObjectMapper yamlReader = new ObjectMapper(new YAMLFactory());
        Object obj = yamlReader.readValue(content, Object.class);
        ObjectMapper jsonWriter = new ObjectMapper();
        return jsonWriter.writerWithDefaultPrettyPrinter().writeValueAsString(obj);
    }
}