.class public final Lcom/badlogic/gdx/utils/PropertiesUtils;
.super Ljava/lang/Object;
.source "PropertiesUtils.java"


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final NONE:I = 0x0

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V
    .registers 12

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_a7

    .line 258
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    const/16 v5, 0x3d

    if-le v3, v5, :cond_24

    const/16 v6, 0x7f

    if-ge v3, v6, :cond_24

    if-ne v3, v4, :cond_1b

    const-string v3, "\\\\"

    goto :goto_1f

    .line 261
    :cond_1b
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    :goto_1f
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_a3

    :cond_24
    const/16 v6, 0x9

    if-eq v3, v6, :cond_9e

    const/16 v6, 0xa

    if-eq v3, v6, :cond_98

    const/16 v6, 0xc

    if-eq v3, v6, :cond_92

    const/16 v6, 0xd

    if-eq v3, v6, :cond_8c

    const/16 v6, 0x20

    if-eq v3, v6, :cond_7d

    const/16 v7, 0x21

    if-eq v3, v7, :cond_75

    const/16 v7, 0x23

    if-eq v3, v7, :cond_75

    const/16 v7, 0x3a

    if-eq v3, v7, :cond_75

    if-eq v3, v5, :cond_75

    if-lt v3, v6, :cond_4f

    const/16 v4, 0x7e

    if-le v3, v4, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v4, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v4, 0x1

    :goto_50
    and-int/2addr v4, p3

    if-eqz v4, :cond_71

    .line 292
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\u"

    .line 293
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v4, 0x0

    .line 294
    :goto_5d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_6d

    const/16 v5, 0x30

    .line 295
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 297
    :cond_6d
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a3

    .line 299
    :cond_71
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a3

    .line 288
    :cond_75
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a3

    :cond_7d
    if-eqz v2, :cond_86

    if-eqz p2, :cond_82

    goto :goto_86

    .line 269
    :cond_82
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a3

    :cond_86
    :goto_86
    const-string v3, "\\ "

    .line 267
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a3

    :cond_8c
    const-string v3, "\\r"

    .line 276
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a3

    :cond_92
    const-string v3, "\\f"

    .line 282
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a3

    :cond_98
    const-string v3, "\\n"

    .line 273
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a3

    :cond_9e
    const-string v3, "\\t"

    .line 279
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_a3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_a7
    return-void
.end method

.method public static load(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Reader;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_172

    if-eqz v1, :cond_16a

    const/16 v2, 0x28

    .line 57
    new-array v2, v2, [C

    .line 61
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v4, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v10, v2

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1b
    const/4 v14, -0x1

    const/4 v15, 0x1

    .line 64
    :goto_1d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v5

    if-ne v5, v8, :cond_5b

    if-ne v11, v4, :cond_30

    if-le v12, v6, :cond_28

    goto :goto_30

    .line 198
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    :goto_30
    if-ne v14, v8, :cond_35

    if-lez v2, :cond_35

    move v14, v2

    :cond_35
    if-ltz v14, :cond_5a

    .line 204
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v10, v9, v2}, Ljava/lang/String;-><init>([CII)V

    .line 205
    invoke-virtual {v1, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-ne v11, v7, :cond_57

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0000"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_57
    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    return-void

    :cond_5b
    int-to-char v5, v5

    .line 70
    array-length v1, v10

    if-ne v2, v1, :cond_68

    .line 71
    array-length v1, v10

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 72
    invoke-static {v10, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v1

    :cond_68
    const/16 v1, 0xa

    if-ne v11, v4, :cond_95

    const/16 v4, 0x10

    .line 76
    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_7d

    shl-int/lit8 v13, v13, 0x4

    add-int/2addr v13, v4

    add-int/lit8 v12, v12, 0x1

    if-ge v12, v6, :cond_7f

    const/4 v4, 0x2

    goto :goto_1d

    :cond_7d
    if-le v12, v6, :cond_8d

    :cond_7f
    add-int/lit8 v4, v2, 0x1

    int-to-char v11, v13

    .line 86
    aput-char v11, v10, v2

    if-eq v5, v1, :cond_8a

    move v2, v4

    const/4 v4, 0x2

    goto/16 :goto_fc

    :cond_8a
    move v2, v4

    const/4 v11, 0x0

    goto :goto_95

    .line 83
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: illegal character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_95
    :goto_95
    const/16 v4, 0xd

    if-ne v11, v7, :cond_d6

    if-eq v5, v1, :cond_d2

    if-eq v5, v4, :cond_ce

    const/16 v11, 0x62

    if-eq v5, v11, :cond_c8

    const/16 v11, 0x66

    if-eq v5, v11, :cond_c5

    const/16 v11, 0x6e

    if-eq v5, v11, :cond_c2

    const/16 v1, 0x72

    if-eq v5, v1, :cond_bf

    const/16 v1, 0x74

    if-eq v5, v1, :cond_bc

    const/16 v1, 0x75

    if-eq v5, v1, :cond_b6

    goto :goto_ca

    :cond_b6
    const/4 v4, 0x2

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_1d

    :cond_bc
    const/16 v5, 0x9

    goto :goto_ca

    :cond_bf
    const/16 v5, 0xd

    goto :goto_ca

    :cond_c2
    const/16 v5, 0xa

    goto :goto_ca

    :cond_c5
    const/16 v5, 0xc

    goto :goto_ca

    :cond_c8
    const/16 v5, 0x8

    :goto_ca
    const/4 v1, 0x5

    :cond_cb
    :goto_cb
    const/4 v11, 0x0

    goto/16 :goto_133

    :cond_ce
    const/4 v4, 0x2

    const/4 v11, 0x3

    goto/16 :goto_1d

    :cond_d2
    const/4 v4, 0x2

    :goto_d3
    const/4 v11, 0x5

    goto/16 :goto_1d

    :cond_d6
    if-eq v5, v1, :cond_144

    if-eq v5, v4, :cond_141

    const/16 v7, 0x21

    if-eq v5, v7, :cond_ff

    const/16 v7, 0x23

    if-eq v5, v7, :cond_ff

    const/16 v1, 0x3a

    if-eq v5, v1, :cond_f7

    const/16 v1, 0x3d

    if-eq v5, v1, :cond_f7

    const/16 v1, 0x5c

    if-eq v5, v1, :cond_ef

    goto :goto_10e

    :cond_ef
    if-ne v11, v6, :cond_f2

    move v14, v2

    :cond_f2
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v11, 0x1

    goto/16 :goto_1d

    :cond_f7
    if-ne v14, v8, :cond_10e

    move v14, v2

    const/4 v4, 0x2

    const/4 v7, 0x1

    :goto_fc
    const/4 v11, 0x0

    goto/16 :goto_1d

    :cond_ff
    if-eqz v15, :cond_10e

    .line 126
    :cond_101
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v5

    if-ne v5, v8, :cond_108

    goto :goto_10d

    :cond_108
    int-to-char v5, v5

    if-eq v5, v4, :cond_128

    if-ne v5, v1, :cond_101

    :goto_10d
    goto :goto_128

    .line 173
    :cond_10e
    :goto_10e
    invoke-static {v5}, Ljava/lang/Character;->isSpace(C)Z

    move-result v1

    if-eqz v1, :cond_12c

    const/4 v1, 0x3

    if-ne v11, v1, :cond_118

    const/4 v11, 0x5

    :cond_118
    if-eqz v2, :cond_127

    if-eq v2, v14, :cond_127

    const/4 v1, 0x5

    if-ne v11, v1, :cond_120

    goto :goto_128

    :cond_120
    if-ne v14, v8, :cond_12d

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v11, 0x4

    goto/16 :goto_1d

    :cond_127
    const/4 v1, 0x5

    :cond_128
    :goto_128
    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_1d

    :cond_12c
    const/4 v1, 0x5

    :cond_12d
    if-eq v11, v1, :cond_cb

    const/4 v4, 0x3

    if-ne v11, v4, :cond_133

    goto :goto_cb

    :cond_133
    :goto_133
    if-ne v11, v6, :cond_137

    move v14, v2

    const/4 v11, 0x0

    :cond_137
    add-int/lit8 v4, v2, 0x1

    .line 195
    aput-char v5, v10, v2

    move v2, v4

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v15, 0x0

    goto/16 :goto_1d

    :cond_141
    const/4 v1, 0x5

    const/4 v4, 0x3

    goto :goto_14b

    :cond_144
    const/4 v1, 0x5

    const/4 v4, 0x3

    if-ne v11, v4, :cond_14b

    const/4 v4, 0x2

    const/4 v7, 0x1

    goto :goto_d3

    :cond_14b
    :goto_14b
    if-gtz v2, :cond_151

    if-nez v2, :cond_164

    if-nez v14, :cond_164

    :cond_151
    if-ne v14, v8, :cond_154

    move v14, v2

    .line 151
    :cond_154
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v10, v9, v2}, Ljava/lang/String;-><init>([CII)V

    .line 152
    invoke-virtual {v5, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_164
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1b

    .line 55
    :cond_16a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Reader cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_172
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ObjectMap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_17b

    :goto_17a
    throw v0

    :goto_17b
    goto :goto_17a
.end method

.method public static store(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 231
    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/PropertiesUtils;->storeImpl(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;Z)V

    return-void
.end method

.method private static storeImpl(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 237
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/PropertiesUtils;->writeComment(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_5
    const-string p2, "#"

    .line 239
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 240
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "\n"

    .line 241
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 244
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 245
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, p3}, Lcom/badlogic/gdx/utils/PropertiesUtils;->dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V

    const/16 v2, 0x3d

    .line 246
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 247
    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p3}, Lcom/badlogic/gdx/utils/PropertiesUtils;->dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V

    .line 248
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto :goto_2a

    .line 252
    :cond_59
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method private static writeComment(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "#"

    .line 307
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    const-string v5, "\n"

    if-ge v3, v1, :cond_79

    .line 312
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/16 v9, 0xff

    if-gt v6, v9, :cond_20

    if-eq v6, v8, :cond_20

    if-ne v6, v7, :cond_76

    :cond_20
    if-eq v4, v3, :cond_29

    .line 314
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_29
    if-le v6, v9, :cond_49

    .line 316
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\u"

    .line 317
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 318
    :goto_35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_45

    const/16 v6, 0x30

    .line 319
    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 321
    :cond_45
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_74

    .line 323
    :cond_49
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-ne v6, v7, :cond_5b

    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_5b

    add-int/lit8 v4, v3, 0x1

    .line 324
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_5b

    move v3, v4

    :cond_5b
    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_71

    add-int/lit8 v4, v3, 0x1

    .line 327
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_74

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x21

    if-eq v4, v5, :cond_74

    .line 328
    :cond_71
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_74
    :goto_74
    add-int/lit8 v4, v3, 0x1

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_79
    if-eq v4, v3, :cond_82

    .line 334
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 335
    :cond_82
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
