.class public Lcom/badlogic/gdx/utils/Select;
.super Ljava/lang/Object;
.source "Select.java"


# static fields
.field private static instance:Lcom/badlogic/gdx/utils/Select;


# instance fields
.field private quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fastMax([Ljava/lang/Object;Ljava/util/Comparator;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    if-ge v0, p3, :cond_12

    .line 86
    aget-object v2, p1, v0

    aget-object v3, p1, v1

    invoke-interface {p2, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_f

    move v1, v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return v1
.end method

.method private fastMin([Ljava/lang/Object;Ljava/util/Comparator;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    if-ge v0, p3, :cond_12

    .line 74
    aget-object v2, p1, v0

    aget-object v3, p1, v1

    invoke-interface {p2, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_f

    move v1, v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return v1
.end method

.method public static instance()Lcom/badlogic/gdx/utils/Select;
    .registers 1

    .line 39
    sget-object v0, Lcom/badlogic/gdx/utils/Select;->instance:Lcom/badlogic/gdx/utils/Select;

    if-nez v0, :cond_b

    new-instance v0, Lcom/badlogic/gdx/utils/Select;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Select;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Select;->instance:Lcom/badlogic/gdx/utils/Select;

    .line 40
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/utils/Select;->instance:Lcom/badlogic/gdx/utils/Select;

    return-object v0
.end method


# virtual methods
.method public select([Ljava/lang/Object;Ljava/util/Comparator;II)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)TT;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/Select;->selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result p2

    .line 45
    aget-object p1, p1, p2

    return-object p1
.end method

.method public selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p4, v0, :cond_44

    if-gt p3, p4, :cond_25

    if-ne p3, v0, :cond_c

    .line 58
    invoke-direct {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Select;->fastMin([Ljava/lang/Object;Ljava/util/Comparator;I)I

    move-result p1

    goto :goto_24

    :cond_c
    if-ne p3, p4, :cond_13

    .line 61
    invoke-direct {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Select;->fastMax([Ljava/lang/Object;Ljava/util/Comparator;I)I

    move-result p1

    goto :goto_24

    .line 64
    :cond_13
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Select;->quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/badlogic/gdx/utils/QuickSelect;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/QuickSelect;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Select;->quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;

    .line 65
    :cond_1e
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Select;->quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/QuickSelect;->select([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result p1

    :goto_24
    return p1

    .line 52
    :cond_25
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Kth rank is larger than size. k: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_44
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "cannot select from empty array (size < 1)"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
