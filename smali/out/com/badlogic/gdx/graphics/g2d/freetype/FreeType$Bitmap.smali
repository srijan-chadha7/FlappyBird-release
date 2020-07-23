.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bitmap"
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 3

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    return-void
.end method

.method private static native getBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method private static native getNumGray(J)I
.end method

.method private static native getPitch(J)I
.end method

.method private static native getPixelMode(J)I
.end method

.method private static native getRows(J)I
.end method

.method private static native getWidth(J)I
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 644
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 650
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 651
    :cond_c
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getNumGray()I
    .registers 3

    .line 726
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getNumGray(J)I

    move-result v0

    return v0
.end method

.method public getPitch()I
    .registers 3

    .line 636
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch(J)I

    move-result v0

    return v0
.end method

.method public getPixelMode()I
    .registers 3

    .line 734
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixelMode(J)I

    move-result v0

    return v0
.end method

.method public getPixmap(Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 23

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v3

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixelMode()I

    move-result v5

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 666
    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x0

    move-object/from16 v9, p2

    if-ne v9, v7, :cond_47

    sget v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_GRAY:I

    if-ne v5, v7, :cond_47

    if-ne v6, v2, :cond_47

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v7

    if-nez v7, :cond_47

    .line 667
    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v3, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 668
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-static {v4, v2, v3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    goto/16 :goto_ee

    .line 670
    :cond_47
    new-instance v7, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v7, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 671
    invoke-static/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(Lcom/badlogic/gdx/graphics/Color;)I

    move-result v9

    .line 672
    new-array v6, v6, [B

    .line 673
    new-array v10, v2, [I

    .line 674
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 675
    sget v12, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_MONO:I

    if-ne v5, v12, :cond_9a

    const/4 v1, 0x0

    :goto_63
    if-ge v1, v3, :cond_ed

    .line 678
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_6a
    if-ge v5, v2, :cond_94

    .line 680
    aget-byte v13, v6, v12

    sub-int v14, v2, v5

    const/16 v15, 0x8

    .line 681
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v15, 0x0

    :goto_77
    if-ge v15, v14, :cond_8f

    rsub-int/lit8 v16, v15, 0x7

    const/16 v17, 0x1

    shl-int v16, v17, v16

    and-int v16, v13, v16

    if-eqz v16, :cond_88

    add-int v16, v5, v15

    .line 683
    aput v9, v10, v16

    goto :goto_8c

    :cond_88
    add-int v16, v5, v15

    .line 685
    aput v8, v10, v16

    :goto_8c
    add-int/lit8 v15, v15, 0x1

    goto :goto_77

    :cond_8f
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v5, v5, 0x8

    goto :goto_6a

    .line 688
    :cond_94
    invoke-virtual {v11, v10}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_9a
    and-int/lit16 v5, v9, -0x100

    const/16 v12, 0xff

    and-int/2addr v9, v12

    const/4 v13, 0x0

    :goto_a0
    if-ge v13, v3, :cond_ed

    .line 695
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v14, 0x0

    :goto_a6
    if-ge v14, v2, :cond_df

    .line 700
    aget-byte v15, v6, v14

    and-int/2addr v15, v12

    if-nez v15, :cond_b5

    .line 702
    aput v5, v10, v14

    :goto_af
    move v15, v2

    move/from16 v18, v3

    move/from16 v17, v9

    goto :goto_d4

    :cond_b5
    if-ne v15, v12, :cond_bc

    or-int v15, v5, v9

    .line 704
    aput v15, v10, v14

    goto :goto_af

    :cond_bc
    int-to-float v12, v9

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    move/from16 v17, v9

    float-to-double v8, v15

    move v15, v2

    move/from16 v18, v3

    float-to-double v2, v1

    .line 706
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v12, v12, v2

    float-to-int v2, v12

    or-int/2addr v2, v5

    aput v2, v10, v14

    :goto_d4
    add-int/lit8 v14, v14, 0x1

    move v2, v15

    move/from16 v9, v17

    move/from16 v3, v18

    const/4 v8, 0x0

    const/16 v12, 0xff

    goto :goto_a6

    :cond_df
    move v15, v2

    move/from16 v18, v3

    move/from16 v17, v9

    .line 708
    invoke-virtual {v11, v10}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    const/16 v12, 0xff

    goto :goto_a0

    :cond_ed
    move-object v1, v7

    .line 714
    :goto_ee
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    if-eq v0, v2, :cond_113

    .line 715
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 716
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/4 v0, 0x0

    .line 717
    invoke-virtual {v2, v1, v0, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 718
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 719
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object v1, v2

    :cond_113
    return-object v1
.end method

.method public getRows()I
    .registers 3

    .line 620
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 628
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth(J)I

    move-result v0

    return v0
.end method
