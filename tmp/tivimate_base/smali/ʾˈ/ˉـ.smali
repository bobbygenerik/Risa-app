.class public final Lʾˈ/ˉـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final ʾˋ:Lʾˈ/ᴵʼ;


# direct methods
.method public constructor <init>(Lʾˈ/ᴵʼ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ˉـ;->ʾˋ:Lʾˈ/ᴵʼ;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lʾˈ/ˉـ;->ʾˋ:Lʾˈ/ᴵʼ;

    invoke-virtual {p1}, Lʾˈ/ᴵʼ;->ⁱˊ()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .prologue
    iget-object p1, p0, Lʾˈ/ˉـ;->ʾˋ:Lʾˈ/ᴵʼ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lʾˈ/ᴵʼ;->ʼˎ:Z

    iget-object v0, p1, Lʾˈ/ᴵʼ;->ᵔᵢ:Lʾˈ/ᵎⁱ;

    const-string v1, "FirebaseSessions"

    if-nez v0, :cond_0

    const-string p1, "App foregrounded, but local SessionData not initialized"

    nop

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "App foregrounded on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lʾˈ/ᴵʼ;->ﾞᴵ:Lʾˈ/ʽʽ;

    invoke-virtual {v3}, Lʾˈ/ʽʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {p1, v0}, Lʾˈ/ᴵʼ;->ˈ(Lʾˈ/ᵎⁱ;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lʾˈ/ᴵʼ;->ʽ(Lʾˈ/ᵎⁱ;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v1, p1, Lʾˈ/ᴵʼ;->ᵎﹶ:Lˈי/ᵔᵢ;

    invoke-static {v1}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object v1

    new-instance v2, Lʼˋ/ﾞᴵ;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v2, p1, v0, v4, v3}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    const/4 p1, 0x3

    invoke-static {v1, v4, v2, p1}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
