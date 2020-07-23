.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceViewAPI18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GLThreadManager"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$1;)V
    .registers 2

    .line 1860
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .registers 4

    .line 1944
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_11

    const/high16 v0, 0x20000

    .line 1950
    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESVersion:I

    .line 1951
    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESVersion:I

    const/4 v2, 0x1

    if-lt v1, v0, :cond_f

    .line 1952
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1958
    :cond_f
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESVersionCheckComplete:Z

    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6

    monitor-enter p0

    .line 1925
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v0, :cond_2f

    .line 1926
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->checkGLESVersion()V

    const/16 v0, 0x1f01

    .line 1927
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 1928
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_26

    const-string v0, "Q3Dimension MSM7500 "

    .line 1930
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1931
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1933
    :cond_26
    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez p1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1939
    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 1941
    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V
    .registers 3

    .line 1906
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 1907
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .line 1909
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .registers 2

    monitor-enter p0

    .line 1916
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .registers 2

    monitor-enter p0

    .line 1920
    :try_start_1
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->checkGLESVersion()V

    .line 1921
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 1867
    :try_start_2
    invoke-static {p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->access$1102(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;Z)Z

    .line 1868
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    .line 1869
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .line 1871
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1872
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tryAcquireEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)Z
    .registers 4

    .line 1882
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_19

    if-nez v0, :cond_8

    goto :goto_19

    .line 1887
    :cond_8
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->checkGLESVersion()V

    .line 1888
    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz p1, :cond_10

    return v1

    .line 1895
    :cond_10
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-eqz p1, :cond_17

    .line 1896
    invoke-virtual {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->requestReleaseEglContextLocked()V

    :cond_17
    const/4 p1, 0x0

    return p1

    .line 1883
    :cond_19
    :goto_19
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .line 1884
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method
