.class public Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;
.super Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
.source "AndroidZipFileHandle.java"


# instance fields
.field private expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

.field private fdLength:J

.field private hasAssetFd:Z

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V
    .registers 4

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    .line 43
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->initialize()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 37
    sget-object v0, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->initialize()V

    return-void
.end method

.method private getPath()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->path:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->path:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFiles;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFiles;->getExpansionFile()Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_35

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->hasAssetFd:Z

    .line 52
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->fdLength:J

    .line 54
    :try_start_2f
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_38

    :catch_33
    nop

    goto :goto_38

    :cond_35
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->hasAssetFd:Z

    .line 61
    :goto_38
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->path:Ljava/lang/String;

    :cond_53
    return-void
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    .line 89
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0

    .line 90
    :cond_19
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->file:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public exists()Z
    .registers 3

    .line 199
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->hasAssetFd:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getEntriesAt(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->hasAssetFd:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public length()J
    .registers 3

    .line 194
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->hasAssetFd:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->fdLength:J

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0
.end method

.method public list()[Lcom/badlogic/gdx/files/FileHandle;
    .registers 9

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getEntriesAt(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    .line 111
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lcom/badlogic/gdx/files/FileHandle;

    .line 113
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v3, v2, :cond_38

    .line 114
    aget-object v5, v0, v3

    iget-object v5, v5, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_27

    goto :goto_35

    :cond_27
    add-int/lit8 v5, v4, 0x1

    .line 116
    new-instance v6, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    aget-object v7, v0, v3

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    aput-object v6, v1, v4

    move v4, v5

    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_38
    return-object v1
.end method

.method public list(Ljava/io/FileFilter;)[Lcom/badlogic/gdx/files/FileHandle;
    .registers 10

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getEntriesAt(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    .line 124
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lcom/badlogic/gdx/files/FileHandle;

    .line 126
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    if-ge v4, v2, :cond_43

    .line 127
    aget-object v6, v0, v4

    iget-object v6, v6, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_28

    goto :goto_40

    .line 129
    :cond_28
    new-instance v6, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    aget-object v7, v0, v4

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_3c

    goto :goto_40

    .line 132
    :cond_3c
    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 135
    :cond_43
    array-length p1, v1

    if-ge v5, p1, :cond_4c

    .line 136
    new-array p1, v5, [Lcom/badlogic/gdx/files/FileHandle;

    .line 137
    invoke-static {v1, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4d

    :cond_4c
    move-object p1, v1

    :goto_4d
    return-object p1
.end method

.method public list(Ljava/io/FilenameFilter;)[Lcom/badlogic/gdx/files/FileHandle;
    .registers 10

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getEntriesAt(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    .line 146
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lcom/badlogic/gdx/files/FileHandle;

    .line 148
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    if-ge v4, v2, :cond_41

    .line 149
    aget-object v6, v0, v4

    iget-object v6, v6, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_28

    goto :goto_3e

    .line 151
    :cond_28
    aget-object v6, v0, v4

    iget-object v6, v6, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    .line 152
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->file:Ljava/io/File;

    invoke-interface {p1, v7, v6}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_35

    goto :goto_3e

    .line 154
    :cond_35
    new-instance v7, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    invoke-direct {v7, v6}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    aput-object v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 157
    :cond_41
    array-length p1, v1

    if-ge v5, p1, :cond_4a

    .line 158
    new-array p1, v5, [Lcom/badlogic/gdx/files/FileHandle;

    .line 159
    invoke-static {v1, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4b

    :cond_4a
    move-object p1, v1

    :goto_4b
    return-object p1
.end method

.method public list(Ljava/lang/String;)[Lcom/badlogic/gdx/files/FileHandle;
    .registers 10

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getEntriesAt(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    .line 168
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lcom/badlogic/gdx/files/FileHandle;

    .line 170
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    if-ge v4, v2, :cond_3f

    .line 171
    aget-object v6, v0, v4

    iget-object v6, v6, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_28

    goto :goto_3c

    .line 173
    :cond_28
    aget-object v6, v0, v4

    iget-object v6, v6, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    .line 174
    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_33

    goto :goto_3c

    .line 176
    :cond_33
    new-instance v7, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    invoke-direct {v7, v6}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    aput-object v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 179
    :cond_3f
    array-length p1, v1

    if-ge v5, p1, :cond_48

    .line 180
    new-array p1, v5, [Lcom/badlogic/gdx/files/FileHandle;

    .line 181
    invoke-static {v1, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_49

    :cond_48
    move-object p1, v1

    :goto_49
    return-object p1
.end method

.method public parent()Lcom/badlogic/gdx/files/FileHandle;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_f

    .line 104
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    :cond_f
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public read()Ljava/io/InputStream;
    .registers 5

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->expansionFile:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 81
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (ZipResourceFile)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_24

    .line 97
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-interface {v0, p1, v1}, Lcom/badlogic/gdx/Files;->getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    return-object p1

    .line 96
    :cond_24
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Cannot get the sibling of the root."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method