.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.super Ljava/lang/Object;
.source "PixmapPacker.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    }
.end annotation


# static fields
.field static indexPattern:Ljava/util/regex/Pattern;


# instance fields
.field alphaThreshold:I

.field private c:Lcom/badlogic/gdx/graphics/Color;

.field disposed:Z

.field duplicateBorder:Z

.field packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

.field packToTexture:Z

.field padding:I

.field pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field pageHeight:I

.field pageWidth:I

.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation
.end field

.field stripWhitespaceX:Z

.field stripWhitespaceY:Z

.field transparentColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(.+)_(\\d+)$"

    .line 114
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->indexPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZ)V
    .registers 15

    .line 119
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V
    .registers 16

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    .line 125
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V
    .registers 11

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    .line 111
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 819
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    .line 138
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    .line 139
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    .line 140
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 141
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    .line 142
    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    .line 143
    iput-boolean p6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    .line 144
    iput-boolean p7, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    .line 145
    iput-object p8, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    return-void
.end method

.method private getPads(Lcom/badlogic/gdx/graphics/Pixmap;[I)[I
    .registers 19

    move-object/from16 v0, p2

    .line 763
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 764
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v6, v1

    .line 766
    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v11

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v10

    .line 767
    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v12

    const/4 v13, 0x0

    if-eqz v11, :cond_36

    add-int/lit8 v5, v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v6, v1

    .line 772
    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v3

    move v14, v3

    goto :goto_37

    :cond_36
    const/4 v14, 0x0

    :goto_37
    if-eqz v12, :cond_48

    add-int/lit8 v7, v12, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v10

    .line 773
    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v3

    move v15, v3

    goto :goto_49

    :cond_48
    const/4 v15, 0x0

    :goto_49
    add-int/lit8 v5, v14, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v6, v1

    .line 776
    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    add-int/lit8 v7, v15, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v10

    .line 777
    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    const/4 v1, 0x0

    if-nez v11, :cond_6a

    if-nez v14, :cond_6a

    if-nez v12, :cond_6a

    if-nez v15, :cond_6a

    return-object v1

    :cond_6a
    const/4 v3, 0x2

    const/4 v4, -0x1

    if-nez v11, :cond_73

    if-nez v14, :cond_73

    const/4 v5, -0x1

    const/4 v11, -0x1

    goto :goto_84

    :cond_73
    if-lez v11, :cond_7f

    add-int/lit8 v11, v11, -0x1

    .line 791
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v14, v2

    sub-int/2addr v5, v14

    goto :goto_84

    .line 794
    :cond_7f
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_84
    if-nez v12, :cond_8a

    if-nez v15, :cond_8a

    const/4 v12, -0x1

    goto :goto_9b

    :cond_8a
    if-lez v12, :cond_96

    add-int/lit8 v12, v12, -0x1

    .line 803
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v15, v2

    sub-int/2addr v4, v15

    goto :goto_9b

    .line 806
    :cond_96
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_9b
    const/4 v6, 0x4

    .line 810
    new-array v6, v6, [I

    aput v11, v6, v13

    aput v5, v6, v2

    aput v12, v6, v3

    const/4 v2, 0x3

    aput v4, v6, v2

    if-eqz v0, :cond_b0

    .line 812
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_b0

    return-object v1

    :cond_b0
    return-object v6
.end method

.method private getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I
    .registers 16

    const/4 v0, 0x4

    .line 821
    new-array v0, v0, [I

    if-eqz p5, :cond_7

    move v1, p2

    goto :goto_8

    :cond_7
    move v1, p3

    :goto_8
    if-eqz p5, :cond_f

    .line 824
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    :goto_13
    const/16 v3, 0xff

    const/4 v4, 0x0

    if-eqz p4, :cond_1b

    const/16 v5, 0xff

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    :goto_1c
    if-eq v1, v2, :cond_93

    if-eqz p5, :cond_22

    move p2, v1

    goto :goto_23

    :cond_22
    move p3, v1

    .line 835
    :goto_23
    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v6

    .line 836
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/graphics/Color;->set(I)Lcom/badlogic/gdx/graphics/Color;

    .line 837
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    aput v6, v0, v4

    .line 838
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/4 v8, 0x1

    aput v6, v0, v8

    .line 839
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/4 v9, 0x2

    aput v6, v0, v9

    .line 840
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/4 v7, 0x3

    aput v6, v0, v7

    .line 841
    aget v6, v0, v7

    if-ne v6, v5, :cond_5a

    return v1

    :cond_5a
    if-nez p4, :cond_90

    .line 843
    aget v6, v0, v4

    if-nez v6, :cond_6c

    aget v6, v0, v8

    if-nez v6, :cond_6c

    aget v6, v0, v9

    if-nez v6, :cond_6c

    aget v6, v0, v7

    if-eq v6, v3, :cond_90

    :cond_6c
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_93
    return v4
.end method

.method private getSplits(Lcom/badlogic/gdx/graphics/Pixmap;)[I
    .registers 18

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 730
    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v8, v0

    .line 731
    invoke-direct/range {v6 .. v11}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 732
    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v2

    .line 733
    invoke-direct/range {v8 .. v13}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v3

    add-int/lit8 v6, v1, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 736
    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    add-int/lit8 v13, v3, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 737
    invoke-direct/range {v10 .. v15}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    if-nez v0, :cond_4e

    if-nez v1, :cond_4e

    if-nez v2, :cond_4e

    if-nez v3, :cond_4e

    const/4 v0, 0x0

    return-object v0

    :cond_4e
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_5c

    add-int/lit8 v0, v0, -0x1

    .line 745
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    sub-int/2addr v1, v5

    sub-int/2addr v6, v1

    goto :goto_62

    .line 748
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    add-int/lit8 v6, v1, -0x2

    :goto_62
    if-eqz v2, :cond_6e

    add-int/lit8 v2, v2, -0x1

    .line 752
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v4

    sub-int/2addr v3, v5

    sub-int/2addr v1, v3

    goto :goto_73

    .line 755
    :cond_6e
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_73
    const/4 v3, 0x4

    .line 758
    new-array v3, v3, [I

    const/4 v7, 0x0

    aput v0, v3, v7

    aput v6, v3, v5

    aput v2, v3, v4

    const/4 v0, 0x3

    aput v1, v3, v0

    return-object v3
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .registers 4

    monitor-enter p0

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 332
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v2, :cond_7

    .line 333
    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_7

    :cond_1d
    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 337
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    goto :goto_26

    :goto_25
    throw v0

    :goto_26
    goto :goto_25
.end method

.method public declared-synchronized generateTextureAtlas(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .registers 5

    monitor-enter p0

    .line 342
    :try_start_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>()V

    .line 343
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 344
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDuplicateBorder()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    return v0
.end method

.method public getPackToTexture()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    return v0
.end method

.method public getPadding()I
    .registers 2

    .line 440
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    return v0
.end method

.method public declared-synchronized getPage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .registers 5

    monitor-enter p0

    .line 310
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 311
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_22

    if-eqz v2, :cond_7

    .line 312
    monitor-exit p0

    return-object v1

    :cond_1f
    const/4 p1, 0x0

    .line 314
    monitor-exit p0

    return-object p1

    :catchall_22
    move-exception p1

    monitor-exit p0

    goto :goto_26

    :goto_25
    throw p1

    :goto_26
    goto :goto_25
.end method

.method public getPageFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getPageHeight()I
    .registers 2

    .line 424
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    return v0
.end method

.method public declared-synchronized getPageIndex(Ljava/lang/String;)I
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 321
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1f

    .line 322
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_22

    if-eqz v1, :cond_1c

    .line 323
    monitor-exit p0

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    const/4 p1, -0x1

    .line 325
    monitor-exit p0

    return p1

    :catchall_22
    move-exception p1

    monitor-exit p0

    goto :goto_26

    :goto_25
    throw p1

    :goto_26
    goto :goto_25
.end method

.method public getPageWidth()I
    .registers 2

    .line 416
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    return v0
.end method

.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public declared-synchronized getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;
    .registers 4

    monitor-enter p0

    .line 300
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 301
    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_22

    if-eqz v1, :cond_7

    .line 302
    monitor-exit p0

    return-object v1

    :cond_1f
    const/4 p1, 0x0

    .line 304
    monitor-exit p0

    return-object p1

    :catchall_22
    move-exception p1

    monitor-exit p0

    goto :goto_26

    :goto_25
    throw p1

    :goto_26
    goto :goto_25
.end method

.method public getTransparentColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 718
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public declared-synchronized pack(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 157
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    monitor-enter p0

    .line 167
    :try_start_7
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_2dd

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    monitor-exit p0

    return-object v4

    :cond_e
    if-eqz v0, :cond_2e

    .line 168
    :try_start_10
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_2e

    .line 169
    :cond_17
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pixmap has already been packed with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    :goto_2e
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_3c

    const-string v2, ".9"

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    if-eqz v2, :cond_9a

    .line 176
    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v12, v10, v10, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIII)V

    .line 177
    new-instance v13, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v5

    invoke-direct {v13, v2, v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 178
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 179
    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplits(Lcom/badlogic/gdx/graphics/Pixmap;)[I

    move-result-object v2

    iput-object v2, v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    .line 180
    iget-object v2, v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getPads(Lcom/badlogic/gdx/graphics/Pixmap;[I)[I

    move-result-object v2

    iput-object v2, v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->pads:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 181
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    move-object v2, v13

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    const-string v2, "\\."

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    move-object v3, v13

    move-object v4, v3

    goto/16 :goto_181

    .line 185
    :cond_9a
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    if-nez v2, :cond_b2

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    if-eqz v2, :cond_a3

    goto :goto_b2

    .line 244
    :cond_a3
    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-direct {v12, v10, v10, v2, v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIII)V

    goto/16 :goto_181

    .line 186
    :cond_b2
    :goto_b2
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v20

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v21

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    .line 191
    iget-boolean v4, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    if-eqz v4, :cond_107

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 193
    :goto_c4
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_e4

    const/4 v6, 0x0

    .line 194
    :goto_cb
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_df

    .line 195
    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 197
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v7, v8, :cond_dc

    goto :goto_e4

    :cond_dc
    add-int/lit8 v6, v6, 0x1

    goto :goto_cb

    :cond_df
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_c4

    .line 202
    :cond_e4
    :goto_e4
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    :goto_e8
    add-int/lit8 v4, v4, -0x1

    if-lt v4, v5, :cond_104

    const/4 v6, 0x0

    .line 203
    :goto_ed
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_101

    .line 204
    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 206
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v7, v8, :cond_fe

    goto :goto_104

    :cond_fe
    add-int/lit8 v6, v6, 0x1

    goto :goto_ed

    :cond_101
    add-int/lit8 v2, v2, -0x1

    goto :goto_e8

    :cond_104
    :goto_104
    move/from16 v19, v5

    goto :goto_109

    :cond_107
    const/16 v19, 0x0

    .line 212
    :goto_109
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    .line 213
    iget-boolean v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    if-eqz v5, :cond_14f

    const/4 v5, 0x0

    .line 215
    :goto_112
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    if-ge v10, v6, :cond_12f

    move/from16 v6, v19

    :goto_11a
    if-ge v6, v2, :cond_12a

    .line 217
    invoke-virtual {v3, v10, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 219
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v7, v8, :cond_127

    goto :goto_12f

    :cond_127
    add-int/lit8 v6, v6, 0x1

    goto :goto_11a

    :cond_12a
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_112

    .line 224
    :cond_12f
    :goto_12f
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    :goto_133
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v5, :cond_14c

    move/from16 v7, v19

    :goto_139
    if-ge v7, v2, :cond_149

    .line 226
    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 228
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v8, v9, :cond_146

    goto :goto_14c

    :cond_146
    add-int/lit8 v7, v7, 0x1

    goto :goto_139

    :cond_149
    add-int/lit8 v4, v4, -0x1

    goto :goto_133

    :cond_14c
    :goto_14c
    move/from16 v18, v5

    goto :goto_151

    :cond_14f
    const/16 v18, 0x0

    :goto_151
    sub-int v10, v4, v18

    sub-int v12, v2, v19

    .line 237
    new-instance v15, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-direct {v15, v10, v12, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 238
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v15

    move-object/from16 v3, p2

    move/from16 v6, v18

    move/from16 v7, v19

    move v8, v10

    move v9, v12

    .line 239
    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 242
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    const/4 v14, 0x0

    const/4 v3, 0x0

    move-object v13, v2

    move-object v4, v15

    move v15, v3

    move/from16 v16, v10

    move/from16 v17, v12

    invoke-direct/range {v13 .. v21}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIIIIIII)V

    move-object v12, v2

    move-object v3, v4

    .line 248
    :goto_181
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->getWidth()F

    move-result v2

    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_2bc

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->getHeight()F

    move-result v2

    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_199

    goto/16 :goto_2bc

    .line 253
    :cond_199
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    invoke-interface {v2, v1, v0, v12}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;->pack(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Ljava/lang/String;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    move-result-object v2

    if-eqz v0, :cond_1ab

    .line 255
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v5, v0, v12}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 259
    :cond_1ab
    iget v0, v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->x:F

    float-to-int v0, v0

    iget v5, v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->y:F

    float-to-int v5, v5

    iget v6, v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->width:F

    float-to-int v6, v6

    iget v7, v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    float-to-int v7, v7

    .line 261
    iget-boolean v8, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    if-eqz v8, :cond_1eb

    iget-boolean v8, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-nez v8, :cond_1eb

    iget-object v8, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v8, :cond_1eb

    iget-boolean v8, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->dirty:Z

    if-nez v8, :cond_1eb

    .line 262
    iget-object v8, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 263
    sget-object v13, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v8, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v14, v8, Lcom/badlogic/gdx/graphics/Texture;->glTarget:I

    const/4 v15, 0x0

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v20

    .line 264
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v21

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v22

    move/from16 v16, v0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    .line 263
    invoke-interface/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_1ed

    .line 266
    :cond_1eb
    iput-boolean v11, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->dirty:Z

    .line 268
    :goto_1ed
    iget-object v8, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v8, v3, v0, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 270
    iget-boolean v8, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-eqz v8, :cond_2b5

    .line 271
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    .line 273
    iget-object v13, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    add-int/lit8 v10, v0, -0x1

    add-int/lit8 v11, v5, -0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-virtual/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 274
    iget-object v13, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v23, v8, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    add-int v24, v0, v6

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v15, v23

    move/from16 v19, v24

    move/from16 v20, v11

    invoke-virtual/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 275
    iget-object v13, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v15, 0x0

    add-int/lit8 v25, v9, -0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    add-int v26, v5, v7

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v16, v25

    move/from16 v19, v10

    move/from16 v20, v26

    invoke-virtual/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 276
    iget-object v13, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v15, v23

    move/from16 v16, v25

    move/from16 v19, v24

    move/from16 v20, v26

    invoke-virtual/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 278
    iget-object v13, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v17, v8

    move/from16 v19, v0

    move/from16 v20, v11

    move/from16 v21, v6

    invoke-virtual/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 279
    iget-object v13, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v15, 0x0

    const/16 v18, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v16, v25

    move/from16 v17, v8

    move/from16 v19, v0

    move/from16 v20, v26

    move/from16 v21, v6

    invoke-virtual/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 280
    iget-object v13, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    move-object v14, v3

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v5

    move/from16 v22, v7

    invoke-virtual/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 281
    iget-object v13, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    move-object v14, v3

    move/from16 v15, v23

    move/from16 v18, v9

    move/from16 v19, v24

    move/from16 v20, v5

    move/from16 v22, v7

    invoke-virtual/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    :cond_2b5
    if-eqz v4, :cond_2ba

    .line 285
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_2ba
    .catchall {:try_start_10 .. :try_end_2ba} :catchall_2dd

    .line 288
    :cond_2ba
    monitor-exit p0

    return-object v12

    :cond_2bc
    :goto_2bc
    if-nez v0, :cond_2c6

    .line 249
    :try_start_2be
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Page size too small for pixmap."

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2c6
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page size too small for pixmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2dd
    .catchall {:try_start_2be .. :try_end_2dd} :catchall_2dd

    :catchall_2dd
    move-exception v0

    monitor-exit p0

    goto :goto_2e1

    :goto_2e0
    throw v0

    :goto_2e1
    goto :goto_2e0
.end method

.method public setDuplicateBorder(Z)V
    .registers 2

    .line 452
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    return-void
.end method

.method public setPackToTexture(Z)V
    .registers 2

    .line 463
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    return-void
.end method

.method public setPadding(I)V
    .registers 2

    .line 444
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    return-void
.end method

.method public setPageFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .registers 2

    .line 436
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-void
.end method

.method public setPageHeight(I)V
    .registers 2

    .line 428
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    return-void
.end method

.method public setPageWidth(I)V
    .registers 2

    .line 420
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    return-void
.end method

.method public setTransparentColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;)V"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;->sort(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public declared-synchronized updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .registers 6

    monitor-enter p0

    .line 411
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 412
    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->updateTexture(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    .line 413
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    goto :goto_1d

    :goto_1c
    throw p1

    :goto_1d
    goto :goto_1c
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .registers 11

    monitor-enter p0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 353
    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;ZZ)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 354
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;ZZ)V
    .registers 15

    monitor-enter p0

    .line 362
    :try_start_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 363
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_aa

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 364
    iget-object p4, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    iget p4, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez p4, :cond_a

    .line 365
    iget-object p4, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_22
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    .line 367
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v3, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->x:F

    float-to-int v4, v2

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->y:F

    float-to-int v5, v2

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->width:F

    float-to-int v6, v2

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    float-to-int v7, v2

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 369
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    if-eqz v2, :cond_56

    .line 370
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    iput-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    .line 371
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->pads:[I

    iput-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->pads:[I

    :cond_56
    const/4 v2, -0x1

    if-eqz p5, :cond_73

    .line 378
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->indexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 379
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_73

    const/4 v0, 0x1

    .line 380
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 381
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 385
    :cond_73
    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 386
    iput v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    .line 387
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetX:I

    int-to-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 388
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalHeight:I

    int-to-float v0, v0

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    sub-float/2addr v0, v2

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 389
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalWidth:I

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 390
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalHeight:I

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 392
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_22

    .line 394
    :cond_9a
    iget-object p4, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 395
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object p4

    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p4, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z
    :try_end_a8
    .catchall {:try_start_1 .. :try_end_a8} :catchall_ac

    goto/16 :goto_a

    .line 398
    :cond_aa
    monitor-exit p0

    return-void

    :catchall_ac
    move-exception p1

    monitor-exit p0

    goto :goto_b0

    :goto_af
    throw p1

    :goto_b0
    goto :goto_af
.end method

.method public declared-synchronized updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 404
    :try_start_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 405
    :goto_4
    iget p2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget p3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, p3, :cond_21

    .line 406
    new-instance p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget p4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    goto :goto_4

    .line 407
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method
