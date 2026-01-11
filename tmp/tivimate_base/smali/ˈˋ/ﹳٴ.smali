.class public final Lˈˋ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ﹳٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ﹳٴ;->ﹳٴ:Lˈˋ/ﹳٴ;

    const-string v0, "arch"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﹳٴ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "libraryName"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﹳٴ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "buildId"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﹳٴ;->ˈ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lˈˋ/ᵎʻ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ᴵᵔ;

    iget-object v0, p1, Lˈˋ/ᴵᵔ;->ﹳٴ:Ljava/lang/String;

    sget-object v1, Lˈˋ/ﹳٴ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ﹳٴ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ᴵᵔ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ﹳٴ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lˈˋ/ᴵᵔ;->ʽ:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
