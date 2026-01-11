.class public abstract Lʾˈ/ˊʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ⁱˊ(Landroid/content/Context;)Lʾˈ/ᴵᵔ;
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0}, Lʾˈ/ˊʻ;->ﹳٴ(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    check-cast v5, Lʾˈ/ᴵᵔ;

    iget v5, v5, Lʾˈ/ᴵᵔ;->ⁱˊ:I

    if-ne v5, v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Lʾˈ/ᴵᵔ;

    if-nez v4, :cond_5

    new-instance p0, Lʾˈ/ᴵᵔ;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-le v1, v3, :cond_2

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/16 v3, 0x1c

    if-lt v1, v3, :cond_3

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lᵎᴵ/ʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, ""

    :goto_1
    invoke-direct {p0, v0, v2, v1, v2}, Lʾˈ/ᴵᵔ;-><init>(IILjava/lang/String;Z)V

    return-object p0

    :cond_5
    return-object v4
.end method

.method public static ﹳٴ(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Landroid/app/ActivityManager;

    if-eqz v2, :cond_0

    check-cast p0, Landroid/app/ActivityManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    :cond_2
    invoke-static {p0}, Lﹶˈ/ˆʾ;->ˊᵔ(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_3
    :goto_1
    if-ge v5, v3, :cond_4

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, v0, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v2, v0}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    new-instance v5, Lʾˈ/ᴵᵔ;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {v6, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    invoke-direct {v5, v7, v3, v6, v8}, Lʾˈ/ᴵᵔ;-><init>(IILjava/lang/String;Z)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object p0
.end method
