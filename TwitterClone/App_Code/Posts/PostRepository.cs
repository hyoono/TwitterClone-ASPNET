using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace TwitterClone.App_Code.Posts

{
    public class PostRepository
    {
        public IEnumerable<Post> GetAllPosts(string userId)
        {
            using (var connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Joshua Fil Evasco\source\repos\TwitterClone\TwitterClone\App_Data\TwitterClone.mdf"";Integrated Security=True"))
            using (var command = connection.CreateCommand())
            {
                connection.Open();
                command.CommandText =
                    "SELECT * " +
                    "FROM Posts " +
                    "ORDER BY postedOn DESC"; //+
                    //$"WHERE postedBy = {userId}";
                return command
                    .ExecuteReader()
                    .Cast<IDataRecord>()
                    .Select(row => new Post()
                    {
                        Content = (string)row["content"],
                        PostedBy = (string)row["postedBy"]
                    })
                    .ToList();
            }
        }

        //return new List<Post>()
        //{
        //    new Post() { Content = "Hello world",  PostedBy = "joblipat" },
        //    new Post() { Content = "Hello new world",  PostedBy = "joelim"  },
        //    new Post() { Content = "Hello new new world",  PostedBy = "joblipat"  }
        //};
    }
}