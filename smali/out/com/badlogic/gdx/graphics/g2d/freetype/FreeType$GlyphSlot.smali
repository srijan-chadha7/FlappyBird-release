.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlyphSlot"
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 3

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    return-void
.end method

.method private static native getAdvanceX(J)I
.end method

.method private static native getAdvanceY(J)I
.end method

.method private static native getBitmap(J)J
.end method

.method private static native getBitmapLeft(J)I
.end method

.method private static native getBitmapTop(J)I
.end method

.method private static native getFormat(J)I
.end method

.method private static native getGlyph(J)J
.end method

.method private static native getLinearHoriAdvance(J)I
.end method

.method private static native getLinearVertAdvance(J)I
.end method

.method private static native getMetrics(J)J
.end method

.method private static native renderGlyph(JI)Z
.end method


# virtual methods
.method public getAdvanceX()I
    .registers 3

    .line 460
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getAdvanceX(J)I

    move-result v0

    return v0
.end method

.method public getAdvanceY()I
    .registers 3

    .line 468
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getAdvanceY(J)I

    move-result v0

    return v0
.end method

.method public getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .registers 4

    .line 484
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmap(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;-><init>(J)V

    return-object v0
.end method

.method public getBitmapLeft()I
    .registers 3

    .line 493
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapLeft(J)I

    move-result v0

    return v0
.end method

.method public getBitmapTop()I
    .registers 3

    .line 501
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapTop(J)I

    move-result v0

    return v0
.end method

.method public getFormat()I
    .registers 3

    .line 476
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getFormat(J)I

    move-result v0

    return v0
.end method

.method public getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;
    .registers 6

    .line 517
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getGlyph(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    .line 519
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;-><init>(J)V

    return-object v2

    .line 518
    :cond_12
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get glyph, FreeType error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLinearHoriAdvance()I
    .registers 3

    .line 444
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getLinearHoriAdvance(J)I

    move-result v0

    return v0
.end method

.method public getLinearVertAdvance()I
    .registers 3

    .line 452
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getLinearVertAdvance(J)I

    move-result v0

    return v0
.end method

.method public getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    .registers 4

    .line 436
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;-><init>(J)V

    return-object v0
.end method

.method public renderGlyph(I)Z
    .registers 4

    .line 509
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->address:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->renderGlyph(JI)Z

    move-result p1

    return p1
.end method
