.class public Lcom/badlogic/gdx/utils/SharedLibraryLoader;
.super Ljava/lang/Object;
.source "SharedLibraryLoader.java"


# static fields
.field public static abi:Ljava/lang/String;

.field public static is64Bit:Z

.field public static isARM:Z

.field public static isAndroid:Z

.field public static isIos:Z

.field public static isLinux:Z

.field public static isMac:Z

.field public static isWindows:Z

.field private static final loadedLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nativesJar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "os.name"

    .line 37
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 38
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Linux"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 39
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    .line 41
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    const-string v1, "os.arch"

    .line 42
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isARM:Z

    .line 43
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "amd64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_55

    .line 44
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86_64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    goto :goto_55

    :cond_53
    const/4 v1, 0x0

    goto :goto_56

    :cond_55
    :goto_55
    const/4 v1, 0x1

    :goto_56
    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    const-string v1, "sun.arch.abi"

    .line 47
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_67

    :cond_65
    const-string v1, ""

    :goto_67
    sput-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->abi:Ljava/lang/String;

    const-string v1, "moe.platform.name"

    .line 50
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iOS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "java.runtime.name"

    .line 51
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8f

    const-string v4, "Android Runtime"

    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 53
    sput-boolean v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    .line 54
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 55
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 56
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    .line 57
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    :cond_8f
    if-nez v1, :cond_a1

    .line 59
    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    if-nez v1, :cond_ad

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    if-nez v1, :cond_ad

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    if-nez v1, :cond_ad

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    if-nez v1, :cond_ad

    .line 60
    :cond_a1
    sput-boolean v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    .line 61
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    .line 62
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 63
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 64
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    .line 65
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    .line 69
    :cond_ad
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    return-void
.end method

.method private canExecute(Ljava/io/File;)Z
    .registers 10

    const/4 v0, 0x0

    .line 239
    :try_start_1
    const-class v1, Ljava/io/File;

    const-string v2, "canExecute"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 240
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    return v3

    .line 242
    :cond_1b
    const-class v2, Ljava/io/File;

    const-string v4, "setExecutable"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 243
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4c

    return p1

    :catch_4c
    return v0
.end method

.method private canWrite(Ljava/io/File;)Z
    .registers 5

    .line 215
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canExecute(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_26

    .line 220
    :cond_18
    new-instance p1, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_31

    :cond_26
    :goto_26
    return v2

    .line 222
    :cond_27
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_31

    return v2

    .line 227
    :cond_31
    :goto_31
    :try_start_31
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 228
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canExecute(Ljava/io/File;)Z

    move-result v0
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3d} :catch_4d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_48

    if-nez v0, :cond_43

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v2

    :cond_43
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v0

    :catchall_48
    move-exception v0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw v0

    :catch_4d
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v2
.end method

.method private extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 255
    :try_start_7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    :cond_11
    move-object v0, v1

    :goto_12
    if-eqz v0, :cond_1a

    .line 261
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3b

    .line 265
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_58
    .catchall {:try_start_1a .. :try_end_1e} :catchall_55

    .line 266
    :try_start_1e
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 267
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_50
    .catchall {:try_start_1e .. :try_end_2a} :catchall_4b

    const/16 v1, 0x1000

    .line 268
    :try_start_2c
    new-array v1, v1, [B

    .line 270
    :goto_2e
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_32} :catch_45
    .catchall {:try_start_2c .. :try_end_32} :catchall_41

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3c

    .line 278
    invoke-static {p2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 279
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3b
    return-object p3

    :cond_3c
    const/4 v3, 0x0

    .line 272
    :try_start_3d
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_45
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_2e

    :catchall_41
    move-exception p1

    move-object v1, p2

    move-object p2, v0

    goto :goto_7f

    :catch_45
    move-exception v1

    move-object v5, v1

    move-object v1, p2

    move-object p2, v0

    move-object v0, v5

    goto :goto_5b

    :catchall_4b
    move-exception p1

    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    goto :goto_7f

    :catch_50
    move-exception v0

    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    goto :goto_5b

    :catchall_55
    move-exception p1

    move-object p2, v1

    goto :goto_7f

    :catch_58
    move-exception p2

    move-object v0, p2

    move-object p2, v1

    .line 275
    :goto_5b
    :try_start_5b
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error extracting file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nTo: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7e
    .catchall {:try_start_5b .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception p1

    .line 278
    :goto_7f
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 279
    invoke-static {p2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_87

    :goto_86
    throw p1

    :goto_87
    goto :goto_86
.end method

.method private getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8

    .line 185
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.io.tmpdir"

    .line 186
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libgdx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_34

    return-object v0

    :cond_34
    const/4 v1, 0x0

    .line 191
    :try_start_35
    invoke-static {p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 193
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v2
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_48} :catch_4b

    if-eqz v2, :cond_4b

    return-object v3

    .line 200
    :catch_4b
    :cond_4b
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/.libgdx/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_71

    return-object v2

    .line 204
    :cond_71
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".temp/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_8e

    return-object v2

    :cond_8e
    const-string p1, "APP_SANDBOX_CONTAINER_ID"

    .line 208
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_97

    return-object v0

    :cond_97
    return-object v1
.end method

.method public static declared-synchronized isLoaded(Ljava/lang/String;)Z
    .registers 3

    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 340
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;
    .registers 4

    .line 327
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    const/4 p1, 0x0

    return-object p1

    :catch_d
    move-exception p1

    return-object p1
.end method

.method private loadFile(Ljava/lang/String;)V
    .registers 8

    .line 289
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 294
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.io.tmpdir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/libgdx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, p1, v0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_45

    return-void

    :cond_45
    const/4 v3, 0x0

    .line 301
    :try_start_46
    invoke-static {v0, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-direct {p0, p1, v0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v3
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_54} :catch_57

    if-nez v3, :cond_57

    return-void

    .line 307
    :catch_57
    :cond_57
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/.libgdx/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, p1, v0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_7d

    return-void

    .line 311
    :cond_7d
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".temp/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, p1, v0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9a

    return-void

    .line 315
    :cond_9a
    new-instance v0, Ljava/io/File;

    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 317
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void

    .line 321
    :cond_b3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {p1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private readFile(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7

    const-string v0, "\' in JAR: "

    .line 131
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    if-nez v1, :cond_37

    .line 132
    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_20

    return-object v0

    .line 133
    :cond_20
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read file for extraction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_37
    :try_start_37
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 142
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 141
    :cond_47
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_66} :catch_66

    :catch_66
    move-exception v1

    .line 144
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static declared-synchronized setLoaded(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 336
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 337
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public crc(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_2b

    .line 85
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v1, 0x1000

    .line 86
    new-array v1, v1, [B

    .line 89
    :goto_b
    :try_start_b
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    goto :goto_1d

    :cond_13
    const/4 v3, 0x0

    .line 91
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1d
    .catchall {:try_start_b .. :try_end_17} :catchall_18

    goto :goto_b

    :catchall_18
    move-exception v0

    .line 95
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_1d
    :goto_1d
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/16 p1, 0x10

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 84
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_34

    :goto_33
    throw p1

    :goto_34
    goto :goto_33
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_b

    move-object p2, v0

    .line 158
    :cond_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_3a

    .line 160
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_32

    goto :goto_3a

    .line 161
    :cond_32
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Unable to find writable path to extract file. Is the user home directory writable?"

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 164
    :cond_3a
    :goto_3a
    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object p1

    :catch_3f
    move-exception p2

    .line 167
    new-instance v0, Ljava/io/File;

    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_52

    return-object v0

    .line 169
    :cond_52
    throw p2
.end method

.method public extractFileTo(Ljava/lang/String;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    return-void
.end method

.method public load(Ljava/lang/String;)V
    .registers 7

    .line 112
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    if-eqz v0, :cond_5

    return-void

    .line 114
    :cond_5
    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 115
    :try_start_8
    invoke-static {p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    monitor-exit v0

    return-void

    .line 116
    :cond_10
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_56

    .line 118
    :try_start_14
    sget-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    if-eqz v2, :cond_1c

    .line 119
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1f

    .line 121
    :cond_1c
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;)V

    .line 122
    :goto_1f
    invoke-static {p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->setLoaded(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_22} :catch_24
    .catchall {:try_start_14 .. :try_end_22} :catchall_56

    .line 127
    :try_start_22
    monitor-exit v0

    return-void

    :catch_24
    move-exception p1

    .line 124
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load shared library \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for target: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.name"

    .line 125
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz v1, :cond_49

    const-string v1, ", 64-bit"

    goto :goto_4b

    :cond_49
    const-string v1, ", 32-bit"

    :goto_4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_56
    move-exception p1

    .line 127
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_22 .. :try_end_58} :catchall_56

    throw p1
.end method

.method public mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 102
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz p1, :cond_13

    const-string p1, "64.dll"

    goto :goto_15

    :cond_13
    const-string p1, ".dll"

    :goto_15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 103
    :cond_1d
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    const-string v1, "lib"

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isARM:Z

    if-eqz p1, :cond_46

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arm"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->abi:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_48

    :cond_46
    const-string p1, ""

    :goto_48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz p1, :cond_52

    const-string p1, "64.so"

    goto :goto_54

    :cond_52
    const-string p1, ".so"

    :goto_54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 104
    :cond_5c
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    if-eqz v0, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz p1, :cond_72

    const-string p1, "64.dylib"

    goto :goto_74

    :cond_72
    const-string p1, ".dylib"

    :goto_74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7b
    return-object p1
.end method
