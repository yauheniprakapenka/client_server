package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()

	router.GET("/albums", getAlbums)
	router.GET("/albums/:id", getAlbumsById)
	router.POST("/albums", postAlbums)
	router.DELETE("/albums/:id", deleteAlbumById)
	router.PUT("/albums/:id", putAlbumById)

	router.Run("192.168.0.102:4444")
}

type album struct {
	ID     string  `json:"id"`
	Title  string  `json:"title"`
	Artist string  `json:"artist"`
	Price  float64 `json:"price"`
}

var albums = []album{
	{ID: "1", Title: "Blue Train", Artist: "John Coltrane", Price: 56.99},
	{ID: "2", Title: "Jeru", Artist: "Gerry Mulligan", Price: 17.99},
	{ID: "3", Title: "Sarah Vaughan and Clifford", Artist: "Sarah Vaughan", Price: 33.99},
}

func getAlbums(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, albums)
}

func getAlbumsById(c *gin.Context) {
	id := c.Param("id")

	for _, album := range albums {
		if album.ID == id {
			c.IndentedJSON(http.StatusOK, album)
			return
		}
	}

	c.IndentedJSON(http.StatusNotFound, gin.H{"message": "album not found"})
}

func postAlbums(c *gin.Context) {
	var newAlbum album

	if err := c.BindJSON(&newAlbum); err != nil {
		return
	}

	albums = append(albums, newAlbum)
	c.IndentedJSON(http.StatusCreated, newAlbum)
}

func putAlbumById(c *gin.Context) {
	id := c.Param("id")

	for i, album := range albums {
		if album.ID == id {
			c.BindJSON(&album)
			albums[i] = album
			c.IndentedJSON(http.StatusOK, nil)
			return
		}
	}

	c.IndentedJSON(http.StatusNotFound, nil)
}

func deleteAlbumById(c *gin.Context) {
	id := c.Param("id")

	for i, album := range albums {
		if album.ID == id {
			albums = append(albums[:i], albums[i+1:]...)
			c.IndentedJSON(http.StatusNoContent, nil)
			return
		}
	}

	c.IndentedJSON(http.StatusNotFound, gin.H{"message": "album not found"})
}
