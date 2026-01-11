.class public Lʽ/ﾞʻ;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ʽﹳ;
.implements Lᵎ/ˑﹳ;


# instance fields
.field public final ʽʽ:Lʽ/ʽﹳ;

.field public ʾˋ:Landroidx/lifecycle/ـˆ;

.field public final ᴵˊ:Lـʾ/ᵔﹳ;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lʿʻ/ⁱˊ;

    new-instance p2, Lיˋ/ˈ;

    const/16 v0, 0x1d

    invoke-direct {p2, v0, p0}, Lיˋ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p0, p2}, Lʿʻ/ⁱˊ;-><init>(Lᵎ/ˑﹳ;Lיˋ/ˈ;)V

    new-instance p2, Lـʾ/ᵔﹳ;

    invoke-direct {p2, p1}, Lـʾ/ᵔﹳ;-><init>(Lʿʻ/ⁱˊ;)V

    iput-object p2, p0, Lʽ/ﾞʻ;->ᴵˊ:Lـʾ/ᵔﹳ;

    new-instance p1, Lʽ/ʽﹳ;

    new-instance p2, Landroidx/lifecycle/ᵎⁱ;

    const/16 v0, 0xb

    invoke-direct {p2, v0, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2}, Lʽ/ʽﹳ;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lʽ/ﾞʻ;->ʽʽ:Lʽ/ʽﹳ;

    return-void
.end method

.method public static ﹳٴ(Lʽ/ﾞʻ;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Lʽ/ﾞʻ;->ⁱˊ()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lʽ/ﾞʻ;->ʽʽ:Lʽ/ʽﹳ;

    invoke-virtual {v0}, Lʽ/ʽﹳ;->ﹳٴ()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lʽ/ﾞʻ;->ʽʽ:Lʽ/ʽﹳ;

    iput-object v0, v1, Lʽ/ʽﹳ;->ˑﹳ:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean v0, v1, Lʽ/ʽﹳ;->ᵎﹶ:Z

    invoke-virtual {v1, v0}, Lʽ/ʽﹳ;->ⁱˊ(Z)V

    :cond_0
    iget-object v0, p0, Lʽ/ﾞʻ;->ᴵˊ:Lـʾ/ᵔﹳ;

    invoke-virtual {v0, p1}, Lـʾ/ᵔﹳ;->יـ(Landroid/os/Bundle;)V

    iget-object p1, p0, Lʽ/ﾞʻ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    if-nez p1, :cond_1

    new-instance p1, Landroidx/lifecycle/ـˆ;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object p1, p0, Lʽ/ﾞʻ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    :cond_1
    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lʽ/ﾞʻ;->ᴵˊ:Lـʾ/ᵔﹳ;

    invoke-virtual {v1, v0}, Lـʾ/ᵔﹳ;->ˏי(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final onStart()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lʽ/ﾞʻ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/ـˆ;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object v0, p0, Lʽ/ﾞʻ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    :cond_0
    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_RESUME:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽ/ﾞʻ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/ـˆ;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object v0, p0, Lʽ/ﾞʻ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    :cond_0
    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lʽ/ﾞʻ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-virtual {p0}, Lʽ/ﾞʻ;->ⁱˊ()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lʽ/ﾞʻ;->ⁱˊ()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Lʽ/ﾞʻ;->ⁱˊ()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final ˋᵔ()Landroidx/lifecycle/ـˆ;
    .locals 1

    .prologue
    iget-object v0, p0, Lʽ/ﾞʻ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/ـˆ;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object v0, p0, Lʽ/ﾞʻ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    :cond_0
    return-object v0
.end method

.method public final ⁱˊ()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0432

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0433

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0434

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final ﾞᴵ()Lˑʼ/ᵎˊ;
    .locals 1

    iget-object v0, p0, Lʽ/ﾞʻ;->ᴵˊ:Lـʾ/ᵔﹳ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎˊ;

    return-object v0
.end method
