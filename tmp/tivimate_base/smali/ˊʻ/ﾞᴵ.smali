.class public abstract Lˊʻ/ﾞᴵ;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ʽﹳ;
.implements Lˋᵔ/ٴﹶ;


# instance fields
.field public final ʾˋ:Landroidx/lifecycle/ـˆ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroidx/lifecycle/ـˆ;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object v0, p0, Lˊʻ/ﾞᴵ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lˈˊ/ᵔʾ;->ʼˎ(Landroid/view/KeyEvent;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p0, v0, p0, p1}, Lˈˊ/ᵔʾ;->ˆʾ(Lˋᵔ/ٴﹶ;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lˈˊ/ᵔʾ;->ʼˎ(Landroid/view/KeyEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroidx/lifecycle/ˈʿ;->ᴵˊ:I

    invoke-static {p0}, Landroidx/lifecycle/ˆﾞ;->ⁱˊ(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "setCurrentState"

    iget-object v1, p0, Lˊʻ/ﾞᴵ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ـˆ;->ʽ(Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/ᵔʾ;->ʽʽ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ـˆ;->ˑﹳ(Landroidx/lifecycle/ᵔʾ;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final ﹳٴ(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
