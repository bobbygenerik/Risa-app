.class public final Lʾˈ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ᵎﹶ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lʾˈ/ʽ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʾˈ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ʽ;->ﹳٴ:Lʾˈ/ʽ;

    const-string v0, "packageName"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ʽ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "versionName"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ʽ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "appBuildVersion"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ʽ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "deviceManufacturer"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ʽ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "currentProcessDetails"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ʽ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "appProcessDetails"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ʽ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lʾˈ/ﹳٴ;

    check-cast p2, Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ʽ;->ⁱˊ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ʽ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ʽ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ʽ;->ˑﹳ:Lʿˑ/ⁱˊ;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ʽ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ﹳٴ;->ˈ:Lʾˈ/ᴵᵔ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ʽ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lʾˈ/ﹳٴ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
