.class public final Lcom/badlogic/gdx/utils/reflect/ArrayReflection;
.super Ljava/lang/Object;
.source "ArrayReflection.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 1

    .line 30
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 3

    .line 40
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method
