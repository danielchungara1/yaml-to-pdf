package ar.com.example;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import fmpp.Engine;
import fmpp.tdd.DataLoader;

import java.util.List;

public class JSONFactory implements DataLoader {

    @Override
    public Object load(Engine e, List args) throws Exception {
        return new JSON();
    }

    public static class JSON {
        public String stringify(Object object) {
            return new JSONSerializer().deepSerialize(object);
        }

        public Object parse(String jsonString) {
            return new JSONDeserializer().deserialize(jsonString);
        }
    }
}