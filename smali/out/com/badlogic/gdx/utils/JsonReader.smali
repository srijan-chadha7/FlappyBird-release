.class public Lcom/badlogic/gdx/utils/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/BaseJsonReader;


# static fields
.field private static final _json_actions:[B

.field private static final _json_eof_actions:[B

.field private static final _json_index_offsets:[S

.field private static final _json_indicies:[B

.field private static final _json_key_offsets:[S

.field private static final _json_range_lengths:[B

.field private static final _json_single_lengths:[B

.field private static final _json_trans_actions:[B

.field private static final _json_trans_keys:[C

.field private static final _json_trans_targs:[B

.field static final json_en_array:I = 0x17

.field static final json_en_main:I = 0x1

.field static final json_en_object:I = 0x5

.field static final json_error:I = 0x0

.field static final json_first_final:I = 0x23

.field static final json_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/JsonValue;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private final lastChild:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/JsonValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 569
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    .line 576
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_key_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    .line 588
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    .line 595
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    .line 602
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    .line 609
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    .line 621
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    .line 629
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    .line 637
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    .line 644
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_eof_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    .line 657
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 3

    .line 662
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/JsonValue;->setName(Ljava/lang/String;)V

    .line 663
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez p1, :cond_c

    .line 664
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 665
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_46

    .line 666
    :cond_c
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result p1

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_20

    .line 678
    :cond_1b
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_46

    .line 667
    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p1, p2, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 668
    iget p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez p1, :cond_2d

    .line 669
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_39

    .line 671
    :cond_2d
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/JsonValue;

    .line 672
    iput-object p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 673
    iput-object p1, p2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 675
    :goto_39
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 676
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    :goto_46
    return-void
.end method

.method private static init__json_actions_0()[B
    .registers 1

    const/16 v0, 0x1d

    .line 566
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
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
        0x1t
        0x8t
        0x2t
        0x0t
        0x7t
        0x2t
        0x0t
        0x8t
        0x2t
        0x1t
        0x3t
        0x2t
        0x1t
        0x5t
    .end array-data
.end method

.method private static init__json_eof_actions_0()[B
    .registers 1

    const/16 v0, 0x27

    .line 640
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_index_offsets_0()[S
    .registers 1

    const/16 v0, 0x27

    .line 605
    new-array v0, v0, [S

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xes
        0x10s
        0x13s
        0x1cs
        0x22s
        0x28s
        0x2bs
        0x36s
        0x3es
        0x46s
        0x4fs
        0x51s
        0x5as
        0x5ds
        0x60s
        0x69s
        0x6cs
        0x6fs
        0x71s
        0x74s
        0x77s
        0x82s
        0x8as
        0x92s
        0x9ds
        0x9fs
        0xaas
        0xads
        0xb0s
        0xbbs
        0xbes
        0xc1s
        0xc4s
        0xc9s
        0xces
        0xcfs
    .end array-data
.end method

.method private static init__json_indicies_0()[B
    .registers 1

    const/16 v0, 0xd1

    .line 612
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x4t
        0x3t
        0x5t
        0x3t
        0x6t
        0x1t
        0x0t
        0x7t
        0x7t
        0x3t
        0x8t
        0x3t
        0x9t
        0x9t
        0x3t
        0xbt
        0xbt
        0xct
        0xdt
        0xet
        0x3t
        0xft
        0xbt
        0xat
        0x10t
        0x10t
        0x11t
        0x12t
        0x10t
        0x3t
        0x13t
        0x13t
        0x14t
        0x15t
        0x13t
        0x3t
        0x16t
        0x16t
        0x3t
        0x15t
        0x15t
        0x18t
        0x3t
        0x19t
        0x3t
        0x1at
        0x3t
        0x1bt
        0x15t
        0x17t
        0x1ct
        0x1dt
        0x1dt
        0x1ct
        0x1et
        0x1ft
        0x20t
        0x3t
        0x21t
        0x22t
        0x22t
        0x21t
        0xdt
        0x23t
        0xft
        0x3t
        0x22t
        0x22t
        0xct
        0x24t
        0x25t
        0x3t
        0xft
        0x22t
        0xat
        0x10t
        0x3t
        0x24t
        0x24t
        0xct
        0x3t
        0x26t
        0x3t
        0x3t
        0x24t
        0xat
        0x27t
        0x27t
        0x3t
        0x28t
        0x28t
        0x3t
        0xdt
        0xdt
        0xct
        0x3t
        0x29t
        0x3t
        0xft
        0xdt
        0xat
        0x2at
        0x2at
        0x3t
        0x2bt
        0x2bt
        0x3t
        0x1ct
        0x3t
        0x2ct
        0x2ct
        0x3t
        0x2dt
        0x2dt
        0x3t
        0x2ft
        0x2ft
        0x30t
        0x31t
        0x32t
        0x3t
        0x33t
        0x34t
        0x35t
        0x2ft
        0x2et
        0x36t
        0x37t
        0x37t
        0x36t
        0x38t
        0x39t
        0x3at
        0x3t
        0x3bt
        0x3ct
        0x3ct
        0x3bt
        0x31t
        0x3dt
        0x34t
        0x3t
        0x3ct
        0x3ct
        0x30t
        0x3et
        0x3ft
        0x3t
        0x33t
        0x34t
        0x35t
        0x3ct
        0x2et
        0x36t
        0x3t
        0x3et
        0x3et
        0x30t
        0x3t
        0x40t
        0x3t
        0x33t
        0x3t
        0x35t
        0x3et
        0x2et
        0x41t
        0x41t
        0x3t
        0x42t
        0x42t
        0x3t
        0x31t
        0x31t
        0x30t
        0x3t
        0x43t
        0x3t
        0x33t
        0x34t
        0x35t
        0x31t
        0x2et
        0x44t
        0x44t
        0x3t
        0x45t
        0x45t
        0x3t
        0x46t
        0x46t
        0x3t
        0x8t
        0x8t
        0x47t
        0x8t
        0x3t
        0x48t
        0x48t
        0x49t
        0x48t
        0x3t
        0x3t
        0x3t
        0x0t
    .end array-data
.end method

.method private static init__json_key_offsets_0()[S
    .registers 1

    const/16 v0, 0x27

    .line 572
    new-array v0, v0, [S

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xds
        0xes
        0x10s
        0x19s
        0x1fs
        0x25s
        0x27s
        0x32s
        0x39s
        0x40s
        0x49s
        0x4as
        0x53s
        0x55s
        0x57s
        0x60s
        0x62s
        0x64s
        0x65s
        0x67s
        0x69s
        0x74s
        0x7bs
        0x82s
        0x8ds
        0x8es
        0x99s
        0x9bs
        0x9ds
        0xa8s
        0xaas
        0xacs
        0xaes
        0xb3s
        0xb8s
        0xb8s
    .end array-data
.end method

.method private static init__json_range_lengths_0()[B
    .registers 1

    const/16 v0, 0x27

    .line 598
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_single_lengths_0()[B
    .registers 1

    const/16 v0, 0x27

    .line 591
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x9t
        0x2t
        0x1t
        0x2t
        0x7t
        0x4t
        0x4t
        0x2t
        0x9t
        0x7t
        0x7t
        0x7t
        0x1t
        0x7t
        0x2t
        0x2t
        0x7t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x9t
        0x7t
        0x7t
        0x9t
        0x1t
        0x9t
        0x2t
        0x2t
        0x9t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_actions_0()[B
    .registers 1

    const/16 v0, 0x4a

    .line 632
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x3t
        0xbt
        0x1t
        0xbt
        0x11t
        0x0t
        0x14t
        0x0t
        0x0t
        0x5t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        0xdt
        0xft
        0x0t
        0x7t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x17t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0xbt
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x9t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_keys_0()[C
    .registers 1

    const/16 v0, 0xb9

    .line 579
    new-array v0, v0, [C

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0x0s
    .end array-data
.end method

.method private static init__json_trans_targs_0()[B
    .registers 1

    const/16 v0, 0x4a

    .line 624
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x23t
        0x1t
        0x3t
        0x0t
        0x4t
        0x24t
        0x24t
        0x24t
        0x24t
        0x1t
        0x6t
        0x5t
        0xdt
        0x11t
        0x16t
        0x25t
        0x7t
        0x8t
        0x9t
        0x7t
        0x8t
        0x9t
        0x7t
        0xat
        0x14t
        0x15t
        0xbt
        0xbt
        0xbt
        0xct
        0x11t
        0x13t
        0x25t
        0xbt
        0xct
        0x13t
        0xet
        0x10t
        0xft
        0xet
        0xct
        0x12t
        0x11t
        0xbt
        0x9t
        0x5t
        0x18t
        0x17t
        0x1bt
        0x1ft
        0x22t
        0x19t
        0x26t
        0x19t
        0x19t
        0x1at
        0x1ft
        0x21t
        0x26t
        0x19t
        0x1at
        0x21t
        0x1ct
        0x1et
        0x1dt
        0x1ct
        0x1at
        0x20t
        0x1ft
        0x19t
        0x17t
        0x2t
        0x24t
        0x2t
    .end array-data
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 720
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 721
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_85

    add-int/lit8 v3, v2, 0x1

    .line 723
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_1d

    .line 725
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_1b
    move v2, v3

    goto :goto_c

    :cond_1d
    if-ne v3, v0, :cond_20

    goto :goto_85

    :cond_20
    add-int/lit8 v2, v3, 0x1

    .line 729
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-ne v3, v5, :cond_3e

    add-int/lit8 v3, v2, 0x4

    .line 731
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1b

    :cond_3e
    const/16 v5, 0x22

    if-eq v3, v5, :cond_81

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_81

    if-eq v3, v4, :cond_81

    const/16 v4, 0x62

    if-eq v3, v4, :cond_7f

    const/16 v4, 0x66

    if-eq v3, v4, :cond_7c

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_79

    const/16 v4, 0x72

    if-eq v3, v4, :cond_76

    const/16 v4, 0x74

    if-ne v3, v4, :cond_5f

    const/16 v3, 0x9

    goto :goto_81

    .line 756
    :cond_5f
    new-instance p1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal escaped character: \\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_76
    const/16 v3, 0xd

    goto :goto_81

    :cond_79
    const/16 v3, 0xa

    goto :goto_81

    :cond_7c
    const/16 v3, 0xc

    goto :goto_81

    :cond_7f
    const/16 v3, 0x8

    .line 758
    :cond_81
    :goto_81
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_c

    .line 760
    :cond_85
    :goto_85
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected bool(Ljava/lang/String;Z)V
    .registers 4

    .line 716
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method protected number(Ljava/lang/String;DLjava/lang/String;)V
    .registers 6

    .line 708
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(DLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method protected number(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    .line 712
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(JLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 6

    :try_start_0
    const-string v0, "UTF-8"

    .line 76
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception v0

    .line 78
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

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 4

    .line 66
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_11
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 70
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_f
    move-exception v0

    goto :goto_18

    :catch_11
    move-exception v0

    .line 68
    :try_start_12
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 70
    :goto_18
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 7

    const/16 v0, 0x400

    .line 44
    :try_start_2
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 47
    :goto_6
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 56
    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_28
    .catchall {:try_start_2 .. :try_end_13} :catchall_26

    .line 60
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_17
    if-nez v3, :cond_24

    .line 50
    :try_start_19
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 51
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

    .line 58
    :try_start_29
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    .line 60
    :goto_2f
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_34

    :goto_33
    throw v0

    :goto_34
    goto :goto_33
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 4

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    return-object p1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v0, 0x4

    .line 84
    new-array v4, v0, [I

    .line 87
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    move/from16 v10, p2

    move-object v8, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1a
    const-string v0, "null"

    const-string v7, "false"

    const-string v9, "true"

    move/from16 p2, v12

    if-eqz v4, :cond_3d

    const/4 v12, 0x1

    if-eq v4, v12, :cond_3b

    const/4 v12, 0x2

    if-eq v4, v12, :cond_33

    const/4 v12, 0x4

    if-eq v4, v12, :cond_2f

    goto/16 :goto_444

    :cond_2f
    move/from16 v12, p2

    goto/16 :goto_371

    :cond_33
    move/from16 v12, p2

    move/from16 v17, v6

    move-object/from16 v23, v8

    goto/16 :goto_35b

    :cond_3b
    const/4 v12, 0x4

    goto :goto_4b

    :cond_3d
    const/4 v12, 0x4

    if-ne v10, v3, :cond_45

    move/from16 v12, p2

    const/4 v0, 0x4

    const/4 v4, 0x4

    goto :goto_1a

    :cond_45
    if-nez v11, :cond_4b

    move/from16 v12, p2

    goto/16 :goto_361

    .line 126
    :cond_4b
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    aget-short v4, v4, v11

    .line 127
    sget-object v17, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    aget-short v17, v17, v11

    .line 128
    sget-object v20, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    aget-byte v20, v20, v11

    if-lez v20, :cond_94

    add-int v21, v4, v20

    add-int/lit8 v22, v21, -0x1

    move/from16 v12, v22

    move/from16 v22, v13

    move v13, v4

    :goto_62
    if-ge v12, v13, :cond_69

    add-int v17, v17, v20

    move/from16 v4, v21

    goto :goto_96

    :cond_69
    sub-int v23, v12, v13

    const/16 v19, 0x1

    shr-int/lit8 v23, v23, 0x1

    add-int v23, v13, v23

    move/from16 v24, v12

    .line 137
    aget-char v12, v2, v10

    sget-object v25, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    move/from16 v26, v13

    aget-char v13, v25, v23

    if-ge v12, v13, :cond_82

    add-int/lit8 v12, v23, -0x1

    move/from16 v13, v26

    goto :goto_62

    .line 139
    :cond_82
    aget-char v12, v2, v10

    sget-object v13, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v13, v13, v23

    if-le v12, v13, :cond_8f

    add-int/lit8 v13, v23, 0x1

    move/from16 v12, v24

    goto :goto_62

    :cond_8f
    sub-int v23, v23, v4

    add-int v17, v17, v23

    goto :goto_d9

    :cond_94
    move/from16 v22, v13

    .line 150
    :goto_96
    sget-object v12, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    aget-byte v11, v12, v11

    if-lez v11, :cond_d9

    shl-int/lit8 v12, v11, 0x1

    add-int/2addr v12, v4

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    move v13, v4

    :goto_a2
    if-ge v12, v13, :cond_a7

    :goto_a4
    add-int v17, v17, v11

    goto :goto_d9

    :cond_a7
    sub-int v20, v12, v13

    const/16 v19, 0x1

    shr-int/lit8 v20, v20, 0x1

    and-int/lit8 v20, v20, -0x2

    add-int v20, v13, v20

    move/from16 v21, v11

    .line 159
    aget-char v11, v2, v10

    sget-object v23, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    move/from16 v24, v12

    aget-char v12, v23, v20

    if-ge v11, v12, :cond_c2

    add-int/lit8 v12, v20, -0x2

    move/from16 v11, v21

    goto :goto_a2

    .line 161
    :cond_c2
    aget-char v11, v2, v10

    sget-object v12, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    add-int/lit8 v13, v20, 0x1

    aget-char v12, v12, v13

    if-le v11, v12, :cond_d3

    add-int/lit8 v13, v20, 0x2

    move/from16 v11, v21

    move/from16 v12, v24

    goto :goto_a2

    :cond_d3
    sub-int v20, v20, v4

    const/4 v4, 0x1

    shr-int/lit8 v11, v20, 0x1

    goto :goto_a4

    .line 172
    :cond_d9
    :goto_d9
    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    aget-byte v4, v4, v17

    .line 173
    sget-object v11, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    aget-byte v11, v11, v4

    .line 175
    sget-object v12, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v12, v12, v4

    if-eqz v12, :cond_352

    .line 176
    sget-object v12, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v4, v12, v4

    .line 177
    sget-object v12, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v4, v12, v4
    :try_end_f1
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_f1} :catch_446

    move/from16 v12, p2

    move/from16 v17, v13

    move/from16 v13, v22

    :goto_f7
    add-int/lit8 v20, v4, -0x1

    if-lez v4, :cond_34a

    .line 179
    :try_start_fb
    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v21, v17, 0x1

    aget-byte v4, v4, v17
    :try_end_101
    .catch Ljava/lang/RuntimeException; {:try_start_fb .. :try_end_101} :catch_345

    move-object/from16 v17, v0

    const/16 v0, 0x2f

    packed-switch v4, :pswitch_data_4f2

    move-object/from16 v23, v8

    move/from16 p2, v10

    :goto_10c
    move-object/from16 v0, v17

    move/from16 v17, v6

    move v6, v11

    goto/16 :goto_33a

    :pswitch_113
    add-int/lit8 v10, v10, 0x1

    move v4, v10

    const/4 v0, 0x0

    .line 410
    :cond_117
    :try_start_117
    aget-char v12, v2, v4
    :try_end_119
    .catch Ljava/lang/RuntimeException; {:try_start_117 .. :try_end_119} :catch_205

    const/16 v13, 0x22

    if-eq v12, v13, :cond_12a

    const/16 v13, 0x5c

    if-eq v12, v13, :cond_123

    :goto_121
    const/4 v12, 0x1

    goto :goto_127

    :cond_123
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x1

    goto :goto_121

    :goto_127
    add-int/2addr v4, v12

    if-ne v4, v3, :cond_117

    :cond_12a
    move v13, v0

    add-int/lit8 v0, v4, -0x1

    move-object/from16 v23, v8

    move v12, v10

    move v10, v0

    goto :goto_10c

    :pswitch_132
    const/16 v4, 0xd

    if-eqz v14, :cond_16b

    move v12, v10

    const/4 v13, 0x0

    .line 355
    :cond_138
    :try_start_138
    aget-char v15, v2, v12

    move/from16 v23, v13

    const/16 v13, 0xa

    if-eq v15, v13, :cond_164

    if-eq v15, v4, :cond_164

    if-eq v15, v0, :cond_14f

    const/16 v13, 0x3a

    if-eq v15, v13, :cond_164

    const/16 v13, 0x5c

    if-eq v15, v13, :cond_14d

    goto :goto_15d

    :cond_14d
    const/4 v13, 0x1

    goto :goto_15f

    :cond_14f
    add-int/lit8 v13, v12, 0x1

    if-ne v13, v3, :cond_154

    goto :goto_15d

    .line 361
    :cond_154
    aget-char v13, v2, v13

    if-eq v13, v0, :cond_164

    const/16 v15, 0x2a

    if-ne v13, v15, :cond_15d

    goto :goto_164

    :cond_15d
    :goto_15d
    move/from16 v13, v23

    :goto_15f
    add-int/lit8 v12, v12, 0x1

    if-ne v12, v3, :cond_138

    goto :goto_1af

    :cond_164
    :goto_164
    move/from16 v13, v23

    goto :goto_1af

    :catch_167
    move-exception v0

    move v10, v12

    goto/16 :goto_447

    :cond_16b
    move v12, v10

    const/4 v13, 0x0

    .line 376
    :goto_16d
    aget-char v15, v2, v12

    move/from16 v23, v13

    const/16 v13, 0xa

    if-eq v15, v13, :cond_164

    if-eq v15, v4, :cond_164

    const/16 v13, 0x2c

    if-eq v15, v13, :cond_164

    if-eq v15, v0, :cond_18d

    const/16 v13, 0x7d

    if-eq v15, v13, :cond_164

    const/16 v13, 0x5c

    if-eq v15, v13, :cond_18a

    const/16 v4, 0x5d

    if-eq v15, v4, :cond_164

    goto :goto_19d

    :cond_18a
    const/16 v23, 0x1

    goto :goto_19d

    :cond_18d
    const/16 v13, 0x5c

    add-int/lit8 v4, v12, 0x1

    if-ne v4, v3, :cond_194

    goto :goto_19d

    .line 382
    :cond_194
    aget-char v4, v2, v4

    if-eq v4, v0, :cond_164

    const/16 v15, 0x2a

    if-ne v4, v15, :cond_19d

    goto :goto_164

    :cond_19d
    :goto_19d
    add-int/lit8 v12, v12, 0x1

    if-ne v12, v3, :cond_1a2

    goto :goto_164

    :cond_1a2
    move/from16 v13, v23

    const/16 v4, 0xd

    goto :goto_16d

    .line 398
    :goto_1a7
    aget-char v0, v2, v12

    invoke-static {v0}, Ljava/lang/Character;->isSpace(C)Z

    move-result v0
    :try_end_1ad
    .catch Ljava/lang/RuntimeException; {:try_start_138 .. :try_end_1ad} :catch_167

    if-eqz v0, :cond_1b2

    :goto_1af
    add-int/lit8 v12, v12, -0x1

    goto :goto_1a7

    :cond_1b2
    move-object/from16 v23, v8

    move-object/from16 v0, v17

    const/4 v15, 0x1

    move/from16 v17, v6

    move v6, v11

    move/from16 v27, v12

    move v12, v10

    move/from16 v10, v27

    goto/16 :goto_33a

    :pswitch_1c1
    add-int/lit8 v4, v10, 0x1

    .line 333
    :try_start_1c3
    aget-char v10, v2, v10
    :try_end_1c5
    .catch Ljava/lang/RuntimeException; {:try_start_1c3 .. :try_end_1c5} :catch_205

    if-ne v10, v0, :cond_1d6

    move v10, v4

    :goto_1c8
    if-eq v10, v3, :cond_1d3

    .line 334
    :try_start_1ca
    aget-char v0, v2, v10
    :try_end_1cc
    .catch Ljava/lang/RuntimeException; {:try_start_1ca .. :try_end_1cc} :catch_446

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1d3

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c8

    :cond_1d3
    add-int/lit8 v10, v10, -0x1

    goto :goto_1fb

    :cond_1d6
    move v10, v4

    :goto_1d7
    add-int/lit8 v4, v10, 0x1

    if-ge v4, v3, :cond_1ec

    .line 338
    :try_start_1db
    aget-char v0, v2, v10
    :try_end_1dd
    .catch Ljava/lang/RuntimeException; {:try_start_1db .. :try_end_1dd} :catch_1e7

    move/from16 v23, v10

    const/16 v10, 0x2a

    if-ne v0, v10, :cond_1e4

    goto :goto_1f0

    :cond_1e4
    const/16 v10, 0x2f

    goto :goto_1f6

    :catch_1e7
    move-exception v0

    move/from16 v23, v10

    goto/16 :goto_447

    :cond_1ec
    move/from16 v23, v10

    const/16 v10, 0x2a

    :goto_1f0
    :try_start_1f0
    aget-char v0, v2, v4
    :try_end_1f2
    .catch Ljava/lang/RuntimeException; {:try_start_1f0 .. :try_end_1f2} :catch_1ff

    const/16 v10, 0x2f

    if-eq v0, v10, :cond_1fa

    :goto_1f6
    move v10, v4

    const/16 v0, 0x2f

    goto :goto_1d7

    :cond_1fa
    move v10, v4

    :goto_1fb
    move-object/from16 v23, v8

    goto/16 :goto_10c

    :catch_1ff
    move-exception v0

    move-object v12, v0

    move/from16 v10, v23

    goto/16 :goto_448

    :catch_205
    move-exception v0

    move-object v12, v0

    move v10, v4

    goto/16 :goto_448

    .line 321
    :pswitch_20a
    :try_start_20a
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    add-int/lit8 v6, v6, -0x1

    .line 323
    aget v11, v8, v6

    goto :goto_23f

    .line 299
    :pswitch_212
    iget v0, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_21d

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_21e

    :cond_21d
    const/4 v0, 0x0

    .line 301
    :goto_21e
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->startArray(Ljava/lang/String;)V

    .line 303
    array-length v0, v8

    if-ne v6, v0, :cond_230

    .line 304
    array-length v0, v8

    const/4 v4, 0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 305
    array-length v4, v8

    const/4 v7, 0x0

    invoke-static {v8, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v0

    :cond_230
    add-int/lit8 v0, v6, 0x1

    .line 309
    aput v11, v8, v6

    const/16 v11, 0x17

    move v6, v0

    goto :goto_23f

    .line 288
    :pswitch_238
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    add-int/lit8 v6, v6, -0x1

    .line 290
    aget v11, v8, v6

    :goto_23f
    const/4 v0, 0x4

    const/4 v4, 0x2

    goto/16 :goto_1a

    .line 266
    :pswitch_243
    iget v0, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_24e

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_24f

    :cond_24e
    const/4 v0, 0x0

    .line 268
    :goto_24f
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->startObject(Ljava/lang/String;)V

    .line 270
    array-length v0, v8

    if-ne v6, v0, :cond_262

    .line 271
    array-length v0, v8

    const/4 v4, 0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 272
    array-length v7, v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v0

    goto :goto_263

    :cond_262
    const/4 v4, 0x2

    :goto_263
    add-int/lit8 v0, v6, 0x1

    .line 276
    aput v11, v8, v6
    :try_end_267
    .catch Ljava/lang/RuntimeException; {:try_start_20a .. :try_end_267} :catch_446

    move v6, v0

    const/4 v0, 0x4

    const/4 v11, 0x5

    goto/16 :goto_1a

    :pswitch_26c
    const/4 v4, 0x2

    .line 189
    :try_start_26d
    new-instance v0, Ljava/lang/String;

    sub-int v4, v10, v12

    invoke-direct {v0, v2, v12, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_274
    .catch Ljava/lang/RuntimeException; {:try_start_26d .. :try_end_274} :catch_345

    if-eqz v13, :cond_27a

    .line 190
    :try_start_276
    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_27a
    if-eqz v14, :cond_28b

    .line 195
    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_27f
    .catch Ljava/lang/RuntimeException; {:try_start_276 .. :try_end_27f} :catch_446

    move-object/from16 v23, v8

    move/from16 p2, v10

    move-object/from16 v15, v17

    const/4 v14, 0x0

    :goto_286
    move/from16 v17, v6

    :goto_288
    move v6, v11

    goto/16 :goto_325

    .line 197
    :cond_28b
    :try_start_28b
    iget v4, v5, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_28d
    .catch Ljava/lang/RuntimeException; {:try_start_28b .. :try_end_28d} :catch_345

    if-lez v4, :cond_296

    :try_start_28f
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_295
    .catch Ljava/lang/RuntimeException; {:try_start_28f .. :try_end_295} :catch_446

    goto :goto_297

    :cond_296
    const/4 v4, 0x0

    :goto_297
    if-eqz v15, :cond_319

    .line 199
    :try_start_299
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_29d
    .catch Ljava/lang/RuntimeException; {:try_start_299 .. :try_end_29d} :catch_345

    if-eqz v15, :cond_2aa

    const/4 v12, 0x1

    .line 201
    :try_start_2a0
    invoke-virtual {v1, v4, v12}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_2a3
    .catch Ljava/lang/RuntimeException; {:try_start_2a0 .. :try_end_2a3} :catch_446

    :goto_2a3
    move-object/from16 v23, v8

    move/from16 p2, v10

    move-object/from16 v15, v17

    goto :goto_286

    .line 203
    :cond_2aa
    :try_start_2aa
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_2ae
    .catch Ljava/lang/RuntimeException; {:try_start_2aa .. :try_end_2ae} :catch_345

    if-eqz v15, :cond_2b5

    const/4 v12, 0x0

    .line 205
    :try_start_2b1
    invoke-virtual {v1, v4, v12}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_2b4
    .catch Ljava/lang/RuntimeException; {:try_start_2b1 .. :try_end_2b4} :catch_446

    goto :goto_2a3

    :cond_2b5
    move-object/from16 v15, v17

    .line 207
    :try_start_2b7
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_2bb
    .catch Ljava/lang/RuntimeException; {:try_start_2b7 .. :try_end_2bb} :catch_345

    if-eqz v17, :cond_2c8

    move/from16 v17, v6

    const/4 v6, 0x0

    .line 208
    :try_start_2c0
    invoke-virtual {v1, v4, v6}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v8

    move/from16 p2, v10

    goto :goto_288

    :cond_2c8
    move/from16 v17, v6

    const/4 v6, 0x0

    const/16 v22, 0x1

    :goto_2cd
    if-ge v12, v10, :cond_2fb

    move/from16 p2, v6

    .line 214
    aget-char v6, v2, v12
    :try_end_2d3
    .catch Ljava/lang/RuntimeException; {:try_start_2c0 .. :try_end_2d3} :catch_446

    move-object/from16 v23, v8

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_2f4

    const/16 v8, 0x45

    if-eq v6, v8, :cond_2f0

    const/16 v8, 0x65

    if-eq v6, v8, :cond_2f0

    const/16 v8, 0x2d

    if-eq v6, v8, :cond_2f4

    const/16 v8, 0x2e

    if-eq v6, v8, :cond_2f0

    packed-switch v6, :pswitch_data_508

    const/4 v6, 0x0

    const/16 v22, 0x0

    goto :goto_2ff

    :cond_2f0
    const/4 v6, 0x1

    const/16 v22, 0x0

    goto :goto_2f6

    :cond_2f4
    :pswitch_2f4
    move/from16 v6, p2

    :goto_2f6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v23

    goto :goto_2cd

    :cond_2fb
    move/from16 p2, v6

    move-object/from16 v23, v8

    :goto_2ff
    if-eqz v6, :cond_30c

    move/from16 p2, v10

    move v6, v11

    .line 243
    :try_start_304
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v1, v4, v10, v11, v0}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_325

    :cond_30c
    move/from16 p2, v10

    move v6, v11

    if-eqz v22, :cond_322

    .line 250
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v1, v4, v10, v11, v0}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_318
    .catch Ljava/lang/NumberFormatException; {:try_start_304 .. :try_end_318} :catch_322
    .catch Ljava/lang/RuntimeException; {:try_start_304 .. :try_end_318} :catch_32b

    goto :goto_325

    :cond_319
    move-object/from16 v23, v8

    move/from16 p2, v10

    move-object/from16 v15, v17

    move/from16 v17, v6

    move v6, v11

    .line 257
    :catch_322
    :cond_322
    :try_start_322
    invoke-virtual {v1, v4, v0}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_325
    .catch Ljava/lang/RuntimeException; {:try_start_322 .. :try_end_325} :catch_32b

    :goto_325
    move/from16 v10, p2

    move v12, v10

    move-object v0, v15

    const/4 v15, 0x0

    goto :goto_33a

    :catch_32b
    move-exception v0

    move/from16 v10, p2

    goto/16 :goto_447

    :pswitch_330
    move-object/from16 v23, v8

    move/from16 p2, v10

    move-object/from16 v0, v17

    move/from16 v17, v6

    move v6, v11

    const/4 v14, 0x1

    :goto_33a
    move v11, v6

    move/from16 v6, v17

    move/from16 v4, v20

    move/from16 v17, v21

    move-object/from16 v8, v23

    goto/16 :goto_f7

    :catch_345
    move-exception v0

    move/from16 p2, v10

    goto/16 :goto_447

    :cond_34a
    move/from16 v17, v6

    move-object/from16 v23, v8

    move/from16 p2, v10

    move v6, v11

    goto :goto_35b

    :cond_352
    move/from16 v17, v6

    move-object/from16 v23, v8

    move v6, v11

    move/from16 v12, p2

    move/from16 v13, v22

    :goto_35b
    if-nez v11, :cond_365

    move/from16 v6, v17

    move-object/from16 v8, v23

    :goto_361
    const/4 v0, 0x4

    const/4 v4, 0x5

    goto/16 :goto_1a

    :cond_365
    add-int/lit8 v10, v10, 0x1

    if-eq v10, v3, :cond_371

    move/from16 v6, v17

    move-object/from16 v8, v23

    const/4 v0, 0x4

    const/4 v4, 0x1

    goto/16 :goto_1a

    :cond_371
    :goto_371
    if-ne v10, v3, :cond_444

    .line 441
    :try_start_373
    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    aget-byte v4, v4, v11

    .line 442
    sget-object v6, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v6, v4

    :goto_37d
    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_444

    .line 444
    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v11, v8, 0x1

    aget-byte v4, v4, v8

    const/4 v8, 0x1

    if-eq v4, v8, :cond_392

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move/from16 p2, v6

    goto/16 :goto_43b

    .line 448
    :cond_392
    new-instance v4, Ljava/lang/String;

    sub-int v8, v10, v12

    invoke-direct {v4, v2, v12, v8}, Ljava/lang/String;-><init>([CII)V

    if-eqz v13, :cond_39f

    .line 449
    invoke-direct {v1, v4}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_39f
    if-eqz v14, :cond_3ad

    .line 454
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move/from16 p2, v6

    const/4 v14, 0x0

    goto/16 :goto_439

    .line 456
    :cond_3ad
    iget v8, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v8, :cond_3b8

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_3b9

    :cond_3b8
    const/4 v8, 0x0

    :goto_3b9
    if-eqz v15, :cond_430

    .line 458
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3cd

    const/4 v15, 0x1

    .line 460
    invoke-virtual {v1, v8, v15}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    :goto_3c5
    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move/from16 p2, v6

    goto/16 :goto_439

    :cond_3cd
    const/4 v15, 0x1

    .line 462
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3d9

    const/4 v4, 0x0

    .line 464
    invoke-virtual {v1, v8, v4}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    goto :goto_3c5

    .line 466
    :cond_3d9
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3e4

    const/4 v15, 0x0

    .line 467
    invoke-virtual {v1, v8, v15}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c5

    :cond_3e4
    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_3e7
    if-ge v12, v10, :cond_414

    move-object/from16 v17, v0

    .line 473
    aget-char v0, v2, v12
    :try_end_3ed
    .catch Ljava/lang/RuntimeException; {:try_start_373 .. :try_end_3ed} :catch_446

    move-object/from16 v18, v5

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_40d

    const/16 v5, 0x45

    if-eq v0, v5, :cond_40a

    const/16 v5, 0x65

    if-eq v0, v5, :cond_40a

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_40d

    const/16 v5, 0x2e

    if-eq v0, v5, :cond_40a

    packed-switch v0, :pswitch_data_520

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_418

    :cond_40a
    const/4 v15, 0x1

    const/16 v16, 0x0

    :cond_40d
    :pswitch_40d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    move-object/from16 v5, v18

    goto :goto_3e7

    :cond_414
    move-object/from16 v17, v0

    move-object/from16 v18, v5

    :goto_418
    if-eqz v15, :cond_424

    move/from16 p2, v6

    .line 502
    :try_start_41c
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v8, v5, v6, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_439

    :cond_424
    move/from16 p2, v6

    if-eqz v16, :cond_436

    .line 509
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v8, v5, v6, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_42f
    .catch Ljava/lang/NumberFormatException; {:try_start_41c .. :try_end_42f} :catch_436
    .catch Ljava/lang/RuntimeException; {:try_start_41c .. :try_end_42f} :catch_446

    goto :goto_439

    :cond_430
    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move/from16 p2, v6

    .line 516
    :catch_436
    :cond_436
    :try_start_436
    invoke-virtual {v1, v8, v4}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_439
    .catch Ljava/lang/RuntimeException; {:try_start_436 .. :try_end_439} :catch_446

    :goto_439
    move v12, v10

    const/4 v15, 0x0

    :goto_43b
    move/from16 v4, p2

    move v8, v11

    move-object/from16 v0, v17

    move-object/from16 v5, v18

    goto/16 :goto_37d

    :cond_444
    :goto_444
    const/4 v12, 0x0

    goto :goto_448

    :catch_446
    move-exception v0

    :goto_447
    move-object v12, v0

    .line 539
    :goto_448
    iget-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v4, 0x0

    .line 540
    iput-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 541
    iput-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 542
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    if-ge v10, v3, :cond_4a6

    const/4 v0, 0x0

    const/4 v4, 0x1

    :goto_458
    if-ge v0, v10, :cond_465

    .line 547
    aget-char v5, v2, v0

    const/16 v6, 0xa

    if-ne v5, v6, :cond_462

    add-int/lit8 v4, v4, 0x1

    :cond_462
    add-int/lit8 v0, v0, 0x1

    goto :goto_458

    :cond_465
    add-int/lit8 v0, v10, -0x20

    const/4 v5, 0x0

    .line 548
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 549
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing JSON on line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " near: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sub-int v7, v10, v0

    invoke-direct {v4, v2, v0, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*ERROR*"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x40

    sub-int/2addr v3, v10

    .line 550
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v2, v10, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v12}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 551
    :cond_4a6
    iget-object v3, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_4d1

    .line 552
    iget-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    .line 553
    iget-object v2, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    if-eqz v0, :cond_4c9

    .line 554
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_4c9

    .line 555
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v2, "Error parsing JSON, unmatched brace."

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_4c9
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v2, "Error parsing JSON, unmatched bracket."

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d1
    if-nez v12, :cond_4d4

    return-object v0

    .line 559
    :cond_4d4
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v12}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f1

    :goto_4f0
    throw v0

    :goto_4f1
    goto :goto_4f0

    :pswitch_data_4f2
    .packed-switch 0x0
        :pswitch_330
        :pswitch_26c
        :pswitch_243
        :pswitch_238
        :pswitch_212
        :pswitch_20a
        :pswitch_1c1
        :pswitch_132
        :pswitch_113
    .end packed-switch

    :pswitch_data_508
    .packed-switch 0x30
        :pswitch_2f4
        :pswitch_2f4
        :pswitch_2f4
        :pswitch_2f4
        :pswitch_2f4
        :pswitch_2f4
        :pswitch_2f4
        :pswitch_2f4
        :pswitch_2f4
        :pswitch_2f4
    .end packed-switch

    :pswitch_data_520
    .packed-switch 0x30
        :pswitch_40d
        :pswitch_40d
        :pswitch_40d
        :pswitch_40d
        :pswitch_40d
        :pswitch_40d
        :pswitch_40d
        :pswitch_40d
        :pswitch_40d
        :pswitch_40d
    .end packed-switch
.end method

.method protected pop()V
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 699
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    .line 700
    :cond_15
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method protected startArray(Ljava/lang/String;)V
    .registers 4

    .line 691
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 692
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_e

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 693
    :cond_e
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 694
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method protected startObject(Ljava/lang/String;)V
    .registers 4

    .line 683
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 684
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_e

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 685
    :cond_e
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 686
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method protected string(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 704
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method
