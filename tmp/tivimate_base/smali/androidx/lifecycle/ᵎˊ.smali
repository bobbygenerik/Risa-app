.class public final Landroidx/lifecycle/ᵎˊ;
.super Landroidx/lifecycle/ᵎﹶ;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ᵔי;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ᵔי;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/ᵎˊ;->this$0:Landroidx/lifecycle/ᵔי;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    sget p2, Landroidx/lifecycle/ˈʿ;->ᴵˊ:I

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ˈʿ;

    iget-object p2, p0, Landroidx/lifecycle/ᵎˊ;->this$0:Landroidx/lifecycle/ᵔי;

    iget-object p2, p2, Landroidx/lifecycle/ᵔי;->ˉٴ:Lﹳי/ʽ;

    iput-object p2, p1, Landroidx/lifecycle/ˈʿ;->ʾˋ:Lﹳי/ʽ;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    iget-object p1, p0, Landroidx/lifecycle/ᵎˊ;->this$0:Landroidx/lifecycle/ᵔי;

    iget v0, p1, Landroidx/lifecycle/ᵔי;->ᴵˊ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/ᵔי;->ᴵˊ:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/lifecycle/ᵔי;->ᴵᵔ:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/lifecycle/ᵔי;->ٴᵢ:Landroidx/lifecycle/ᵎⁱ;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance p2, Landroidx/lifecycle/ᵎˊ$ﹳٴ;

    iget-object v0, p0, Landroidx/lifecycle/ᵎˊ;->this$0:Landroidx/lifecycle/ᵔי;

    invoke-direct {p2, v0}, Landroidx/lifecycle/ᵎˊ$ﹳٴ;-><init>(Landroidx/lifecycle/ᵔי;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/ٴʼ;->ﹳٴ(Landroid/app/Activity;Landroidx/lifecycle/ᵎˊ$ﹳٴ;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .prologue
    iget-object p1, p0, Landroidx/lifecycle/ᵎˊ;->this$0:Landroidx/lifecycle/ᵔי;

    iget v0, p1, Landroidx/lifecycle/ᵔי;->ʾˋ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/ᵔי;->ʾˋ:I

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroidx/lifecycle/ᵔי;->ʽʽ:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/lifecycle/ᵔי;->ˊʻ:Landroidx/lifecycle/ـˆ;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/lifecycle/ᵔי;->ˈٴ:Z

    :cond_0
    return-void
.end method
