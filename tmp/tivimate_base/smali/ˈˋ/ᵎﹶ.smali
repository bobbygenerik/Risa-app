.class public final Lˈˋ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ᵎﹶ:Lʿˑ/ⁱˊ;

.field public static final ᵔᵢ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ᵎﹶ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ᵎﹶ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ᵎﹶ;->ﹳٴ:Lˈˋ/ᵎﹶ;

    const-string v0, "identifier"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵎﹶ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "version"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵎﹶ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "displayVersion"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵎﹶ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "organization"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵎﹶ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "installationUuid"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵎﹶ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "developmentPlatform"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵎﹶ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    const-string v0, "developmentPlatformVersion"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵎﹶ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lˈˋ/ˑ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ᵎˊ;

    iget-object v0, p1, Lˈˋ/ᵎˊ;->ﹳٴ:Ljava/lang/String;

    sget-object v1, Lˈˋ/ᵎﹶ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ᵎﹶ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ᵎˊ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ᵎﹶ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ᵎˊ;->ʽ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ᵎﹶ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ᵎﹶ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ᵎˊ;->ˈ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ᵎﹶ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ᵎˊ;->ˑﹳ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ᵎﹶ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lˈˋ/ᵎˊ;->ﾞᴵ:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
