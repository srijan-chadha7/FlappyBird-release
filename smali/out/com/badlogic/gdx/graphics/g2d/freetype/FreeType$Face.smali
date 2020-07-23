.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;


# direct methods
.method public constructor <init>(JLcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;)V
    .registers 4

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    .line 163
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    return-void
.end method

.method private static native doneFace(J)V
.end method

.method private static native getAscender(J)I
.end method

.method private static native getCharIndex(JI)I
.end method

.method private static native getDescender(J)I
.end method

.method private static native getFaceFlags(J)I
.end method

.method private static native getGlyph(J)J
.end method

.method private static native getHeight(J)I
.end method

.method private static native getKerning(JIII)I
.end method

.method private static native getMaxAdvanceHeight(J)I
.end method

.method private static native getMaxAdvanceWidth(J)I
.end method

.method private static native getNumGlyphs(J)I
.end method

.method private static native getSize(J)J
.end method

.method private static native getStyleFlags(J)I
.end method

.method private static native getUnderlinePosition(J)I
.end method

.method private static native getUnderlineThickness(J)I
.end method

.method private static native hasKerning(J)Z
.end method

.method private static native loadChar(JII)Z
.end method

.method private static native loadGlyph(JII)Z
.end method

.method private static native selectSize(JI)Z
.end method

.method private static native setCharSize(JIIII)Z
.end method

.method private static native setPixelSizes(JII)Z
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .line 168
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->doneFace(J)V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_25

    .line 171
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 172
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 173
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_25
    return-void
.end method

.method public getAscender()I
    .registers 3

    .line 206
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getAscender(J)I

    move-result v0

    return v0
.end method

.method public getCharIndex(I)I
    .registers 4

    .line 337
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(JI)I

    move-result p1

    return p1
.end method

.method public getDescender()I
    .registers 3

    .line 214
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getDescender(J)I

    move-result v0

    return v0
.end method

.method public getFaceFlags()I
    .registers 3

    .line 182
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getFaceFlags(J)I

    move-result v0

    return v0
.end method

.method public getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
    .registers 4

    .line 302
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;-><init>(J)V

    return-object v0
.end method

.method public getHeight()I
    .registers 3

    .line 222
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getHeight(J)I

    move-result v0

    return v0
.end method

.method public getKerning(III)I
    .registers 6

    .line 326
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getKerning(JIII)I

    move-result p1

    return p1
.end method

.method public getMaxAdvanceHeight()I
    .registers 3

    .line 238
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getMaxAdvanceHeight(J)I

    move-result v0

    return v0
.end method

.method public getMaxAdvanceWidth()I
    .registers 3

    .line 230
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getMaxAdvanceWidth(J)I

    move-result v0

    return v0
.end method

.method public getNumGlyphs()I
    .registers 3

    .line 198
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getNumGlyphs(J)I

    move-result v0

    return v0
.end method

.method public getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;
    .registers 4

    .line 310
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;-><init>(J)V

    return-object v0
.end method

.method public getStyleFlags()I
    .registers 3

    .line 190
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getStyleFlags(J)I

    move-result v0

    return v0
.end method

.method public getUnderlinePosition()I
    .registers 3

    .line 246
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getUnderlinePosition(J)I

    move-result v0

    return v0
.end method

.method public getUnderlineThickness()I
    .registers 3

    .line 254
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getUnderlineThickness(J)I

    move-result v0

    return v0
.end method

.method public hasKerning()Z
    .registers 3

    .line 318
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->hasKerning(J)Z

    move-result v0

    return v0
.end method

.method public loadChar(II)Z
    .registers 5

    .line 294
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->loadChar(JII)Z

    move-result p1

    return p1
.end method

.method public loadGlyph(II)Z
    .registers 5

    .line 286
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->loadGlyph(JII)Z

    move-result p1

    return p1
.end method

.method public selectSize(I)Z
    .registers 4

    .line 262
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->selectSize(JI)Z

    move-result p1

    return p1
.end method

.method public setCharSize(IIII)Z
    .registers 11

    .line 270
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->setCharSize(JIIII)Z

    move-result p1

    return p1
.end method

.method public setPixelSizes(II)Z
    .registers 5

    .line 278
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->address:J

    invoke-static {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->setPixelSizes(JII)Z

    move-result p1

    return p1
.end method
