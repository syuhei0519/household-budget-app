package routes

import (
	"github.com/gin-gonic/gin"
	"github.com/syuhei0519/household-budget-app/src/handlers"
)

// ルーティングのセットアップ
func SetupRoutes(r *gin.Engine) {
	r.GET("/ping", handlers.PingHandler)
}