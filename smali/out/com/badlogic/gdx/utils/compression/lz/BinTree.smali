.class public Lcom/badlogic/gdx/utils/compression/lz/BinTree;
.super Lcom/badlogic/gdx/utils/compression/lz/InWindow;
.source "BinTree.java"


# static fields
.field private static final CrcTable:[I

.field static final kBT2HashSize:I = 0x10000

.field static final kEmptyHashValue:I = 0x0

.field static final kHash2Size:I = 0x400

.field static final kHash3Offset:I = 0x400

.field static final kHash3Size:I = 0x10000

.field static final kMaxValForNormalize:I = 0x3fffffff

.field static final kStartMaxLen:I = 0x1


# instance fields
.field HASH_ARRAY:Z

.field _cutValue:I

.field _cyclicBufferPos:I

.field _cyclicBufferSize:I

.field _hash:[I

.field _hashMask:I

.field _hashSizeSum:I

.field _matchMaxLen:I

.field _son:[I

.field kFixHashSize:I

.field kMinMatchCheck:I

.field kNumHashDirectBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x100

    .line 298
    new-array v1, v0, [I

    sput-object v1, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_27

    move v4, v2

    const/4 v3, 0x0

    :goto_c
    const/16 v5, 0x8

    if-ge v3, v5, :cond_20

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_1b

    ushr-int/lit8 v4, v4, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    goto :goto_1d

    :cond_1b
    ushr-int/lit8 v4, v4, 0x1

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 308
    :cond_20
    sget-object v3, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_27
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    const/16 v1, 0xff

    .line 15
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 17
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    .line 29
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    const/4 v0, 0x4

    .line 30
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    const v0, 0x10400

    .line 31
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    return-void
.end method


# virtual methods
.method public Create(IIII)Z
    .registers 6

    const v0, 0x3ffffeff    # 1.9999694f

    if-le p1, v0, :cond_7

    const/4 p1, 0x0

    return p1

    :cond_7
    shr-int/lit8 v0, p3, 0x1

    add-int/lit8 v0, v0, 0x10

    .line 62
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    add-int/2addr p2, p1

    add-int v0, p2, p3

    add-int/2addr v0, p4

    .line 64
    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x100

    add-int/2addr p4, p3

    .line 66
    invoke-super {p0, p2, p4, v0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Create(III)V

    .line 68
    iput p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    add-int/lit8 p2, p1, 0x1

    .line 71
    iget p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-eq p3, p2, :cond_29

    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    :cond_29
    const/high16 p2, 0x10000

    .line 75
    iget-boolean p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_4e

    sub-int/2addr p1, p4

    shr-int/lit8 p2, p1, 0x1

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x2

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x4

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    or-int/2addr p1, p2

    shr-int/2addr p1, p4

    const p2, 0xffff

    or-int/2addr p1, p2

    const/high16 p2, 0x1000000

    if-le p1, p2, :cond_48

    shr-int/lit8 p1, p1, 0x1

    .line 84
    :cond_48
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    add-int/2addr p1, p4

    .line 86
    iget p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr p2, p1

    .line 88
    :cond_4e
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    if-eq p2, p1, :cond_58

    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    :cond_58
    return p4
.end method

.method public GetMatches([I)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 94
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_f

    .line 95
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    goto :goto_1c

    .line 97
    :cond_f
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v1, v2

    .line 98
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    if-ge v1, v2, :cond_1c

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    return v3

    .line 105
    :cond_1c
    :goto_1c
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-le v2, v4, :cond_28

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v2, v4

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    .line 106
    :goto_29
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    add-int/2addr v4, v5

    .line 110
    iget-boolean v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v5, :cond_69

    .line 111
    sget-object v5, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v5, v6

    and-int/lit16 v6, v5, 0x3ff

    .line 113
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v8, v4, 0x2

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    const v7, 0xffff

    and-int/2addr v7, v5

    .line 115
    sget-object v8, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v10, v4, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x5

    xor-int/2addr v5, v8

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    and-int/2addr v5, v8

    goto :goto_7c

    .line 117
    :cond_69
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0xff

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 119
    :goto_7c
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v9, v5

    aget v9, v8, v9

    .line 120
    iget-boolean v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_dd

    .line 121
    aget v10, v8, v6

    add-int/lit16 v7, v7, 0x400

    .line 122
    aget v12, v8, v7

    .line 123
    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v13, v8, v6

    .line 124
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v8, v6, v7

    const/4 v6, 0x2

    if-le v10, v2, :cond_b2

    .line 125
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v8, v10

    aget-byte v7, v7, v8

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v8, v8, v4

    if-ne v7, v8, :cond_b2

    .line 126
    aput v6, p1, v3

    .line 127
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v7, v10

    sub-int/2addr v7, v11

    aput v7, p1, v11

    const/4 v7, 0x2

    goto :goto_b4

    :cond_b2
    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_b4
    const/4 v8, 0x3

    if-le v12, v2, :cond_d6

    .line 129
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v14, v12

    aget-byte v13, v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v14, v14, v4

    if-ne v13, v14, :cond_d6

    if-ne v12, v10, :cond_c8

    add-int/lit8 v6, v6, -0x2

    :cond_c8
    add-int/lit8 v7, v6, 0x1

    .line 131
    aput v8, p1, v6

    add-int/lit8 v6, v7, 0x1

    .line 132
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v10, v12

    sub-int/2addr v10, v11

    aput v10, p1, v7

    move v10, v12

    const/4 v7, 0x3

    :cond_d6
    if-eqz v6, :cond_df

    if-ne v10, v9, :cond_df

    add-int/lit8 v6, v6, -0x2

    goto :goto_de

    :cond_dd
    const/4 v6, 0x0

    :goto_de
    const/4 v7, 0x1

    .line 141
    :cond_df
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v10, v5

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v5, v8, v10

    .line 143
    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    shl-int/lit8 v8, v5, 0x1

    add-int/2addr v8, v11

    shl-int/2addr v5, v11

    .line 147
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    if-eqz v10, :cond_115

    if-le v9, v2, :cond_115

    .line 151
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v13, v9

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    add-int/2addr v13, v14

    aget-byte v12, v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    add-int v15, v4, v14

    aget-byte v13, v13, v15

    if-eq v12, v13, :cond_115

    add-int/lit8 v7, v6, 0x1

    .line 152
    aput v14, p1, v6

    add-int/lit8 v6, v7, 0x1

    .line 153
    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v12, v9

    sub-int/2addr v12, v11

    aput v12, p1, v7

    goto :goto_116

    :cond_115
    move v14, v7

    .line 158
    :goto_116
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    move v12, v6

    move v6, v10

    :goto_11a
    if-le v9, v2, :cond_1b9

    add-int/lit8 v13, v7, -0x1

    if-nez v7, :cond_122

    goto/16 :goto_1b9

    .line 165
    :cond_122
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v7, v9

    .line 166
    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    if-gt v7, v15, :cond_12b

    sub-int/2addr v15, v7

    goto :goto_12f

    :cond_12b
    sub-int/2addr v15, v7

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    add-int/2addr v15, v3

    :goto_12f
    shl-int/lit8 v3, v15, 0x1

    .line 169
    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v15, v9

    .line 170
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 171
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v17, v15, v16

    aget-byte v11, v11, v17

    move/from16 v17, v2

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v18, v4, v16

    aget-byte v2, v2, v18

    if-ne v11, v2, :cond_185

    :goto_148
    const/4 v2, 0x1

    add-int/lit8 v11, v16, 0x1

    if-eq v11, v1, :cond_163

    .line 173
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v15, v11

    aget-byte v2, v2, v16

    move/from16 v18, v6

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v4, v11

    aget-byte v6, v6, v16

    if-eq v2, v6, :cond_15e

    goto :goto_165

    :cond_15e
    move/from16 v16, v11

    move/from16 v6, v18

    goto :goto_148

    :cond_163
    move/from16 v18, v6

    :goto_165
    if-ge v14, v11, :cond_183

    add-int/lit8 v2, v12, 0x1

    .line 175
    aput v11, p1, v12

    add-int/lit8 v12, v2, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 176
    aput v7, p1, v2

    if-ne v11, v1, :cond_180

    .line 178
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v2, v1, v3

    aput v2, v1, v5

    const/4 v2, 0x1

    add-int/2addr v3, v2

    .line 179
    aget v2, v1, v3

    aput v2, v1, v8

    goto :goto_1c0

    :cond_180
    const/4 v2, 0x1

    move v14, v11

    goto :goto_18a

    :cond_183
    const/4 v2, 0x1

    goto :goto_18a

    :cond_185
    move/from16 v18, v6

    const/4 v2, 0x1

    move/from16 v11, v16

    .line 184
    :goto_18a
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/2addr v15, v11

    aget-byte v6, v6, v15

    and-int/lit16 v6, v6, 0xff

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v15, v4, v11

    aget-byte v7, v7, v15

    and-int/lit16 v7, v7, 0xff

    if-ge v6, v7, :cond_1a7

    .line 185
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v6, v5

    add-int/lit8 v3, v3, 0x1

    .line 187
    aget v5, v6, v3

    move v9, v5

    move v6, v11

    move v5, v3

    goto :goto_1b2

    .line 190
    :cond_1a7
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v6, v8

    .line 192
    aget v6, v6, v3

    move v8, v3

    move v9, v6

    move v10, v11

    move/from16 v6, v18

    :goto_1b2
    move v7, v13

    move/from16 v2, v17

    const/4 v3, 0x0

    const/4 v11, 0x1

    goto/16 :goto_11a

    .line 162
    :cond_1b9
    :goto_1b9
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    const/4 v2, 0x0

    aput v2, v1, v5

    aput v2, v1, v8

    .line 196
    :goto_1c0
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    return v12
.end method

.method public Init()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Init()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    :goto_5
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    if-ge v1, v2, :cond_10

    .line 49
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 50
    :cond_10
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    const/4 v0, -0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReduceOffsets(I)V

    return-void
.end method

.method public MovePos()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    .line 56
    :cond_d
    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->MovePos()V

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    const v1, 0x3fffffff    # 1.9999999f

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Normalize()V

    :cond_1a
    return-void
.end method

.method Normalize()V
    .registers 4

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v0, v1

    .line 289
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v2, v1, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->NormalizeLinks([III)V

    .line 290
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->NormalizeLinks([III)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReduceOffsets(I)V

    return-void
.end method

.method NormalizeLinks([III)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_10

    .line 278
    aget v2, p1, v1

    if-gt v2, p3, :cond_a

    const/4 v2, 0x0

    goto :goto_b

    :cond_a
    sub-int/2addr v2, p3

    .line 283
    :goto_b
    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method public SetCutValue(I)V
    .registers 2

    .line 295
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    return-void
.end method

.method public SetType(I)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-le p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 34
    :goto_7
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    .line 35
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz p1, :cond_18

    .line 36
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    const/4 p1, 0x4

    .line 37
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    const p1, 0x10400

    .line 38
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    goto :goto_1f

    .line 40
    :cond_18
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    const/4 p1, 0x3

    .line 41
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    .line 42
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    :goto_1f
    return-void
.end method

.method public Skip(I)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 203
    :cond_4
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    if-gt v2, v3, :cond_10

    .line 204
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    goto :goto_1e

    .line 206
    :cond_10
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v2, v3

    .line 207
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    if-ge v2, v3, :cond_1e

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    goto/16 :goto_123

    .line 213
    :cond_1e
    :goto_1e
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-le v3, v4, :cond_2a

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v3, v4

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .line 214
    :goto_2b
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    add-int/2addr v4, v6

    .line 218
    iget-boolean v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v6, :cond_79

    .line 219
    sget-object v6, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v6, v7

    and-int/lit16 v7, v6, 0x3ff

    .line 221
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v9, v8, v7

    .line 222
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v8, v4, 0x2

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    const v7, 0xffff

    and-int/2addr v7, v6

    .line 224
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    add-int/lit16 v7, v7, 0x400

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v9, v8, v7

    .line 225
    sget-object v7, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v9, v4, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    shl-int/lit8 v7, v7, 0x5

    xor-int/2addr v6, v7

    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    and-int/2addr v6, v7

    goto :goto_8a

    .line 227
    :cond_79
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    .line 229
    :goto_8a
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int v9, v8, v6

    aget v9, v7, v9

    add-int/2addr v8, v6

    .line 230
    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v6, v7, v8

    .line 232
    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    shl-int/lit8 v7, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    .line 236
    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 238
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    move v11, v8

    :goto_a4
    if-le v9, v3, :cond_119

    add-int/lit8 v12, v10, -0x1

    if-nez v10, :cond_ac

    goto/16 :goto_119

    .line 245
    :cond_ac
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v10, v9

    .line 246
    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    if-gt v10, v13, :cond_b5

    sub-int/2addr v13, v10

    goto :goto_b9

    :cond_b5
    sub-int/2addr v13, v10

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    add-int/2addr v13, v10

    :goto_b9
    shl-int/lit8 v10, v13, 0x1

    .line 249
    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v13, v9

    .line 250
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 251
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v13, v14

    aget-byte v15, v15, v16

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v4, v14

    aget-byte v5, v5, v16

    if-ne v15, v5, :cond_f1

    :cond_d0
    add-int/lit8 v14, v14, 0x1

    if-eq v14, v2, :cond_e2

    .line 253
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v15, v13, v14

    aget-byte v5, v5, v15

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v4, v14

    aget-byte v15, v15, v16

    if-eq v5, v15, :cond_d0

    :cond_e2
    if-ne v14, v2, :cond_f1

    .line 255
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v3, v2, v10

    aput v3, v2, v6

    add-int/lit8 v10, v10, 0x1

    .line 256
    aget v3, v2, v10

    aput v3, v2, v7

    goto :goto_120

    .line 260
    :cond_f1
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/2addr v13, v14

    aget-byte v5, v5, v13

    and-int/lit16 v5, v5, 0xff

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v15, v4, v14

    aget-byte v13, v13, v15

    and-int/lit16 v13, v13, 0xff

    if-ge v5, v13, :cond_10e

    .line 261
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v5, v6

    add-int/lit8 v10, v10, 0x1

    .line 263
    aget v5, v5, v10

    move v9, v5

    move v6, v10

    move v11, v14

    goto :goto_117

    .line 266
    :cond_10e
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v5, v7

    .line 268
    aget v5, v5, v10

    move v9, v5

    move v7, v10

    move v8, v14

    :goto_117
    move v10, v12

    goto :goto_a4

    .line 241
    :cond_119
    :goto_119
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    const/4 v3, 0x0

    aput v3, v2, v6

    aput v3, v2, v7

    .line 272
    :goto_120
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    :goto_123
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_4

    return-void
.end method
