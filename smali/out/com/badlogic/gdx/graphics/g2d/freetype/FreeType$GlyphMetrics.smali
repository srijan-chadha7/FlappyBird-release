.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlyphMetrics"
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 3

    .line 744
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    return-void
.end method

.method private static native getHeight(J)I
.end method

.method private static native getHoriAdvance(J)I
.end method

.method private static native getHoriBearingX(J)I
.end method

.method private static native getHoriBearingY(J)I
.end method

.method private static native getVertAdvance(J)I
.end method

.method private static native getVertBearingX(J)I
.end method

.method private static native getVertBearingY(J)I
.end method

.method private static native getWidth(J)I
.end method


# virtual methods
.method public getHeight()I
    .registers 3

    .line 756
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight(J)I

    move-result v0

    return v0
.end method

.method public getHoriAdvance()I
    .registers 3

    .line 780
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance(J)I

    move-result v0

    return v0
.end method

.method public getHoriBearingX()I
    .registers 3

    .line 764
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriBearingX(J)I

    move-result v0

    return v0
.end method

.method public getHoriBearingY()I
    .registers 3

    .line 772
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriBearingY(J)I

    move-result v0

    return v0
.end method

.method public getVertAdvance()I
    .registers 3

    .line 804
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getVertAdvance(J)I

    move-result v0

    return v0
.end method

.method public getVertBearingX()I
    .registers 3

    .line 788
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getVertBearingX(J)I

    move-result v0

    return v0
.end method

.method public getVertBearingY()I
    .registers 3

    .line 796
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getVertBearingY(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 748
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getWidth(J)I

    move-result v0

    return v0
.end method
