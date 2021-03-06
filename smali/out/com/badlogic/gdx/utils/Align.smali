.class public Lcom/badlogic/gdx/utils/Align;
.super Ljava/lang/Object;
.source "Align.java"


# static fields
.field public static final bottom:I = 0x4

.field public static final bottomLeft:I = 0xc

.field public static final bottomRight:I = 0x14

.field public static final center:I = 0x1

.field public static final left:I = 0x8

.field public static final right:I = 0x10

.field public static final top:I = 0x2

.field public static final topLeft:I = 0xa

.field public static final topRight:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isBottom(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static final isCenterHorizontal(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_a

    and-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static final isCenterVertical(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_a

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static final isLeft(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static final isRight(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static final isTop(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_11

    const-string v1, "top,"

    .line 60
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_20

    :cond_11
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1b

    const-string v1, "bottom,"

    .line 62
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_20

    :cond_1b
    const-string v1, "center,"

    .line 64
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2a

    const-string p0, "left"

    .line 66
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_39

    :cond_2a
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_34

    const-string p0, "right"

    .line 68
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_39

    :cond_34
    const-string p0, "center"

    .line 70
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 71
    :goto_39
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
