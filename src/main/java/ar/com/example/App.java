package ar.com.example;

import freemarker.template.*;
import java.util.*;
import java.io.*;

// APLICACION CONSOLA JAVA - CONVERSION YAML-TO-PDF
public class App {
    public static void main( String[] args ) throws IOException, TemplateException {

        // Recibe el PATH del archivo yaml a convertir

        /* Create and adjust the configuration singleton */
        Configuration cfg = new Configuration(Configuration.VERSION_2_3_30);
        cfg.setDirectoryForTemplateLoading(new File("/resources/templates"));
        // Recommended settings for new projects:
        cfg.setDefaultEncoding("UTF-8");
        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
        cfg.setLogTemplateExceptions(false);
        cfg.setWrapUncheckedExceptions(true);
        cfg.setFallbackOnNullLoopVariable(false);


        /* Create a data-model */
        Map root = new HashMap();
        // Convertir el archivo YAML en Json
        // Convertir el Json en Diccionario

        /* Get the template (uses cache internally) */
        Template temp = cfg.getTemplate("swagger.ftlh");

        /* Merge data-model with template */
        Writer out = new OutputStreamWriter(System.out);
        temp.process(root, out);

        // Guardar el archivo PDF en el mismo directorio del archivo YAML-TO-PDF
        // Mostrar mensaje de exito.
    }
}
