.class public Lcom/badlogic/gdx/utils/SerializationException;
.super Ljava/lang/RuntimeException;
.source "SerializationException.java"


# instance fields
.field private trace:Lcom/badlogic/gdx/utils/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, ""

    .line 37
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private causedBy(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .registers 4

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    if-ne v0, p1, :cond_9

    goto :goto_1a

    .line 48
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    return p1

    .line 49
    :cond_15
    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/utils/SerializationException;->causedBy(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addTrace(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Lcom/badlogic/gdx/utils/StringBuilder;

    if-nez v0, :cond_f

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Lcom/badlogic/gdx/utils/StringBuilder;

    .line 67
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-void

    .line 65
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "info cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public causedBy(Ljava/lang/Class;)Z
    .registers 2

    .line 42
    invoke-direct {p0, p0, p1}, Lcom/badlogic/gdx/utils/SerializationException;->causedBy(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Lcom/badlogic/gdx/utils/StringBuilder;

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_9
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 55
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 56
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_22

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_22
    const-string v1, "Serialization trace:"

    .line 57
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 58
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 59
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
