.class public Lcom/badlogic/gdx/assets/loaders/resolvers/ClasspathFileHandleResolver;
.super Ljava/lang/Object;
.source "ClasspathFileHandleResolver.java"

# interfaces
.implements Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 3

    .line 26
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    return-object p1
.end method
