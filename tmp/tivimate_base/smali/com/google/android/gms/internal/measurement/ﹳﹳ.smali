.class public final Lcom/google/android/gms/internal/measurement/ﹳﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/measurement/ᵎᵔ;-><init>(Lcom/google/android/gms/internal/measurement/ﹳﹳ;Landroid/os/Bundle;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ﹶᐧ;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/ﹶᐧ;-><init>(Lcom/google/android/gms/internal/measurement/ﹳﹳ;Landroid/app/Activity;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ﹶᐧ;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/ﹶᐧ;-><init>(Lcom/google/android/gms/internal/measurement/ﹳﹳ;Landroid/app/Activity;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ﹶᐧ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/ﹶᐧ;-><init>(Lcom/google/android/gms/internal/measurement/ﹳﹳ;Landroid/app/Activity;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ᵎⁱ;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/ᵎᵔ;-><init>(Lcom/google/android/gms/internal/measurement/ﹳﹳ;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/ᵎⁱ;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ᵎⁱ;->ˈ(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ﹶᐧ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/ﹶᐧ;-><init>(Lcom/google/android/gms/internal/measurement/ﹳﹳ;Landroid/app/Activity;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ﹶᐧ;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/ﹶᐧ;-><init>(Lcom/google/android/gms/internal/measurement/ﹳﹳ;Landroid/app/Activity;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V

    return-void
.end method
