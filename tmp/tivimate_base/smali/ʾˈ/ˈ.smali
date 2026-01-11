.class public final Lʾˈ/ˈ;
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

.field public static final ﹳٴ:Lʾˈ/ˈ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʾˈ/ˈ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ˈ;->ﹳٴ:Lʾˈ/ˈ;

    const-string v0, "appId"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ˈ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "deviceModel"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ˈ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "sessionSdkVersion"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ˈ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "osVersion"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ˈ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "logEnvironment"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ˈ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "androidAppInfo"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ˈ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lʾˈ/ⁱˊ;

    check-cast p2, Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ˈ;->ⁱˊ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ˈ;->ʽ:Lʿˑ/ⁱˊ;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ˈ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v1, "3.0.0"

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ˈ;->ˑﹳ:Lʿˑ/ⁱˊ;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ˈ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    sget-object v1, Lʾˈ/ʾᵎ;->ᴵˊ:Lʾˈ/ʾᵎ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ˈ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lʾˈ/ⁱˊ;->ⁱˊ:Lʾˈ/ﹳٴ;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
