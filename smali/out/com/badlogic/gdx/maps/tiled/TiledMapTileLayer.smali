.class public Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
.super Lcom/badlogic/gdx/maps/MapLayer;
.source "TiledMapTileLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    }
.end annotation


# instance fields
.field private cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

.field private height:I

.field private tileHeight:F

.field private tileWidth:F

.field private width:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 59
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    .line 60
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    .line 61
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    int-to-float p3, p3

    .line 62
    iput p3, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileWidth:F

    int-to-float p3, p4

    .line 63
    iput p3, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileHeight:F

    .line 64
    filled-new-array {p1, p2}, [I

    move-result-object p1

    const-class p2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    return-void
.end method


# virtual methods
.method public getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .registers 5

    const/4 v0, 0x0

    if-ltz p1, :cond_16

    .line 71
    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    if-lt p1, v1, :cond_8

    goto :goto_16

    :cond_8
    if-ltz p2, :cond_16

    .line 72
    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    if-lt p2, v1, :cond_f

    goto :goto_16

    .line 73
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    return-object p1

    :cond_16
    :goto_16
    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    return v0
.end method

.method public getTileHeight()F
    .registers 2

    .line 49
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileHeight:F

    return v0
.end method

.method public getTileWidth()F
    .registers 2

    .line 44
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileWidth:F

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    return v0
.end method

.method public setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V
    .registers 5

    if-ltz p1, :cond_14

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    if-lt p1, v0, :cond_7

    goto :goto_14

    :cond_7
    if-ltz p2, :cond_14

    .line 83
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    if-lt p2, v0, :cond_e

    goto :goto_14

    .line 84
    :cond_e
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    aget-object p1, v0, p1

    aput-object p3, p1, p2

    :cond_14
    :goto_14
    return-void
.end method
