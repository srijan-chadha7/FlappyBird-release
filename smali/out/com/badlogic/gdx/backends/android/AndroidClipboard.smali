.class public Lcom/badlogic/gdx/backends/android/AndroidClipboard;
.super Ljava/lang/Object;
.source "AndroidClipboard.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Clipboard;


# instance fields
.field private clipboard:Landroid/text/ClipboardManager;

.field private honeycombClipboard:Landroid/content/ClipboardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "clipboard"

    const/16 v2, 0xb

    if-ge v0, v2, :cond_14

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/ClipboardManager;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->clipboard:Landroid/text/ClipboardManager;

    goto :goto_1c

    .line 33
    :cond_14
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->honeycombClipboard:Landroid/content/ClipboardManager;

    :goto_1c
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 4

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_1b

    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_10

    return-object v1

    .line 41
    :cond_10
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1b
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->honeycombClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_24

    return-object v1

    :cond_24
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_30

    return-object v1

    .line 47
    :cond_30
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContents(Ljava/lang/String;)V
    .registers 4

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_c

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 56
    :cond_c
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->honeycombClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :goto_15
    return-void
.end method
