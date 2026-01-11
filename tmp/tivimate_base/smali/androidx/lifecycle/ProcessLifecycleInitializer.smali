.class public final Landroidx/lifecycle/ProcessLifecycleInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᵎ/ⁱˊ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L\u02ca\u1d4e/\u2071\u02ca;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-static {p1}, Lˊᵎ/ﹳٴ;->ʽ(Landroid/content/Context;)Lˊᵎ/ﹳٴ;

    move-result-object v0

    const-class v1, Landroidx/lifecycle/ProcessLifecycleInitializer;

    iget-object v0, v0, Lˊᵎ/ﹳٴ;->ⁱˊ:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/lifecycle/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Landroidx/lifecycle/ᵔﹳ;

    invoke-direct {v1}, Landroidx/lifecycle/ᵔﹳ;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_0
    sget-object v0, Landroidx/lifecycle/ᵔי;->ᵎⁱ:Landroidx/lifecycle/ᵔי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Landroidx/lifecycle/ᵔי;->ᴵᵔ:Landroid/os/Handler;

    iget-object v1, v0, Landroidx/lifecycle/ᵔי;->ˊʻ:Landroidx/lifecycle/ـˆ;

    sget-object v2, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    new-instance v1, Landroidx/lifecycle/ᵎˊ;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ᵎˊ;-><init>(Landroidx/lifecycle/ᵔי;)V

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name=\'androidx.lifecycle.ProcessLifecycleInitializer\'\n                   android:value=\'androidx.startup\' />\n               under InitializationProvider in your AndroidManifest.xml"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ()Ljava/util/List;
    .locals 1

    sget-object v0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object v0
.end method
