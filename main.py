import sqlite3

def main():
    print("--- Running Phantoms Week 2 Pipeline ---")
    conn = sqlite3.connect('data/store.db')
    cursor = conn.cursor()
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    print("Active Tables:", cursor.fetchall())
    conn.close()
    print("Pipeline Executed Successfully!")

if __name__ == "__main__":
    main()
