package handlers

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

// ヘルスチェック用エンドポイント
func PingHandler(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{"message": "pong"})
}