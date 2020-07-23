.class public Lcom/badlogic/gdx/utils/GdxNativesLoader;
.super Ljava/lang/Object;
.source "GdxNativesLoader.java"


# static fields
.field public static disableNativesLoading:Z = false

.field private static nativesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized load()V
    .registers 3

    const-class v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;

    monitor-enter v0

    .line 28
    :try_start_3
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 29
    :try_start_a
    sput-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    .line 31
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->disableNativesLoading:Z
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_1e

    if-eqz v1, :cond_12

    monitor-exit v0

    return-void

    .line 33
    :cond_12
    :try_start_12
    new-instance v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;-><init>()V

    const-string v2, "gdx"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->load(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1e

    .line 34
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0

    throw v1
.end method
