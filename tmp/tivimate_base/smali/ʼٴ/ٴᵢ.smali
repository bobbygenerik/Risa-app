.class public final Lʼٴ/ٴᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴﾞ/ˈ;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public ʾˋ:Z

.field public final ˈٴ:Ljava/lang/Object;

.field public final ˊʻ:Ljava/lang/Object;

.field public final ᴵˊ:Ljava/lang/Object;

.field public final ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lʼٴ/ᵔʾ;Lﹶﾞ/ⁱי;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼٴ/ٴᵢ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    new-instance p1, Lʼٴ/ˊʻ;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lʼٴ/ˊʻ;-><init>(Lʼٴ/ٴᵢ;Z)V

    iput-object p1, p0, Lʼٴ/ٴᵢ;->ᴵᵔ:Ljava/lang/Object;

    new-instance p1, Lʼٴ/ˊʻ;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lʼٴ/ˊʻ;-><init>(Lʼٴ/ٴᵢ;Z)V

    iput-object p1, p0, Lʼٴ/ٴᵢ;->ˊʻ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˉᵎ/ᵎﹶ;)V
    .locals 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    new-instance v0, Lˏـ/ᵎﹶ;

    invoke-direct {v0}, Lˏـ/ᵎﹶ;-><init>()V

    iput-object v0, p0, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʼٴ/ٴᵢ;->ʾˋ:Z

    new-instance v1, Lˏـ/ᵎﹶ;

    invoke-direct {v1}, Lˏـ/ᵎﹶ;-><init>()V

    iput-object v1, p0, Lʼٴ/ٴᵢ;->ˊʻ:Ljava/lang/Object;

    invoke-virtual {p1}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v1, p1, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    iput-object p1, p0, Lʼٴ/ٴᵢ;->ᴵˊ:Ljava/lang/Object;

    const-string p1, "com.google.firebase.crashlytics"

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "firebase_crashlytics_collection_enabled"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iput-boolean v0, p0, Lʼٴ/ٴᵢ;->ʾˋ:Z

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    if-nez p1, :cond_3

    const-string p1, "firebase_crashlytics_collection_enabled"

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "Could not read data collection permission from manifest"

    const-string v2, "FirebaseCrashlytics"

    nop

    :cond_1
    move-object p1, v5

    :goto_1
    if-nez p1, :cond_2

    iput-boolean v0, p0, Lʼٴ/ٴᵢ;->ʾˋ:Z

    move-object p1, v5

    goto :goto_2

    :cond_2
    iput-boolean v4, p0, Lʼٴ/ٴᵢ;->ʾˋ:Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_3
    :goto_2
    iput-object p1, p0, Lʼٴ/ٴᵢ;->ᴵᵔ:Ljava/lang/Object;

    iget-object p1, p0, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, Lʼٴ/ٴᵢ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ᵎﹶ;

    invoke-virtual {v0, v5}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lﹳˊ/ˈ;Lᵢʾ/ﹳٴ;Lﹳˊ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼٴ/ٴᵢ;->ˊʻ:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    iput-object p1, p0, Lʼٴ/ٴᵢ;->ᴵᵔ:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lʼٴ/ٴᵢ;->ʾˋ:Z

    iput-object p2, p0, Lʼٴ/ٴᵢ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ʽ(Lᴵˈ/ⁱˊ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lʼٴ/ٴᵢ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ٴʼ:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lﹳˊ/ﹳٴ;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳˊ/ʼˎ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v1, v1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    iget-object v1, v0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSignInFailed for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lᵢʾ/ﹳٴ;->ʽ(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lﹳˊ/ʼˎ;->ˉˆ(Lᴵˈ/ⁱˊ;Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public ˉٴ(Lᴵˈ/ⁱˊ;)V
    .locals 3

    iget-object v0, p0, Lʼٴ/ٴᵢ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    new-instance v1, Lˋˋ/ˈ;

    const/16 v2, 0x19

    invoke-direct {v1, p0, v2, p1}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ⁱˊ(Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_0

    const-string p1, "ENABLED"

    goto :goto_0

    :cond_0
    const-string p1, "DISABLED"

    :goto_0
    iget-object v0, p0, Lʼٴ/ٴᵢ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "global Firebase setting"

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lʼٴ/ٴᵢ;->ʾˋ:Z

    if-eqz v0, :cond_2

    const-string v0, "firebase_crashlytics_collection_enabled manifest flag"

    goto :goto_1

    :cond_2
    const-string v0, "API"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Crashlytics automatic data collection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "FirebaseCrashlytics"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    nop

    :cond_3
    return-void
.end method

.method public declared-synchronized ﹳٴ()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʼٴ/ٴᵢ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lʼٴ/ٴᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉᵎ/ᵎﹶ;

    invoke-virtual {v0}, Lˉᵎ/ᵎﹶ;->ᵎﹶ()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lʼٴ/ٴᵢ;->ⁱˊ(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
