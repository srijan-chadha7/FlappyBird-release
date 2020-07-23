.class public Lcom/badlogic/gdx/utils/compression/lzma/Base;
.super Ljava/lang/Object;
.source "Base.java"


# static fields
.field public static final kAlignMask:I = 0xf

.field public static final kAlignTableSize:I = 0x10

.field public static final kDicLogSizeMin:I = 0x0

.field public static final kEndPosModelIndex:I = 0xe

.field public static final kMatchMaxLen:I = 0x111

.field public static final kMatchMinLen:I = 0x2

.field public static final kNumAlignBits:I = 0x4

.field public static final kNumFullDistances:I = 0x80

.field public static final kNumHighLenBits:I = 0x8

.field public static final kNumLenSymbols:I = 0x110

.field public static final kNumLenToPosStates:I = 0x4

.field public static final kNumLenToPosStatesBits:I = 0x2

.field public static final kNumLitContextBitsMax:I = 0x8

.field public static final kNumLitPosStatesBitsEncodingMax:I = 0x4

.field public static final kNumLowLenBits:I = 0x3

.field public static final kNumLowLenSymbols:I = 0x8

.field public static final kNumMidLenBits:I = 0x3

.field public static final kNumMidLenSymbols:I = 0x8

.field public static final kNumPosModels:I = 0xa

.field public static final kNumPosSlotBits:I = 0x6

.field public static final kNumPosStatesBitsEncodingMax:I = 0x4

.field public static final kNumPosStatesBitsMax:I = 0x4

.field public static final kNumPosStatesEncodingMax:I = 0x10

.field public static final kNumPosStatesMax:I = 0x10

.field public static final kNumRepDistances:I = 0x4

.field public static final kNumStates:I = 0xc

.field public static final kStartPosModelIndex:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final GetLenToPosState(I)I
    .registers 2

    add-int/lit8 p0, p0, -0x2

    const/4 v0, 0x4

    if-ge p0, v0, :cond_6

    return p0

    :cond_6
    const/4 p0, 0x3

    return p0
.end method

.method public static final StateInit()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final StateIsCharState(I)Z
    .registers 2

    const/4 v0, 0x7

    if-ge p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static final StateUpdateChar(I)I
    .registers 2

    const/4 v0, 0x4

    if-ge p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/16 v0, 0xa

    if-ge p0, v0, :cond_c

    add-int/lit8 p0, p0, -0x3

    return p0

    :cond_c
    add-int/lit8 p0, p0, -0x6

    return p0
.end method

.method public static final StateUpdateMatch(I)I
    .registers 2

    const/4 v0, 0x7

    if-ge p0, v0, :cond_4

    goto :goto_6

    :cond_4
    const/16 v0, 0xa

    :goto_6
    return v0
.end method

.method public static final StateUpdateRep(I)I
    .registers 2

    const/4 v0, 0x7

    if-ge p0, v0, :cond_6

    const/16 p0, 0x8

    goto :goto_8

    :cond_6
    const/16 p0, 0xb

    :goto_8
    return p0
.end method

.method public static final StateUpdateShortRep(I)I
    .registers 2

    const/4 v0, 0x7

    if-ge p0, v0, :cond_6

    const/16 p0, 0x9

    goto :goto_8

    :cond_6
    const/16 p0, 0xb

    :goto_8
    return p0
.end method
