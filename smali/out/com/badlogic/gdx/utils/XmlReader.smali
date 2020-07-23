.class public Lcom/badlogic/gdx/utils/XmlReader;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/XmlReader$Element;
    }
.end annotation


# static fields
.field private static final _xml_actions:[B

.field private static final _xml_index_offsets:[S

.field private static final _xml_indicies:[B

.field private static final _xml_key_offsets:[B

.field private static final _xml_range_lengths:[B

.field private static final _xml_single_lengths:[B

.field private static final _xml_trans_actions:[B

.field private static final _xml_trans_keys:[C

.field private static final _xml_trans_targs:[B

.field static final xml_en_elementBody:I = 0xf

.field static final xml_en_main:I = 0x1

.field static final xml_error:I = 0x0

.field static final xml_first_final:I = 0x22

.field static final xml_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 346
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    .line 353
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_key_offsets_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    .line 362
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    .line 369
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    .line 376
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    .line 383
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    .line 393
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    .line 401
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    .line 408
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method private static init__xml_actions_0()[B
    .registers 1

    const/16 v0, 0x1a

    .line 343
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
        0x5t
        0x1t
        0x6t
        0x1t
        0x7t
        0x2t
        0x0t
        0x6t
        0x2t
        0x1t
        0x4t
        0x2t
        0x2t
        0x4t
    .end array-data
.end method

.method private static init__xml_index_offsets_0()[S
    .registers 1

    const/16 v0, 0x24

    .line 379
    new-array v0, v0, [S

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0x0s
        0x0s
        0x4s
        0x9s
        0xes
        0x14s
        0x1as
        0x1es
        0x23s
        0x25s
        0x27s
        0x2cs
        0x30s
        0x34s
        0x36s
        0x38s
        0x3cs
        0x3es
        0x43s
        0x48s
        0x4es
        0x54s
        0x58s
        0x5ds
        0x5fs
        0x61s
        0x66s
        0x6as
        0x6es
        0x70s
        0x74s
        0x76s
        0x78s
        0x7as
        0x7cs
        0x7fs
    .end array-data
.end method

.method private static init__xml_indicies_0()[B
    .registers 1

    const/16 v0, 0x81

    .line 386
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x3t
        0x5t
        0x6t
        0x7t
        0x5t
        0x4t
        0x9t
        0xat
        0x1t
        0xbt
        0x9t
        0x8t
        0xdt
        0x1t
        0xet
        0x1t
        0xdt
        0xct
        0xft
        0x10t
        0xft
        0x1t
        0x10t
        0x11t
        0x12t
        0x10t
        0x1t
        0x14t
        0x13t
        0x16t
        0x15t
        0x9t
        0xat
        0xbt
        0x9t
        0x1t
        0x17t
        0x18t
        0x17t
        0x1t
        0x19t
        0xbt
        0x19t
        0x1t
        0x14t
        0x1at
        0x16t
        0x1bt
        0x1dt
        0x1et
        0x1dt
        0x1ct
        0x20t
        0x1ft
        0x1et
        0x22t
        0x1t
        0x1et
        0x21t
        0x24t
        0x25t
        0x26t
        0x24t
        0x23t
        0x28t
        0x29t
        0x1t
        0x2at
        0x28t
        0x27t
        0x2ct
        0x1t
        0x2dt
        0x1t
        0x2ct
        0x2bt
        0x2et
        0x2ft
        0x2et
        0x1t
        0x2ft
        0x30t
        0x31t
        0x2ft
        0x1t
        0x33t
        0x32t
        0x35t
        0x34t
        0x28t
        0x29t
        0x2at
        0x28t
        0x1t
        0x36t
        0x37t
        0x36t
        0x1t
        0x38t
        0x2at
        0x38t
        0x1t
        0x39t
        0x1t
        0x39t
        0x22t
        0x39t
        0x1t
        0x1t
        0x3at
        0x3bt
        0x3at
        0x33t
        0x3ct
        0x35t
        0x3dt
        0x3et
        0x3et
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_key_offsets_0()[B
    .registers 1

    const/16 v0, 0x24

    .line 349
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x4t
        0x9t
        0xet
        0x14t
        0x1at
        0x1et
        0x23t
        0x24t
        0x25t
        0x2at
        0x2et
        0x32t
        0x33t
        0x34t
        0x38t
        0x39t
        0x3et
        0x43t
        0x49t
        0x4ft
        0x53t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x63t
        0x67t
        0x68t
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x73t
    .end array-data
.end method

.method private static init__xml_range_lengths_0()[B
    .registers 1

    const/16 v0, 0x24

    .line 372
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_single_lengths_0()[B
    .registers 1

    const/16 v0, 0x24

    .line 365
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_trans_actions_0()[B
    .registers 1

    const/16 v0, 0x3f

    .line 404
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x3t
        0x3t
        0x14t
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x11t
        0x0t
        0xdt
        0x5t
        0x17t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xft
        0x1t
        0x0t
        0x0t
        0x3t
        0x3t
        0x14t
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x11t
        0x0t
        0xdt
        0x5t
        0x17t
        0x0t
        0x0t
        0x0t
        0x7t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__xml_trans_keys_0()[C
    .registers 1

    const/16 v0, 0x74

    .line 356
    new-array v0, v0, [C

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0x20s
        0x3cs
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x3ds
        0x9s
        0xds
        0x20s
        0x22s
        0x27s
        0x9s
        0xds
        0x22s
        0x22s
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x27s
        0x27s
        0x20s
        0x3cs
        0x9s
        0xds
        0x3cs
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x3ds
        0x9s
        0xds
        0x20s
        0x22s
        0x27s
        0x9s
        0xds
        0x22s
        0x22s
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x3cs
        0x20s
        0x2fs
        0x9s
        0xds
        0x3es
        0x3es
        0x27s
        0x27s
        0x20s
        0x9s
        0xds
        0x0s
    .end array-data
.end method

.method private static init__xml_trans_targs_0()[B
    .registers 1

    const/16 v0, 0x3f

    .line 396
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0xbt
        0x22t
        0x5t
        0x4t
        0xbt
        0x22t
        0x5t
        0x6t
        0x7t
        0x6t
        0x7t
        0x8t
        0xdt
        0x9t
        0xat
        0x9t
        0xat
        0xct
        0x22t
        0xct
        0xet
        0xet
        0x10t
        0xft
        0x11t
        0x10t
        0x11t
        0x12t
        0x1et
        0x12t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x15t
        0x16t
        0x15t
        0x16t
        0x17t
        0x20t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1bt
        0x1ct
        0x1bt
        0x1dt
        0x1ft
        0x23t
        0x21t
        0x21t
        0x22t
    .end array-data
.end method


# virtual methods
.method protected attribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 428
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected close()V
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-void
.end method

.method protected entity(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "lt"

    .line 432
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "<"

    return-object p1

    :cond_b
    const-string v0, "gt"

    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, ">"

    return-object p1

    :cond_16
    const-string v0, "amp"

    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p1, "&"

    return-object p1

    :cond_21
    const-string v0, "apos"

    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p1, "\'"

    return-object p1

    :cond_2c
    const-string v0, "quot"

    .line 436
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p1, "\""

    return-object p1

    :cond_37
    const-string v0, "#x"

    .line 437
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_50
    const/4 p1, 0x0

    return-object p1
.end method

.method protected open(Ljava/lang/String;)V
    .registers 4

    .line 420
    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 421
    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz p1, :cond_e

    .line 422
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->addChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 423
    :cond_e
    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 424
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .registers 6

    :try_start_0
    const-string v0, "UTF-8"

    .line 81
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception v0

    .line 83
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .registers 4

    .line 71
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_11
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 75
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_f
    move-exception v0

    goto :goto_18

    :catch_11
    move-exception v0

    .line 73
    :try_start_12
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 75
    :goto_18
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .registers 7

    const/16 v0, 0x400

    .line 49
    :try_start_2
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 52
    :goto_6
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 61
    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_28
    .catchall {:try_start_2 .. :try_end_13} :catchall_26

    .line 65
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_17
    if-nez v3, :cond_24

    .line 55
    :try_start_19
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 56
    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_28
    .catchall {:try_start_19 .. :try_end_22} :catchall_26

    move-object v0, v3

    goto :goto_6

    :cond_24
    add-int/2addr v2, v3

    goto :goto_6

    :catchall_26
    move-exception v0

    goto :goto_2f

    :catch_28
    move-exception v0

    .line 63
    :try_start_29
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    .line 65
    :goto_2f
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_34

    :goto_33
    throw v0

    :goto_34
    goto :goto_33
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .registers 4

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1

    return-object p1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v7, 0x2

    const/4 v8, 0x1

    move/from16 v10, p2

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_e
    const/4 v14, 0x0

    :goto_f
    const/16 v15, 0xa

    if-eqz v9, :cond_23

    if-eq v9, v8, :cond_2b

    if-eq v9, v7, :cond_1c

    const/4 v6, 0x0

    const/16 v18, 0x1

    goto/16 :goto_253

    :cond_1c
    move v4, v11

    :cond_1d
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/16 v18, 0x1

    goto/16 :goto_241

    :cond_23
    if-ne v10, v2, :cond_27

    const/4 v9, 0x4

    goto :goto_f

    :cond_27
    if-nez v11, :cond_2b

    goto/16 :goto_246

    .line 123
    :cond_2b
    sget-object v9, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    aget-byte v9, v9, v11

    .line 124
    sget-object v16, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    aget-short v16, v16, v11

    .line 125
    sget-object v17, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    aget-byte v17, v17, v11

    if-lez v17, :cond_64

    add-int v18, v9, v17

    add-int/lit8 v19, v18, -0x1

    move v3, v9

    move/from16 v5, v19

    :goto_40
    if-ge v5, v3, :cond_45

    add-int v16, v16, v17

    goto :goto_66

    :cond_45
    sub-int v20, v5, v3

    shr-int/lit8 v20, v20, 0x1

    add-int v20, v3, v20

    .line 134
    aget-char v6, v1, v10

    sget-object v21, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v4, v21, v20

    if-ge v6, v4, :cond_56

    add-int/lit8 v5, v20, -0x1

    goto :goto_40

    .line 136
    :cond_56
    aget-char v3, v1, v10

    aget-char v4, v21, v20

    if-le v3, v4, :cond_5f

    add-int/lit8 v3, v20, 0x1

    goto :goto_40

    :cond_5f
    sub-int v20, v20, v9

    add-int v16, v16, v20

    goto :goto_9a

    :cond_64
    move/from16 v18, v9

    .line 147
    :goto_66
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    aget-byte v3, v3, v11

    if-lez v3, :cond_9a

    shl-int/lit8 v4, v3, 0x1

    add-int v4, v18, v4

    sub-int/2addr v4, v7

    move/from16 v5, v18

    :goto_73
    if-ge v4, v5, :cond_78

    :goto_75
    add-int v16, v16, v3

    goto :goto_9a

    :cond_78
    sub-int v6, v4, v5

    shr-int/2addr v6, v8

    and-int/lit8 v6, v6, -0x2

    add-int/2addr v6, v5

    .line 156
    aget-char v9, v1, v10

    sget-object v11, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v7, v11, v6

    if-ge v9, v7, :cond_8a

    add-int/lit8 v4, v6, -0x2

    :goto_88
    const/4 v7, 0x2

    goto :goto_73

    .line 158
    :cond_8a
    aget-char v5, v1, v10

    add-int/lit8 v7, v6, 0x1

    aget-char v7, v11, v7

    if-le v5, v7, :cond_95

    add-int/lit8 v5, v6, 0x2

    goto :goto_88

    :cond_95
    sub-int v6, v6, v18

    shr-int/lit8 v3, v6, 0x1

    goto :goto_75

    .line 169
    :cond_9a
    :goto_9a
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    aget-byte v3, v3, v16

    .line 170
    sget-object v4, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    aget-byte v4, v4, v3

    .line 172
    sget-object v5, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    aget-byte v6, v5, v3

    if-eqz v6, :cond_1d

    .line 173
    aget-byte v3, v5, v3

    .line 174
    sget-object v5, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    :goto_b0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1d

    .line 176
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    packed-switch v3, :pswitch_data_2c4

    const/4 v6, 0x0

    const/4 v11, 0x2

    const/16 v18, 0x1

    goto/16 :goto_23a

    :pswitch_c3
    move v3, v10

    :goto_c4
    if-eq v3, v13, :cond_dc

    add-int/lit8 v6, v3, -0x1

    .line 268
    aget-char v6, v1, v6

    const/16 v9, 0x9

    if-eq v6, v9, :cond_d9

    if-eq v6, v15, :cond_d9

    const/16 v9, 0xd

    if-eq v6, v9, :cond_d9

    const/16 v9, 0x20

    if-eq v6, v9, :cond_d9

    goto :goto_dc

    :cond_d9
    add-int/lit8 v3, v3, -0x1

    goto :goto_c4

    :cond_dc
    :goto_dc
    move v9, v13

    const/4 v6, 0x0

    :goto_de
    if-eq v13, v3, :cond_122

    add-int/lit8 v11, v13, 0x1

    .line 281
    aget-char v13, v1, v13

    const/16 v15, 0x26

    if-eq v13, v15, :cond_ec

    move v13, v11

    :goto_e9
    const/16 v15, 0xa

    goto :goto_de

    :cond_ec
    move v13, v11

    :goto_ed
    if-eq v13, v3, :cond_11e

    add-int/lit8 v15, v13, 0x1

    .line 284
    aget-char v13, v1, v13

    const/16 v8, 0x3b

    if-eq v13, v8, :cond_fa

    move v13, v15

    const/4 v8, 0x1

    goto :goto_ed

    .line 285
    :cond_fa
    iget-object v6, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-int v8, v11, v9

    const/16 v18, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v1, v9, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append([CII)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 286
    new-instance v6, Ljava/lang/String;

    sub-int v8, v15, v11

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v6, v1, v11, v8}, Ljava/lang/String;-><init>([CII)V

    .line 287
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/XmlReader;->entity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 288
    iget-object v9, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v8, :cond_117

    move-object v6, v8

    :cond_117
    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v9, v15

    move v13, v9

    const/4 v6, 0x1

    goto :goto_120

    :cond_11e
    const/16 v18, 0x1

    :goto_120
    const/4 v8, 0x1

    goto :goto_e9

    :cond_122
    const/16 v18, 0x1

    if-eqz v6, :cond_13e

    if-ge v9, v3, :cond_12e

    .line 295
    iget-object v6, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-int/2addr v3, v9

    invoke-virtual {v6, v1, v9, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append([CII)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 296
    :cond_12e
    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    .line 297
    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto :goto_148

    :cond_13e
    const/4 v6, 0x0

    .line 299
    new-instance v8, Ljava/lang/String;

    sub-int/2addr v3, v9

    invoke-direct {v8, v1, v9, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    :goto_148
    move v13, v9

    goto :goto_162

    :pswitch_14a
    const/4 v6, 0x0

    const/16 v18, 0x1

    .line 260
    new-instance v3, Ljava/lang/String;

    sub-int v8, v10, v13

    invoke-direct {v3, v1, v13, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v12, v3}, Lcom/badlogic/gdx/utils/XmlReader;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_162

    :pswitch_158
    const/4 v6, 0x0

    const/16 v18, 0x1

    .line 254
    new-instance v12, Ljava/lang/String;

    sub-int v3, v10, v13

    invoke-direct {v12, v1, v13, v3}, Ljava/lang/String;-><init>([CII)V

    :cond_162
    :goto_162
    const/4 v11, 0x2

    goto/16 :goto_23a

    :pswitch_165
    const/4 v6, 0x0

    const/16 v18, 0x1

    if-eqz v14, :cond_162

    goto :goto_171

    :pswitch_16b
    const/4 v6, 0x0

    const/16 v18, 0x1

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    :cond_171
    :goto_171
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v11, 0xf

    goto/16 :goto_f

    :pswitch_178
    const/4 v6, 0x0

    const/16 v18, 0x1

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v11, 0xf

    goto/16 :goto_e

    :pswitch_185
    const/4 v6, 0x0

    const/16 v18, 0x1

    .line 186
    aget-char v3, v1, v13

    const/16 v8, 0x3f

    const/16 v9, 0x21

    if-eq v3, v8, :cond_1a1

    if-ne v3, v9, :cond_193

    goto :goto_1a1

    .line 215
    :cond_193
    new-instance v3, Ljava/lang/String;

    sub-int v8, v10, v13

    invoke-direct {v3, v1, v13, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->open(Ljava/lang/String;)V

    const/4 v11, 0x2

    const/4 v14, 0x1

    goto/16 :goto_23a

    :cond_1a1
    :goto_1a1
    add-int/lit8 v4, v13, 0x1

    .line 188
    aget-char v5, v1, v4

    const/16 v7, 0x5b

    const/16 v8, 0x3e

    if-ne v5, v7, :cond_206

    add-int/lit8 v5, v13, 0x2

    aget-char v5, v1, v5

    const/16 v11, 0x43

    if-ne v5, v11, :cond_206

    add-int/lit8 v5, v13, 0x3

    aget-char v5, v1, v5

    const/16 v11, 0x44

    if-ne v5, v11, :cond_206

    add-int/lit8 v5, v13, 0x4

    aget-char v5, v1, v5

    const/16 v11, 0x41

    if-ne v5, v11, :cond_206

    add-int/lit8 v5, v13, 0x5

    aget-char v5, v1, v5

    const/16 v11, 0x54

    if-ne v5, v11, :cond_206

    add-int/lit8 v5, v13, 0x6

    aget-char v5, v1, v5

    const/16 v11, 0x41

    if-ne v5, v11, :cond_206

    add-int/lit8 v5, v13, 0x7

    aget-char v5, v1, v5

    if-ne v5, v7, :cond_206

    add-int/lit8 v5, v13, 0x8

    add-int/lit8 v3, v5, 0x2

    :goto_1dd
    add-int/lit8 v4, v3, -0x2

    .line 197
    aget-char v4, v1, v4

    const/16 v7, 0x5d

    if-ne v4, v7, :cond_202

    add-int/lit8 v4, v3, -0x1

    aget-char v4, v1, v4

    const/16 v7, 0x5d

    if-ne v4, v7, :cond_202

    aget-char v4, v1, v3

    if-eq v4, v8, :cond_1f2

    goto :goto_202

    .line 199
    :cond_1f2
    new-instance v4, Ljava/lang/String;

    sub-int v7, v3, v5

    const/4 v11, 0x2

    sub-int/2addr v7, v11

    invoke-direct {v4, v1, v5, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    move v10, v3

    move v13, v5

    goto/16 :goto_171

    :cond_202
    :goto_202
    const/4 v11, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1dd

    :cond_206
    const/4 v11, 0x2

    if-ne v3, v9, :cond_22e

    .line 200
    aget-char v3, v1, v4

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_22e

    add-int/lit8 v3, v13, 0x2

    aget-char v3, v1, v3

    if-ne v3, v4, :cond_22e

    add-int/lit8 v3, v13, 0x3

    .line 202
    :goto_217
    aget-char v5, v1, v3

    if-ne v5, v4, :cond_22b

    add-int/lit8 v5, v3, 0x1

    aget-char v5, v1, v5

    if-ne v5, v4, :cond_22b

    add-int/lit8 v5, v3, 0x2

    aget-char v7, v1, v5

    if-eq v7, v8, :cond_228

    goto :goto_22b

    :cond_228
    move v10, v5

    goto/16 :goto_171

    :cond_22b
    :goto_22b
    add-int/lit8 v3, v3, 0x1

    goto :goto_217

    .line 206
    :cond_22e
    :goto_22e
    aget-char v3, v1, v10

    if-eq v3, v8, :cond_171

    add-int/lit8 v10, v10, 0x1

    goto :goto_22e

    :pswitch_235
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/16 v18, 0x1

    move v13, v10

    :goto_23a
    move v3, v5

    move v6, v7

    const/4 v8, 0x1

    const/16 v15, 0xa

    goto/16 :goto_b0

    :goto_241
    if-nez v4, :cond_249

    move v11, v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    :goto_246
    const/4 v9, 0x5

    goto/16 :goto_f

    :cond_249
    add-int/lit8 v10, v10, 0x1

    if-eq v10, v2, :cond_253

    move v11, v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto/16 :goto_f

    :cond_253
    :goto_253
    if-ge v10, v2, :cond_28e

    const/4 v3, 0x1

    :goto_256
    if-ge v6, v10, :cond_263

    .line 328
    aget-char v4, v1, v6

    const/16 v5, 0xa

    if-ne v4, v5, :cond_260

    add-int/lit8 v3, v3, 0x1

    :cond_260
    add-int/lit8 v6, v6, 0x1

    goto :goto_256

    .line 329
    :cond_263
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing XML on line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " near: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v10

    const/16 v6, 0x20

    .line 330
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v3, v1, v10, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 331
    :cond_28e
    iget-object v1, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_29a

    .line 336
    iget-object v1, v0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const/4 v2, 0x0

    .line 337
    iput-object v2, v0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-object v1

    .line 332
    :cond_29a
    iget-object v1, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 333
    iget-object v2, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 334
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing XML, unclosed element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_2c3

    :goto_2c2
    throw v2

    :goto_2c3
    goto :goto_2c2

    :pswitch_data_2c4
    .packed-switch 0x0
        :pswitch_235
        :pswitch_185
        :pswitch_178
        :pswitch_16b
        :pswitch_165
        :pswitch_158
        :pswitch_14a
        :pswitch_c3
    .end packed-switch
.end method

.method protected text(Ljava/lang/String;)V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz v0, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setText(Ljava/lang/String;)V

    return-void
.end method
