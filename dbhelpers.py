from flask.wrappers import Response
import mariadb
import dbconnect
import traceback

# The same comments apply to all the helper functions in here!
def run_select_statement(sql, params):
    # Do the normal open and variable setup
    conn = dbconnect.get_db_connection()
    cursor = dbconnect.get_db_cursor(conn)
    result = None

    # Try to run the command based on the SQL and params passed in
    try:
        cursor.execute(sql, params)
        result = cursor.fetchall()
    # TODO Do a better job of catching more specific errors! Might need to find a way to return error-specific results
    
    except mariadb.OperationalError:
        traceback.print_exc()
        return "There is an issue with the connections"
    except:
        traceback.print_exc()
        return "ERROR"

    # Close the resources
    dbconnect.close_db_cursor(cursor)
    dbconnect.close_db_connection(conn)
    # Return the result
    return result
