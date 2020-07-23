.class public Lcom/badlogic/gdx/utils/UBJsonWriter;
.super Ljava/lang/Object;
.source "UBJsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;
    }
.end annotation


# instance fields
.field private current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

.field private named:Z

.field final out:Ljava/io/DataOutputStream;

.field private final stack:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    .line 35
    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    .line 36
    :cond_14
    check-cast p1, Ljava/io/DataOutputStream;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    return-void
.end method

.method private checkName()V
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    if-eqz v0, :cond_18

    .line 532
    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_18

    .line 533
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 534
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    goto :goto_18

    .line 533
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public array()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    if-eqz v0, :cond_18

    .line 63
    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_18

    .line 64
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    goto :goto_18

    .line 64
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/UBJsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p0
.end method

.method public array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_a

    .line 563
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_0

    .line 564
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    if-eqz v0, :cond_4a

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_4a

    const-string v0, "UTF-8"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 84
    array-length v0, p1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_21

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_41

    .line 87
    :cond_21
    array-length v0, p1

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_34

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_41

    .line 91
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    :goto_41
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    return-object p0

    .line 82
    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Current item must be an object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public object()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 43
    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_18

    .line 44
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    if-eqz v0, :cond_10

    .line 45
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    goto :goto_18

    .line 44
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-direct {v2, p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/UBJsonWriter;Z)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p0
.end method

.method public object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->object()Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public pop()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 542
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method protected pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    if-nez v0, :cond_2a

    if-eqz p1, :cond_c

    .line 548
    iget-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    goto :goto_17

    .line 550
    :cond_c
    iget-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->close()V

    .line 551
    :goto_17
    iget-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    goto :goto_27

    :cond_1f
    iget-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    :goto_27
    iput-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    return-object p0

    .line 546
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected an object, array, or value since a name was set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value()Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(B)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(C)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(F)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(S)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([B)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([C)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([F)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([S)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public value()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 412
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public value(B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public value(C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    return-object p0
.end method

.method public value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-object p0
.end method

.method public value(F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-object p0
.end method

.method public value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-object p0
.end method

.method public value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-object p0
.end method

.method public value(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 348
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 349
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_13

    .line 351
    :cond_10
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->object()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 352
    :goto_13
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_15
    if-eqz p1, :cond_1d

    .line 353
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 352
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_15

    .line 354
    :cond_1d
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto/16 :goto_b2

    .line 355
    :cond_22
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 356
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 357
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_35

    .line 359
    :cond_32
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 360
    :goto_35
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_37
    if-eqz p1, :cond_3f

    .line 361
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 360
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_37

    .line 362
    :cond_3f
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto/16 :goto_b2

    .line 363
    :cond_44
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 364
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 365
    :cond_53
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_b2

    .line 366
    :cond_5b
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 367
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_6a

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 368
    :cond_6a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_b2

    .line 369
    :cond_72
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 370
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_81

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 371
    :cond_81
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_b2

    .line 372
    :cond_89
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 373
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_98

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 374
    :cond_98
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_b2

    .line 375
    :cond_a0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 376
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_af

    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 377
    :cond_af
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value()Lcom/badlogic/gdx/utils/UBJsonWriter;

    :goto_b2
    return-object p0

    .line 379
    :cond_b3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unhandled JsonValue type"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_bc

    :goto_bb
    throw p1

    :goto_bc
    goto :goto_bb
.end method

.method public value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 389
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value()Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    .line 390
    :cond_7
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5d

    .line 391
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    .line 392
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(B)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    .line 393
    :cond_1b
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(S)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    .line 394
    :cond_28
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    .line 395
    :cond_35
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    .line 396
    :cond_42
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(F)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    .line 397
    :cond_4f
    instance-of p1, p1, Ljava/lang/Double;

    if-eqz p1, :cond_5c

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    :cond_5c
    return-object p0

    .line 398
    :cond_5d
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_6c

    .line 399
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(C)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    .line 400
    :cond_6c
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_79

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    .line 403
    :cond_79
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unknown object type."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    const-string v0, "UTF-8"

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 179
    array-length v0, p1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_23

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_43

    .line 182
    :cond_23
    array-length v0, p1

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_36

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_43

    .line 186
    :cond_36
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 189
    :goto_43
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    return-object p0
.end method

.method public value(S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-object p0
.end method

.method public value(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    if-eqz p1, :cond_a

    const/16 p1, 0x54

    goto :goto_c

    :cond_a
    const/16 p1, 0x46

    :goto_c
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public value([B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 201
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 202
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2a

    .line 203
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    const/4 p1, 0x1

    .line 205
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 308
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 309
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 310
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2a

    .line 311
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-char v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    const/4 p1, 0x1

    .line 313
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 282
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 283
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2a

    .line 284
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    const/4 p1, 0x1

    .line 286
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 265
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 266
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2a

    .line 267
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    const/4 p1, 0x1

    .line 269
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 233
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 234
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2a

    .line 235
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    const/4 p1, 0x1

    .line 237
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 249
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 250
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2a

    .line 251
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    const/4 p1, 0x1

    .line 253
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 323
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 325
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 326
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_63

    .line 327
    aget-object v2, p1, v1

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 328
    array-length v3, v2

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_3b

    .line 329
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x69

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 330
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_5b

    .line 331
    :cond_3b
    array-length v3, v2

    const/16 v4, 0x7fff

    if-gt v3, v4, :cond_4e

    .line 332
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x49

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 333
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_5b

    .line 335
    :cond_4e
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 336
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 338
    :goto_5b
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_63
    const/4 p1, 0x1

    .line 340
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 217
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 218
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2a

    .line 219
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-short v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    const/4 p1, 0x1

    .line 221
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 294
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    .line 295
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-boolean v3, p1, v1

    if-eqz v3, :cond_10

    const/16 v3, 0x54

    goto :goto_12

    :cond_10
    const/16 v3, 0x46

    :goto_12
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 297
    :cond_18
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method
