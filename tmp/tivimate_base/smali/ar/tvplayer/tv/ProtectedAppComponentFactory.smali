.class public Lar/tvplayer/tv/ProtectedAppComponentFactory;
.super Landroid/app/AppComponentFactory;


# instance fields
.field private factory:Landroid/app/AppComponentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/AppComponentFactory;-><init>()V

    return-void
.end method

.method private getAppComponentFactory()Landroid/app/AppComponentFactory;
    .locals 4

    .prologue
    iget-object v0, p0, Lar/tvplayer/tv/ProtectedAppComponentFactory;->factory:Landroid/app/AppComponentFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadedApk"

    if-eqz v0, :cond_2

    const-string v2, ":p5b25cdc14de98c5f8929038a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":p8bcd28443d17b4b01081dfd2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fast path. Process name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AppComponentFactory;

    invoke-direct {v1}, Landroid/app/AppComponentFactory;-><init>()V

    iput-object v1, p0, Lar/tvplayer/tv/ProtectedAppComponentFactory;->factory:Landroid/app/AppComponentFactory;

    return-object v1

    :cond_2
    :try_start_0
    const-string v2, "androidx.core.app.CoreComponentFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppComponentFactory;

    iput-object v2, p0, Lar/tvplayer/tv/ProtectedAppComponentFactory;->factory:Landroid/app/AppComponentFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    :goto_0
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Unable to instantiate appComponentFactory"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    new-instance v1, Landroid/app/AppComponentFactory;

    invoke-direct {v1}, Landroid/app/AppComponentFactory;-><init>()V

    iput-object v1, p0, Lar/tvplayer/tv/ProtectedAppComponentFactory;->factory:Landroid/app/AppComponentFactory;

    :goto_1
    iget-object v1, p0, Lar/tvplayer/tv/ProtectedAppComponentFactory;->factory:Landroid/app/AppComponentFactory;

    return-object v1
.end method


# virtual methods
.method public instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1

    invoke-direct {p0}, Lar/tvplayer/tv/ProtectedAppComponentFactory;->getAppComponentFactory()Landroid/app/AppComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 1

    invoke-direct {p0}, Lar/tvplayer/tv/ProtectedAppComponentFactory;->getAppComponentFactory()Landroid/app/AppComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .locals 1

    invoke-direct {p0}, Lar/tvplayer/tv/ProtectedAppComponentFactory;->getAppComponentFactory()Landroid/app/AppComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    return-object v0
.end method

.method public instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .locals 1

    invoke-direct {p0}, Lar/tvplayer/tv/ProtectedAppComponentFactory;->getAppComponentFactory()Landroid/app/AppComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v0

    return-object v0
.end method
