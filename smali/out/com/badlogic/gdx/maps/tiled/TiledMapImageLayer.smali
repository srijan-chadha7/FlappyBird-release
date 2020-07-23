.class public Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;
.super Lcom/badlogic/gdx/maps/MapLayer;
.source "TiledMapImageLayer.java"


# instance fields
.field private region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .registers 4

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 31
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->x:F

    .line 32
    iput p3, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->y:F

    return-void
.end method


# virtual methods
.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getX()F
    .registers 2

    .line 44
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 52
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->y:F

    return v0
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public setX(F)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->x:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->y:F

    return-void
.end method
