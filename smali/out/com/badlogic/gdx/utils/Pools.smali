.class public Lcom/badlogic/gdx/utils/Pools;
.super Ljava/lang/Object;
.source "Pools.java"


# static fields
.field private static final typePools:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/Pool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static free(Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_15

    .line 54
    sget-object v0, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Pool;

    if-nez v0, :cond_11

    return-void

    .line 56
    :cond_11
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void

    .line 53
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static freeAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 2

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Pools;->freeAll(Lcom/badlogic/gdx/utils/Array;Z)V

    return-void
.end method

.method public static freeAll(Lcom/badlogic/gdx/utils/Array;Z)V
    .registers 8

    if-eqz p0, :cond_2b

    const/4 v0, 0x0

    .line 70
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    move-object v3, v2

    :goto_7
    if-ge v0, v1, :cond_2a

    .line 71
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_10

    goto :goto_27

    :cond_10
    if-nez v3, :cond_21

    .line 74
    sget-object v3, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Pool;

    if-nez v3, :cond_21

    goto :goto_27

    .line 77
    :cond_21
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    if-nez p1, :cond_27

    move-object v3, v2

    :cond_27
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2a
    return-void

    .line 68
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_34

    :goto_33
    throw p0

    :goto_34
    goto :goto_33
.end method

.method public static get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Pool<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 38
    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;I)Lcom/badlogic/gdx/utils/Pool;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/Class;I)Lcom/badlogic/gdx/utils/Pool;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/badlogic/gdx/utils/Pool<",
            "TT;>;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Pool;

    if-nez v0, :cond_15

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/ReflectionPool;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, Lcom/badlogic/gdx/utils/ReflectionPool;-><init>(Ljava/lang/Class;II)V

    .line 30
    sget-object p1, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method public static obtain(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static set(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Pool;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
