.class public final Lᐧٴ/ˆʾ;
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

.field public static final ﹳٴ:Lᐧٴ/ˆʾ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᐧٴ/ˆʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᐧٴ/ˆʾ;->ﹳٴ:Lᐧٴ/ˆʾ;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˆʾ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˆʾ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "clientInfo"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˆʾ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "logSource"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˆʾ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "logSourceName"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˆʾ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "logEvent"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˆʾ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    const-string v0, "qosTier"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˆʾ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lᐧٴ/ˊʻ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lᐧٴ/ˏי;

    iget-wide v0, p1, Lᐧٴ/ˏי;->ﹳٴ:J

    sget-object v2, Lᐧٴ/ˆʾ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v2, v0, v1}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ˆʾ;->ʽ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lᐧٴ/ˏי;->ⁱˊ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ˆʾ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lᐧٴ/ˏי;->ʽ:Lᐧٴ/ᵔʾ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ˆʾ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lᐧٴ/ˏי;->ˈ:Ljava/lang/Integer;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ˆʾ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lᐧٴ/ˏי;->ˑﹳ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ˆʾ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lᐧٴ/ˏי;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object p1, Lᐧٴ/ˆʾ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    sget-object v0, Lᐧٴ/ٴʼ;->ʾˋ:Lᐧٴ/ٴʼ;

    invoke-interface {p2, p1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
