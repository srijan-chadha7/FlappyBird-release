.class public Lcom/first/flappybird/AndroidLauncher;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;
.source "AndroidLauncher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 12
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 14
    new-instance v0, Lcom/first/flappybird/FlappyBird;

    invoke-direct {v0}, Lcom/first/flappybird/FlappyBird;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/first/flappybird/AndroidLauncher;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-void
.end method
