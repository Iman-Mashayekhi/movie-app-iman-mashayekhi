namespace MovieApp.Models
{
    public class MovieDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Genre { get; set; }
        public string Imdb { get; set; }

        public string Director { get; set; }
        public IFormFile? Picture { get; set; }
        public string watchTime { get; set; }
        public string CreatedAt { get; set; }
    }
}
