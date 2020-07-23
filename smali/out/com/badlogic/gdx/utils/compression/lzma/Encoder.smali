.class public Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;,
        Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;,
        Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;,
        Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;
    }
.end annotation


# static fields
.field public static final EMatchFinderTypeBT2:I = 0x0

.field public static final EMatchFinderTypeBT4:I = 0x1

.field static g_FastPos:[B = null

.field static final kDefaultDictionaryLogSize:I = 0x16

.field static final kIfinityPrice:I = 0xfffffff

.field static final kNumFastBytesDefault:I = 0x20

.field public static final kNumLenSpecSymbols:I = 0x10

.field static final kNumOpts:I = 0x1000

.field public static final kPropSize:I = 0x5


# instance fields
.field _additionalOffset:I

.field _alignPriceCount:I

.field _alignPrices:[I

.field _dictionarySize:I

.field _dictionarySizePrev:I

.field _distTableSize:I

.field _distancesPrices:[I

.field _finished:Z

.field _inStream:Ljava/io/InputStream;

.field _isMatch:[S

.field _isRep:[S

.field _isRep0Long:[S

.field _isRepG0:[S

.field _isRepG1:[S

.field _isRepG2:[S

.field _lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

.field _literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

.field _longestMatchLength:I

.field _longestMatchWasFound:Z

.field _matchDistances:[I

.field _matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

.field _matchFinderType:I

.field _matchPriceCount:I

.field _needReleaseMFStream:Z

.field _numDistancePairs:I

.field _numFastBytes:I

.field _numFastBytesPrev:I

.field _numLiteralContextBits:I

.field _numLiteralPosStateBits:I

.field _optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

.field _optimumCurrentIndex:I

.field _optimumEndIndex:I

.field _posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field _posEncoders:[S

.field _posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field _posSlotPrices:[I

.field _posStateBits:I

.field _posStateMask:I

.field _previousByte:B

.field _rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

.field _repDistances:[I

.field _repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

.field _state:I

.field _writeEndMark:Z

.field backRes:I

.field finished:[Z

.field nowPos64:J

.field processedInSize:[J

.field processedOutSize:[J

.field properties:[B

.field repLens:[I

.field reps:[I

.field tempPrices:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v0, 0x800

    .line 30
    new-array v0, v0, [B

    sput-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    .line 35
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    .line 36
    aput-byte v2, v0, v2

    const/4 v0, 0x2

    const/4 v3, 0x2

    :goto_10
    const/16 v4, 0x16

    if-ge v0, v4, :cond_2b

    shr-int/lit8 v4, v0, 0x1

    sub-int/2addr v4, v2

    shl-int v4, v2, v4

    move v5, v3

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v4, :cond_27

    .line 40
    sget-object v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    int-to-byte v7, v0

    aput-byte v7, v6, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_27
    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_10

    :cond_2b
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateInit()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    const/4 v0, 0x4

    .line 58
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    const/16 v1, 0x1000

    .line 285
    new-array v2, v1, [Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v2, 0x0

    .line 286
    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    .line 287
    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    const/16 v2, 0xc0

    .line 289
    new-array v3, v2, [S

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    const/16 v3, 0xc

    .line 290
    new-array v4, v3, [S

    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    .line 291
    new-array v4, v3, [S

    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    .line 292
    new-array v4, v3, [S

    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    .line 293
    new-array v3, v3, [S

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    .line 294
    new-array v2, v2, [S

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    .line 296
    new-array v2, v0, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    const/16 v2, 0x72

    .line 298
    new-array v2, v2, [S

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    .line 299
    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 301
    new-instance v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    .line 302
    new-instance v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    .line 304
    new-instance v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    const/16 v2, 0x224

    .line 306
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    const/16 v2, 0x20

    .line 308
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    const/16 v2, 0x100

    .line 319
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    const/16 v2, 0x200

    .line 320
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    const/16 v2, 0x10

    .line 321
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPrices:[I

    const/16 v2, 0x2c

    .line 324
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    const/4 v2, 0x2

    .line 326
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    const/4 v2, 0x3

    .line 327
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    const/4 v3, 0x0

    .line 328
    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    .line 329
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    const/high16 v2, 0x400000

    .line 331
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    const/4 v2, -0x1

    .line 332
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    .line 333
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytesPrev:I

    const/4 v2, 0x1

    .line 339
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    .line 340
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    .line 342
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    .line 486
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    .line 487
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    .line 1122
    new-array v4, v2, [J

    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedInSize:[J

    .line 1123
    new-array v4, v2, [J

    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedOutSize:[J

    .line 1124
    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->finished:[Z

    const/4 v2, 0x5

    .line 1145
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    const/16 v2, 0x80

    .line 1154
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->tempPrices:[I

    const/4 v2, 0x0

    :goto_bb
    if-ge v2, v1, :cond_c9

    .line 362
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    new-instance v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    invoke-direct {v5, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    :cond_c9
    :goto_c9
    if-ge v3, v0, :cond_d8

    .line 364
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    const/4 v4, 0x6

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c9

    :cond_d8
    return-void
.end method

.method static GetPosSlot(I)I
    .registers 2

    const/16 v0, 0x800

    if-ge p0, v0, :cond_9

    .line 45
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    aget-byte p0, v0, p0

    return p0

    :cond_9
    const/high16 v0, 0x200000

    if-ge p0, v0, :cond_16

    .line 46
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 p0, p0, 0xa

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0x14

    return p0

    .line 47
    :cond_16
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 p0, p0, 0x14

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0x28

    return p0
.end method

.method static GetPosSlot2(I)I
    .registers 2

    const/high16 v0, 0x20000

    if-ge p0, v0, :cond_d

    .line 51
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 p0, p0, 0x6

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0xc

    return p0

    :cond_d
    const/high16 v0, 0x8000000

    if-ge p0, v0, :cond_1a

    .line 52
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 p0, p0, 0x10

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0x20

    return p0

    .line 53
    :cond_1a
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 p0, p0, 0x1a

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0x34

    return p0
.end method


# virtual methods
.method Backward(I)I
    .registers 9

    .line 458
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 460
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 462
    :goto_e
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    .line 463
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsChar()V

    .line 464
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v2, v0

    add-int/lit8 v5, v0, -0x1

    iput v5, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 465
    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    if-eqz v2, :cond_44

    .line 466
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v2, v5

    iput-boolean v3, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 467
    aget-object v4, v2, v5

    aget-object v2, v2, p1

    iget v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    iput v2, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 468
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v2, v5

    aget-object v2, v2, p1

    iget v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    iput v2, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 474
    :cond_44
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 475
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 477
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v6, v5, v0

    iput v1, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 478
    aget-object v1, v5, v0

    iput p1, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    if-gtz v0, :cond_6d

    .line 481
    aget-object p1, v5, v3

    iget p1, p1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 482
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object p1, p1, v3

    iget p1, p1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 483
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    return p1

    :cond_6d
    move p1, v0

    move v1, v2

    move v0, v4

    goto :goto_e
.end method

.method BaseInit()V
    .registers 4

    .line 61
    invoke-static {}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateInit()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    const/4 v0, 0x0

    .line 62
    iput-byte v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    const/4 v1, 0x0

    :goto_a
    const/4 v2, 0x4

    if-ge v1, v2, :cond_14

    .line 64
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method ChangePair(II)Z
    .registers 4

    const/high16 v0, 0x2000000

    if-ge p1, v0, :cond_a

    shl-int/lit8 p1, p1, 0x7

    if-lt p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public Code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLcom/badlogic/gdx/utils/compression/ICodeProgress;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1128
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    .line 1130
    :try_start_3
    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetStreams(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V

    .line 1133
    :cond_6
    :goto_6
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedInSize:[J

    iget-object p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedOutSize:[J

    iget-object p3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->finished:[Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->CodeOneBlock([J[J[Z)V

    .line 1134
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->finished:[Z

    aget-boolean p1, p1, v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_27

    if-eqz p1, :cond_19

    .line 1140
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseStreams()V

    return-void

    :cond_19
    if-eqz p7, :cond_6

    .line 1136
    :try_start_1b
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedInSize:[J

    aget-wide p2, p1, v0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedOutSize:[J

    aget-wide p4, p1, v0

    invoke-interface {p7, p2, p3, p4, p5}, Lcom/badlogic/gdx/utils/compression/ICodeProgress;->SetProgress(JJ)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_27

    goto :goto_6

    :catchall_27
    move-exception p1

    .line 1140
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseStreams()V

    goto :goto_2d

    :goto_2c
    throw p1

    :goto_2d
    goto :goto_2c
.end method

.method public CodeOneBlock([J[J[Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 946
    aput-wide v0, p1, v2

    .line 947
    aput-wide v0, p2, v2

    const/4 v3, 0x1

    .line 948
    aput-boolean v3, p3, v2

    .line 950
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_inStream:Ljava/io/InputStream;

    if-eqz v4, :cond_1d

    .line 951
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->SetStream(Ljava/io/InputStream;)V

    .line 952
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Init()V

    .line 953
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    const/4 v4, 0x0

    .line 954
    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_inStream:Ljava/io/InputStream;

    .line 957
    :cond_1d
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    if-eqz v4, :cond_22

    return-void

    .line 958
    :cond_22
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    .line 960
    iget-wide v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    const/4 v6, 0x4

    cmp-long v7, v4, v0

    if-nez v7, :cond_7e

    .line 962
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v0

    if-nez v0, :cond_3a

    .line 963
    iget-wide p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Flush(I)V

    return-void

    .line 967
    :cond_3a
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReadMatchDistances()I

    .line 968
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v1, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v0, v1

    .line 969
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/2addr v8, v6

    add-int/2addr v8, v0

    invoke-virtual {v1, v7, v8, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 970
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 971
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v0

    .line 972
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-wide v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v8, v7

    iget-byte v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    invoke-virtual {v1, v8, v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v1

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v1, v7, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;B)V

    .line 973
    iput-byte v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 974
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 975
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    .line 977
    :cond_7e
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v0

    if-nez v0, :cond_8d

    .line 978
    iget-wide p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Flush(I)V

    return-void

    .line 983
    :cond_8d
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetOptimum(I)I

    move-result v0

    .line 984
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 985
    iget-wide v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v8, v7

    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v7, v8

    .line 986
    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/2addr v8, v6

    add-int/2addr v8, v7

    if-ne v0, v3, :cond_f0

    const/4 v9, -0x1

    if-ne v1, v9, :cond_f0

    .line 988
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    invoke-virtual {v1, v7, v8, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 989
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    rsub-int/lit8 v7, v7, 0x0

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v1

    .line 990
    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-wide v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v9, v8

    iget-byte v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    invoke-virtual {v7, v9, v8}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v7

    .line 991
    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v8}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v8

    if-nez v8, :cond_df

    .line 992
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v9, v9, v2

    rsub-int/lit8 v9, v9, 0x0

    sub-int/2addr v9, v3

    iget v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v8

    .line 993
    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v7, v9, v8, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->EncodeMatched(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;BB)V

    goto :goto_e4

    .line 995
    :cond_df
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v7, v8, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;B)V

    .line 996
    :goto_e4
    iput-byte v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 997
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    goto/16 :goto_1fe

    .line 999
    :cond_f0
    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    invoke-virtual {v9, v10, v8, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    if-ge v1, v6, :cond_17c

    .line 1001
    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v11, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v9, v10, v11, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    if-nez v1, :cond_11f

    .line 1003
    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    iget v11, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v9, v10, v11, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    if-ne v0, v3, :cond_117

    .line 1005
    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    invoke-virtual {v9, v10, v8, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    goto :goto_148

    .line 1007
    :cond_117
    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    invoke-virtual {v9, v10, v8, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    goto :goto_148

    .line 1009
    :cond_11f
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    iget v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v8, v9, v10, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    if-ne v1, v3, :cond_134

    .line 1011
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    iget v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v8, v9, v10, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    goto :goto_148

    .line 1013
    :cond_134
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    iget v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v8, v9, v10, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1014
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    iget v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    add-int/lit8 v11, v1, -0x2

    invoke-virtual {v8, v9, v10, v11}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    :goto_148
    if-ne v0, v3, :cond_153

    .line 1018
    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateShortRep(I)I

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    goto :goto_164

    .line 1020
    :cond_153
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    add-int/lit8 v10, v0, -0x2

    invoke-virtual {v8, v9, v10, v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    .line 1021
    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 1023
    :goto_164
    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v7, v7, v1

    if-eqz v1, :cond_1f1

    :goto_16a
    if-lt v1, v3, :cond_177

    .line 1026
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    add-int/lit8 v9, v1, -0x1

    aget v9, v8, v9

    aput v9, v8, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_16a

    .line 1027
    :cond_177
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aput v7, v1, v2

    goto :goto_1f1

    .line 1030
    :cond_17c
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v8, v9, v10, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1031
    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v8}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 1032
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    add-int/lit8 v10, v0, -0x2

    invoke-virtual {v8, v9, v10, v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    add-int/lit8 v1, v1, -0x4

    .line 1034
    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot(I)I

    move-result v7

    .line 1035
    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v8

    .line 1036
    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v8, v9, v8

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v8, v9, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    if-lt v7, v6, :cond_1da

    shr-int/lit8 v8, v7, 0x1

    sub-int/2addr v8, v3

    and-int/lit8 v9, v7, 0x1

    or-int/lit8 v9, v9, 0x2

    shl-int/2addr v9, v8

    sub-int v10, v1, v9

    const/16 v11, 0xe

    if-ge v7, v11, :cond_1c3

    .line 1044
    iget-object v11, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    sub-int/2addr v9, v7

    sub-int/2addr v9, v3

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-static {v11, v9, v7, v8, v10}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseEncode([SILcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    goto :goto_1da

    .line 1046
    :cond_1c3
    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    shr-int/lit8 v9, v10, 0x4

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v7, v9, v8}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->EncodeDirectBits(II)V

    .line 1047
    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    and-int/lit8 v9, v10, 0xf

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseEncode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 1048
    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    :cond_1da
    :goto_1da
    const/4 v7, 0x3

    :goto_1db
    if-lt v7, v3, :cond_1e8

    .line 1053
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    add-int/lit8 v9, v7, -0x1

    aget v9, v8, v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_1db

    .line 1054
    :cond_1e8
    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aput v1, v7, v2

    .line 1055
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    .line 1057
    :cond_1f1
    :goto_1f1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v7, v0, -0x1

    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v7, v8

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v1

    iput-byte v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 1059
    :goto_1fe
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 1060
    iget-wide v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    int-to-long v0, v0

    add-long/2addr v7, v0

    iput-wide v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    .line 1061
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    if-nez v0, :cond_8d

    .line 1063
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_216

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillDistancesPrices()V

    .line 1064
    :cond_216
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_21f

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillAlignPrices()V

    .line 1065
    :cond_21f
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    aput-wide v0, p1, v2

    .line 1066
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetProcessedSizeAdd()J

    move-result-wide v0

    aput-wide v0, p2, v2

    .line 1067
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v0

    if-nez v0, :cond_23a

    .line 1068
    iget-wide p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Flush(I)V

    return-void

    .line 1072
    :cond_23a
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    sub-long/2addr v0, v4

    const-wide/16 v7, 0x1000

    cmp-long v9, v0, v7

    if-ltz v9, :cond_8d

    .line 1073
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    .line 1074
    aput-boolean v2, p3, v2

    return-void
.end method

.method Create()V
    .registers 6

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    if-nez v0, :cond_14

    .line 346
    new-instance v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;-><init>()V

    const/4 v1, 0x4

    .line 348
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    if-nez v2, :cond_f

    const/4 v1, 0x2

    .line 349
    :cond_f
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->SetType(I)V

    .line 350
    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    .line 352
    :cond_14
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->Create(II)V

    .line 354
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytesPrev:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-ne v0, v1, :cond_2a

    return-void

    .line 355
    :cond_2a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    const/16 v2, 0x1000

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    const/16 v4, 0x112

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Create(IIII)Z

    .line 356
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    .line 357
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytesPrev:I

    return-void
.end method

.method FillAlignPrices()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_13

    .line 1187
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPrices:[I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseGetPrice(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1188
    :cond_13
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    return-void
.end method

.method FillDistancesPrices()V
    .registers 12

    const/4 v0, 0x4

    const/4 v1, 0x4

    :goto_2
    const/16 v2, 0x80

    if-ge v1, v2, :cond_26

    .line 1159
    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot(I)I

    move-result v2

    shr-int/lit8 v3, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, v2, 0x1

    or-int/lit8 v4, v4, 0x2

    shl-int/2addr v4, v3

    .line 1162
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->tempPrices:[I

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    sub-int v2, v4, v2

    add-int/lit8 v2, v2, -0x1

    sub-int v4, v1, v4

    invoke-static {v6, v2, v3, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseGetPrice([SIII)I

    move-result v2

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v0, :cond_8b

    .line 1167
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v4, v4, v3

    shl-int/lit8 v5, v3, 0x6

    const/4 v6, 0x0

    .line 1170
    :goto_31
    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    if-ge v6, v7, :cond_42

    .line 1171
    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    add-int v8, v5, v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    :cond_42
    const/16 v4, 0xe

    .line 1172
    :goto_44
    iget v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    if-ge v4, v6, :cond_5b

    .line 1173
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    add-int v7, v5, v4

    aget v8, v6, v7

    shr-int/lit8 v9, v4, 0x1

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v0

    shl-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_5b
    mul-int/lit16 v4, v3, 0x80

    const/4 v6, 0x0

    :goto_5e
    if-ge v6, v0, :cond_6f

    .line 1178
    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    add-int v8, v4, v6

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    add-int v10, v5, v6

    aget v9, v9, v10

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    :cond_6f
    :goto_6f
    if-ge v6, v2, :cond_88

    .line 1180
    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    add-int v8, v4, v6

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    invoke-static {v6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot(I)I

    move-result v10

    add-int/2addr v10, v5

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->tempPrices:[I

    aget v10, v10, v6

    add-int/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1182
    :cond_8b
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    return-void
.end method

.method Flush(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseMFStream()V

    .line 940
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->WriteEndMarker(I)V

    .line 941
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->FlushData()V

    .line 942
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->FlushStream()V

    return-void
.end method

.method GetOptimum(I)I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 491
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    if-eq v2, v3, :cond_26

    .line 492
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    sub-int/2addr v1, v2

    .line 493
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v3, v2

    iget v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    iput v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 494
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    iput v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    return v1

    :cond_26
    const/4 v2, 0x0

    .line 497
    iput v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    iput v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 500
    iget-boolean v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    if-nez v3, :cond_34

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReadMatchDistances()I

    move-result v3

    goto :goto_38

    .line 503
    :cond_34
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchLength:I

    .line 504
    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    .line 506
    :goto_38
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    .line 508
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v7, -0x1

    const/4 v8, 0x2

    if-ge v5, v8, :cond_49

    .line 510
    iput v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    return v6

    :cond_49
    const/16 v9, 0x111

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_4d
    const/4 v11, 0x4

    if-ge v5, v11, :cond_70

    .line 518
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v12, v12, v5

    aput v12, v11, v5

    .line 519
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    aget v11, v11, v5

    invoke-virtual {v13, v7, v11, v9}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v11

    aput v11, v12, v5

    .line 520
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v12, v11, v5

    aget v11, v11, v10

    if-le v12, v11, :cond_6d

    move v10, v5

    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 522
    :cond_70
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v9, v5, v10

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-lt v9, v12, :cond_82

    .line 523
    iput v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 524
    aget v1, v5, v10

    add-int/lit8 v2, v1, -0x1

    .line 525
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->MovePos(I)V

    return v1

    :cond_82
    if-lt v3, v12, :cond_92

    .line 530
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    sub-int/2addr v4, v6

    aget v1, v1, v4

    add-int/2addr v1, v11

    iput v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    add-int/lit8 v1, v3, -0x1

    .line 531
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->MovePos(I)V

    return v3

    .line 535
    :cond_92
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v5

    .line 536
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v12, v12, v2

    rsub-int/lit8 v12, v12, 0x0

    sub-int/2addr v12, v6

    sub-int/2addr v12, v6

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v9

    if-ge v3, v8, :cond_b3

    if-eq v5, v9, :cond_b3

    .line 538
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v12, v12, v10

    if-ge v12, v8, :cond_b3

    .line 539
    iput v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    return v6

    .line 543
    :cond_b3
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v13, v12, v2

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    iput v14, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 545
    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v13, v1

    .line 547
    aget-object v12, v12, v6

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/2addr v14, v11

    add-int/2addr v14, v13

    aget-short v14, v15, v14

    .line 548
    invoke-static {v14}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v14

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-byte v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 549
    invoke-virtual {v15, v1, v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v7

    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v15}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v15

    xor-int/2addr v15, v6

    invoke-virtual {v7, v15, v9, v5}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v7

    add-int/2addr v14, v7

    iput v14, v12, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 550
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsChar()V

    .line 552
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/2addr v12, v11

    add-int/2addr v12, v13

    aget-short v7, v7, v12

    .line 553
    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v7

    .line 554
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    aget-short v12, v12, v14

    invoke-static {v12}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v12

    add-int/2addr v12, v7

    if-ne v9, v5, :cond_11a

    .line 557
    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v0, v5, v13}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepLen1Price(II)I

    move-result v5

    add-int/2addr v5, v12

    .line 558
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v5, v9, :cond_11a

    .line 559
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v14, v9, v6

    iput v5, v14, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 560
    aget-object v5, v9, v6

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsShortRep()V

    .line 564
    :cond_11a
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v9, v5, v10

    if-lt v3, v9, :cond_122

    move v5, v3

    goto :goto_124

    :cond_122
    aget v5, v5, v10

    :goto_124
    if-ge v5, v8, :cond_12f

    .line 567
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    iput v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    return v6

    .line 571
    :cond_12f
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v10, v9, v6

    iput v2, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 573
    aget-object v10, v9, v2

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v15, v14, v2

    iput v15, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    .line 574
    aget-object v10, v9, v2

    aget v15, v14, v6

    iput v15, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    .line 575
    aget-object v10, v9, v2

    aget v15, v14, v8

    iput v15, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    .line 576
    aget-object v9, v9, v2

    const/4 v10, 0x3

    aget v14, v14, v10

    iput v14, v9, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    move v9, v5

    .line 580
    :goto_151
    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v15, v9, -0x1

    aget-object v9, v14, v9

    const v14, 0xfffffff

    iput v14, v9, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v15, v8, :cond_6e7

    const/4 v9, 0x0

    :goto_15f
    if-ge v9, v11, :cond_198

    .line 584
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v15, v15, v9

    if-ge v15, v8, :cond_168

    goto :goto_18c

    .line 586
    :cond_168
    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v0, v9, v14, v13}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPureRepPrice(III)I

    move-result v14

    add-int/2addr v14, v12

    .line 588
    :goto_16f
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    add-int/lit8 v11, v15, -0x2

    invoke-virtual {v10, v11, v13}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result v10

    add-int/2addr v10, v14

    .line 589
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v11, v11, v15

    .line 590
    iget v6, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v10, v6, :cond_188

    .line 591
    iput v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 592
    iput v2, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 593
    iput v9, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 594
    iput-boolean v2, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    :cond_188
    add-int/lit8 v15, v15, -0x1

    if-ge v15, v8, :cond_195

    :goto_18c
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x4

    const v14, 0xfffffff

    goto :goto_15f

    :cond_195
    const/4 v6, 0x1

    const/4 v11, 0x4

    goto :goto_16f

    .line 599
    :cond_198
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    aget-short v6, v6, v9

    invoke-static {v6}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v6

    add-int/2addr v7, v6

    .line 601
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v9, v6, v2

    if-lt v9, v8, :cond_1ae

    aget v6, v6, v2

    const/4 v9, 0x1

    add-int/2addr v6, v9

    goto :goto_1af

    :cond_1ae
    const/4 v6, 0x2

    :goto_1af
    if-gt v6, v3, :cond_1e6

    const/4 v3, 0x0

    .line 604
    :goto_1b2
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v9, v9, v3

    if-le v6, v9, :cond_1bb

    add-int/lit8 v3, v3, 0x2

    goto :goto_1b2

    .line 607
    :cond_1bb
    :goto_1bb
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    add-int/lit8 v10, v3, 0x1

    aget v9, v9, v10

    .line 608
    invoke-virtual {v0, v9, v6, v13}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosLenPrice(III)I

    move-result v10

    add-int/2addr v10, v7

    .line 609
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v11, v11, v6

    .line 610
    iget v12, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v10, v12, :cond_1d8

    .line 611
    iput v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 612
    iput v2, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    add-int/lit8 v9, v9, 0x4

    .line 613
    iput v9, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 614
    iput-boolean v2, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 616
    :cond_1d8
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v9, v9, v3

    if-ne v6, v9, :cond_1e3

    add-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_1e3

    goto :goto_1e6

    :cond_1e3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1bb

    :cond_1e6
    :goto_1e6
    move v3, v1

    const/4 v1, 0x0

    const/4 v4, 0x1

    :goto_1e9
    add-int/2addr v1, v4

    if-ne v1, v5, :cond_1f1

    .line 627
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Backward(I)I

    move-result v1

    return v1

    .line 628
    :cond_1f1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReadMatchDistances()I

    move-result v6

    .line 629
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    .line 630
    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-lt v6, v9, :cond_204

    .line 632
    iput v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchLength:I

    .line 633
    iput-boolean v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    .line 634
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Backward(I)I

    move-result v1

    return v1

    :cond_204
    add-int/2addr v3, v4

    .line 637
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 639
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v9, v9, v1

    iget-boolean v9, v9, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    if-eqz v9, :cond_245

    add-int/lit8 v4, v4, -0x1

    .line 641
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v9, v9, v1

    iget-boolean v9, v9, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    if-eqz v9, :cond_23a

    .line 642
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v10, v9, v1

    iget v10, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    aget-object v9, v9, v10

    iget v9, v9, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 643
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    const/4 v11, 0x4

    if-ge v10, v11, :cond_235

    .line 644
    invoke-static {v9}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v9

    goto :goto_240

    .line 646
    :cond_235
    invoke-static {v9}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v9

    goto :goto_240

    .line 648
    :cond_23a
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v9, v9, v4

    iget v9, v9, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 649
    :goto_240
    invoke-static {v9}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v9

    goto :goto_24b

    .line 651
    :cond_245
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v9, v9, v4

    iget v9, v9, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    :goto_24b
    add-int/lit8 v10, v1, -0x1

    if-ne v4, v10, :cond_265

    .line 653
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->IsShortRep()Z

    move-result v4

    if-eqz v4, :cond_25f

    .line 654
    invoke-static {v9}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateShortRep(I)I

    move-result v4

    goto/16 :goto_32a

    .line 656
    :cond_25f
    invoke-static {v9}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v4

    goto/16 :goto_32a

    .line 659
    :cond_265
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v10, v10, v1

    iget-boolean v10, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    if-eqz v10, :cond_287

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v10, v10, v1

    iget-boolean v10, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    if-eqz v10, :cond_287

    .line 660
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    .line 661
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    .line 662
    invoke-static {v9}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v9

    const/4 v11, 0x4

    goto :goto_299

    .line 664
    :cond_287
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    const/4 v11, 0x4

    if-ge v10, v11, :cond_295

    .line 666
    invoke-static {v9}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v9

    goto :goto_299

    .line 668
    :cond_295
    invoke-static {v9}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v9

    .line 670
    :goto_299
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v12, v4

    if-ge v10, v11, :cond_311

    if-nez v10, :cond_2bc

    .line 673
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    aput v11, v10, v2

    .line 674
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 675
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    aput v11, v10, v8

    .line 676
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    const/4 v11, 0x3

    aput v4, v10, v11

    goto :goto_329

    :cond_2bc
    const/4 v12, 0x1

    if-ne v10, v12, :cond_2d9

    .line 678
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    aput v11, v10, v2

    .line 679
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    aput v11, v10, v12

    .line 680
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    aput v11, v10, v8

    .line 681
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    const/4 v11, 0x3

    aput v4, v10, v11

    goto :goto_329

    :cond_2d9
    if-ne v10, v8, :cond_2f6

    .line 683
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    aput v11, v10, v2

    .line 684
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 685
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    aput v11, v10, v8

    .line 686
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    const/4 v11, 0x3

    aput v4, v10, v11

    goto :goto_329

    .line 688
    :cond_2f6
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    aput v11, v10, v2

    .line 689
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 690
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    aput v11, v10, v8

    .line 691
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    const/4 v11, 0x3

    aput v4, v10, v11

    goto :goto_329

    .line 694
    :cond_311
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    add-int/lit8 v10, v10, -0x4

    aput v10, v11, v2

    .line 695
    iget v10, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    const/4 v12, 0x1

    aput v10, v11, v12

    .line 696
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v11, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    aput v11, v10, v8

    .line 697
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    const/4 v11, 0x3

    aput v4, v10, v11

    :goto_329
    move v4, v9

    .line 700
    :goto_32a
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v10, v9, v1

    iput v4, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 701
    aget-object v10, v9, v1

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v12, v11, v2

    iput v12, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    .line 702
    aget-object v10, v9, v1

    const/4 v12, 0x1

    aget v13, v11, v12

    iput v13, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    .line 703
    aget-object v10, v9, v1

    aget v12, v11, v8

    iput v12, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    .line 704
    aget-object v10, v9, v1

    const/4 v14, 0x3

    aget v11, v11, v14

    iput v11, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    .line 705
    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 707
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v10

    .line 708
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v12, v12, v2

    rsub-int/lit8 v12, v12, 0x0

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v11

    .line 710
    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v12, v3

    .line 712
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v15, v4, 0x4

    add-int/2addr v15, v12

    aget-short v13, v13, v15

    .line 713
    invoke-static {v13}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v13

    add-int/2addr v13, v9

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    const/4 v8, -0x2

    .line 715
    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v2

    invoke-virtual {v14, v3, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v2

    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v8

    const/4 v14, 0x1

    xor-int/2addr v8, v14

    invoke-virtual {v2, v8, v11, v10}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v2

    add-int/2addr v13, v2

    .line 718
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v8, v1, 0x1

    aget-object v2, v2, v8

    .line 721
    iget v14, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v13, v14, :cond_3a2

    .line 722
    iput v13, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 723
    iput v1, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 724
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsChar()V

    move/from16 p1, v5

    const/4 v14, 0x1

    goto :goto_3a5

    :cond_3a2
    move/from16 p1, v5

    const/4 v14, 0x0

    .line 728
    :goto_3a5
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    aget-short v5, v5, v15

    .line 729
    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v5

    add-int/2addr v9, v5

    .line 731
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v5, v5, v4

    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v5

    add-int/2addr v5, v9

    if-ne v11, v10, :cond_3d5

    .line 733
    iget v15, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    if-ge v15, v1, :cond_3c1

    iget v15, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    if-eqz v15, :cond_3d5

    .line 734
    :cond_3c1
    invoke-virtual {v0, v4, v12}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepLen1Price(II)I

    move-result v15

    add-int/2addr v15, v5

    move/from16 v16, v7

    .line 735
    iget v7, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-gt v15, v7, :cond_3d7

    .line 736
    iput v15, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 737
    iput v1, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 738
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsShortRep()V

    const/4 v14, 0x1

    goto :goto_3d7

    :cond_3d5
    move/from16 v16, v7

    .line 743
    :cond_3d7
    :goto_3d7
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    rsub-int v7, v1, 0xfff

    .line 744
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v7, 0x2

    if-ge v2, v7, :cond_3ef

    move/from16 v5, p1

    :goto_3ea
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x2

    goto/16 :goto_1e9

    .line 748
    :cond_3ef
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-le v2, v7, :cond_3f4

    goto :goto_3f5

    :cond_3f4
    move v7, v2

    :goto_3f5
    if-nez v14, :cond_466

    if-eq v11, v10, :cond_466

    add-int/lit8 v10, v2, -0x1

    .line 751
    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 752
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v11, v15, v14, v10}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_466

    .line 754
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v11

    add-int/lit8 v14, v3, 0x1

    .line 756
    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v14, v15

    .line 757
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v17, v11, 0x4

    add-int v17, v17, v14

    aget-short v15, v15, v17

    .line 759
    invoke-static {v15}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v15

    add-int/2addr v13, v15

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v15, v15, v11

    .line 760
    invoke-static {v15}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v15

    add-int/2addr v13, v15

    add-int v15, v8, v10

    move/from16 v17, v9

    move/from16 v9, p1

    :goto_434
    if-ge v9, v15, :cond_44a

    move/from16 v18, v6

    .line 764
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v9, v9, 0x1

    aget-object v6, v6, v9

    move/from16 p1, v9

    const v9, 0xfffffff

    iput v9, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    move/from16 v9, p1

    move/from16 v6, v18

    goto :goto_434

    :cond_44a
    move/from16 v18, v6

    const/4 v6, 0x0

    .line 765
    invoke-virtual {v0, v6, v10, v11, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v10

    add-int/2addr v13, v10

    .line 766
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v10, v10, v15

    .line 767
    iget v11, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v13, v11, :cond_46c

    .line 768
    iput v13, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 769
    iput v8, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 770
    iput v6, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    const/4 v8, 0x1

    .line 771
    iput-boolean v8, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 772
    iput-boolean v6, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    goto :goto_46c

    :cond_466
    move/from16 v18, v6

    move/from16 v17, v9

    move/from16 v9, p1

    :cond_46c
    :goto_46c
    const/4 v6, 0x0

    const/4 v8, 0x2

    :goto_46e
    const/4 v10, 0x4

    if-ge v6, v10, :cond_58e

    .line 781
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v13, v13, v6

    const/4 v14, -0x1

    invoke-virtual {v11, v14, v13, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v11

    const/4 v13, 0x2

    if-ge v11, v13, :cond_485

    move/from16 v22, v3

    move/from16 p1, v5

    goto/16 :goto_580

    :cond_485
    move v13, v11

    :goto_486
    add-int v15, v1, v13

    if-ge v9, v15, :cond_497

    .line 786
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v9, v9, 0x1

    aget-object v15, v15, v9

    const v10, 0xfffffff

    iput v10, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    const/4 v10, 0x4

    goto :goto_486

    .line 787
    :cond_497
    invoke-virtual {v0, v6, v13, v4, v12}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v10

    add-int/2addr v10, v5

    .line 788
    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v14, v14, v15

    .line 789
    iget v15, v14, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v10, v15, :cond_4ad

    .line 790
    iput v10, v14, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 791
    iput v1, v14, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 792
    iput v6, v14, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    const/4 v10, 0x0

    .line 793
    iput-boolean v10, v14, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    :cond_4ad
    add-int/lit8 v13, v13, -0x1

    const/4 v10, 0x2

    if-ge v13, v10, :cond_588

    if-nez v6, :cond_4b6

    add-int/lit8 v8, v11, 0x1

    :cond_4b6
    if-ge v11, v2, :cond_574

    add-int/lit8 v10, v2, -0x1

    sub-int/2addr v10, v11

    .line 802
    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 803
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v14, v14, v6

    invoke-virtual {v13, v11, v14, v10}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v10

    const/4 v13, 0x2

    if-lt v10, v13, :cond_574

    .line 805
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v13

    add-int v14, v3, v11

    .line 807
    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v15, v14

    .line 809
    invoke-virtual {v0, v6, v11, v4, v12}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v19

    add-int v19, v5, v19

    move/from16 p1, v5

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v20, v13, 0x4

    add-int v20, v20, v15

    aget-short v5, v5, v20

    .line 811
    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v5

    add-int v19, v19, v5

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move/from16 v20, v8

    add-int/lit8 v8, v11, -0x1

    move/from16 v21, v9

    add-int/lit8 v9, v8, -0x1

    .line 812
    invoke-virtual {v15, v9}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v9

    invoke-virtual {v5, v14, v9}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v5

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v15, v15, v6

    move/from16 v22, v3

    const/4 v3, 0x1

    add-int/2addr v15, v3

    sub-int v15, v8, v15

    .line 813
    invoke-virtual {v9, v15}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v9

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v15, v8}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v8

    .line 812
    invoke-virtual {v5, v3, v9, v8}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v5

    add-int v19, v19, v5

    .line 814
    invoke-static {v13}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v5

    add-int/2addr v14, v3

    .line 815
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v3, v14

    .line 816
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v3

    aget-short v8, v8, v9

    .line 818
    invoke-static {v8}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v8

    add-int v19, v19, v8

    .line 819
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v8, v8, v5

    .line 820
    invoke-static {v8}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v8

    add-int v19, v19, v8

    add-int/lit8 v8, v11, 0x1

    add-int/2addr v8, v10

    move/from16 v9, v21

    :goto_541
    add-int v13, v1, v8

    if-ge v9, v13, :cond_551

    .line 826
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v9, v9, 0x1

    aget-object v13, v13, v9

    const v14, 0xfffffff

    iput v14, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    goto :goto_541

    :cond_551
    const/4 v14, 0x0

    .line 827
    invoke-virtual {v0, v14, v10, v5, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v3

    add-int v3, v19, v3

    .line 828
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v5, v5, v13

    .line 829
    iget v8, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v3, v8, :cond_571

    .line 830
    iput v3, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    add-int/2addr v11, v1

    const/4 v3, 0x1

    add-int/2addr v11, v3

    .line 831
    iput v11, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 832
    iput v14, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 833
    iput-boolean v3, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 834
    iput-boolean v3, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    .line 835
    iput v1, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    .line 836
    iput v6, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    :cond_571
    move/from16 v8, v20

    goto :goto_580

    :cond_574
    move/from16 v22, v3

    move/from16 p1, v5

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v8, v20

    move/from16 v9, v21

    :goto_580
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p1

    move/from16 v3, v22

    goto/16 :goto_46e

    :cond_588
    move/from16 v21, v9

    const/4 v10, 0x4

    const/4 v14, -0x1

    goto/16 :goto_486

    :cond_58e
    move/from16 v22, v3

    move/from16 v3, v18

    if-le v3, v7, :cond_5a5

    const/4 v3, 0x0

    .line 845
    :goto_595
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v6, v5, v3

    if-le v7, v6, :cond_59e

    add-int/lit8 v3, v3, 0x2

    goto :goto_595

    .line 847
    :cond_59e
    aput v7, v5, v3

    add-int/lit8 v3, v3, 0x2

    move v5, v3

    move v3, v7

    goto :goto_5a7

    :cond_5a5
    move/from16 v5, v16

    :goto_5a7
    if-lt v3, v8, :cond_6dd

    .line 851
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v6, v6, v4

    invoke-static {v6}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v6

    add-int v6, v17, v6

    :goto_5b3
    add-int v7, v1, v3

    if-ge v9, v7, :cond_5c3

    .line 853
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v9, v9, 0x1

    aget-object v7, v7, v9

    const v10, 0xfffffff

    iput v10, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    goto :goto_5b3

    :cond_5c3
    const/4 v3, 0x0

    .line 856
    :goto_5c4
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v7, v7, v3

    if-le v8, v7, :cond_5cd

    add-int/lit8 v3, v3, 0x2

    goto :goto_5c4

    .line 860
    :cond_5cd
    :goto_5cd
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    add-int/lit8 v10, v3, 0x1

    aget v7, v7, v10

    .line 861
    invoke-virtual {v0, v7, v8, v12}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosLenPrice(III)I

    move-result v10

    add-int/2addr v10, v6

    .line 862
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int v13, v1, v8

    aget-object v11, v11, v13

    .line 863
    iget v14, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v10, v14, :cond_5ed

    .line 864
    iput v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 865
    iput v1, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    add-int/lit8 v14, v7, 0x4

    .line 866
    iput v14, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    const/4 v14, 0x0

    .line 867
    iput-boolean v14, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 870
    :cond_5ed
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v11, v11, v3

    if-ne v8, v11, :cond_6c2

    if-ge v8, v2, :cond_6a9

    add-int/lit8 v11, v2, -0x1

    sub-int/2addr v11, v8

    .line 872
    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 873
    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v14, v8, v7, v11}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v11

    const/4 v14, 0x2

    if-lt v11, v14, :cond_6a9

    .line 875
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v15

    add-int v14, v22, v8

    move/from16 p1, v2

    .line 877
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v2, v14

    move/from16 v16, v4

    .line 878
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v17, v15, 0x4

    add-int v17, v17, v2

    aget-short v2, v4, v17

    .line 880
    invoke-static {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v2

    add-int/2addr v10, v2

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move/from16 v17, v6

    add-int/lit8 v6, v8, -0x1

    move/from16 v18, v9

    add-int/lit8 v9, v6, -0x1

    .line 881
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v2

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v9, v7, 0x1

    sub-int v9, v8, v9

    move/from16 v19, v12

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    .line 882
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v4

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    .line 883
    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v6

    .line 882
    invoke-virtual {v2, v12, v4, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v2

    add-int/2addr v10, v2

    .line 884
    invoke-static {v15}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v2

    add-int/2addr v14, v12

    .line 885
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v4, v14

    .line 886
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v4

    aget-short v6, v6, v9

    .line 888
    invoke-static {v6}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v6

    add-int/2addr v10, v6

    .line 889
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v6, v6, v2

    .line 890
    invoke-static {v6}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v6

    add-int/2addr v10, v6

    add-int/lit8 v6, v8, 0x1

    add-int/2addr v6, v11

    move/from16 v9, v18

    :goto_670
    add-int v12, v1, v6

    if-ge v9, v12, :cond_680

    .line 894
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v9, v9, 0x1

    aget-object v12, v12, v9

    const v14, 0xfffffff

    iput v14, v12, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    goto :goto_670

    :cond_680
    const v14, 0xfffffff

    const/4 v15, 0x0

    .line 895
    invoke-virtual {v0, v15, v11, v2, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v2

    add-int/2addr v10, v2

    .line 896
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, v12

    .line 897
    iget v4, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v10, v4, :cond_6a5

    .line 898
    iput v10, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    add-int/lit8 v13, v13, 0x1

    .line 899
    iput v13, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 900
    iput v15, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    const/4 v6, 0x1

    .line 901
    iput-boolean v6, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 902
    iput-boolean v6, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    .line 903
    iput v1, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    add-int/lit8 v7, v7, 0x4

    .line 904
    iput v7, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    goto :goto_6a6

    :cond_6a5
    const/4 v6, 0x1

    :goto_6a6
    move/from16 v18, v9

    goto :goto_6b8

    :cond_6a9
    move/from16 p1, v2

    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v12

    const/4 v6, 0x1

    const v14, 0xfffffff

    const/4 v15, 0x0

    :goto_6b8
    add-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_6bf

    move/from16 v5, v18

    goto :goto_6e3

    :cond_6bf
    move/from16 v9, v18

    goto :goto_6d1

    :cond_6c2
    move/from16 p1, v2

    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v12

    const/4 v6, 0x1

    const v14, 0xfffffff

    const/4 v15, 0x0

    :goto_6d1
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p1

    move/from16 v4, v16

    move/from16 v6, v17

    move/from16 v12, v19

    goto/16 :goto_5cd

    :cond_6dd
    const/4 v6, 0x1

    const v14, 0xfffffff

    const/4 v15, 0x0

    move v5, v9

    :goto_6e3
    move/from16 v3, v22

    goto/16 :goto_3ea

    :cond_6e7
    move v9, v15

    goto/16 :goto_151
.end method

.method GetPosLenPrice(III)I
    .registers 7

    .line 449
    invoke-static {p2}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v0

    const/16 v1, 0x80

    if-ge p1, v1, :cond_10

    .line 451
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    mul-int/lit16 v0, v0, 0x80

    add-int/2addr v0, p1

    aget p1, v2, v0

    goto :goto_22

    .line 453
    :cond_10
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    shl-int/lit8 v0, v0, 0x6

    invoke-static {p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot2(I)I

    move-result v2

    add-int/2addr v0, v2

    aget v0, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPrices:[I

    and-int/lit8 p1, p1, 0xf

    aget p1, v1, p1

    add-int/2addr p1, v0

    .line 454
    :goto_22
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method GetPureRepPrice(III)I
    .registers 5

    if-nez p1, :cond_17

    .line 427
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    aget-short p1, p1, p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result p1

    .line 428
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    shl-int/lit8 p2, p2, 0x4

    add-int/2addr p2, p3

    aget-short p2, v0, p2

    .line 429
    invoke-static {p2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_3f

    .line 431
    :cond_17
    iget-object p3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    aget-short p3, p3, p2

    invoke-static {p3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    .line 433
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    aget-short p1, p1, p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result p1

    goto :goto_3e

    .line 435
    :cond_2b
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    aget-short v0, v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v0

    add-int/2addr p3, v0

    .line 436
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    aget-short p2, v0, p2

    add-int/lit8 p1, p1, -0x2

    invoke-static {p2, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result p1

    :goto_3e
    add-int/2addr p1, p3

    :goto_3f
    return p1
.end method

.method GetRepLen1Price(II)I
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    aget-short v0, v0, p1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    aget-short p1, v1, p1

    .line 420
    invoke-static {p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method GetRepPrice(IIII)I
    .registers 6

    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {v0, p2, p4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result p2

    .line 444
    invoke-virtual {p0, p1, p3, p4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPureRepPrice(III)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method Init()V
    .registers 5

    .line 372
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->BaseInit()V

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Init()V

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 378
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->Init()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_32
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3f

    .line 385
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 387
    :cond_3f
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Init(I)V

    .line 388
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Init(I)V

    .line 390
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 392
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    .line 393
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    .line 394
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 395
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    return-void
.end method

.method MovePos(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_c

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Skip(I)V

    .line 414
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    :cond_c
    return-void
.end method

.method ReadMatchDistances()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatches([I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    .line 401
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    if-lez v0, :cond_28

    .line 402
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    .line 403
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-ne v2, v3, :cond_29

    .line 404
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    rsub-int v1, v2, 0x111

    invoke-virtual {v3, v4, v0, v1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    .line 407
    :cond_29
    :goto_29
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    return v2
.end method

.method ReleaseMFStream()V
    .registers 3

    .line 1082
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    if-eqz v1, :cond_e

    .line 1083
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReleaseStream()V

    const/4 v0, 0x0

    .line 1084
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    :cond_e
    return-void
.end method

.method ReleaseOutStream()V
    .registers 2

    .line 1093
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->ReleaseStream()V

    return-void
.end method

.method ReleaseStreams()V
    .registers 1

    .line 1097
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseMFStream()V

    .line 1098
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseOutStream()V

    return-void
.end method

.method public SetAlgorithm(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public SetDictionarySize(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_17

    const/high16 v2, 0x20000000

    if-le p1, v2, :cond_9

    goto :goto_17

    .line 1201
    :cond_9
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    :goto_b
    shl-int v2, v1, v0

    if-le p1, v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_12
    mul-int/lit8 v0, v0, 0x2

    .line 1205
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    return v1

    :cond_17
    :goto_17
    return v0
.end method

.method public SetEndMarkerMode(Z)V
    .registers 2

    .line 1237
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    return-void
.end method

.method public SetLcLpPb(III)Z
    .registers 6

    if-ltz p2, :cond_1f

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1f

    if-ltz p1, :cond_1f

    const/16 v1, 0x8

    if-gt p1, v1, :cond_1f

    if-ltz p3, :cond_1f

    if-le p3, v0, :cond_10

    goto :goto_1f

    .line 1229
    :cond_10
    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    .line 1230
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    .line 1231
    iput p3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    .line 1232
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    const/4 p2, 0x1

    shl-int p1, p2, p1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    return p2

    :cond_1f
    :goto_1f
    const/4 p1, 0x0

    return p1
.end method

.method public SetMatchFinder(I)Z
    .registers 3

    if-ltz p1, :cond_1a

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    goto :goto_1a

    .line 1217
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    .line 1218
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    .line 1219
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    if-eqz p1, :cond_18

    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    if-eq v0, p1, :cond_18

    const/4 p1, -0x1

    .line 1220
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    const/4 p1, 0x0

    .line 1221
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    :cond_18
    const/4 p1, 0x1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public SetNumFastBytes(I)Z
    .registers 3

    const/4 v0, 0x5

    if-lt p1, v0, :cond_c

    const/16 v0, 0x111

    if-le p1, v0, :cond_8

    goto :goto_c

    .line 1211
    :cond_8
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    const/4 p1, 0x1

    return p1

    :cond_c
    :goto_c
    const/4 p1, 0x0

    return p1
.end method

.method SetOutStream(Ljava/io/OutputStream;)V
    .registers 3

    .line 1089
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->SetStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method SetStreams(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    .registers 7

    .line 1102
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_inStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 1103
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    .line 1104
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Create()V

    .line 1105
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetOutStream(Ljava/io/OutputStream;)V

    .line 1106
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Init()V

    .line 1110
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillDistancesPrices()V

    .line 1111
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillAlignPrices()V

    .line 1114
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->SetTableSize(I)V

    .line 1115
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int p2, p3, p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->UpdateTables(I)V

    .line 1116
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->SetTableSize(I)V

    .line 1117
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int p2, p3, p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->UpdateTables(I)V

    const-wide/16 p1, 0x0

    .line 1119
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    return-void
.end method

.method SetWriteEndMarkerMode(Z)V
    .registers 2

    .line 368
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    return-void
.end method

.method public WriteCoderProperties(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    const/4 v2, 0x5

    mul-int/lit8 v1, v1, 0x5

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x9

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    add-int/2addr v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    const/4 v0, 0x0

    :goto_14
    const/4 v1, 0x4

    if-ge v0, v1, :cond_26

    .line 1150
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    mul-int/lit8 v0, v0, 0x8

    shr-int v0, v5, v0

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    move v0, v4

    goto :goto_14

    .line 1151
    :cond_26
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method WriteEndMarker(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 922
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    if-nez v0, :cond_5

    return-void

    .line 924
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 925
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 926
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    const/4 v0, 0x2

    .line 928
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v1, v2, v3, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    const/16 p1, 0x3f

    .line 930
    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v0

    .line 931
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 934
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    const v0, 0x3ffffff

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->EncodeDirectBits(II)V

    .line 935
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseEncode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    return-void
.end method
