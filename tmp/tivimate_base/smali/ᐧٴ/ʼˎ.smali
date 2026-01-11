.class public final Lᐧٴ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʼˎ:Lʿˑ/ⁱˊ;

.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˆʾ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ᵎﹶ:Lʿˑ/ⁱˊ;

.field public static final ᵔᵢ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lᐧٴ/ʼˎ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᐧٴ/ʼˎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᐧٴ/ʼˎ;->ﹳٴ:Lᐧٴ/ʼˎ;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ʼˎ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "eventCode"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ʼˎ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "complianceData"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ʼˎ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ʼˎ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "sourceExtension"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ʼˎ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ʼˎ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ʼˎ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ʼˎ;->ʼˎ:Lʿˑ/ⁱˊ;

    const-string v0, "experimentIds"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ʼˎ;->ˆʾ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lᐧٴ/ᴵᵔ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lᐧٴ/יـ;

    iget-wide v0, p1, Lᐧٴ/יـ;->ﹳٴ:J

    sget-object v2, Lᐧٴ/ʼˎ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v2, v0, v1}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ʼˎ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lᐧٴ/יـ;->ⁱˊ:Ljava/lang/Integer;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ʼˎ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lᐧٴ/יـ;->ʽ:Lᐧٴ/ʾˋ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ʼˎ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lᐧٴ/יـ;->ˈ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ʼˎ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lᐧٴ/יـ;->ˑﹳ:[B

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ʼˎ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lᐧٴ/יـ;->ﾞᴵ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ʼˎ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lᐧٴ/יـ;->ᵎﹶ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ʼˎ;->ʼˎ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lᐧٴ/יـ;->ᵔᵢ:Lᐧٴ/ᵎⁱ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ʼˎ;->ˆʾ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lᐧٴ/יـ;->ʼˎ:Lᐧٴ/ᴵˊ;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
