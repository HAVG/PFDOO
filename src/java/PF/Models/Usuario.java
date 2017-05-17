package mysshell.models;

import java.io.IOException;

/**
 * Created by diego on 14/05/17.
 */
public interface Usuario
{
    int id = 0;
    String password = "";

    void displayInterface() throws IOException;
}
