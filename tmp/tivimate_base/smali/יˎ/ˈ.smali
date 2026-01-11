.class public final Lיˎ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lיˎ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lיˎ/ˈ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lיˎ/ˈ;->ﹳٴ:Lיˎ/ˈ;

    return-void
.end method

.method public static ﹳٴ(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8

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
    if-ge v4, v0, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    new-instance v5, Lˈˋ/ʿ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v6, :cond_5

    iput-object v6, v5, Lˈˋ/ʿ;->ﹳٴ:Ljava/lang/String;

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v7, v5, Lˈˋ/ʿ;->ⁱˊ:I

    iget-byte v7, v5, Lˈˋ/ʿ;->ˑﹳ:B

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v3, v5, Lˈˋ/ʿ;->ʽ:I

    or-int/lit8 v3, v7, 0x2

    int-to-byte v3, v3

    iput-byte v3, v5, Lˈˋ/ʿ;->ˑﹳ:B

    invoke-static {v6, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v5, Lˈˋ/ʿ;->ˈ:Z

    iget-byte v3, v5, Lˈˋ/ʿ;->ˑﹳ:B

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    iput-byte v3, v5, Lˈˋ/ʿ;->ˑﹳ:B

    invoke-virtual {v5}, Lˈˋ/ʿ;->ﹳٴ()Lˈˋ/ʿᵢ;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null processName"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-object p0
.end method


# virtual methods
.method public final ⁱˊ(Landroid/content/Context;)Lˈˋ/ʻᴵ;
    .locals 5

    .prologue
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p1}, Lיˎ/ˈ;->ﹳٴ(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    check-cast v4, Lˈˋ/ʻᴵ;

    check-cast v4, Lˈˋ/ʿᵢ;

    iget v4, v4, Lˈˋ/ʿᵢ;->ⁱˊ:I

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lˈˋ/ʻᴵ;

    if-nez v3, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-le p1, v1, :cond_2

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/16 v1, 0x1c

    const-string v2, ""

    if-lt p1, v1, :cond_3

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    move-object p1, v2

    :cond_4
    :goto_1
    const/4 v1, 0x0

    new-instance v2, Lˈˋ/ʿ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lˈˋ/ʿ;->ﹳٴ:Ljava/lang/String;

    iput v0, v2, Lˈˋ/ʿ;->ⁱˊ:I

    iget-byte p1, v2, Lˈˋ/ʿ;->ˑﹳ:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput v1, v2, Lˈˋ/ʿ;->ʽ:I

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-boolean v1, v2, Lˈˋ/ʿ;->ˈ:Z

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, v2, Lˈˋ/ʿ;->ˑﹳ:B

    invoke-virtual {v2}, Lˈˋ/ʿ;->ﹳٴ()Lˈˋ/ʿᵢ;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v3
.end method
