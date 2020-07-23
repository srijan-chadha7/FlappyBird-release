.class public Lcom/badlogic/gdx/utils/async/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static yield()V
    .registers 0

    .line 23
    invoke-static {}, Ljava/lang/Thread;->yield()V

    return-void
.end method
