.class public final Lʾˈ/ˑٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lﹳי/ʽ;

.field public static final ﹳٴ:Lʾˈ/ˑٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lʾˈ/ˑٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ˑٴ;->ﹳٴ:Lʾˈ/ˑٴ;

    new-instance v0, Lˆˉ/ˈ;

    invoke-direct {v0}, Lˆˉ/ˈ;-><init>()V

    const-class v1, Lʾˈ/ˈʿ;

    sget-object v2, Lʾˈ/ᵎﹶ;->ﹳٴ:Lʾˈ/ᵎﹶ;

    invoke-virtual {v0, v1, v2}, Lˆˉ/ˈ;->ﹳٴ(Ljava/lang/Class;Lʿˑ/ʽ;)Lˊʿ/ﹳٴ;

    const-class v1, Lʾˈ/ᴵˑ;

    sget-object v2, Lʾˈ/ᵔᵢ;->ﹳٴ:Lʾˈ/ᵔᵢ;

    invoke-virtual {v0, v1, v2}, Lˆˉ/ˈ;->ﹳٴ(Ljava/lang/Class;Lʿˑ/ʽ;)Lˊʿ/ﹳٴ;

    const-class v1, Lʾˈ/ٴﹶ;

    sget-object v2, Lʾˈ/ˑﹳ;->ﹳٴ:Lʾˈ/ˑﹳ;

    invoke-virtual {v0, v1, v2}, Lˆˉ/ˈ;->ﹳٴ(Ljava/lang/Class;Lʿˑ/ʽ;)Lˊʿ/ﹳٴ;

    const-class v1, Lʾˈ/ⁱˊ;

    sget-object v2, Lʾˈ/ˈ;->ﹳٴ:Lʾˈ/ˈ;

    invoke-virtual {v0, v1, v2}, Lˆˉ/ˈ;->ﹳٴ(Ljava/lang/Class;Lʿˑ/ʽ;)Lˊʿ/ﹳٴ;

    const-class v1, Lʾˈ/ﹳٴ;

    sget-object v2, Lʾˈ/ʽ;->ﹳٴ:Lʾˈ/ʽ;

    invoke-virtual {v0, v1, v2}, Lˆˉ/ˈ;->ﹳٴ(Ljava/lang/Class;Lʿˑ/ʽ;)Lˊʿ/ﹳٴ;

    const-class v1, Lʾˈ/ᴵᵔ;

    sget-object v2, Lʾˈ/ﾞᴵ;->ﹳٴ:Lʾˈ/ﾞᴵ;

    invoke-virtual {v0, v1, v2}, Lˆˉ/ˈ;->ﹳٴ(Ljava/lang/Class;Lʿˑ/ʽ;)Lˊʿ/ﹳٴ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lˆˉ/ˈ;->ˈ:Z

    new-instance v1, Lﹳי/ʽ;

    invoke-direct {v1, v0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lʾˈ/ˑٴ;->ⁱˊ:Lﹳי/ʽ;

    return-void
.end method

.method public static ﹳٴ(Lˉᵎ/ᵎﹶ;)Lʾˈ/ⁱˊ;
    .locals 9

    .prologue
    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v0, p0, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v4, v3

    goto :goto_1

    :cond_0
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    new-instance v7, Lʾˈ/ⁱˊ;

    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v3, p0, Lˉᵎ/ᵎﹶ;->ʽ:Lˉᵎ/ʼˎ;

    iget-object v8, v3, Lˉᵎ/ʼˎ;->ⁱˊ:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object v3, v1

    new-instance v1, Lʾˈ/ﹳٴ;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v4

    :cond_1
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    invoke-static {v0}, Lʾˈ/ˊʻ;->ⁱˊ(Landroid/content/Context;)Lʾˈ/ᴵᵔ;

    move-result-object v5

    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    invoke-static {v0}, Lʾˈ/ˊʻ;->ﹳٴ(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lʾˈ/ﹳٴ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lʾˈ/ᴵᵔ;Ljava/util/ArrayList;)V

    invoke-direct {v7, v8, v1}, Lʾˈ/ⁱˊ;-><init>(Ljava/lang/String;Lʾˈ/ﹳٴ;)V

    return-object v7
.end method
