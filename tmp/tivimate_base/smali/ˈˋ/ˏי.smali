.class public final Lˈˋ/ˏי;
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

.field public static final ﹳٴ:Lˈˋ/ˏי;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ˏי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ˏי;->ﹳٴ:Lˈˋ/ˏי;

    const-string v0, "timestamp"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ˏי;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "type"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ˏי;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "app"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ˏי;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "device"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ˏי;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "log"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ˏי;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "rollouts"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ˏי;->ᵎﹶ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lˈˋ/ﹶ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ˑٴ;

    iget-wide v0, p1, Lˈˋ/ˑٴ;->ﹳٴ:J

    sget-object v2, Lˈˋ/ˏי;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v2, v0, v1}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ˏי;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˑٴ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ˏי;->ˈ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˑٴ;->ʽ:Lˈˋ/ـˊ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ˏי;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˑٴ;->ˈ:Lˈˋ/ᵎʿ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ˏי;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˑٴ;->ˑﹳ:Lˈˋ/ʿـ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ˏי;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lˈˋ/ˑٴ;->ﾞᴵ:Lˈˋ/ʻʿ;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
