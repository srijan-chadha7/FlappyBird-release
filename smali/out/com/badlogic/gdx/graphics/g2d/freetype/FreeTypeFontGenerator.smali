.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
.super Ljava/lang/Object;
.source "FreeTypeFontGenerator.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARS:Ljava/lang/String; = "\u0000ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\"!`?\'.,;:()[]{}<>|/@\\^$\u20ac-%+=#_&~*\u007f\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\u009f\u00a0\u00a1\u00a2\u00a3\u00a4\u00a5\u00a6\u00a7\u00a8\u00a9\u00aa\u00ab\u00ac\u00ad\u00ae\u00af\u00b0\u00b1\u00b2\u00b3\u00b4\u00b5\u00b6\u00b7\u00b8\u00b9\u00ba\u00bb\u00bc\u00bd\u00be\u00bf\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00c6\u00c7\u00c8\u00c9\u00ca\u00cb\u00cc\u00cd\u00ce\u00cf\u00d0\u00d1\u00d2\u00d3\u00d4\u00d5\u00d6\u00d7\u00d8\u00d9\u00da\u00db\u00dc\u00dd\u00de\u00df\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u00e7\u00e8\u00e9\u00ea\u00eb\u00ec\u00ed\u00ee\u00ef\u00f0\u00f1\u00f2\u00f3\u00f4\u00f5\u00f6\u00f7\u00f8\u00f9\u00fa\u00fb\u00fc\u00fd\u00fe\u00ff"

.field public static final NO_MAXIMUM:I = -0x1

.field private static maxTextureSize:I = 0x400


# instance fields
.field bitmapped:Z

.field final face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

.field final library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

.field final name:Ljava/lang/String;

.field private pixelHeight:I

.field private pixelWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 3

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;I)V
    .registers 5

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    .line 93
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->name:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->initFreeType()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    .line 95
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newFace(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 96
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->checkForBitmapFont()Z

    move-result p1

    if-eqz p1, :cond_21

    return-void

    :cond_21
    const/16 p1, 0xf

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    return-void
.end method

.method private checkForBitmapFont()Z
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getFaceFlags()I

    move-result v0

    .line 138
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_SIZES:I

    and-int/2addr v1, v0

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_SIZES:I

    if-ne v1, v2, :cond_2e

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HORIZONTAL:I

    and-int/2addr v0, v1

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HORIZONTAL:I

    if-ne v0, v1, :cond_2e

    const/16 v0, 0x20

    .line 140
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getFormat()I

    move-result v0

    const v1, 0x62697473

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    .line 147
    :cond_2e
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    return v0
.end method

.method private getLoadingFlags(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)I
    .registers 4

    .line 101
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_DEFAULT:I

    .line 102
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$freetype$FreeTypeFontGenerator$Hinting:[I

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->hinting:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_2e

    goto :goto_2c

    .line 122
    :pswitch_10
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_MONO:I

    goto :goto_1e

    .line 119
    :pswitch_15
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_NORMAL:I

    goto :goto_1e

    .line 116
    :pswitch_1a
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LIGHT:I

    :goto_1e
    or-int/2addr p1, v1

    goto :goto_2b

    .line 113
    :pswitch_20
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_MONO:I

    goto :goto_2b

    .line 110
    :pswitch_23
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_NORMAL:I

    goto :goto_2b

    .line 107
    :pswitch_26
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LIGHT:I

    goto :goto_2b

    .line 104
    :pswitch_29
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_HINTING:I

    :goto_2b
    or-int/2addr v0, p1

    :goto_2c
    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1a
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method public static getMaxTextureSize()I
    .registers 1

    .line 639
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    return v0
.end method

.method private loadChar(I)Z
    .registers 4

    .line 129
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_DEFAULT:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result p1

    return p1
.end method

.method private loadChar(II)Z
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->loadChar(II)Z

    move-result p1

    return p1
.end method

.method public static setMaxTextureSize(I)V
    .registers 1

    .line 633
    sput p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    return-void
.end method


# virtual methods
.method createGlyph(CLcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLcom/badlogic/gdx/graphics/g2d/PixmapPacker;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 477
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_19

    if-eqz v1, :cond_19

    const/4 v6, 0x1

    goto :goto_1a

    :cond_19
    const/4 v6, 0x0

    :goto_1a
    const/4 v9, 0x0

    if-eqz v6, :cond_1e

    return-object v9

    .line 480
    :cond_1e
    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->getLoadingFlags(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)I

    move-result v6

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v6

    if-nez v6, :cond_29

    return-object v9

    .line 482
    :cond_29
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v6

    .line 483
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;

    move-result-object v10

    .line 485
    :try_start_33
    iget-boolean v11, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->mono:Z

    if-eqz v11, :cond_3a

    sget v11, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MONO:I

    goto :goto_3c

    :cond_3a
    sget v11, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    :goto_3c
    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->toBitmap(I)V
    :try_end_3f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_33 .. :try_end_3f} :catch_2c0

    .line 491
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v9

    .line 492
    sget-object v11, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget-object v12, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v13, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->gamma:F

    invoke-virtual {v9, v11, v12, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixmap(Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v11

    .line 494
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth()I

    move-result v12

    if-eqz v12, :cond_1e4

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v12

    if-eqz v12, :cond_1e4

    .line 496
    iget v12, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_ac

    .line 498
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v12

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getLeft()I

    move-result v14

    .line 499
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;

    move-result-object v15

    move-object/from16 v7, p4

    .line 500
    invoke-virtual {v15, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->strokeBorder(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;Z)V

    .line 501
    iget-boolean v7, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->mono:Z

    if-eqz v7, :cond_78

    sget v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MONO:I

    goto :goto_7a

    :cond_78
    sget v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    :goto_7a
    invoke-virtual {v15, v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->toBitmap(I)V

    .line 502
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getLeft()I

    move-result v7

    sub-int/2addr v14, v7

    .line 503
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v7

    sub-int/2addr v12, v7

    neg-int v7, v12

    .line 506
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v12

    .line 507
    sget-object v8, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget-object v13, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v17, v15

    iget v15, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderGamma:F

    invoke-virtual {v12, v8, v13, v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixmap(Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v8

    .line 510
    iget v12, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->renderCount:I

    const/4 v13, 0x0

    :goto_9b
    if-ge v13, v12, :cond_a3

    .line 511
    invoke-virtual {v8, v11, v14, v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_9b

    .line 513
    :cond_a3
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 514
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->dispose()V

    move-object v11, v8

    move-object/from16 v10, v17

    .line 519
    :cond_ac
    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    if-nez v7, :cond_d1

    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    if-eqz v7, :cond_b5

    goto :goto_d1

    .line 551
    :cond_b5
    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_ca

    .line 553
    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->renderCount:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    :goto_c1
    if-ge v8, v7, :cond_ca

    const/4 v12, 0x0

    .line 554
    invoke-virtual {v11, v11, v12, v12}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c1

    :cond_ca
    const/4 v12, 0x0

    move-object/from16 v17, v9

    move-object/from16 p4, v10

    goto/16 :goto_1a0

    :cond_d1
    :goto_d1
    const/4 v12, 0x0

    .line 520
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v8

    .line 521
    iget v13, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget v14, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 522
    iget v12, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v12, v7

    iget v15, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v15, v8

    move-object/from16 p4, v10

    .line 523
    new-instance v10, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-direct {v10, v12, v15, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 525
    iget-object v2, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowColor:Lcom/badlogic/gdx/graphics/Color;

    .line 526
    iget v15, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/16 v16, 0x0

    cmpl-float v16, v15, v16

    if-eqz v16, :cond_17f

    .line 528
    iget v5, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v5, v5, v16

    float-to-int v5, v5

    int-to-byte v5, v5

    move-object/from16 v17, v9

    iget v9, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v9, v9, v16

    float-to-int v9, v9

    int-to-byte v9, v9

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v2, v2, v16

    float-to-int v2, v2

    int-to-byte v2, v2

    .line 529
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 530
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v1, 0x0

    :goto_128
    if-ge v1, v8, :cond_181

    add-int v16, v1, v14

    mul-int v16, v16, v12

    add-int v16, v16, v13

    move/from16 v18, v8

    const/4 v8, 0x0

    :goto_133
    if-ge v8, v7, :cond_174

    mul-int v19, v7, v1

    add-int v19, v19, v8

    mul-int/lit8 v19, v19, 0x4

    move/from16 v20, v7

    add-int/lit8 v7, v19, 0x3

    .line 535
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-nez v7, :cond_14a

    move-object/from16 v21, v0

    move/from16 v19, v5

    goto :goto_16b

    :cond_14a
    add-int v19, v16, v8

    move-object/from16 v21, v0

    mul-int/lit8 v0, v19, 0x4

    .line 538
    invoke-virtual {v4, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move/from16 v19, v5

    add-int/lit8 v5, v0, 0x1

    .line 539
    invoke-virtual {v4, v5, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0x2

    .line 540
    invoke-virtual {v4, v5, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    and-int/lit16 v5, v7, 0xff

    int-to-float v5, v5

    mul-float v5, v5, v15

    float-to-int v5, v5

    int-to-byte v5, v5

    .line 541
    invoke-virtual {v4, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_16b
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v19

    move/from16 v7, v20

    move-object/from16 v0, v21

    goto :goto_133

    :cond_174
    move-object/from16 v21, v0

    move/from16 v19, v5

    move/from16 v20, v7

    add-int/lit8 v1, v1, 0x1

    move/from16 v8, v18

    goto :goto_128

    :cond_17f
    move-object/from16 v17, v9

    .line 547
    :cond_181
    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->renderCount:I

    const/4 v1, 0x0

    :goto_184
    if-ge v1, v0, :cond_19b

    .line 548
    iget v2, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    neg-int v2, v2

    const/4 v12, 0x0

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    neg-int v4, v4

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v10, v11, v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_184

    :cond_19b
    const/4 v12, 0x0

    .line 549
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object v11, v10

    .line 557
    :goto_1a0
    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padTop:I

    if-gtz v0, :cond_1b4

    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padLeft:I

    if-gtz v0, :cond_1b4

    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padBottom:I

    if-gtz v0, :cond_1b4

    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padRight:I

    if-lez v0, :cond_1b1

    goto :goto_1b4

    :cond_1b1
    move-object/from16 v10, p4

    goto :goto_1e7

    .line 558
    :cond_1b4
    :goto_1b4
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    iget v2, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padLeft:I

    add-int/2addr v1, v2

    iget v2, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padRight:I

    add-int/2addr v1, v2

    .line 559
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padTop:I

    add-int/2addr v2, v4

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padBottom:I

    add-int/2addr v2, v4

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 560
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 561
    iget v1, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padLeft:I

    iget v2, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padTop:I

    invoke-virtual {v0, v11, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 562
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object/from16 v10, p4

    move-object v11, v0

    goto :goto_1e7

    :cond_1e4
    move-object/from16 v17, v9

    const/4 v12, 0x0

    .line 567
    :goto_1e7
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    .line 568
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    move/from16 v2, p1

    .line 569
    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 570
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 571
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 572
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getLeft()I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 573
    iget-boolean v2, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->flip:Z

    if-eqz v2, :cond_216

    .line 574
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v2

    neg-int v2, v2

    move/from16 v4, p5

    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    goto :goto_224

    :cond_216
    move/from16 v4, p5

    .line 576
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v5

    sub-int/2addr v2, v5

    neg-int v2, v2

    float-to-int v4, v4

    sub-int/2addr v2, v4

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    .line 577
    :goto_224
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    iget v2, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->spaceX:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    move-object/from16 v0, p0

    .line 579
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-eqz v2, :cond_282

    .line 580
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 581
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    .line 582
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 583
    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v4

    .line 584
    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v5

    const/4 v6, 0x0

    .line 585
    :goto_254
    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-ge v6, v7, :cond_282

    .line 586
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch()I

    move-result v7

    mul-int v7, v7, v6

    const/4 v8, 0x0

    .line 587
    :goto_25f
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v9, v13

    if-ge v8, v9, :cond_27f

    .line 588
    div-int/lit8 v9, v8, 0x8

    add-int/2addr v9, v7

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    rem-int/lit8 v13, v8, 0x8

    rsub-int/lit8 v13, v13, 0x7

    ushr-int/2addr v9, v13

    const/4 v13, 0x1

    and-int/2addr v9, v13

    if-ne v9, v13, :cond_278

    move v9, v4

    goto :goto_279

    :cond_278
    move v9, v5

    .line 589
    :goto_279
    invoke-virtual {v11, v8, v6, v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_25f

    :cond_27f
    add-int/lit8 v6, v6, 0x1

    goto :goto_254

    :cond_282
    move-object/from16 v2, p6

    .line 594
    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v4

    .line 595
    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getPages()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    .line 596
    iget v5, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v5, v5

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    .line 597
    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v4, v4

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    .line 600
    iget-boolean v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    if-eqz v4, :cond_2b9

    move-object/from16 v4, p2

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_2b9

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    if-gt v5, v6, :cond_2b9

    .line 601
    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-boolean v3, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->genMipMaps:Z

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 603
    :cond_2b9
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 604
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->dispose()V

    return-object v1

    :catch_2c0
    move v2, v1

    .line 487
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->dispose()V

    .line 488
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t render char: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FreeTypeFontGenerator"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public dispose()V
    .registers 2

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->dispose()V

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->dispose()V

    return-void
.end method

.method public generateData(I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;
    .registers 3

    .line 265
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 266
    iput p1, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 267
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    move-result-object p1

    return-object p1
.end method

.method public generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;
    .registers 3

    .line 271
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    move-result-object p1

    return-object p1
.end method

.method public generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;
    .registers 28

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->name:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 284
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    :cond_27
    move-object v9, v0

    .line 285
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 286
    array-length v11, v10

    .line 287
    iget-boolean v12, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    .line 288
    invoke-direct {v7, v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->getLoadingFlags(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)I

    move-result v13

    .line 290
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    .line 293
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object v0

    .line 294
    iget-boolean v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->flip:Z

    iput-boolean v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->flipped:Z

    .line 295
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    .line 296
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getDescender()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->descent:F

    .line 297
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    .line 298
    iget v15, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    .line 301
    iget-boolean v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    const/4 v1, 0x0

    const/16 v6, 0x20

    if-eqz v0, :cond_ab

    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_ab

    const/16 v0, 0x20

    .line 302
    :goto_7b
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getNumGlyphs()I

    move-result v2

    add-int/2addr v2, v6

    if-ge v0, v2, :cond_ab

    .line 303
    invoke-direct {v7, v0, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 304
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v2

    int-to-float v2, v2

    .line 305
    iget v3, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_a4

    goto :goto_a6

    :cond_a4
    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    :goto_a6
    iput v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    :cond_a8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 309
    :cond_ab
    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    iget v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->spaceY:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    .line 312
    invoke-direct {v7, v6, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v0

    if-nez v0, :cond_cc

    const/16 v0, 0x6c

    invoke-direct {v7, v0, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v0

    if-eqz v0, :cond_c2

    goto :goto_cc

    .line 315
    :cond_c2
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getMaxAdvanceWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->spaceXadvance:F

    goto :goto_e1

    .line 313
    :cond_cc
    :goto_cc
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->spaceXadvance:F

    .line 319
    :goto_e1
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->xChars:[C

    array-length v2, v0

    const/4 v3, 0x0

    :goto_e5
    if-ge v3, v2, :cond_107

    aget-char v4, v0, v3

    .line 320
    invoke-direct {v7, v4, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v4

    if-nez v4, :cond_f2

    add-int/lit8 v3, v3, 0x1

    goto :goto_e5

    .line 321
    :cond_f2
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->xHeight:F

    .line 324
    :cond_107
    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->xHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_370

    .line 327
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capChars:[C

    array-length v2, v0

    const/4 v3, 0x0

    :goto_111
    if-ge v3, v2, :cond_13a

    aget-char v4, v0, v3

    .line 328
    invoke-direct {v7, v4, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v4

    if-nez v4, :cond_11e

    add-int/lit8 v3, v3, 0x1

    goto :goto_111

    .line 329
    :cond_11e
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    iget v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capHeight:F

    .line 332
    :cond_13a
    iget-boolean v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-nez v0, :cond_14f

    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capHeight:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_147

    goto :goto_14f

    :cond_147
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No cap character found in font"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_14f
    :goto_14f
    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capHeight:F

    sub-float/2addr v0, v2

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    .line 335
    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    neg-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->down:F

    .line 336
    iget-boolean v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->flip:Z

    if-eqz v0, :cond_169

    .line 337
    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    neg-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    .line 338
    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->down:F

    neg-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->down:F

    .line 343
    :cond_169
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    const/16 v16, 0x1

    if-nez v0, :cond_1d0

    if-eqz v12, :cond_17d

    .line 350
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    .line 351
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;-><init>()V

    :goto_178
    move/from16 v19, v0

    move-object/from16 v23, v2

    goto :goto_1a1

    .line 353
    :cond_17d
    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int v0, v0, v0

    mul-int v0, v0, v11

    int-to-double v2, v0

    .line 354
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    .line 355
    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    if-lez v2, :cond_19b

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 356
    :cond_19b
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;-><init>()V

    goto :goto_178

    .line 359
    :goto_1a1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    sget-object v20, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move/from16 v18, v19

    invoke-direct/range {v17 .. v23}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    .line 360
    iget-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->setTransparentColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 361
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getTransparentColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput v1, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 362
    iget v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1cc

    .line 363
    iget-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->setTransparentColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 364
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getTransparentColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput v1, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    :cond_1cc
    move-object v5, v0

    const/16 v17, 0x1

    goto :goto_1d3

    :cond_1d0
    move-object v5, v0

    const/16 v17, 0x0

    :goto_1d3
    if-eqz v12, :cond_1de

    .line 368
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v2, v11, 0x20

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->glyphs:Lcom/badlogic/gdx/utils/Array;

    :cond_1de
    const/4 v0, 0x0

    .line 371
    iget v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_207

    .line 372
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->createStroker()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    move-result-object v0

    .line 373
    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    const/high16 v2, 0x42800000    # 64.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-boolean v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderStraight:Z

    if-eqz v2, :cond_1f9

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_BUTT:I

    goto :goto_1fb

    :cond_1f9
    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_ROUND:I

    :goto_1fb
    iget-boolean v3, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderStraight:Z

    if-eqz v3, :cond_202

    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER_FIXED:I

    goto :goto_204

    :cond_202
    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_ROUND:I

    :goto_204
    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;->set(IIII)V

    :cond_207
    move-object v4, v0

    .line 379
    new-array v3, v11, [I

    const/4 v2, 0x0

    :goto_20b
    if-ge v2, v11, :cond_26c

    .line 381
    aget-char v0, v10, v2

    .line 383
    invoke-direct {v7, v0, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v1

    if-eqz v1, :cond_228

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    goto :goto_229

    :cond_228
    const/4 v1, 0x0

    .line 384
    :goto_229
    aput v1, v3, v2

    if-nez v0, :cond_259

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v18, v2

    move-object/from16 v2, p2

    move-object/from16 v24, v3

    move-object v3, v9

    move-object/from16 p1, v4

    move-object/from16 v19, v5

    move v5, v15

    move-object/from16 v6, v19

    .line 387
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->createGlyph(CLcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLcom/badlogic/gdx/graphics/g2d/PixmapPacker;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-eqz v0, :cond_261

    .line 388
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-eqz v1, :cond_261

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v1, :cond_261

    .line 389
    invoke-virtual {v8, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 390
    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    if-eqz v12, :cond_261

    .line 391
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_261

    :cond_259
    move/from16 v18, v2

    move-object/from16 v24, v3

    move-object/from16 p1, v4

    move-object/from16 v19, v5

    :cond_261
    :goto_261
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    move-object/from16 v3, v24

    const/16 v6, 0x20

    goto :goto_20b

    :cond_26c
    move-object v6, v3

    move-object/from16 p1, v4

    move-object/from16 v19, v5

    .line 395
    array-length v0, v6

    move v13, v0

    :goto_273
    if-lez v13, :cond_2c2

    .line 397
    aget v0, v6, v14

    move v1, v0

    const/4 v0, 0x1

    const/16 v18, 0x0

    :goto_27b
    if-ge v0, v13, :cond_287

    .line 399
    aget v2, v6, v0

    if-le v2, v1, :cond_284

    move/from16 v18, v0

    move v1, v2

    :cond_284
    add-int/lit8 v0, v0, 0x1

    goto :goto_27b

    .line 406
    :cond_287
    aget-char v5, v10, v18

    .line 407
    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-nez v0, :cond_2ae

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    move-object v3, v9

    move-object/from16 v4, p1

    move v14, v5

    move v5, v15

    move-object/from16 v21, v6

    move-object/from16 v6, v19

    .line 408
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->createGlyph(CLcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLcom/badlogic/gdx/graphics/g2d/PixmapPacker;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-eqz v0, :cond_2b0

    .line 410
    invoke-virtual {v8, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    if-eqz v12, :cond_2b0

    .line 411
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2b0

    :cond_2ae
    move-object/from16 v21, v6

    :cond_2b0
    :goto_2b0
    add-int/lit8 v13, v13, -0x1

    .line 416
    aget v0, v21, v13

    aput v0, v21, v18

    .line 417
    aget-char v0, v10, v18

    .line 418
    aget-char v1, v10, v13

    aput-char v1, v10, v18

    .line 419
    aput-char v0, v10, v13

    move-object/from16 v6, v21

    const/4 v14, 0x0

    goto :goto_273

    :cond_2c2
    move-object/from16 v0, p1

    if-eqz v0, :cond_2cb

    if-nez v12, :cond_2cb

    .line 422
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;->dispose()V

    :cond_2cb
    if-eqz v12, :cond_2d8

    .line 425
    iput-object v7, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->generator:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    .line 426
    iput-object v9, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->parameter:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    .line 427
    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->stroker:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    move-object/from16 v0, v19

    .line 428
    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    goto :goto_2da

    :cond_2d8
    move-object/from16 v0, v19

    .line 432
    :goto_2da
    iget-boolean v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->hasKerning()Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    .line 433
    iget-boolean v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    if-eqz v1, :cond_334

    const/4 v1, 0x0

    :goto_2ea
    if-ge v1, v11, :cond_334

    .line 435
    aget-char v2, v10, v1

    .line 436
    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v3

    if-nez v3, :cond_2f6

    :cond_2f4
    const/4 v15, 0x0

    goto :goto_331

    .line 438
    :cond_2f6
    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v4

    move v5, v1

    :goto_2fd
    if-ge v5, v11, :cond_2f4

    .line 440
    aget-char v6, v10, v5

    .line 441
    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v12

    if-nez v12, :cond_309

    const/4 v15, 0x0

    goto :goto_32e

    .line 443
    :cond_309
    iget-object v13, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v13, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v13

    .line 445
    iget-object v14, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    const/4 v15, 0x0

    invoke-virtual {v14, v4, v13, v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getKerning(III)I

    move-result v14

    if-eqz v14, :cond_31f

    .line 446
    invoke-static {v14}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v14

    invoke-virtual {v3, v6, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    .line 448
    :cond_31f
    iget-object v6, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v6, v13, v4, v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getKerning(III)I

    move-result v6

    if-eqz v6, :cond_32e

    .line 449
    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v6

    invoke-virtual {v12, v2, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    :cond_32e
    :goto_32e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2fd

    :goto_331
    add-int/lit8 v1, v1, 0x1

    goto :goto_2ea

    :cond_334
    if-eqz v17, :cond_348

    .line 456
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 457
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v3, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-boolean v4, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->genMipMaps:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    :cond_348
    const/16 v0, 0x20

    .line 461
    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v1

    if-nez v1, :cond_362

    .line 463
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    .line 464
    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->spaceXadvance:F

    float-to-int v2, v2

    iget v3, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->spaceX:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 465
    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 466
    invoke-virtual {v8, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 468
    :cond_362
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v0, :cond_36f

    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v0, v0

    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->padRight:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    :cond_36f
    return-object v8

    .line 324
    :cond_370
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No x-height character found in font"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_379

    :goto_378
    throw v0

    :goto_379
    goto :goto_378
.end method

.method public generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .registers 3

    .line 151
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p1

    return-object p1
.end method

.method public generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .registers 10

    .line 158
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_16

    .line 159
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 160
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    if-eqz v0, :cond_28

    .line 162
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-boolean v6, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->genMipMaps:Z

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 163
    :cond_28
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 164
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p2, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)V

    .line 165
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    if-nez p1, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setOwnsTexture(Z)V

    return-object v0

    .line 163
    :cond_40
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Unable to create a font with no texture regions."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateGlyphAndBitmap(IIZ)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;
    .registers 10

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    .line 213
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object p2

    .line 214
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result p2

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result p2

    .line 218
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_20

    return-object v2

    .line 223
    :cond_20
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(I)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 227
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v1

    .line 231
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-eqz v3, :cond_35

    .line 232
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v2

    goto :goto_42

    .line 233
    :cond_35
    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->renderGlyph(I)Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_42

    .line 236
    :cond_3e
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v2

    .line 239
    :goto_42
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v3

    .line 241
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    if-eqz v2, :cond_5a

    .line 243
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 244
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    goto :goto_5e

    .line 246
    :cond_5a
    iput v0, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 247
    iput v0, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 249
    :goto_5e
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapLeft()I

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    if-eqz p3, :cond_6d

    .line 250
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapTop()I

    move-result p3

    neg-int p3, p3

    add-int/2addr p3, p2

    goto :goto_76

    :cond_6d
    iget p3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapTop()I

    move-result v1

    sub-int/2addr p3, v1

    neg-int p3, p3

    sub-int/2addr p3, p2

    :goto_76
    iput p3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    .line 251
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance()I

    move-result p2

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result p2

    iput p2, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 252
    iput v0, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    .line 253
    iput v0, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    .line 254
    iput p1, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 256
    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;)V

    .line 257
    iput-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->glyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 258
    iput-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->bitmap:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    return-object p1

    .line 224
    :cond_92
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Unable to load character!"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scaleForPixelHeight(I)I
    .registers 4

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    .line 175
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getDescender()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    mul-int p1, p1, p1

    sub-int/2addr v1, v0

    .line 176
    div-int/2addr p1, v1

    return p1
.end method

.method public scaleForPixelWidth(II)I
    .registers 6

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getMaxAdvance()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    .line 186
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v2

    .line 187
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getDescender()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    sub-int/2addr v2, v0

    mul-int v2, v2, p1

    mul-int v1, v1, p2

    .line 189
    div-int/2addr v2, v1

    const/4 p1, 0x0

    .line 190
    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    return v2
.end method

.method public scaleToFitSquare(III)I
    .registers 4

    .line 200
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->scaleForPixelHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->scaleForPixelWidth(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method setPixelSizes(II)V
    .registers 4

    .line 275
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->pixelWidth:I

    .line 276
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->pixelHeight:I

    .line 277
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->setPixelSizes(II)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_19

    :cond_11
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Couldn\'t set size for font"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    :goto_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->name:Ljava/lang/String;

    return-object v0
.end method
