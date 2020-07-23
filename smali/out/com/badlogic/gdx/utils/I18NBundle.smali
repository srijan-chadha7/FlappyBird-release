.class public Lcom/badlogic/gdx/utils/I18NBundle;
.super Ljava/lang/Object;
.source "I18NBundle.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ROOT_LOCALE:Ljava/util/Locale;

.field private static exceptionOnMissingKey:Z

.field private static simpleFormatter:Z


# instance fields
.field private formatter:Lcom/badlogic/gdx/utils/TextFormatter;

.field private locale:Ljava/util/Locale;

.field private parent:Lcom/badlogic/gdx/utils/I18NBundle;

.field private properties:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    const/4 v0, 0x1

    .line 74
    sput-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFileExistence(Lcom/badlogic/gdx/files/FileHandle;)Z
    .registers 1

    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    return p0

    :catch_9
    const/4 p0, 0x0

    return p0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 3

    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object p0

    return-object p0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 3

    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object p0

    return-object p0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 3

    const-string v0, "UTF-8"

    .line 133
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object p0

    return-object p0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 3

    .line 157
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object p0

    return-object p0
.end method

.method private static createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 12

    if-eqz p0, :cond_84

    if-eqz p1, :cond_84

    if-eqz p2, :cond_84

    const/4 v0, 0x0

    move-object v1, v0

    move-object v0, p1

    .line 168
    :cond_9
    invoke-static {v0}, Lcom/badlogic/gdx/utils/I18NBundle;->getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 171
    invoke-static {p0, p2, v2, v3, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 175
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/I18NBundle;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 176
    sget-object v6, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 178
    invoke-virtual {v5, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_44

    .line 182
    :cond_27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_39

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_44

    :cond_39
    if-eqz v6, :cond_3e

    if-nez v1, :cond_3e

    move-object v1, v4

    .line 193
    :cond_3e
    invoke-static {v0}, Lcom/badlogic/gdx/utils/I18NBundle;->getFallbackLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_44
    :goto_44
    if-nez v4, :cond_82

    if-eqz v1, :cond_49

    goto :goto_83

    .line 200
    :cond_49
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find bundle for base file handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-direct {p2, v0, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_82
    move-object v1, v4

    :goto_83
    return-object v1

    .line 161
    :cond_84
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_8b

    :goto_8a
    throw p0

    :goto_8b
    goto :goto_8a
.end method

.method private static getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 263
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 265
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    .line 268
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    move-object v2, p0

    goto :goto_2e

    :cond_29
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_46

    .line 271
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    goto :goto_43

    :cond_3e
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_43
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_46
    sget-object p0, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public static getExceptionOnMissingKey()Z
    .registers 1

    .line 104
    sget-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    return v0
.end method

.method private static getFallbackLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 2

    .line 291
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 292
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public static getSimpleFormatter()Z
    .registers 1

    .line 91
    sget-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    return v0
.end method

.method private static loadBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 5

    const/4 v0, 0x0

    .line 321
    :try_start_1
    invoke-static {p0, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->toFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    .line 322
    invoke-static {p0}, Lcom/badlogic/gdx/utils/I18NBundle;->checkFileExistence(Lcom/badlogic/gdx/files/FileHandle;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 324
    new-instance v1, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/I18NBundle;-><init>()V

    .line 327
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    .line 328
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->load(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_24
    .catchall {:try_start_1 .. :try_end_17} :catchall_22

    goto :goto_19

    :cond_18
    move-object v1, v0

    .line 334
    :goto_19
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_21

    .line 337
    invoke-direct {v1, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->setLocale(Ljava/util/Locale;)V

    :cond_21
    return-object v1

    :catchall_22
    move-exception p0

    goto :goto_2b

    :catch_24
    move-exception p0

    .line 331
    :try_start_25
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 334
    :goto_2b
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;I",
            "Lcom/badlogic/gdx/utils/I18NBundle;",
            ")",
            "Lcom/badlogic/gdx/utils/I18NBundle;"
        }
    .end annotation

    .line 297
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 299
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_15

    add-int/lit8 p3, p3, 0x1

    .line 301
    invoke-static {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object p2

    goto :goto_21

    :cond_15
    if-eqz p4, :cond_20

    .line 302
    sget-object p2, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {v0, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    return-object p4

    :cond_20
    const/4 p2, 0x0

    .line 307
    :goto_21
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 309
    iput-object p2, p0, Lcom/badlogic/gdx/utils/I18NBundle;->parent:Lcom/badlogic/gdx/utils/I18NBundle;

    return-object p0

    :cond_2a
    return-object p2
.end method

.method public static setExceptionOnMissingKey(Z)V
    .registers 1

    .line 111
    sput-boolean p0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .registers 4

    .line 418
    iput-object p1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->locale:Ljava/util/Locale;

    .line 419
    new-instance v0, Lcom/badlogic/gdx/utils/TextFormatter;

    sget-boolean v1, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/utils/TextFormatter;-><init>(Ljava/util/Locale;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->formatter:Lcom/badlogic/gdx/utils/TextFormatter;

    return-void
.end method

.method public static setSimpleFormatter(Z)V
    .registers 1

    .line 97
    sput-boolean p0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    return-void
.end method

.method private static toFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 8

    .line 383
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    sget-object v1, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 385
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    .line 388
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 389
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 390
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_31

    if-eqz v5, :cond_31

    if-nez v3, :cond_5d

    :cond_31
    const/16 v4, 0x5f

    .line 393
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    if-nez v3, :cond_4c

    .line 395
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5d

    :cond_4c
    if-nez v5, :cond_5a

    .line 397
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5d

    .line 399
    :cond_5a
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_5d
    :goto_5d
    const-string p1, ".properties"

    .line 403
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 5

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 464
    :cond_9
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 465
    iget-object v2, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_1f
    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->formatter:Lcom/badlogic/gdx/utils/TextFormatter;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/TextFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 431
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4c

    .line 433
    iget-object v1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->parent:Lcom/badlogic/gdx/utils/I18NBundle;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    if-nez v0, :cond_4c

    .line 435
    sget-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    if-nez v0, :cond_2d

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 436
    :cond_2d
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find bundle key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4c
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method protected load(Ljava/io/Reader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 362
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/PropertiesUtils;->load(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Reader;)V

    return-void
.end method
