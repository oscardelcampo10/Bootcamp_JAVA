package com.octaviorobleto.sql.implementations;

import com.JavaTwitter.sql.jdbc.entities.GenericImplementation;
import com.octaviorobleto.sql.entities.Document;
import com.octaviorobleto.sql.entities.MariaDBConnectionManager;
import com.octaviorobleto.sql.entities.User;

public class UserImplementation extends GenericImplementation<User, Document> {

	public UserImplementation() {
		super(User.class, new MariaDBConnectionManager().getConnection());
	}
}
