.class public Landroidx/lifecycle/ˈʿ;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ˈʿ$ﹳٴ;
    }
.end annotation


# static fields
.field public static final synthetic ᴵˊ:I


# instance fields
.field public ʾˋ:Lﹳי/ʽ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ˈʿ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ˈʿ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/ˈʿ;->ʾˋ:Lﹳי/ʽ;

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_PAUSE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ˈʿ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroidx/lifecycle/ˈʿ;->ʾˋ:Lﹳי/ʽ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ᵔי;

    invoke-virtual {v0}, Landroidx/lifecycle/ᵔי;->ﹳٴ()V

    :cond_0
    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_RESUME:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ˈʿ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public final onStart()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidx/lifecycle/ˈʿ;->ʾˋ:Lﹳי/ʽ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ᵔי;

    iget v1, v0, Landroidx/lifecycle/ᵔי;->ʾˋ:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/lifecycle/ᵔי;->ʾˋ:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Landroidx/lifecycle/ᵔי;->ˈٴ:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/lifecycle/ᵔי;->ˊʻ:Landroidx/lifecycle/ـˆ;

    sget-object v2, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/lifecycle/ᵔי;->ˈٴ:Z

    :cond_0
    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ˈʿ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ˈʿ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public final ﹳٴ(Landroidx/lifecycle/ˉʿ;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/lifecycle/ˆﾞ;->ﹳٴ(Landroid/app/Activity;Landroidx/lifecycle/ˉʿ;)V

    :cond_0
    return-void
.end method
