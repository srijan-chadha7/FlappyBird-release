.class public Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;
.super Lcom/badlogic/gdx/backends/android/AndroidInput;
.source "AndroidInputThreePlus.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field genericMotionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnGenericMotionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 5

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/AndroidInput;-><init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->genericMotionListeners:Ljava/util/ArrayList;

    .line 38
    instance-of p1, p3, Landroid/view/View;

    if-eqz p1, :cond_13

    .line 39
    check-cast p3, Landroid/view/View;

    .line 40
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 42
    :cond_13
    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    invoke-direct {p1}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    return-void
.end method


# virtual methods
.method public addGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    invoke-virtual {v0, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->onGenericMotion(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 48
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_26

    .line 49
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnGenericMotionListener;

    invoke-interface {v4, p1, p2}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_23

    return v1

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    return v2
.end method
