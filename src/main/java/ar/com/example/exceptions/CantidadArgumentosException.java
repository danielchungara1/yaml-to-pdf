package ar.com.example.exceptions;
public class CantidadArgumentosException extends RuntimeException {
    public CantidadArgumentosException(String errorMessage) {
        super(errorMessage);
    }
}