package ar.com.example.exceptions;
public class FileExtensionException extends RuntimeException {
    public FileExtensionException(String errorMessage) {
        super(errorMessage);
    }
}