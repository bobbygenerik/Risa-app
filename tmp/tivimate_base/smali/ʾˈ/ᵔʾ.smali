.class public final Lʾˈ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lᵎʽ/ˆʾ;

.field public final ﹳٴ:Lˉᵎ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lˉᵎ/ᵎﹶ;Lᵎʽ/ˆʾ;Lˈי/ᵔᵢ;Lʾˈ/ˉـ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ᵔʾ;->ﹳٴ:Lˉᵎ/ᵎﹶ;

    iput-object p2, p0, Lʾˈ/ᵔʾ;->ⁱˊ:Lᵎʽ/ˆʾ;

    const-string p2, "Initializing Firebase Sessions 3.0.0."

    const-string v0, "FirebaseSessions"

    nop

    invoke-virtual {p1}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object p1, p1, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {p3}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object p1

    new-instance p2, Lʼˋ/ﾞᴵ;

    const/16 p3, 0x9

    const/4 v0, 0x0

    invoke-direct {p2, p0, p4, v0, p3}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    const/4 p3, 0x3

    invoke-static {p1, v0, p2, p3}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to register lifecycle callbacks, unexpected context "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return-void
.end method
