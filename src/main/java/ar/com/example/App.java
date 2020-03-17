package ar.com.example;

import ar.com.example.exceptions.CantidadArgumentosException;
import ar.com.example.exceptions.FileExtensionException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import freemarker.template.*;
import org.assimbly.docconverter.DocConverter;
import org.yaml.snakeyaml.Yaml;
import org.yaml.snakeyaml.constructor.Constructor;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.io.*;

public class App {

    final static String DATA_EXTENSION = "yaml";
    final static String TEMPLATE_EXTENSION = "ftlh";
    final static Integer CANTIDAD_ARGUMENTOS = 2;

    public static void main( String[] args ) throws Exception {
        try {
            App.validateCantidadArgumentos(args);
            App.validateExtensionPaths(args[0], DATA_EXTENSION);
            App.validateExtensionPaths(args[1], TEMPLATE_EXTENSION);

            /* Create and adjust the configuration singleton */
            File templateFile = new File(args[1]);
            File templateDir = templateFile.getParentFile();

            Configuration cfg = new Configuration(Configuration.VERSION_2_3_30);
            cfg.setDirectoryForTemplateLoading(templateDir);

            // Recommended settings for new projects:
            cfg.setDefaultEncoding("UTF-8");
            cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
            cfg.setLogTemplateExceptions(false);
            cfg.setWrapUncheckedExceptions(true);
            cfg.setFallbackOnNullLoopVariable(false);

            /* Create a data-model */
            File dataFile = new File(args[0]);
            File dataDir = dataFile.getParentFile();

            String json = App.convertYamlToJson(args[0]);
            Map<String,Object> hashMap = new ObjectMapper().readValue(json, HashMap.class);

            /* Get the template (uses cache internally) */
            Template temp = cfg.getTemplate(templateFile.getName());

            /* Merge data-model with template */
            OutputStream outputStream = new FileOutputStream(dataDir.getPath() + "\\output.md");
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream);
            temp.process(hashMap, outputStreamWriter);
            outputStreamWriter.close();

            // Guardar el archivo PDF en el mismo directorio del archivo YAML-TO-PDF
            // Mostrar mensaje de exito.

        }catch (CantidadArgumentosException e){
            System.out.println("Ingrese las rutas separadas por espacio: primero del archivo " +App.DATA_EXTENSION+ " y luego del template " + App.TEMPLATE_EXTENSION);
        }catch (FileExtensionException e){
            System.out.println("Las extensiones validas son " + App.DATA_EXTENSION + "y " + App.TEMPLATE_EXTENSION );
        }catch (IOException e){
            System.out.println("Error de lectura del archivo, verifique la ruta del mismo");
            e.printStackTrace();
        }
    }

    private static void validateExtensionPaths(String path, String extension){
        String ext = path.substring(path.length() - extension.length());
        if (!ext.equals(extension)){
            throw new FileExtensionException("Extension invalida");
        }
    }
    private static void validateCantidadArgumentos(String[] args){
        if (args.length != App.CANTIDAD_ARGUMENTOS){
            throw new CantidadArgumentosException("Cantidad de argumentos invalida");
        }
    }

    private static String convertYamlToJson(String pathYaml) throws Exception {
        String yaml = DocConverter.convertFileToString(pathYaml);
        return  DocConverter.convertYamlToJson(yaml);
    }
}
