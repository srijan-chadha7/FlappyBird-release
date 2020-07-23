.class public Lcom/badlogic/gdx/utils/StringBuilder;
.super Ljava/lang/Object;
.source "StringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field static final INITIAL_CAPACITY:I = 0x10

.field private static final digits:[C


# instance fields
.field public chars:[C

.field public length:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    .line 33
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 62
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_a

    .line 74
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-void

    .line 72
    :cond_a
    new-instance p1, Ljava/lang/NegativeArraySizeException;

    invoke-direct {p1}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/StringBuilder;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 88
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v1, v0, 0x10

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 89
    iget-object p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 99
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v1, v0, 0x10

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 100
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method private enlargeBuffer(I)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    shr-int/lit8 v1, v1, 0x1

    array-length v0, v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x2

    if-le p1, v0, :cond_c

    goto :goto_d

    :cond_c
    move p1, v0

    .line 105
    :goto_d
    new-array p1, p1, [C

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-void
.end method

.method private move(II)V
    .registers 6

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_e

    add-int/2addr p1, p2

    sub-int/2addr v2, p2

    .line 330
    invoke-static {v0, p2, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_e
    add-int/2addr v2, p1

    .line 333
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    if-le v2, v0, :cond_17

    move v0, v2

    .line 335
    :cond_17
    new-array v0, v0, [C

    .line 336
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/2addr p1, p2

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, p2

    invoke-static {v1, p2, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-void
.end method

.method public static numChars(II)I
    .registers 3

    if-gez p0, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    .line 38
    :goto_5
    div-int/2addr p0, p1

    if-eqz p0, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    return v0
.end method

.method public static numChars(JI)I
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 v2, 0x2

    goto :goto_9

    :cond_8
    const/4 v2, 0x1

    :goto_9
    int-to-long v3, p2

    .line 46
    div-long/2addr p0, v3

    cmp-long v3, p0, v0

    if-eqz v3, :cond_12

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    return v2
.end method


# virtual methods
.method public append(C)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2

    .line 753
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    return-object p0
.end method

.method public append(D)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    .line 894
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    return-object p0
.end method

.method public append(F)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2

    .line 883
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    return-object p0
.end method

.method public append(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 764
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4

    const/16 v0, 0x30

    .line 775
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(IIC)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(IIC)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 10

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_a

    const-string p1, "-2147483648"

    .line 788
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    return-object p0

    :cond_a
    if-gez p1, :cond_12

    const/16 v0, 0x2d

    .line 792
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    neg-int p1, p1

    :cond_12
    const/4 v0, 0x1

    const/16 v1, 0xa

    if-le p2, v0, :cond_24

    .line 796
    invoke-static {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->numChars(II)I

    move-result v0

    sub-int/2addr p2, v0

    :goto_1c
    if-lez p2, :cond_24

    .line 797
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1c

    :cond_24
    const/16 p2, 0x2710

    if-lt p1, p2, :cond_86

    const p3, 0x3b9aca00

    if-lt p1, p3, :cond_40

    .line 800
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    int-to-long v2, p1

    const-wide v4, 0x2540be400L

    rem-long/2addr v2, v4

    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    long-to-int v3, v2

    aget-char v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_40
    const v0, 0x5f5e100

    if-lt p1, v0, :cond_4f

    .line 801
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int p3, p1, p3

    div-int/2addr p3, v0

    aget-char p3, v2, p3

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_4f
    const p3, 0x989680

    if-lt p1, p3, :cond_5e

    .line 802
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v0, p1, v0

    div-int/2addr v0, p3

    aget-char v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_5e
    const v0, 0xf4240

    if-lt p1, v0, :cond_6d

    .line 803
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int p3, p1, p3

    div-int/2addr p3, v0

    aget-char p3, v2, p3

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_6d
    const p3, 0x186a0

    if-lt p1, p3, :cond_7c

    .line 804
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v0, p1, v0

    div-int/2addr v0, p3

    aget-char v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 805
    :cond_7c
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int p3, p1, p3

    div-int/2addr p3, p2

    aget-char p2, v0, p3

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_86
    const/16 p2, 0x3e8

    if-lt p1, p2, :cond_94

    .line 807
    sget-object p3, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit16 v0, p1, 0x2710

    div-int/2addr v0, p2

    aget-char p2, p3, v0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_94
    const/16 p2, 0x64

    if-lt p1, p2, :cond_a2

    .line 808
    sget-object p3, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit16 v0, p1, 0x3e8

    div-int/2addr v0, p2

    aget-char p2, p3, v0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_a2
    if-lt p1, v1, :cond_ae

    .line 809
    sget-object p2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit8 p3, p1, 0x64

    div-int/2addr p3, v1

    aget-char p2, p2, p3

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 810
    :cond_ae
    sget-object p2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/2addr p1, v1

    aget-char p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    return-object p0
.end method

.method public append(J)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4

    const/4 v0, 0x0

    .line 820
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(JI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(JI)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 5

    const/16 v0, 0x30

    .line 830
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(JIC)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(JIC)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 10

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    const-string p1, "-9223372036854775808"

    .line 842
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    return-object p0

    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_18

    const/16 v0, 0x2d

    .line 846
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    neg-long p1, p1

    :cond_18
    const/4 v0, 0x1

    if-le p3, v0, :cond_2a

    const/16 v0, 0xa

    .line 850
    invoke-static {p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->numChars(JI)I

    move-result v0

    sub-int/2addr p3, v0

    :goto_22
    if-lez p3, :cond_2a

    .line 851
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p3, p3, -0x1

    goto :goto_22

    :cond_2a
    const-wide/16 p3, 0x2710

    cmp-long v0, p1, p3

    if-ltz v0, :cond_167

    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v2, p1, v0

    if-ltz v2, :cond_51

    .line 854
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    long-to-double v1, p1

    const-wide v3, 0x43e158e460913d00L    # 1.0E19

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    rem-double/2addr v1, v3

    const-wide v3, 0x43abc16d674ec800L    # 1.0E18

    div-double/2addr v1, v3

    double-to-int v1, v1

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_51
    const-wide v0, 0x16345785d8a0000L

    cmp-long v2, p1, v0

    if-ltz v2, :cond_6a

    .line 855
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide v3, 0xde0b6b3a7640000L

    rem-long v3, p1, v3

    div-long/2addr v3, v0

    long-to-int v4, v3

    aget-char v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_6a
    const-wide v2, 0x2386f26fc10000L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_7e

    .line 856
    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_7e
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v4, p1, v0

    if-ltz v4, :cond_92

    .line 857
    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_92
    const-wide v2, 0x5af3107a4000L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_a6

    .line 858
    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_a6
    const-wide v0, 0x9184e72a000L

    cmp-long v4, p1, v0

    if-ltz v4, :cond_ba

    .line 859
    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_ba
    const-wide v2, 0xe8d4a51000L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_ce

    .line 860
    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_ce
    const-wide v0, 0x174876e800L

    cmp-long v4, p1, v0

    if-ltz v4, :cond_e2

    .line 861
    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_e2
    const-wide v2, 0x2540be400L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_f6

    .line 862
    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_f6
    const-wide/32 v0, 0x3b9aca00

    cmp-long v4, p1, v0

    if-ltz v4, :cond_108

    .line 863
    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_108
    const-wide/32 v2, 0x5f5e100

    cmp-long v4, p1, v2

    if-ltz v4, :cond_11a

    .line 864
    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_11a
    const-wide/32 v0, 0x989680

    cmp-long v4, p1, v0

    if-ltz v4, :cond_12c

    .line 865
    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_12c
    const-wide/32 v2, 0xf4240

    cmp-long v4, p1, v2

    if-ltz v4, :cond_141

    .line 866
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    const-wide/32 v3, 0xf4240

    div-long/2addr v0, v3

    long-to-int v1, v0

    aget-char v0, v2, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_141
    const-wide/32 v0, 0x186a0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_159

    .line 867
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/32 v1, 0xf4240

    rem-long v1, p1, v1

    const-wide/32 v3, 0x186a0

    div-long/2addr v1, v3

    long-to-int v2, v1

    aget-char v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 868
    :cond_159
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/32 v1, 0x186a0

    rem-long v1, p1, v1

    div-long/2addr v1, p3

    long-to-int v2, v1

    aget-char v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_167
    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_178

    .line 870
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long p3, p1, p3

    div-long/2addr p3, v0

    long-to-int p4, p3

    aget-char p3, v2, p4

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_178
    const-wide/16 p3, 0x64

    cmp-long v2, p1, p3

    if-ltz v2, :cond_189

    .line 871
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    div-long/2addr v0, p3

    long-to-int v1, v0

    aget-char v0, v2, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    :cond_189
    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-ltz v2, :cond_19a

    .line 872
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long p3, p1, p3

    div-long/2addr p3, v0

    long-to-int p4, p3

    aget-char p3, v2, p4

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 873
    :cond_19a
    sget-object p3, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long/2addr p1, v0

    long-to-int p2, p1

    aget-char p1, p3, p2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    return-object p0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4

    if-nez p1, :cond_6

    .line 977
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_e

    .line 979
    :cond_6
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    :goto_e
    return-object p0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4

    if-nez p1, :cond_6

    .line 999
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_b

    .line 1001
    :cond_6
    iget-object p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    :goto_b
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4

    if-nez p1, :cond_6

    .line 965
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_1c

    .line 966
    :cond_6
    instance-of v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v0, :cond_15

    .line 967
    check-cast p1, Lcom/badlogic/gdx/utils/StringBuilder;

    .line 968
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    goto :goto_1c

    .line 970
    :cond_15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    :goto_1c
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4

    .line 993
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2

    if-nez p1, :cond_6

    .line 906
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_d

    .line 908
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    :goto_d
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2

    .line 918
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    return-object p0
.end method

.method public append(Z)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2

    if-eqz p1, :cond_5

    const-string p1, "true"

    goto :goto_7

    :cond_5
    const-string p1, "false"

    .line 742
    :goto_7
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    return-object p0
.end method

.method public append([C)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2

    .line 940
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([C)V

    return-object p0
.end method

.method public append([CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4

    .line 954
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method final append0(C)V
    .registers 5

    .line 148
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    .line 149
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 151
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char p1, v0, v1

    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .registers 5

    if-nez p1, :cond_4

    const-string p1, "null"

    :cond_4
    if-ltz p2, :cond_1c

    if-ltz p3, :cond_1c

    if-gt p2, p3, :cond_1c

    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1c

    .line 176
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_1c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method final append0(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_6

    .line 156
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    return-void

    .line 159
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 160
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v1, v0

    .line 161
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v2

    if-le v1, v2, :cond_15

    .line 162
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    :cond_15
    const/4 v2, 0x0

    .line 164
    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 165
    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void
.end method

.method final append0([C)V
    .registers 7

    .line 122
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 123
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 124
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    :cond_c
    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void
.end method

.method final append0([CII)V
    .registers 7

    .line 132
    array-length v0, p1

    if-gt p2, v0, :cond_37

    if-ltz p2, :cond_37

    if-ltz p3, :cond_20

    .line 135
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_20

    .line 139
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v0, p3

    .line 140
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_16

    .line 141
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 143
    :cond_16
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    .line 136
    :cond_20
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length out of bounds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_37
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Offset out of bounds: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendCodePoint(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2

    .line 1012
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([C)V

    return-object p0
.end method

.method public appendLine(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2

    .line 928
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 929
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    return-object p0
.end method

.method final appendNull()V
    .registers 5

    .line 111
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x4

    .line 112
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 113
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 115
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    .line 116
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 117
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 118
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char v2, v0, v1

    return-void
.end method

.method public capacity()I
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .registers 3

    if-ltz p1, :cond_b

    .line 194
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_b

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char p1, v0, p1

    return p1

    .line 195
    :cond_b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 1041
    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void
.end method

.method public codePointAt(I)I
    .registers 4

    if-ltz p1, :cond_d

    .line 683
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_d

    .line 686
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, p1, v0}, Ljava/lang/Character;->codePointAt([CII)I

    move-result p1

    return p1

    .line 684
    :cond_d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public codePointBefore(I)I
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    .line 698
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_e

    .line 701
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result p1

    return p1

    .line 699
    :cond_e
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public codePointCount(II)I
    .registers 4

    if-ltz p1, :cond_10

    .line 715
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_10

    if-gt p1, p2, :cond_10

    .line 718
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p2}, Ljava/lang/Character;->codePointCount([CII)I

    move-result p1

    return p1

    .line 716
    :cond_10
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public containsIgnoreCase(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 602
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOfIgnoreCase(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public delete(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    .line 1024
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->delete0(II)V

    return-object p0
.end method

.method final delete0(II)V
    .registers 5

    if-ltz p1, :cond_1d

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v0, :cond_7

    move p2, v0

    :cond_7
    if-ne p2, p1, :cond_a

    return-void

    :cond_a
    if-le p2, p1, :cond_1d

    .line 209
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v0, p2

    if-ltz v0, :cond_16

    .line 210
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    :cond_16
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    .line 215
    :cond_1d
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public deleteCharAt(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2

    .line 1035
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->deleteCharAt0(I)V

    return-object p0
.end method

.method final deleteCharAt0(I)V
    .registers 5

    if-ltz p1, :cond_19

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_19

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_12

    .line 224
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    :cond_12
    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    .line 220
    :cond_19
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public ensureCapacity(I)V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    if-le p1, v1, :cond_10

    .line 237
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_d

    move p1, v0

    .line 238
    :cond_d
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    :cond_10
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1268
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 1269
    :cond_13
    check-cast p1, Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1270
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1271
    iget v3, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eq v2, v3, :cond_1c

    return v1

    .line 1272
    :cond_1c
    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v2, :cond_2d

    .line 1274
    aget-char v5, v3, v4

    aget-char v6, p1, v4

    if-eq v5, v6, :cond_2a

    return v1

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_2d
    return v0
.end method

.method public equalsIgnoreCase(Lcom/badlogic/gdx/utils/StringBuilder;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1282
    :cond_8
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1283
    iget v3, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eq v2, v3, :cond_f

    return v1

    .line 1284
    :cond_f
    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v2, :cond_2a

    .line 1286
    aget-char v5, v3, v4

    .line 1287
    aget-char v6, p1, v4

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    if-eq v5, v6, :cond_27

    .line 1288
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v5, v6, :cond_27

    return v1

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2a
    return v0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1296
    :cond_4
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v0

    .line 1298
    :cond_d
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_28

    .line 1300
    aget-char v4, v2, v3

    .line 1301
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_25

    .line 1302
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_25

    return v0

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method public getChars(II[CI)V
    .registers 6

    .line 252
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_f

    if-gt p2, v0, :cond_f

    if-gt p1, p2, :cond_f

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 253
    :cond_f
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method final getValue()[C
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1260
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 1261
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 13

    const/4 v0, 0x0

    if-gez p2, :cond_4

    const/4 p2, 0x0

    .line 541
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 542
    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, p1, :cond_10

    if-nez p2, :cond_11

    :cond_10
    move p1, p2

    :cond_11
    return p1

    .line 543
    :cond_12
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, v1

    const/4 v3, -0x1

    if-le p2, v2, :cond_19

    return v3

    .line 545
    :cond_19
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1d
    const/4 v5, 0x1

    if-gt p2, v2, :cond_2b

    .line 550
    iget-object v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v6, v6, p2

    if-ne v6, v4, :cond_28

    const/4 v6, 0x1

    goto :goto_2c

    :cond_28
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    :cond_2b
    const/4 v6, 0x0

    :goto_2c
    if-nez v6, :cond_2f

    return v3

    :cond_2f
    move v7, p2

    const/4 v6, 0x0

    :goto_31
    add-int/2addr v6, v5

    if-ge v6, v1, :cond_40

    .line 557
    iget-object v8, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/2addr v7, v5

    aget-char v8, v8, v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_40

    goto :goto_31

    :cond_40
    if-ne v6, v1, :cond_28

    return p2
.end method

.method public indexOfIgnoreCase(Ljava/lang/String;I)I
    .registers 14

    const/4 v0, 0x0

    if-gez p2, :cond_4

    const/4 p2, 0x0

    .line 569
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 570
    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, p1, :cond_10

    if-nez p2, :cond_11

    :cond_10
    move p1, p2

    :cond_11
    return p1

    .line 571
    :cond_12
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, v1

    const/4 v3, -0x1

    if-le p2, v2, :cond_19

    return v3

    .line 573
    :cond_19
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 574
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    :goto_25
    const/4 v6, 0x1

    if-gt p2, v2, :cond_36

    .line 579
    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v7, v7, p2

    if-eq v7, v4, :cond_34

    if-ne v7, v5, :cond_31

    goto :goto_34

    :cond_31
    add-int/lit8 p2, p2, 0x1

    goto :goto_25

    :cond_34
    :goto_34
    const/4 v7, 0x1

    goto :goto_37

    :cond_36
    const/4 v7, 0x0

    :goto_37
    if-nez v7, :cond_3a

    return v3

    :cond_3a
    move v8, p2

    const/4 v7, 0x0

    :cond_3c
    add-int/2addr v7, v6

    if-ge v7, v1, :cond_54

    .line 588
    iget-object v9, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/2addr v8, v6

    aget-char v9, v9, v8

    .line 589
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    if-eq v9, v10, :cond_3c

    .line 590
    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    if-eq v9, v10, :cond_3c

    :cond_54
    if-ne v7, v1, :cond_31

    return p2
.end method

.method public insert(IC)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    .line 1066
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(IC)V

    return-object p0
.end method

.method public insert(ID)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4

    .line 1118
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(IF)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    .line 1105
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    .line 1079
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(IJ)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4

    .line 1092
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    if-nez p2, :cond_5

    const-string p2, "null"

    goto :goto_9

    .line 1186
    :cond_5
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_9
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 5

    .line 1203
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/CharSequence;II)V

    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    if-nez p2, :cond_5

    const-string p2, "null"

    goto :goto_9

    .line 1131
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_9
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(ILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    .line 1143
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(IZ)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    if-eqz p2, :cond_5

    const-string p2, "true"

    goto :goto_7

    :cond_5
    const-string p2, "false"

    .line 1053
    :goto_7
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(I[C)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3

    .line 1156
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(I[C)V

    return-object p0
.end method

.method public insert(I[CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 5

    .line 1172
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(I[CII)V

    return-object p0
.end method

.method final insert0(IC)V
    .registers 5

    if-ltz p1, :cond_14

    .line 286
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_14

    const/4 v0, 0x1

    .line 290
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 291
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v1, p1

    .line 292
    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    .line 288
    :cond_14
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .registers 6

    if-nez p2, :cond_4

    const-string p2, "null"

    :cond_4
    if-ltz p1, :cond_22

    .line 315
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_22

    if-ltz p3, :cond_22

    if-ltz p4, :cond_22

    if-gt p3, p4, :cond_22

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p4, v0, :cond_22

    .line 318
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    return-void

    .line 316
    :cond_22
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method final insert0(ILjava/lang/String;)V
    .registers 6

    if-ltz p1, :cond_1f

    .line 296
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1f

    if-nez p2, :cond_a

    const-string p2, "null"

    .line 300
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 302
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    const/4 v1, 0x0

    .line 303
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 304
    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    :cond_1e
    return-void

    .line 307
    :cond_1f
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method final insert0(I[C)V
    .registers 5

    if-ltz p1, :cond_19

    .line 259
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_19

    .line 262
    array-length v0, p2

    if-eqz v0, :cond_18

    .line 263
    array-length v0, p2

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    const/4 v0, 0x0

    .line 264
    array-length v1, p2

    invoke-static {p2, v0, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    :cond_18
    return-void

    .line 260
    :cond_19
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method final insert0(I[CII)V
    .registers 7

    if-ltz p1, :cond_44

    if-gt p1, p4, :cond_44

    if-ltz p3, :cond_1c

    if-ltz p4, :cond_1c

    .line 272
    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1c

    if-eqz p4, :cond_1b

    .line 274
    invoke-direct {p0, p4, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    :cond_1b
    return-void

    .line 280
    :cond_1c
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", length "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", char[].length "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_44
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3

    .line 614
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 12

    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 628
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, -0x1

    if-gt v0, v1, :cond_46

    if-ltz p2, :cond_46

    if-lez v0, :cond_41

    sub-int v3, v1, v0

    if-le p2, v3, :cond_13

    sub-int p2, v1, v0

    :cond_13
    const/4 v3, 0x0

    .line 634
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_18
    const/4 v1, 0x1

    if-ltz p2, :cond_26

    .line 639
    iget-object v5, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v5, v5, p2

    if-ne v5, v4, :cond_23

    const/4 v5, 0x1

    goto :goto_27

    :cond_23
    add-int/lit8 p2, p2, -0x1

    goto :goto_18

    :cond_26
    const/4 v5, 0x0

    :goto_27
    if-nez v5, :cond_2a

    return v2

    :cond_2a
    move v6, p2

    const/4 v5, 0x0

    :goto_2c
    add-int/2addr v5, v1

    if-ge v5, v0, :cond_3b

    .line 648
    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/2addr v6, v1

    aget-char v7, v7, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3b

    goto :goto_2c

    :cond_3b
    if-ne v5, v0, :cond_3e

    return p2

    :cond_3e
    add-int/lit8 p2, p2, -0x1

    goto :goto_18

    :cond_41
    if-ge p2, v1, :cond_44

    goto :goto_45

    :cond_44
    move p2, v1

    :goto_45
    return p2

    :cond_46
    return v2
.end method

.method public length()I
    .registers 2

    .line 325
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .registers 6

    .line 732
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result p1

    return p1
.end method

.method public replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 6

    .line 1236
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 1240
    :goto_5
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ne v1, v2, :cond_a

    return-object p0

    .line 1241
    :cond_a
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_17

    add-int/lit8 v2, v1, 0x1

    .line 1244
    invoke-virtual {p0, v1, v2, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    add-int/2addr v1, v0

    goto :goto_5

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public replace(IILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4

    .line 1217
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    return-object p0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 7

    .line 1223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 1226
    :goto_9
    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    return-object p0

    :cond_11
    add-int v3, v2, v0

    .line 1228
    invoke-virtual {p0, v2, v3, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    add-int/2addr v2, v1

    goto :goto_9
.end method

.method final replace0(IILjava/lang/String;)V
    .registers 9

    if-ltz p1, :cond_3d

    .line 344
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v0, :cond_7

    move p2, v0

    :cond_7
    if-le p2, p1, :cond_2f

    .line 348
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p2, p1

    sub-int/2addr v1, v0

    if-lez v1, :cond_1d

    .line 352
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v3, p1, v0

    iget v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v4, p2

    invoke-static {v2, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_1d
    if-gez v1, :cond_23

    neg-int v2, v1

    .line 355
    invoke-direct {p0, v2, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    :cond_23
    :goto_23
    const/4 p2, 0x0

    .line 357
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p3, p2, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 358
    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    :cond_2f
    if-ne p1, p2, :cond_3d

    if-eqz p3, :cond_37

    .line 365
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    return-void

    .line 363
    :cond_37
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 369
    :cond_3d
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public reverse()Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 1

    .line 1253
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->reverse0()V

    return-object p0
.end method

.method final reverse0()V
    .registers 17

    move-object/from16 v0, p0

    .line 373
    iget v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    return-void

    :cond_8
    add-int/lit8 v3, v1, -0x1

    .line 377
    iget-object v4, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v5, 0x0

    aget-char v6, v4, v5

    .line 378
    aget-char v4, v4, v3

    .line 380
    div-int/2addr v1, v2

    move v9, v4

    move v8, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v4, v3

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_9c

    .line 381
    iget-object v10, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v11, v3, 0x1

    aget-char v12, v10, v11

    add-int/lit8 v13, v4, -0x1

    .line 382
    aget-char v10, v10, v13

    const v14, 0xdbff

    const v15, 0xd800

    const v5, 0xdfff

    const v2, 0xdc00

    if-eqz v6, :cond_3c

    if-lt v12, v2, :cond_3c

    if-gt v12, v5, :cond_3c

    if-lt v8, v15, :cond_3c

    if-gt v8, v14, :cond_3c

    const/4 v6, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v6, 0x0

    :goto_3d
    if-eqz v6, :cond_45

    .line 385
    iget v5, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x3

    if-ge v5, v2, :cond_45

    return-void

    :cond_45
    if-eqz v7, :cond_57

    if-lt v10, v15, :cond_57

    if-gt v10, v14, :cond_57

    const v2, 0xdc00

    if-lt v9, v2, :cond_57

    const v2, 0xdfff

    if-gt v9, v2, :cond_57

    const/4 v2, 0x1

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    if-ne v6, v2, :cond_7f

    if-eqz v6, :cond_74

    .line 393
    iget-object v2, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v12, v2, v4

    .line 394
    aput-char v8, v2, v13

    .line 395
    aput-char v10, v2, v3

    .line 396
    aput-char v9, v2, v11

    add-int/lit8 v3, v3, 0x2

    .line 397
    aget-char v3, v2, v3

    add-int/lit8 v5, v4, -0x2

    .line 398
    aget-char v2, v2, v5

    add-int/lit8 v4, v4, -0x1

    move v9, v2

    move v8, v3

    move v3, v11

    goto :goto_7c

    .line 403
    :cond_74
    iget-object v2, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v8, v2, v4

    .line 404
    aput-char v9, v2, v3

    move v9, v10

    move v8, v12

    :goto_7c
    const/4 v2, 0x1

    const/4 v6, 0x1

    goto :goto_8a

    :cond_7f
    if-eqz v6, :cond_8c

    .line 411
    iget-object v2, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v12, v2, v4

    .line 412
    aput-char v9, v2, v3

    move v9, v10

    const/4 v2, 0x1

    const/4 v6, 0x0

    :goto_8a
    const/4 v7, 0x1

    goto :goto_96

    .line 417
    :cond_8c
    iget-object v2, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v8, v2, v4

    .line 418
    aput-char v10, v2, v3

    move v8, v12

    const/4 v2, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_96
    add-int/2addr v3, v2

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    goto/16 :goto_18

    :cond_9c
    const/4 v2, 0x1

    .line 424
    iget v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_ad

    if-eqz v6, :cond_a6

    if-nez v7, :cond_ad

    .line 425
    :cond_a6
    iget-object v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    if-eqz v6, :cond_ab

    move v8, v9

    :cond_ab
    aput-char v8, v1, v4

    :cond_ad
    return-void
.end method

.method public setCharAt(IC)V
    .registers 4

    if-ltz p1, :cond_b

    .line 435
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_b

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v0, p1

    return-void

    .line 436
    :cond_b
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public setLength(I)V
    .registers 5

    if-ltz p1, :cond_16

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    if-le p1, v1, :cond_b

    .line 452
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    goto :goto_13

    .line 454
    :cond_b
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge v1, p1, :cond_13

    const/4 v2, 0x0

    .line 455
    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 458
    :cond_13
    :goto_13
    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    .line 449
    :cond_16
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 3

    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(I)Ljava/lang/String;
    .registers 5

    if-ltz p1, :cond_14

    .line 467
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_14

    if-ne p1, v0, :cond_b

    const-string p1, ""

    return-object p1

    .line 473
    :cond_b
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int/2addr v0, p1

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 475
    :cond_14
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 5

    if-ltz p1, :cond_16

    if-gt p1, p2, :cond_16

    .line 486
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_16

    if-ne p1, p2, :cond_d

    const-string p1, ""

    return-object p1

    .line 492
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 494
    :cond_16
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 502
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 503
    :cond_7
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public trimToSize()V
    .registers 5

    .line 667
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v1

    if-ge v0, v2, :cond_f

    .line 668
    new-array v2, v0, [C

    const/4 v3, 0x0

    .line 669
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 670
    iput-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    :cond_f
    return-void
.end method
