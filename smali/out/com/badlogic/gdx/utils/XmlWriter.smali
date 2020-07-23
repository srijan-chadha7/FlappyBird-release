.class public Lcom/badlogic/gdx/utils/XmlWriter;
.super Ljava/io/Writer;
.source "XmlWriter.java"


# instance fields
.field private currentElement:Ljava/lang/String;

.field public indent:I

.field private indentNextClose:Z

.field private final stack:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    .line 51
    iput-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    return-void
.end method

.method private indent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    .line 56
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    .line 58
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method

.method private startElementContent()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 76
    :cond_6
    iget v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    .line 77
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    if-nez p2, :cond_1e

    const-string p2, "null"

    goto :goto_22

    :cond_1e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_22
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    return-object p0

    .line 84
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_a

    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    goto :goto_0

    .line 125
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->startElementContent()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 63
    :cond_d
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->indent()V

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/XmlWriter;->element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/XmlWriter;->text(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object p1

    return-object p1
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public pop()Lcom/badlogic/gdx/utils/XmlWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const-string v2, "/>\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    goto :goto_3c

    .line 111
    :cond_10
    iget v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indentNextClose:Z

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->indent()V

    .line 113
    :cond_21
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const-string v2, ">\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    :goto_3c
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indentNextClose:Z

    return-object p0
.end method

.method public text(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->startElementContent()Z

    if-nez p1, :cond_8

    const-string p1, "null"

    goto :goto_c

    .line 95
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indentNextClose:Z

    .line 97
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indentNextClose:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_27

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 99
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->indent()V

    .line 101
    :cond_27
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 102
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indentNextClose:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_35
    return-object p0
.end method

.method public write([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->startElementContent()Z

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
