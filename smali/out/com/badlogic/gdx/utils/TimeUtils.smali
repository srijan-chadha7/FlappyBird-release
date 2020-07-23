.class public final Lcom/badlogic/gdx/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final nanosPerMilli:J = 0xf4240L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static millis()J
    .registers 2

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static millisToNanos(J)J
    .registers 4

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    return-wide p0
.end method

.method public static nanoTime()J
    .registers 2

    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static nanosToMillis(J)J
    .registers 4

    const-wide/32 v0, 0xf4240

    .line 38
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static timeSinceMillis(J)J
    .registers 4

    .line 59
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static timeSinceNanos(J)J
    .registers 4

    .line 52
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method
