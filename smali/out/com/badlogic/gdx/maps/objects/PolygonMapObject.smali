.class public Lcom/badlogic/gdx/maps/objects/PolygonMapObject;
.super Lcom/badlogic/gdx/maps/MapObject;
.source "PolygonMapObject.java"


# instance fields
.field private polygon:Lcom/badlogic/gdx/math/Polygon;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [F

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;-><init>([F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Polygon;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapObject;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;->polygon:Lcom/badlogic/gdx/math/Polygon;

    return-void
.end method

.method public constructor <init>([F)V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapObject;-><init>()V

    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;->polygon:Lcom/badlogic/gdx/math/Polygon;

    return-void
.end method


# virtual methods
.method public getPolygon()Lcom/badlogic/gdx/math/Polygon;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;->polygon:Lcom/badlogic/gdx/math/Polygon;

    return-object v0
.end method

.method public setPolygon(Lcom/badlogic/gdx/math/Polygon;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;->polygon:Lcom/badlogic/gdx/math/Polygon;

    return-void
.end method
