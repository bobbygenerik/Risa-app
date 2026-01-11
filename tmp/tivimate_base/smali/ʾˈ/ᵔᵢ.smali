.class public final Lʾˈ/ᵔᵢ;
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

.field public static final ﹳٴ:Lʾˈ/ᵔᵢ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʾˈ/ᵔᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ᵔᵢ;->ﹳٴ:Lʾˈ/ᵔᵢ;

    const-string v0, "sessionId"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ᵔᵢ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "firstSessionId"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ᵔᵢ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "sessionIndex"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ᵔᵢ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "eventTimestampUs"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ᵔᵢ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "dataCollectionStatus"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ᵔᵢ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "firebaseInstallationId"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ᵔᵢ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    const-string v0, "firebaseAuthenticationToken"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ᵔᵢ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lʾˈ/ᴵˑ;

    check-cast p2, Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ᵔᵢ;->ⁱˊ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ᴵˑ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ᵔᵢ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ᴵˑ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ᵔᵢ;->ˈ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lʾˈ/ᴵˑ;->ʽ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ᵔᵢ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lʾˈ/ᴵˑ;->ˈ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ᵔᵢ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ᴵˑ;->ˑﹳ:Lʾˈ/ٴﹶ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ᵔᵢ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ᴵˑ;->ﾞᴵ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ᵔᵢ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lʾˈ/ᴵˑ;->ᵎﹶ:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
