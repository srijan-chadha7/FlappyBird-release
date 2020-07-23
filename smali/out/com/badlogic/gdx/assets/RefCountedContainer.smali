.class public Lcom/badlogic/gdx/assets/RefCountedContainer;
.super Ljava/lang/Object;
.source "RefCountedContainer.java"


# instance fields
.field object:Ljava/lang/Object;

.field refCount:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/badlogic/gdx/assets/RefCountedContainer;->refCount:I

    if-eqz p1, :cond_b

    .line 25
    iput-object p1, p0, Lcom/badlogic/gdx/assets/RefCountedContainer;->object:Ljava/lang/Object;

    return-void

    .line 24
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decRefCount()V
    .registers 2

    .line 33
    iget v0, p0, Lcom/badlogic/gdx/assets/RefCountedContainer;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/RefCountedContainer;->refCount:I

    return-void
.end method

.method public getObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 45
    iget-object p1, p0, Lcom/badlogic/gdx/assets/RefCountedContainer;->object:Ljava/lang/Object;

    return-object p1
.end method

.method public getRefCount()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/badlogic/gdx/assets/RefCountedContainer;->refCount:I

    return v0
.end method

.method public incRefCount()V
    .registers 2

    .line 29
    iget v0, p0, Lcom/badlogic/gdx/assets/RefCountedContainer;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/RefCountedContainer;->refCount:I

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/badlogic/gdx/assets/RefCountedContainer;->object:Ljava/lang/Object;

    return-void
.end method

.method public setRefCount(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/badlogic/gdx/assets/RefCountedContainer;->refCount:I

    return-void
.end method
