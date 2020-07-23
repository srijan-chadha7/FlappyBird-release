.class Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;
.super Ljava/lang/Object;
.source "VertexAttributes.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/VertexAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadonlyIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

.field private iterator2:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 245
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 246
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    if-nez v0, :cond_22

    .line 247
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    .line 248
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator2:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    .line 250
    :cond_22
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_35

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput v2, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    .line 252
    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    .line 253
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator2:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput-boolean v2, v1, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    return-object v0

    .line 256
    :cond_35
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator2:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput v2, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    .line 257
    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    .line 258
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput-boolean v2, v1, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    return-object v0
.end method
