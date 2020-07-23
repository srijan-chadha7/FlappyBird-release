.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
.super Ljava/lang/Object;
.source "BitmapFontCache.java"


# static fields
.field private static final tempColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private currentTint:F

.field private final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private glyphCount:I

.field private idx:[I

.field private integer:Z

.field private final layouts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;",
            ">;"
        }
    .end annotation
.end field

.field private pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

.field private pageVertices:[[F

.field private final pooledLayouts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;",
            ">;"
        }
    .end annotation
.end field

.field private tempGlyphCount:[I

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .registers 3

    .line 58
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pooledLayouts:Lcom/badlogic/gdx/utils/Array;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 63
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 64
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 66
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p1, :cond_4a

    .line 69
    new-array p2, p1, [[F

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    .line 70
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    const/4 p2, 0x1

    if-le p1, p2, :cond_45

    .line 73
    new-array p2, p1, [Lcom/badlogic/gdx/utils/IntArray;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    const/4 p2, 0x0

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    array-length v0, v0

    :goto_37
    if-ge p2, v0, :cond_45

    .line 75
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    new-instance v2, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    aput-object v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_37

    .line 77
    :cond_45
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempGlyphCount:[I

    return-void

    .line 67
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The specified font must contain at least one texture page."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :goto_52
    throw p1

    :goto_53
    goto :goto_52
.end method

.method private addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFF)V
    .registers 15

    .line 387
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 388
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr p2, v2

    .line 389
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr p3, v2

    .line 390
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    .line 391
    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    .line 393
    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    if-eqz v6, :cond_42

    .line 394
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    .line 395
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    .line 396
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 397
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    :cond_42
    add-float/2addr v2, p2

    add-float/2addr v0, p3

    .line 401
    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    .line 402
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v7, v6, p1

    .line 403
    aget v8, v6, p1

    add-int/lit8 v8, v8, 0x14

    aput v8, v6, p1

    .line 405
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v6, :cond_5f

    aget-object v6, v6, p1

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphCount:I

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 407
    :cond_5f
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object p1, v6, p1

    add-int/lit8 v6, v7, 0x1

    .line 408
    aput p2, p1, v7

    add-int/lit8 v7, v6, 0x1

    .line 409
    aput p3, p1, v6

    add-int/lit8 v6, v7, 0x1

    .line 410
    aput p4, p1, v7

    add-int/lit8 v7, v6, 0x1

    .line 411
    aput v1, p1, v6

    add-int/lit8 v6, v7, 0x1

    .line 412
    aput v4, p1, v7

    add-int/lit8 v7, v6, 0x1

    .line 414
    aput p2, p1, v6

    add-int/lit8 p2, v7, 0x1

    .line 415
    aput v0, p1, v7

    add-int/lit8 v6, p2, 0x1

    .line 416
    aput p4, p1, p2

    add-int/lit8 p2, v6, 0x1

    .line 417
    aput v1, p1, v6

    add-int/lit8 v1, p2, 0x1

    .line 418
    aput v5, p1, p2

    add-int/lit8 p2, v1, 0x1

    .line 420
    aput v2, p1, v1

    add-int/lit8 v1, p2, 0x1

    .line 421
    aput v0, p1, p2

    add-int/lit8 p2, v1, 0x1

    .line 422
    aput p4, p1, v1

    add-int/lit8 v0, p2, 0x1

    .line 423
    aput v3, p1, p2

    add-int/lit8 p2, v0, 0x1

    .line 424
    aput v5, p1, v0

    add-int/lit8 v0, p2, 0x1

    .line 426
    aput v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    .line 427
    aput p3, p1, v0

    add-int/lit8 p3, p2, 0x1

    .line 428
    aput p4, p1, p2

    add-int/lit8 p2, p3, 0x1

    .line 429
    aput v3, p1, p3

    .line 430
    aput v4, p1, p2

    return-void
.end method

.method private addToCache(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V
    .registers 16

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 346
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_3d

    .line 347
    new-array v2, v0, [[F

    .line 348
    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    .line 351
    new-array v1, v0, [I

    .line 352
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    array-length v4, v2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    .line 355
    new-array v1, v0, [Lcom/badlogic/gdx/utils/IntArray;

    .line 357
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v2, :cond_2a

    .line 358
    array-length v4, v2

    .line 359
    array-length v5, v2

    invoke-static {v2, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v0, :cond_37

    .line 362
    new-instance v2, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 363
    :cond_37
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    .line 365
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempGlyphCount:[I

    .line 368
    :cond_3d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 369
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->requireGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;)V

    .line 370
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_4a
    if-ge v1, v0, :cond_7e

    .line 371
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 372
    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 373
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 374
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    .line 375
    iget v7, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    add-float/2addr v7, p2

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    add-float/2addr v2, p3

    .line 376
    iget v8, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    move v9, v7

    const/4 v7, 0x0

    :goto_68
    if-ge v7, v8, :cond_7b

    .line 377
    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 378
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    add-float/2addr v9, v11

    .line 379
    invoke-direct {p0, v10, v9, v2, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 383
    :cond_7e
    sget p1, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->currentTint:F

    return-void
.end method

.method private requireGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;)V
    .registers 12

    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_23

    .line 307
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v1, v0, :cond_1f

    .line 308
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 309
    :cond_1f
    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->requirePageGlyphs(II)V

    goto :goto_62

    .line 311
    :cond_23
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempGlyphCount:[I

    .line 312
    array-length v3, v0

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v3, :cond_2e

    .line 313
    aput v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 315
    :cond_2e
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_57

    .line 316
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 317
    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v7, 0x0

    :goto_42
    if-ge v7, v6, :cond_54

    .line 318
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    aget v9, v0, v8

    add-int/2addr v9, v1

    aput v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 321
    :cond_57
    array-length p1, v0

    :goto_58
    if-ge v2, p1, :cond_62

    .line 322
    aget v1, v0, v2

    invoke-direct {p0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->requirePageGlyphs(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_62
    :goto_62
    return-void
.end method

.method private requirePageGlyphs(II)V
    .registers 6

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v0, :cond_19

    .line 328
    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v0, v0

    if-le p2, v0, :cond_19

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v1, v0, p1

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v0, v0

    sub-int v0, p2, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    .line 332
    :cond_19
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v1, v0, p1

    mul-int/lit8 p2, p2, 0x14

    add-int/2addr v1, p2

    .line 333
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v2, p2, p1

    if-nez v2, :cond_2b

    .line 335
    new-array v0, v1, [F

    aput-object v0, p2, p1

    goto :goto_3a

    .line 336
    :cond_2b
    array-length p2, v2

    if-ge p2, v1, :cond_3a

    .line 337
    new-array p2, v1, [F

    .line 338
    aget v0, v0, p1

    const/4 v1, 0x0

    invoke-static {v2, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aput-object p2, v0, p1

    :cond_3a
    :goto_3a
    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 14

    .line 473
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object p1

    return-object p1
.end method

.method public addText(Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 17

    .line 479
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 486
    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 22

    move-object v0, p0

    .line 502
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 503
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pooledLayouts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 504
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, v1

    move-object v4, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    move v2, p2

    move v3, p3

    .line 505
    invoke-virtual {p0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V

    return-object v1
.end method

.method public addText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float/2addr p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V

    return-void
.end method

.method public clear()V
    .registers 5

    const/4 v0, 0x0

    .line 292
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    .line 293
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pooledLayouts:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Pools;->freeAll(Lcom/badlogic/gdx/utils/Array;Z)V

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pooledLayouts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 297
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_2c

    .line 298
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v3, :cond_25

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 299
    :cond_25
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2c
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .registers 9

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_2b

    .line 234
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v4, v4, v3

    if-lez v4, :cond_28

    .line 235
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v4, v4, v3

    .line 236
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v6, v6, v3

    invoke-interface {p1, v5, v4, v2, v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2b
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    .line 278
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void

    .line 281
    :cond_a
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 282
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 283
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v2, v2, p2

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 284
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(Lcom/badlogic/gdx/graphics/Color;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 286
    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 287
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;II)V
    .registers 15

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v1, v2, v1

    mul-int/lit8 v2, p2, 0x14

    sub-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x14

    invoke-interface {p1, v0, v1, v2, p3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void

    .line 248
    :cond_1e
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 249
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v2, v2

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_66

    .line 253
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v4, v4, v3

    .line 254
    iget v5, v4, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_34
    if-ge v7, v5, :cond_49

    .line 255
    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v10

    if-lt v10, p3, :cond_3d

    goto :goto_49

    :cond_3d
    if-ne v8, v6, :cond_42

    if-lt v10, p2, :cond_42

    move v8, v7

    :cond_42
    if-lt v10, p2, :cond_46

    add-int/lit8 v9, v9, 0x1

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_49
    :goto_49
    if-eq v8, v6, :cond_63

    if-nez v9, :cond_4e

    goto :goto_63

    .line 272
    :cond_4e
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v5, v5, v3

    mul-int/lit8 v8, v8, 0x14

    mul-int/lit8 v9, v9, 0x14

    invoke-interface {p1, v4, v5, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_66
    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getLayouts()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;",
            ">;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getVertexCount(I)I
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget p1, v0, p1

    return p1
.end method

.method public getVertices()[F
    .registers 2

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getVertices(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertices(I)[F
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getX()F
    .registers 2

    .line 516
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 521
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    return v0
.end method

.method public setAlphas(F)V
    .registers 12

    const/high16 v0, 0x437e0000    # 254.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v2, v0, :cond_40

    .line 143
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v4, v4, v2

    .line 144
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v5, v5, v2

    const/4 v6, 0x2

    move v7, v3

    move v3, v1

    const/4 v1, 0x2

    :goto_1b
    if-ge v1, v5, :cond_3b

    .line 145
    aget v8, v4, v1

    cmpl-float v9, v8, v3

    if-nez v9, :cond_28

    if-eq v1, v6, :cond_28

    .line 147
    aput v7, v4, v1

    goto :goto_38

    .line 150
    :cond_28
    invoke-static {v8}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v3

    const v7, 0xffffff

    and-int/2addr v3, v7

    or-int/2addr v3, p1

    .line 152
    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v7

    .line 153
    aput v7, v4, v1

    move v3, v8

    :goto_38
    add-int/lit8 v1, v1, 0x5

    goto :goto_1b

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    move v3, v7

    goto :goto_d

    :cond_40
    return-void
.end method

.method public setColor(FFFF)V
    .registers 6

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setColors(F)V
    .registers 7

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_19

    .line 162
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v2, v2, v1

    const/4 v3, 0x2

    .line 163
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v4, v4, v1

    :goto_f
    if-ge v3, v4, :cond_16

    .line 164
    aput p1, v2, v3

    add-int/lit8 v3, v3, 0x5

    goto :goto_f

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_19
    return-void
.end method

.method public setColors(FFFF)V
    .registers 6

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p4, p4, v0

    float-to-int p4, p4

    shl-int/lit8 p4, p4, 0x18

    mul-float p3, p3, v0

    float-to-int p3, p3

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p3, p4

    mul-float p2, p2, v0

    float-to-int p2, p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p3

    mul-float p1, p1, v0

    float-to-int p1, p1

    or-int/2addr p1, p2

    .line 176
    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(F)V

    return-void
.end method

.method public setColors(FII)V
    .registers 14

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-ne v1, v2, :cond_19

    .line 189
    aget-object v0, v0, v4

    mul-int/lit8 p2, p2, 0x14

    add-int/lit8 p2, p2, 0x2

    mul-int/lit8 p3, p3, 0x14

    :goto_11
    if-ge p2, p3, :cond_18

    .line 191
    aput p1, v0, p2

    add-int/lit8 p2, p2, 0x5

    goto :goto_11

    :cond_18
    return-void

    .line 195
    :cond_19
    array-length v0, v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_46

    .line 197
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v2, v2, v1

    .line 198
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v5, v5, v1

    .line 200
    iget v6, v5, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v7, 0x0

    :goto_28
    if-ge v7, v6, :cond_43

    .line 201
    iget-object v8, v5, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v8, v8, v7

    if-lt v8, p3, :cond_31

    goto :goto_43

    :cond_31
    if-lt v8, p2, :cond_40

    const/4 v8, 0x0

    :goto_34
    if-ge v8, v3, :cond_40

    mul-int/lit8 v9, v7, 0x14

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    .line 209
    aput p1, v2, v9

    add-int/lit8 v8, v8, 0x5

    goto :goto_34

    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_46
    return-void
.end method

.method public setColors(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 2

    .line 170
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(F)V

    return-void
.end method

.method public setColors(Lcom/badlogic/gdx/graphics/Color;II)V
    .registers 4

    .line 182
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(FII)V

    return-void
.end method

.method public setPosition(FF)V
    .registers 4

    .line 84
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->translate(FF)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 13

    .line 436
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 437
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 16

    .line 443
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 444
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 9

    .line 451
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 452
    invoke-virtual/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 10

    .line 459
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 460
    invoke-virtual/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object p1

    return-object p1
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V
    .registers 4

    .line 466
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 467
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V

    return-void
.end method

.method public setUseIntegerPositions(Z)V
    .registers 2

    .line 531
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    return-void
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 20

    move-object/from16 v0, p0

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    .line 112
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->currentTint:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_d

    return-void

    .line 113
    :cond_d
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->currentTint:F

    .line 115
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempGlyphCount:[I

    .line 116
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v2, :cond_1b

    .line 117
    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 119
    :cond_1b
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v2, :cond_84

    .line 120
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 121
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v6, :cond_7e

    .line 122
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 123
    iget-object v9, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 124
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    .line 125
    iget v11, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v12, 0x0

    :goto_50
    if-ge v12, v11, :cond_7a

    .line 126
    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 127
    iget v13, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    .line 128
    aget v14, v1, v13

    const/16 v15, 0x14

    mul-int/lit8 v14, v14, 0x14

    add-int/lit8 v14, v14, 0x2

    .line 129
    aget v16, v1, v13

    add-int/lit8 v16, v16, 0x1

    aput v16, v1, v13

    .line 130
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v3, v3, v13

    const/4 v13, 0x0

    :goto_6d
    if-ge v13, v15, :cond_76

    add-int v17, v14, v13

    .line 132
    aput v8, v3, v17

    add-int/lit8 v13, v13, 0x5

    goto :goto_6d

    :cond_76
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_50

    :cond_7a
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_2f

    :cond_7e
    move-object/from16 v10, p1

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_20

    :cond_84
    return-void
.end method

.method public translate(FF)V
    .registers 12

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_a

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    return-void

    .line 92
    :cond_a
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    if-eqz v0, :cond_18

    .line 93
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 94
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    .line 96
    :cond_18
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    .line 100
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v1, :cond_44

    .line 101
    aget-object v4, v0, v3

    .line 102
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v5, v5, v3

    const/4 v6, 0x0

    :goto_30
    if-ge v6, v5, :cond_41

    .line 103
    aget v7, v4, v6

    add-float/2addr v7, p1

    aput v7, v4, v6

    add-int/lit8 v7, v6, 0x1

    .line 104
    aget v8, v4, v7

    add-float/2addr v8, p2

    aput v8, v4, v7

    add-int/lit8 v6, v6, 0x5

    goto :goto_30

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_44
    return-void
.end method

.method public usesIntegerPositions()Z
    .registers 2

    .line 536
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    return v0
.end method
