.class public Lcom/google/firebase/FirebaseCommonRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ⁱˊ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ﹳٴ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 10

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lﹳי/ⁱˊ;

    invoke-static {v1}, Lˏ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ﹳٴ;

    move-result-object v2

    new-instance v3, Lˏ/ʼˎ;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-class v6, Lﹳי/ﹳٴ;

    invoke-direct {v3, v4, v5, v6}, Lˏ/ʼˎ;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v2, v3}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v3, Lᵔﹶ/ˉʿ;

    const/16 v6, 0x1a

    invoke-direct {v3, v6}, Lᵔﹶ/ˉʿ;-><init>(I)V

    iput-object v3, v2, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v2}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lˏ/ˉˆ;

    const-class v3, Lˋˎ/ﹳٴ;

    const-class v7, Ljava/util/concurrent/Executor;

    invoke-direct {v2, v3, v7}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-array v3, v4, [Ljava/lang/Class;

    const-class v7, Lـˎ/ˑﹳ;

    aput-object v7, v3, v5

    const/4 v7, 0x1

    const-class v8, Lـˎ/ﾞᴵ;

    aput-object v8, v3, v7

    new-instance v8, Lˏ/ﹳٴ;

    const-class v9, Lـˎ/ʽ;

    invoke-direct {v8, v9, v3}, Lˏ/ﹳٴ;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    const-class v3, Landroid/content/Context;

    invoke-static {v3}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v3

    invoke-virtual {v8, v3}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    const-class v3, Lˉᵎ/ᵎﹶ;

    invoke-static {v3}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v3

    invoke-virtual {v8, v3}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v3, Lˏ/ʼˎ;

    const-class v9, Lـˎ/ˈ;

    invoke-direct {v3, v4, v5, v9}, Lˏ/ʼˎ;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v8, v3}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v3, Lˏ/ʼˎ;

    invoke-direct {v3, v7, v7, v1}, Lˏ/ʼˎ;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v8, v3}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v1, Lˏ/ʼˎ;

    invoke-direct {v1, v2, v7, v5}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v8, v1}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v1, Lʻʿ/ˈ;

    invoke-direct {v1, v6, v2}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    iput-object v1, v8, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v8}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fire-android"

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "fire-core"

    const-string v2, "22.0.0"

    invoke-static {v1, v2}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-name"

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-model"

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-brand"

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lʾˈ/ˏי;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lʾˈ/ˏי;-><init>(I)V

    const-string v2, "android-target-sdk"

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ˏי(Ljava/lang/String;Lʾˈ/ˏי;)Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lʾˈ/ˏי;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lʾˈ/ˏי;-><init>(I)V

    const-string v2, "android-min-sdk"

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ˏי(Ljava/lang/String;Lʾˈ/ˏי;)Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lʾˈ/ˏי;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lʾˈ/ˏי;-><init>(I)V

    const-string v2, "android-platform"

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ˏי(Ljava/lang/String;Lʾˈ/ˏי;)Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lʾˈ/ˏי;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lʾˈ/ˏי;-><init>(I)V

    const-string v2, "android-installer"

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ˏי(Ljava/lang/String;Lʾˈ/ˏי;)Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    sget-object v1, Lʻᵢ/ⁱˊ;->ᴵˊ:Lʻᵢ/ⁱˊ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "2.2.10"
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "kotlin"

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
