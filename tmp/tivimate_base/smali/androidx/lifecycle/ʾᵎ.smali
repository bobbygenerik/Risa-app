.class public abstract Landroidx/lifecycle/ʾᵎ;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ʽﹳ;


# instance fields
.field public final ʾˋ:Lˑי/ʽ;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lˑי/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/lifecycle/ـˆ;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object v1, v0, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/ʾᵎ;->ʾˋ:Lˑי/ʽ;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object p1, p0, Landroidx/lifecycle/ʾᵎ;->ʾˋ:Lˑי/ʽ;

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p1, v0}, Lˑי/ʽ;->ʾˋ(Landroidx/lifecycle/ˉʿ;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/ʾᵎ;->ʾˋ:Lˑי/ʽ;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Lˑי/ʽ;->ʾˋ(Landroidx/lifecycle/ˉʿ;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    iget-object v1, p0, Landroidx/lifecycle/ʾᵎ;->ʾˋ:Lˑי/ʽ;

    invoke-virtual {v1, v0}, Lˑי/ʽ;->ʾˋ(Landroidx/lifecycle/ˉʿ;)V

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v1, v0}, Lˑי/ʽ;->ʾˋ(Landroidx/lifecycle/ˉʿ;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/ʾᵎ;->ʾˋ:Lˑי/ʽ;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Lˑי/ʽ;->ʾˋ(Landroidx/lifecycle/ˉʿ;)V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public final ˋᵔ()Landroidx/lifecycle/ـˆ;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/ʾᵎ;->ʾˋ:Lˑי/ʽ;

    iget-object v0, v0, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ـˆ;

    return-object v0
.end method
